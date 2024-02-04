// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../extensions/method.dart';
import '../extensions/string.dart';
import '../extensions/typedef.dart';
import '../headers.dart';
import 'com_method.dart';
import 'com_property.dart';
import 'method.dart';
import 'type.dart';

/// Represents a Dart projection for a COM interface defined by a [TypeDef].
class ComInterfaceProjection {
  /// Creates an instance of this class for a [typeDef] and optional [comment].
  ComInterfaceProjection(
    this.typeDef, {
    this.comment = '',
  }) : classTypeDef = _findClassTypeDef(typeDef);

  /// The metadata associated with the corresponding class for the interface,
  /// if available.
  final TypeDef? classTypeDef;

  /// The comment associated with the interface.
  final String comment;

  /// The metadata associated with the interface.
  final TypeDef typeDef;

  /// Mapping of interface names to the corresponding class names.
  static const _interfaceToClassMapping = <String, String>{
    'Windows.Win32.UI.Accessibility.IUIAutomation':
        'Windows.Win32.UI.Accessibility.CUIAutomation',
    'Windows.Win32.UI.Accessibility.IUIAutomation2':
        'Windows.Win32.UI.Accessibility.CUIAutomation8',
  };

  /// Finds the corresponding class [TypeDef] for the given [interface].
  static TypeDef? _findClassTypeDef(TypeDef interface) {
    final className = generateClassName(interface);
    final classTypeDef = interface.scope.findTypeDef(className);
    return classTypeDef?.guid == null ? null : classTypeDef;
  }

  /// Generates the corresponding class name for the given [interface].
  ///
  /// For example, given the interface `Windows.Win32.UI.Shell.IShellLinkW`,
  /// this method returns `Windows.Win32.UI.Shell.ShellLink`.
  static String generateClassName(TypeDef interface) {
    if (_interfaceToClassMapping.containsKey(interface.name)) {
      return _interfaceToClassMapping[interface.name]!;
    }

    final interfaceNameAsList = interface.nameWithoutEncoding.split('.');

    // Strip off the 'I' from the last component
    final fullyQualifiedClassName =
        (interfaceNameAsList.sublist(0, interfaceNameAsList.length - 1)
              ..add(interfaceNameAsList.last.substring(1)))
            .join('.');

    return fullyQualifiedClassName;
  }

  List<MethodProjection>? _methodProjections;

  /// The method projections for the methods of the interface.
  List<MethodProjection> get methodProjections =>
      _methodProjections ??= _cacheMethodProjections();

  List<MethodProjection> _cacheMethodProjections() => typeDef.methods
      .map((m) => switch (m) {
            _ when m.canBeProjectedAsGetter => ComGetPropertyProjection(m),
            _ when m.canBeProjectedAsSetter => ComSetPropertyProjection(m),
            _ => ComMethodProjection(m),
          })
      .toList();

  /// The short name of the interface (e.g., `IUnknown`).
  String get shortName => typeDef.safeIdentifier;

  /// The interface that this interface inherits from (e.g., `IDispatch`).
  String get inheritsFrom => typeDef.interfaces.isNotEmpty
      ? typeDef.interfaces.first.safeIdentifier
      : '';

  /// The header of the generated file.
  String get header => comInterfaceHeader;

  /// Set of core imports for the interface.
  Set<String> get coreImports => {
        'dart:ffi',
        '../extensions/iunknown.dart',
        if (shortName != 'IUnknown') 'iunknown.g.dart',
      };

  /// The import for the given [typeDef].
  String? getImportForTypeDef(TypeDef typeDef) => switch (typeDef) {
        _ when typeDef.isDelegate => '../callbacks.dart',
        _ when typeDef.isInterface => '../types.dart',
        _
            when typeDef.isWrapperStruct &&
                specialTypes.containsKey(typeDef.name) =>
          'package:ffi/ffi.dart',
        _ when typeDef.isStruct && !typeDef.isWrapperStruct =>
          '../structs.g.dart',
        _ => null
      };

  /// The import for the given [typeIdentifier].
  String? getImportForTypeIdentifier(TypeIdentifier typeIdentifier) =>
      switch (typeIdentifier) {
        _ when typeIdentifier.name == 'System.Guid' => '../guid.dart',
        _ when typeIdentifier.name.startsWith('Windows') =>
          getImportForTypeDef(typeIdentifier.type!),
        _ => null
      };

