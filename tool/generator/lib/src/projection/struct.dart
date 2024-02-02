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
      final instanceName = field.instanceName;
      final typeProjection = TypeProjection(field.typeIdentifier);
      final fieldType = field.isCharArray && !field.isFlexibleArray
          ? 'String'
          : typeProjection.dartType.safeTypename;
      final fieldName = field.name.safeIdentifier;
      buffer
        ..writeln('$fieldType get $fieldName => this.$instanceName;')
        ..writeln(
            'set $fieldName($fieldType value) => this.$instanceName = value;')
        ..writeln();
    }

    buffer.write('}');

    return buffer.toString();
  }
}
