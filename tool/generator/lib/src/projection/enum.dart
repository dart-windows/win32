// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:win32/win32.dart';
import 'package:winmd/winmd.dart';

import '../doc/api_details.dart';
import '../doc/docs_provider.dart';
import '../docs.dart';
import '../extension/string.dart';
import '../extension/typedef.dart';

/// Represents a Dart projection for a Win32 enum defined by a [TypeDef].
class EnumProjection {
  /// Creates an instance of this class for the given Win32 enum [typeDef].
  EnumProjection(this.typeDef)
      : bits = typeDef.fields.first.bits,
        fields = typeDef.fields,
        isBitwiseEnum = typeDef.isBitwiseEnum,
        name = typeDef.safeIdentifier;

  /// The number of bits for the base type of the enum (e.g., `8`, `16`).
  final int bits;

  /// The fields of the enum.
  final List<Field> fields;

  /// Whether the enum is a bitwise enum.
  final bool isBitwiseEnum;

  /// The name of the enum converted to safe Dart identifier.
  final String name;

  /// The metadata associated with the enum.
  final TypeDef typeDef;

  /// The comment associated with the callback.
  String get comment {
    final buffer = StringBuffer();

    final docs = enumDocs[name] ??
        DocsProvider.getDocs(typeDef.name.lastComponent) ??
        DocsProvider.getDocs(typeDef.nameWithoutEncoding.lastComponent);
    if (docs case ApiDetails(:final description, :final helpLink)) {
      buffer.write(description);
      if (helpLink != null) {
        buffer.write(' \nTo learn more about this enum, see <$helpLink>.');
      }
    }

    buffer.write(' \n{@category enum}');

    return buffer.toString().toDocComment();
  }

  /// The field projections of the enum.
  List<String> get fieldProjections {
    final projections = <String>[];

    final docs = enumDocs[name] ??
        DocsProvider.getDocs(typeDef.name.lastComponent) ??
        DocsProvider.getDocs(typeDef.nameWithoutEncoding.lastComponent);

    // The first field is always the special field `_value`, describing the
    // underlying type of the enum (e.g. `Int32`, `Uint16`).
    for (final field in fields.skip(1)) {
      final fieldComment = docs?.fields[field.name]?.sanitize().toDocComment();
      final identifier = field.name.safeIdentifier;
      final value = '$name(${field.value.toHexString(bits)});';
      projections.add([
        if (fieldComment != null) fieldComment,
        'static const $identifier = $value'
      ].join('\n'));
    }

    return projections;
  }

  @override
  String toString() => [
        if (comment.isNotEmpty) comment,
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

extension on String {
  // TODO(halildurmus): Refactor this method to use a more efficient approach.
  String sanitize() => replaceAllMapped(
          RegExp(r'(\w)\.\)'), (match) => '${match.group(1)}).')
      .split(RegExp(r'(?<=[.!?])\s'))
      .first
      .replaceAll(RegExp(r'\s+'), ' ')
      .replaceAll(RegExp(r'<div class=".*">'), '')
      .replaceAllMapped(
          RegExp(
              r'\[(\*\*)?([\w\s_\-\*\\]+)(\*\*)?\]\(([\w\s_\(\)=\.\-\*\/#]+)\)'),
          (match) => '`${match.group(2)}`')
      .replaceFirst(RegExp(r'^Documentation varies per use.*'), '')
      .replaceFirst(RegExp(r'^\*\*Introduced in Windows .*.\*\*\s?'), '')
      .replaceFirst(RegExp(r'^(Not used|Unused).*'), '')
      .replaceFirst(RegExp(r'^This value is obsolete.$'), 'Obsolete.')
      .replaceFirst(RegExp(r'^This value is reserved.$'), 'Reserved.')
      .replaceFirst(RegExp(r'^\s?(<i>)?p\w+.*'), '')
      .replaceFirst(RegExp(r'^\s?(\(int\))?0x\w+\.'), '')
      .replaceFirst(RegExp(r'^\s?(<b>)?Windows .* and later(</b>)?\.$'), '')
      .replaceFirst(
          RegExp(r'^\s?(<b>)?(Prior to )?Windows .*:\s?(</b>)?.*'), '')
      .replaceFirst(RegExp(r', see Remarks for more info.'), '.')
      .replaceFirst(
          RegExp(
              r'^\s?\[Windows 10 October 2018 Update \(version 1809\) and newer\]\s?'),
          '')
      .trim()
      .capitalize();
}
