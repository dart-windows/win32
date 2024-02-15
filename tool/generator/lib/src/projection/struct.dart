// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../extensions/collection.dart';
import '../extensions/field.dart';
import '../extensions/string.dart';
import '../extensions/typedef.dart';
import 'field.dart';
import 'type.dart';

/// Represents a Dart projection for a struct defined by a [TypeDef].
class StructProjection {
  /// Creates an instance of this class for a [typeDef] and optional [comment].
  StructProjection(this.typeDef, {this.comment = ''})
      : name = typeDef.safeTypename;

  /// The comment associated with the struct.
  final String comment;

  /// The name of the struct.
  final String name;

  /// The metadata associated with the struct.
  final TypeDef typeDef;

  /// The base type of the struct.
  String get baseType => switch (typeDef) {
        _ when typeDef.isUnion => 'Union', // e.g., CY.
        _ => 'Struct'
      };

  /// The packing alignment of the struct.
  int get packingAlignment => switch (typeDef) {
        // Tokens like System.Guid have no packing alignment.
        _ when typeDef.token == 0 => 0,
        _ => typeDef.classLayout.packingAlignment ?? 0
      };

  /// The class preamble that includes a doc comment, a dartdoc `@category` tag
  /// derived from the [baseType], and an optional `@Packed` annotation if the
  /// [packingAlignment] is greater than `0`.
  String get classPreamble => [
        if (comment.isNotEmpty) ...[comment.toDocComment(), '///'],
        '/// {@category ${baseType.toLowerCase()}}',
        if (packingAlignment > 0) '@Packed($packingAlignment)',
      ].join('\n');

  /// The class modifier for the generated class.
  String get classModifier =>
      typeDef.isNested || typeDef.isUnion ? 'sealed' : 'base';

  /// The class header for the generated class.
  String get classHeader => '$classModifier class $name extends $baseType';

  /// The field projections of the struct.
  List<FieldProjection> get fieldProjections =>
      typeDef.fields.map(FieldProjection.new).toFixedList();

  String? _propertyAccessors;

  /// The property accessors for a nested struct to allow accessing its members
  /// from the parent type.
  String get propertyAccessors =>
      _propertyAccessors ??= _cachePropertyAccessors();

  String _cachePropertyAccessors() {
    // Property accessors are only generated for nested structs.
    if (!typeDef.isNested) return '';

    // Try to find the parent field corresponding to the current TypeDef.
    // This ignores Array<T> or Pointer<T> types because property accessors are
    // not generated for them.
    final parentField = typeDef.enclosingClass!.fields
        .where((field) => field.typeIdentifier.type == typeDef)
        .firstOrNull;

    // If the parent field is found, then generate property accessors for the
    // nested struct.
    if (parentField != null) {
      return _propertyAccessors ??= typeDef.propertyAccessors;
    }

    // Otherwise, return an empty string.
    return '';
  }

  List<StructProjection>? _nestedTypeProjections;

  /// The nested type projections of the struct.
  List<StructProjection> get nestedTypeProjections =>
      _nestedTypeProjections ??= _cacheNestedTypeProjections();

  List<StructProjection> _cacheNestedTypeProjections() => typeDef.fields
      .where((f) => f.isNested || f.isNestedArray || f.isNestedPointer)
      .map((field) => StructProjection(field.isNested
          ? field.typeIdentifier.type!
          : field.typeIdentifier.typeArg!.type!))
      .toFixedList();

  /// Special wrapper structs that require a custom Dart type projection.
  ///
  /// This is used to handle special cases where the struct is a wrapper around
  /// a native string type, such as `BSTR`, `PSTR`, or `PWSTR`.
  ///
  /// They are projected as a `Pointer<Utf16>` or `Pointer<Utf8>` instead of a
  /// `Pointer<Uint16>` or `Pointer<Uint8>`.
  static const _specialWrapperStructs = <String, String>{
    'Windows.Win32.Foundation.BSTR': 'Pointer<Utf16>',
    'Windows.Win32.Foundation.PSTR': 'Pointer<Utf8>',
    'Windows.Win32.Foundation.PWSTR': 'Pointer<Utf16>',
  };

