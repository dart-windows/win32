import 'package:winmd/winmd.dart';

import '../model/exclusions.dart';
import 'com_class.dart';
import 'com_method.dart';
import 'com_property.dart';
import 'method.dart';
import 'safenames.dart';
import 'type.dart';
import 'utils.dart';

class ComInterfaceProjection {
  final TypeDef typeDef;
  final String comment;

  // Lazily cached values, with matching property
  int? _vtableStart;
  int get vtableStart => _vtableStart ??= cacheVtableStart(typeDef);

  List<MethodProjection>? _methodProjections;
  List<MethodProjection> get methodProjections =>
      _methodProjections ??= _cacheMethodProjections();

  ComInterfaceProjection(this.typeDef, [this.comment = '']);

  int cacheVtableStart(TypeDef? type) {
    if (type == null) return 0;

    if (type.isInterface && type.interfaces.isNotEmpty) {
      var sum = 0;

      for (final interface in type.interfaces) {
        sum += interface.methods.length + cacheVtableStart(interface);
      }

      return sum;
    }

    return 0;
  }

  List<MethodProjection> _cacheMethodProjections() {
    final projection = <MethodProjection>[];
    var vtableOffset = vtableStart;
    for (final method in typeDef.methods) {
      if (method.isGetProperty && !isExcludedGetProperty(method)) {
        final getPropertyProjection =
            ComGetPropertyProjection(method, vtableOffset++);
        projection.add(getPropertyProjection);
      } else if (method.isSetProperty &&
          method.parameters.isNotEmpty &&
          !isExcludedSetProperty(method)) {
        final setPropertyProjection =
            ComSetPropertyProjection(method, vtableOffset++);
        projection.add(setPropertyProjection);
      } else {
        final methodProjection = ComMethodProjection(method, vtableOffset++);
        projection.add(methodProjection);
      }
    }
    return projection;
  }

  String get shortName =>
      stripAnsiUnicodeSuffix(safeIdentifierForTypeDef(typeDef));

  String get inheritsFrom => typeDef.interfaces.isNotEmpty
      ? safeIdentifierForTypeDef(typeDef.interfaces.first)
      : '';

  String get header => '''
// ${shortName.toLowerCase()}.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
''';

  Set<String> get coreImports => {'dart:ffi', '../extensions/iunknown.dart'};

  String? getImportForTypeDef(TypeDef typeDef) => switch (typeDef) {
        _ when typeDef.isDelegate => '../callbacks.dart',
        _ when typeDef.isInterface => '../types.dart',
        _ when typeDef.isStruct && specialTypes.containsKey(typeDef.name) =>
          'package:ffi/ffi.dart',

        // These structs are manually generated
        _ when typeDef.isStruct && typeDef.name.endsWith('PROPERTYKEY') =>
          '../propertykey.dart',
        _ when typeDef.isStruct && typeDef.name.endsWith('VARIANT') =>
          '../variant.dart',

        //
        _ when typeDef.isStruct && !excludedImports.contains(typeDef.name) =>
          '../structs.g.dart',
        _ => null
      };

  String? getImportForTypeIdentifier(TypeIdentifier typeIdentifier) =>
      switch (typeIdentifier) {
        _ when typeIdentifier.name == 'System.Guid' => '../guid.dart',
        _ when typeIdentifier.name.startsWith('Windows') =>
          getImportForTypeDef(typeIdentifier.type!),
        _ => null
      };

  Set<String> get importsForClass {
    final imports = <String>{};

    for (final method in typeDef.methods) {
      final paramsAndReturnType = [...method.parameters, method.returnType];
      for (final param in paramsAndReturnType) {
        // Add imports for a parameter itself (e.g. VARIANT)
        final import = getImportForTypeIdentifier(param.typeIdentifier);
        if (import != null) imports.add(import);

        // Add imports for a type within a pointer (e.g. Pointer<VARIANT>). Keep
        // unwrapping until there are no types left.
        var refType = param.typeIdentifier;
        while (refType.typeArg != null) {
          refType = refType.typeArg!;
          final import = getImportForTypeIdentifier(refType);
          if (import != null) imports.add(import);
        }
      }
    }

    return imports;
  }

  // COM interfaces can only inherit from one parent
  Set<String> get interfaceImports {
    if (typeDef.interfaces.isNotEmpty) {
      final interfaceName =
          lastComponent(typeDef.interfaces.first.name).toLowerCase();
      if (interfaceName.isNotEmpty) {
        return {'$interfaceName.dart', 'iunknown.dart'};
      }
    }

    return {};
  }

  Set<String> get extraImports => {
        // If a COM class will be generated for this interface, `utils.dart`
        // needs to be imported to gain access to the `createCOMObject` function
        // from the generated COM class.
        if (MetadataStore.getMetadataForType(
                ComClassProjection.generateClassName(typeDef)) !=
            null)
          '../utils.dart',

        if (hasMethods) '../types.dart',

        // COM getters need these imports to allocate memory, do `FAILED` check,
        // and free memory.
        if (hasGetters) ...{
          'package:ffi/ffi.dart',
          '../exceptions.dart',
          '../macros.dart',
          '../utils.dart',
        },
      };

  String get importHeader {
    final imports = {
      ...coreImports,
      ...importsForClass,
      ...interfaceImports,
      ...extraImports
    };
    return sortImports(
      imports.map((import) => "import '$import';").toList(),
    ).join('\n');
  }

  String get guidConstants => '''
/// @nodoc
const IID_$shortName = '${typeDef.guid}';
''';

  String get fromInterfaceConstructor => '''
factory $shortName.from(IUnknown interface) =>
    $shortName(interface.toInterface(IID_$shortName));
''';

  String get category => 'com';

  String get classPreamble {
    final wrappedComment = wrapCommentText(comment);
    final categoryComment = '/// {@category $category}';

    return wrappedComment.isNotEmpty
        ? '$wrappedComment\n///\n$categoryComment'
        : categoryComment;
  }

  String get extendsClause =>
      inheritsFrom.isEmpty ? '' : 'extends $inheritsFrom';

  bool get hasGetters => typeDef.methods.any((m) => m.isGetProperty);

  bool get hasMethods => typeDef.methods.isNotEmpty;

  String get constructor => inheritsFrom.isEmpty
      ? '$shortName(this.ptr) : _vtable = ptr.value.cast<${shortName}Vtbl>().ref;\n\nfinal VTablePointer ptr;'
      : hasMethods
          ? '$shortName(super.ptr) : _vtable = ptr.value.cast<${shortName}Vtbl>().ref;'
          : '$shortName(super.ptr);';

  String get vtableField => hasMethods ? 'final ${shortName}Vtbl _vtable;' : '';

  String get vtableStruct => [
        '''
/// @nodoc
base class ${shortName}Vtbl extends Struct {''',
        if (inheritsFrom.isNotEmpty) 'external ${inheritsFrom}Vtbl baseVtbl;',
        '''
${methodProjections.map((p) => 'external Pointer<NativeFunction<${p.nativePrototype}>> ${p.name};').join('\n')}
}
'''
      ].join('\n');

  @override
  String toString() => '''
$header
$importHeader
$guidConstants

$classPreamble
class $shortName $extendsClause {
  $constructor

  $vtableField

  $fromInterfaceConstructor

  ${methodProjections.map((p) => p.toString()).join('\n')}
}

$vtableStruct
''';
}