  /// Set of imports required for the interface based on its methods.
  ///
  /// It analyzes the parameters and return types of the methods to determine
  /// the necessary imports.
  Set<String> get importsForInterface {
    final imports = <String>{};

    // Iterate through each method in the interface.
    for (final method in typeDef.methods) {
      // Combine method parameters and return type to analyze all type
      // identifiers.
      final paramsAndReturnType = [...method.parameters, method.returnType];

      // Iterate through each parameter and return type to add imports.
      for (final param in paramsAndReturnType) {
        // Add imports for a parameter itself (e.g., VARIANT).
        final import = getImportForTypeIdentifier(param.typeIdentifier);
        if (import != null) imports.add(import);

        // Add imports for types within a pointer (e.g., Pointer<VARIANT>).
        // Keep unwrapping until there are no types left.
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

  /// The import for the inherited interface.
  String? get interfaceImport => switch (typeDef.interfaces) {
        // COM interfaces can only inherit from single interface.
        [final parent] => parent.safeFilename,
        _ => null
      };

  /// Set of extra imports required for the interface.
  Set<String> get extraImports => {
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

  /// The import header of the generated file.
  String get importHeader {
    final imports = {
      ...coreImports,
      ...importsForInterface,
      if (interfaceImport != null) interfaceImport,
      ...extraImports
    };
    return imports
        .map((import) => "import '$import';")
        .toList()
        .sortImports()
        .join('\n');
  }

  /// The constant for the interface's IID (Interface ID).
  String get interfaceGuidConstant => switch (typeDef.guid) {
        final guid? => "/// @nodoc\nconst IID_$shortName = '$guid';",
        _ => throw StateError('$typeDef has no guid.')
      };

  /// The `.from` constructor for the generated class that takes an `IUnknown`
  /// object and casts it to this interface.
  String get fromInterfaceConstructor => '''
factory $shortName.from(IUnknown interface) =>
    $shortName(interface.toInterface(IID_$shortName));
''';

  /// The category to use for the dartdoc `@category` tag.
  String get category => 'com';

  /// The class preamble that includes a doc comment and a dartdoc `@category`
  /// tag derived from the [category].
  String get classPreamble => [
        if (comment.isNotEmpty) ...[comment.toDocComment(), '///'],
        '/// {@category $category}',
      ].join('\n');

  /// The `extends` clause of the generated class.
  String get extendsClause =>
      inheritsFrom.isEmpty ? '' : 'extends $inheritsFrom';

  /// Whether the interface has methods.
  bool get hasMethods => typeDef.methods.isNotEmpty;

  /// Whether the interface has properties.
  bool get hasProperties => typeDef.methods
      .any((m) => m.canBeProjectedAsGetter || m.canBeProjectedAsSetter);

  /// The default constructor of the generated class.
  String get constructor {
    if (shortName == 'IUnknown') {
      return '$shortName(this.ptr) : _vtable = ptr.value.cast<${shortName}Vtbl>().ref;';
    }

    if (hasMethods) {
      return '$shortName(super.ptr) : _vtable = ptr.value.cast<${shortName}Vtbl>().ref;';
    }

    // Interfaces that don't have any methods don't have the `_vtable` field.
    return '$shortName(super.ptr);';
  }

  /// The pointer field of the generated class.
  String get ptrField =>
      shortName == 'IUnknown' ? 'final VTablePointer ptr;' : '';

  /// The `_vtable` field of the generated class.
  String get vtableField => hasMethods ? 'final ${shortName}Vtbl _vtable;' : '';

  /// The v-table struct that contains the function pointers for the methods of
  /// the interface.
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

  /// The constant for the guid of the class, if available.
  String get classGuidConstant => switch (classTypeDef?.guid) {
        final guid? =>
          "/// @nodoc\nconst ${classTypeDef!.safeTypename} = '$guid';",
        _ => '',
      };

  @override
  String toString() => '''
$header
$importHeader
$interfaceGuidConstant

$classPreamble
class $shortName $extendsClause {
  $constructor

  $ptrField

  $vtableField

  $fromInterfaceConstructor

  ${methodProjections.join('\n')}
}

$vtableStruct

$classGuidConstant
''';
}
