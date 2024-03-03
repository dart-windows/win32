// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:win32/win32.dart';
import 'package:winmd/winmd.dart';

import '../extension/string.dart';
import '../extension/typedef.dart';

/// Represents a Dart projection for a Win32 enum defined by a [TypeDef].
class EnumProjection {
  /// Creates an instance of this class for the given Win32 enum [typeDef] and
  /// optional [comment].
  EnumProjection(TypeDef typeDef, {this.comment = ''})
      : bits = typeDef.fields.first.bits,
        fields = typeDef.fields,
        isBitwiseEnum = typeDef.isBitwiseEnum,
        name = typeDef.safeIdentifier;

  /// The comment associated with the enum.
  final String comment;

  /// The number of bits for the base type of the enum (e.g., `8`, `16`).
  final int bits;

  /// The fields of the enum.
  final List<Field> fields;

  /// Whether the enum is a bitwise enum.
  final bool isBitwiseEnum;

  /// The name of the enum converted to safe Dart identifier.
  final String name;

  // The field projections of the enum.
  List<String> get fieldProjections {
    final projections = <String>[];

    // The first field is always the special field `_value`, describing the
    // underlying type of the enum (e.g. `Int32`, `Uint16`).
    for (final field in fields.skip(1)) {
      final identifier = field.name.safeIdentifier;
      final value = '$name(${field.value.toHexString(bits)});';
      projections.add('static const $identifier = $value');
    }

    return projections;
  }

  @override
  String toString() => [
        if (comment.isNotEmpty) ...[comment.toDocComment(), '///'],
        '/// {@category enum}',
        'extension type const $name(int _) implements int {',
        fieldProjections.map((p) => '  $p').join('\n'),
        '}'
      ].join('\n');
}

extension on Field {
  /// The number of bits for the base type of the field.
  int get bits => switch (typeIdentifier.baseType) {
        BaseType.int8Type || BaseType.uint8Type => 8,
        BaseType.int16Type || BaseType.uint16Type => 16,
        BaseType.int32Type || BaseType.uint32Type => 32,
        BaseType.int64Type || BaseType.uint64Type => 64,
        _ => throw UnsupportedError('Unsupported enum underlying type: '
            '${typeIdentifier.baseType}'),
      };
}
