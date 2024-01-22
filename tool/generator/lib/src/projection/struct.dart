// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../extensions/field.dart';
import '../extensions/string.dart';
import 'field.dart';
import 'nested_struct.dart';

/// Represents a Dart projection of a Struct typedef.
class StructProjection {
  StructProjection(this.typeDef, String structName, {this.comment = ''})
      : structName = structName.safeTypename;

  final TypeDef typeDef;
  final String structName;
  final String comment;

  String get baseType {
    // Some structs may be opaque types. For example, WS_ERROR. Others may be
    // unions, e.g. INPUT.
    if (typeDef.fields.isEmpty) return 'Opaque';
    if (typeDef.isUnion) return 'Union';
    return 'Struct';
  }

  int? _packingAlignment;
  int get packingAlignment =>
      _packingAlignment ??= _calculatePackingAlignment(typeDef);

  int _calculatePackingAlignment(TypeDef typeDef) {
    // Tokens like System.Guid have no packing alignment.
    if (typeDef.token == 0) return 0xFF;

    final alignment = typeDef.classLayout.packingAlignment ?? 0xFF;
    return alignment == 0xFF ? 0 : alignment;
  }

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
      typeDef.fields.map(FieldProjection.new).join('\n\n');

  String? _nestedTypes;
  String get nestedTypes => _nestedTypes ??= _cacheNestedTypes();

  String _cacheNestedTypes() {
    final buffer = StringBuffer();
    final nestedTypes = <({int index, TypeDef type})>[];

    var fieldIdx = 0;
    for (final field in typeDef.fields) {
      if (field.isNested) {
        nestedTypes.add((index: fieldIdx, type: field.typeIdentifier.type!));
        fieldIdx++;
      } else if (field.isNestedArray) {
        fieldIdx++;
      }
    }

    // Add any nested types on which there is a dependency
    for (final (:index, :type) in nestedTypes) {
      // Nested types should have just one leading underscore, so we strip the
      // others off and add one back.
      final nestedTypeProjection = NestedStructProjection(
        type,
        '${structName}_$index',
        rootTypePackingAlignment: packingAlignment,
      );

      buffer.write('\n$nestedTypeProjection\n');
    }

    return buffer.toString();
  }

  String get _nestedArrays {
    final buffer = StringBuffer();
    final nestedArrays = <String, ({int index, TypeDef type})>{};

    var fieldIdx = 0;
    for (final field in typeDef.fields) {
      if (field.isNestedArray) {
        nestedArrays[field.typeIdentifier.typeArg!.name] =
            (index: fieldIdx, type: field.typeIdentifier.typeArg!.type!);
        fieldIdx++;
      } else if (field.isNested) {
        fieldIdx++;
      }
    }

    for (final field in nestedArrays.keys) {
      final (:index, :type) = nestedArrays[field]!;
      final nestedTypeProjection =
          StructProjection(type, '${structName}_$index');
      buffer.write('\n$nestedTypeProjection\n');
    }

    return buffer.toString();
  }

  @override
  String toString() => '''
$classPreamble
$classModifier class $structName extends $baseType {
  $fieldsProjection
}

$nestedTypes
$_nestedArrays
''';
}
