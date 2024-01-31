// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../extensions/method.dart';
import '../extensions/string.dart';
import '../extensions/typedef.dart';
import '../headers.dart';
import 'com_class.dart';
import 'com_method.dart';
import 'com_property.dart';
import 'method.dart';
import 'type.dart';

class ComInterfaceProjection {
  ComInterfaceProjection(this.typeDef, [this.comment = '']);

  final TypeDef typeDef;
  final String comment;

  List<MethodProjection>? _methodProjections;
  List<MethodProjection> get methodProjections =>
      _methodProjections ??= _cacheMethodProjections();

  List<MethodProjection> _cacheMethodProjections() => typeDef.methods
      .map((m) => switch (m) {
            _ when m.canBeProjectedAsGetter => ComGetPropertyProjection(m),
            _ when m.canBeProjectedAsSetter => ComSetPropertyProjection(m),
            _ => ComMethodProjection(m),
          })
      .toList();

  String get shortName => typeDef.safeIdentifier;

  String get inheritsFrom => typeDef.interfaces.isNotEmpty
      ? typeDef.interfaces.first.safeIdentifier
      : '';

  String get header => comInterfaceHeader;

  Set<String> get coreImports => {'dart:ffi', '../extensions/iunknown.dart'};

  String? getImportForTypeDef(TypeDef typeDef) => switch (typeDef) {
        _ when typeDef.isDelegate => '../callbacks.dart',
        _ when typeDef.isInterface => '../types.dart',

        //
        _ when typeDef.isStruct && specialTypes.containsKey(typeDef.name) =>
          'package:ffi/ffi.dart',

        // These structs are manually generated
        _ when typeDef.isStruct && typeDef.name.endsWith('PROPERTYKEY') =>
          '../propertykey.dart',
        _ when typeDef.isStruct && typeDef.name.endsWith('VARIANT') =>
          '../variant.dart',

        //
        _ when typeDef.isStruct && !typeDef.isWrapperStruct =>
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
    if (typeDef.interfaces.isEmpty) return const {};
    final parentInterface = typeDef.interfaces.first;
    return {parentInterface.safeFilename, 'iunknown.g.dart'};
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

        // COM properties need these imports to allocate memory, do `FAILED`
        // check, and free memory.
        if (hasProperties) ...{
          'package:ffi/ffi.dart',
          '../exceptions.dart',
          '../macros.dart',
          '../utils.dart',
        }
      };

  String get importHeader {
    final imports = {
      ...coreImports,
      ...importsForClass,
      ...interfaceImports,
      ...extraImports
    };
    return imports
        .map((import) => "import '$import';")
        .toList()
        .sortImports()
        .join('\n');
  }

  String get guidConstant => switch (typeDef.guid) {
        final guid? => "/// @nodoc\nconst IID_$shortName = '$guid';",
        _ => throw StateError('$typeDef has no guid.')
      };

  String get fromInterfaceConstructor => '''
factory $shortName.from(IUnknown interface) =>
    $shortName(interface.toInterface(IID_$shortName));
''';

  String get category => 'com';

  String get classPreamble {
    final wrappedComment = comment.toDocComment();
    final categoryComment = '/// {@category $category}';

    return wrappedComment.isNotEmpty
        ? '$wrappedComment\n///\n$categoryComment'
        : categoryComment;
  }

  String get extendsClause =>
      inheritsFrom.isEmpty ? '' : 'extends $inheritsFrom';

  bool get hasMethods => typeDef.methods.isNotEmpty;

  bool get hasProperties => typeDef.methods
      .any((m) => m.canBeProjectedAsGetter || m.canBeProjectedAsSetter);

  String get constructor {
    if (inheritsFrom.isEmpty) {
      return '''
$shortName(this.ptr) : _vtable = ptr.value.cast<${shortName}Vtbl>().ref;

final VTablePointer ptr;
''';
    }

    return hasMethods
        ? '$shortName(super.ptr) : _vtable = ptr.value.cast<${shortName}Vtbl>().ref;'
        : '$shortName(super.ptr);';
  }

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
$guidConstant

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
