// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

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

  /// The field projections for the fields of the struct.
  String get fieldsProjection =>
      typeDef.fields.map(FieldProjection.new).join('\n\n');

  String? _nestedTypes;

  /// The nested types of the struct.
  String get nestedTypes => _nestedTypes ??= _cacheNestedTypes();

  String _cacheNestedTypes() {
    final buffer = StringBuffer();

    for (final field in typeDef.fields) {
      if (field.isNested || field.isNestedArray || field.isNestedPointer) {
        final type = field.isNested
            ? field.typeIdentifier.type!
            : field.typeIdentifier.typeArg!.type!;
        final projection = StructProjection(type);
        buffer.writeln(projection);

        if (field.isNested) {
          // Add property accessors for the nested struct.
          buffer
            ..writeln()
            ..write(type.propertyAccessors);
        }
      }
    }

    return buffer.toString();
  }

  @override
  String toString() => '''
$classPreamble
$classModifier class $name extends $baseType {
  $fieldsProjection
}

$nestedTypes
''';
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