  @override
  String toString() {
    if (typeDef.isWrapperStruct) {
      final [fieldProjection] = fieldProjections;
      final nativeType = _specialWrapperStructs.containsKey(typeDef.name)
          ? _specialWrapperStructs[typeDef.name]!
          : fieldProjection.typeProjection.nativeType;
      return '''
/// {@category struct}
typedef $name = $nativeType;''';
    }

    return '''
$classPreamble
$classHeader {
  ${fieldProjections.join('\n\n')}
}

$propertyAccessors

${nestedTypeProjections.join('\n\n')}
''';
  }
}

extension NestedStructExtension on TypeDef {
  /// The property accessors for a nested struct to allow accessing its members
  /// from the parent type.
  ///
  /// This is particularly useful for anonymous nested structs, commonly found
  /// in more complex Win32 structs.
  String get propertyAccessors {
    final rootType = this.rootType;
    final extensionName = '${safeTypename}_Extension';
    final buffer = StringBuffer()
      ..writeln('extension $extensionName on ${rootType.safeTypename} {');

    // Iterate through the fields of the nested struct and generate property
    // accessors.
    for (final field in fields) {
      // Skip reserved and obsolete fields as they are not exposed.
      if (field.name.contains('Reserved') ||
          field.name.startsWith('__OBSOLETE')) {
        continue;
      }

      final instanceName = field.instanceName;
      final fieldName = field.name.safeIdentifier;
      final typeProjection = TypeProjection(field.typeIdentifier);
      final fieldType = field.isCharArray && !field.isFlexibleArray
          ? 'String'
          : typeProjection.dartType.safeTypename;

      // Special handling for VARIANT and PROPVARIANT fields.
      if (safeTypename.endsWith('VARIANT_0_0_0')) {
        if (fieldName == 'boolVal') {
          // Generate getter/setter for handling the `VARIANT_BOOL` value.
          _handleVariantBoolVal(buffer, fieldName, instanceName);
          continue;
        }

        if (fieldName == 'ullVal') {
          // Generate getter/setter for handling the `ULONGLONG` value.
          _handleVariantUllVal(buffer, fieldName, instanceName);
          continue;
        }
      }

      buffer
        ..writeln('$fieldType get $fieldName => this.$instanceName;')
        ..writeln(
            'set $fieldName($fieldType value) => this.$instanceName = value;')
        ..writeln();
    }

    buffer.write('}');

    return buffer.toString();
  }

  /// Handles the conversion of the `VARIANT`'s `boolVal` field, representing a
  /// `VARIANT_BOOL` value to a Dart [bool].
  void _handleVariantBoolVal(
      StringBuffer buffer, String fieldName, String instanceName) {
    buffer
      ..writeln('bool get $fieldName => this.$instanceName == VARIANT_TRUE;')
      ..writeln('set $fieldName(bool value) => this.$instanceName = value '
          '? VARIANT_TRUE : VARIANT_FALSE;')
      ..writeln();
  }

  /// Handles the conversion of the `VARIANT`'s `ullVal` field, representing a
  /// `ULONGLONG` (64-bit unsigned integer) value to a [BigInt].
  void _handleVariantUllVal(
      StringBuffer buffer, String fieldName, String instanceName) {
    buffer
      ..write('''
BigInt get ullVal {
  final src = this.$instanceName;
  final hi = ((src & 0xFFFFFFFF00000000) >> 32)
      .toUnsigned(32)
      .toRadixString(16)
      .padLeft(8, '0');
  final lo = (src & 0x00000000FFFFFFFF).toRadixString(16).padLeft(8, '0');
  return BigInt.parse('\$hi\$lo', radix: 16);
}
''')
      ..write('''
set $fieldName(BigInt value) {
  final hi = ((value & BigInt.from(0xFFFFFFFF00000000)) >> 32).toInt();
  final lo = (value & BigInt.from(0x00000000FFFFFFFF)).toInt();
  this.$instanceName = (hi << 32) + lo;
}
''')
      ..writeln();
  }
}
