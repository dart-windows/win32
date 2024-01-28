// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../extensions/field.dart';
import '../extensions/string.dart';
import '../extensions/typedef.dart';
import 'field.dart';
import 'type.dart';

/// Represents a Dart projection of a Struct [TypeDef].
class StructProjection {
  StructProjection(this.typeDef, String structName, {this.comment = ''})
      : structName = structName.safeTypename;

  final TypeDef typeDef;
  final String structName;
  final String comment;

  String get baseType => switch (typeDef) {
        // Some structs may be unions, e.g., INPUT.
        _ when typeDef.isUnion => 'Union',
        _ => 'Struct'
      };

  int get packingAlignment => switch (typeDef) {
        // Tokens like System.Guid have no packing alignment.
        _ when typeDef.token == 0 => 0,
        _ => typeDef.classLayout.packingAlignment ?? 0
      };

  String get classPreamble {
    final categoryComment = structName.startsWith('_')
        ? ''
        : '/// {@category ${baseType.toLowerCase()}}';
    final classComment = comment.toDocComment();
    final docComment = classComment.isEmpty
        ? categoryComment
        : '$classComment\n///\n$categoryComment';

    return packingAlignment > 0
        ? '$docComment\n@Packed($packingAlignment)'
        : docComment;
  }

  String get classModifier =>
      typeDef.isNested || typeDef.isUnion ? 'sealed' : 'base';

  String get fieldsProjection =>
      typeDef.fields.map(FieldProjection.new).join('\n');

  String? _nestedTypes;
  String get nestedTypes => _nestedTypes ??= _cacheNestedTypes();

  String _cacheNestedTypes() {
    final buffer = StringBuffer();

    var fieldIndex = 0;
    for (final field in typeDef.fields) {
      if (field.isNested || field.isNestedArray || field.isNestedPointer) {
        final type = field.isNested
            ? field.typeIdentifier.type!
            : field.typeIdentifier.typeArg!.type!;
        final name = '${structName}_$fieldIndex';
        final projection = StructProjection(type, name);
        buffer.writeln(projection);

        if (field.isNested) {
          // Add property accessors for the nested struct.
          buffer
            ..writeln()
            ..write(_propertyAccessors(type, name));
        }

        fieldIndex++;
      }
    }

    return buffer.toString();
  }

  /// A nested type needs a way to access its members from the parent type.
  /// This is necessary for anonymous nested types, of which there are many in
  /// more complex Win32 structs.
  String _propertyAccessors(TypeDef typeDef, String structName) {
    final rootType = typeDef.rootType;
    final extensionName = '${structName}_Extension';
    final buffer = StringBuffer()
      ..writeln('extension $extensionName on ${rootType.safeTypename} {');

    for (final field in typeDef.fields) {
      final instanceName = field.instanceName;
      final typeProjection = TypeProjection(field.typeIdentifier);
      final fieldType = typeProjection.isCharArray && !field.isFlexibleArray
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

  @override
  String toString() => '''
$classPreamble
$classModifier class $structName extends $baseType {
  $fieldsProjection
}

$nestedTypes
''';
}
