// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../extensions/string.dart';
import '../extensions/typedef.dart';
import 'field.dart';
import 'nested_struct.dart';

/// Represents a Dart projection of a Struct typedef.
class StructProjection {
  StructProjection(this.typeDef, this.structName, {this.comment = ''});

  final TypeDef typeDef;
  final String structName;
  final String comment;

  bool _isNestedType(Field field) =>
      field.typeIdentifier.type?.isNested ?? false;

  bool _hasNestedArray(Field field) =>
      field.typeIdentifier.typeArg?.type?.isNested != null &&
      field.typeIdentifier.typeArg!.type!.isNested;

  String get _baseType {
    // Some structs may be opaque types. For example, WS_ERROR. Others may be
    // unions, e.g. INPUT.
    if (typeDef.fields.isEmpty) return 'Opaque';
    if (typeDef.isUnion) return 'Union';
    return 'Struct';
  }

  String get classPreamble {
    final structCategoryComment =
        _projectedName.startsWith('_') ? '' : '/// {@category struct}';
    final classComment = comment.toDocComment();
    final docComment = classComment.isEmpty
        ? structCategoryComment
        : '$classComment\n///\n$structCategoryComment';

    return packingAlignment > 0
        ? '$docComment\n@Packed($packingAlignment)'
        : docComment;
  }

  String get _projectedName => typeDef.isNested
      ? '_${typeDef.mangleName().safeTypename}'
      : structName.safeTypename;

  String get _fieldsProjection =>
      typeDef.fields.map(FieldProjection.new).join('\n');

  String? _nestedTypes;
  String get nestedTypes => _nestedTypes ??= _cacheNestedTypes();

  String _cacheNestedTypes() {
    final buffer = StringBuffer();
    final nestedTypes = <TypeDef>{};

    for (final field in typeDef.fields) {
      if (_isNestedType(field)) {
        nestedTypes.add(field.typeIdentifier.type!);
      }
    }

    // Add any nested types on which there is a dependency
    var fieldIdx = 0;
    for (final nestedType in nestedTypes) {
      // Nested types should have just one leading underscore, so we strip the
      // others off and add one back.
      final nestedTypeProjection = NestedStructProjection(
        nestedType,
        '_${nestedType.name.stripLeadingUnderscores()}',
        suffix: fieldIdx,
        rootTypePackingAlignment: packingAlignment,
      );

      buffer.write('\n$nestedTypeProjection\n');
      fieldIdx++;
    }

    return buffer.toString();
  }

  int? _packingAlignment;
  int get packingAlignment =>
      _packingAlignment ??= calculatePackingAlignment(typeDef);

  int calculatePackingAlignment(TypeDef typeDef) {
    // Tokens like System.Guid have no packing alignment.
    if (typeDef.token == 0) return 0xFF;

    final alignment = typeDef.classLayout.packingAlignment ?? 0xFF;
    return alignment == 0xFF ? 0 : alignment;
  }

  String get _nestedArrays {
    final buffer = StringBuffer();
    final nestedArrays = <String, TypeDef>{};

    for (final field in typeDef.fields) {
      if (_hasNestedArray(field)) {
        nestedArrays[field.typeIdentifier.typeArg!.name] =
            field.typeIdentifier.typeArg!.type!;
      }
    }

    for (final field in nestedArrays.keys) {
      final nestedType = nestedArrays[field]!;
      final nestedTypeProjection =
          StructProjection(nestedType, '_${nestedType.name}');
      buffer.write('\n$nestedTypeProjection\n');
    }

    return buffer.toString();
  }

  @override
  String toString() => '''
$classPreamble
base class $_projectedName extends $_baseType {
  $_fieldsProjection
}

$nestedTypes
$_nestedArrays
''';
}
