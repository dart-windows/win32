// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../doc/docs_provider.dart';
import '../extension/field.dart';
import '../extension/string.dart';
import '../extension/typedef.dart';
import 'type.dart';

/// Represents a Dart projection for a struct field defined by a [Field].
class FieldProjection {
  /// Creates an instance of this class for a [field].
  FieldProjection(this.field)
      : docs = (DocsProvider.getDocs(field.parent.name.lastComponent) ??
                DocsProvider.getDocs(
                    field.parent.nameWithoutEncoding.lastComponent))
            ?.fields[field.name]
            ?.sanitize(),
        name = field.name.safeIdentifier,
        typeProjection = TypeProjection(field.typeIdentifier);

  /// The documentation associated with the field.
  final String? docs;

  /// The metadata associated with the field.
  final Field field;

  /// The name of the field converted to safe Dart identifier.
  final String name;

  /// The type projection for the field.
  final TypeProjection typeProjection;

  /// The Dart type of the field.
  String get type => typeProjection.dartType.safeTypename;

  @override
  String toString() => [
        if (field.representsStructSize)
          '  /// The size of the struct in bytes.'
        else if (docs != null && !(field.isCharArray && !field.isFlexibleArray))
          docs!.toDocComment(wrapLength: 78),
        if (typeProjection.attribute.isNotEmpty) typeProjection.attribute,

        // Don't strip off leading underscores if the field is obsolete.
        if (field.name.startsWith('__OBSOLETE'))
          '  // ignore: unused_field\nexternal $type ${field.name};'

        // Mark the field private if it is reserved.
        else if (field.name.contains('Reserved'))
          '  // ignore: unused_field\nexternal $type _${field.name};'

        // Generate a String getter/setter for char arrays.
        else if (field.isCharArray && !field.isFlexibleArray)
          '''
external $type _$name;
${docs != null ? '\n${docs!.sanitizeCharArray().toDocComment(wrapLength: 78)}' : ''}
String get $name {
  final charCodes = <int>[];
  for (var i = 0; i < ${field.arrayUpperBound}; i++) {
    if (_$name[i] == 0x00) break;
    charCodes.add(_$name[i]);
  }
  return String.fromCharCodes(charCodes);
}

set $name(String value) {
  final stringToStore = value.padRight(${field.arrayUpperBound}, '\\x00');
  for (var i = 0; i < ${field.arrayUpperBound}; i++) {
    _$name[i] = stringToStore.codeUnitAt(i);
  }
}'''
        else
          'external $type $name;'
      ].join('\n');
}

extension on String {
  // TODO(halildurmus): Refactor this method to use a more efficient approach.
  String sanitize() => replaceAllMapped(
          RegExp(r'(\w)\.\)'), (match) => '${match.group(1)}).')
      .split(RegExp(r'(?<=[.!?])\s'))
      .first
      .replaceAll(RegExp(r'\s+'), ' ')
      .replaceAll(RegExp(r'<div class=".*">'), '')
      .replaceAll(r'\[1\]', '')
      .replaceAll('<b><b>', '<b>')
      .replaceAll('</b>*</b>', '*</b>')
      .replaceAllMapped(
          RegExp(
              r'\[(\*\*)?([\w\s_\-\*\\]+)(\*\*)?\]\(([\w\s_\(\)=\.\-\*\/#]+)\)'),
          (match) => '`${match.group(2)}`')
      .replaceAll(RegExp(r'\\_'), '_')
      .replaceFirst(RegExp(r'^(Not used|The following|Unused).*'), '')
      .replaceFirst(r'[out]', '')
      .replaceFirst(
          RegExp(
              r'^Type: (<b>|\*\*)(`)?(const )?(<a href=".*">)?([\w\s_\*\[\d+\]]+)(<\/a>)?(\*|\[\d+\]|(\[\w+\+\d+\]))?(`)?(<\/b>|\*\*)'),
          '')
      .replaceFirst(RegExp(r'^\s?(<b>)?Windows .* and later(</b>)?\.$'), '')
      .replaceFirst(
          RegExp(
              r'^The <b>bmiColors</b> member contains one of the following: <ul> <li>'),
          '')
      .replaceFirstMapped(
          RegExp(
              r'^\s?A (pointer to an? )?<a href=".*">(.*)<\/a> (hook procedure|structure)(\.| that (.*))'),
          (match) =>
              'A ${match.group(1) ?? ''}`${match.group(2)}` ${match.group(3)}${match.group(4)}')
      .replaceAllMapped(RegExp(r'(\*\*|<b>)(GUID|TRUE|FALSE)(\*\*|<\/b>)'),
          (match) => '[${match.group(2)}]')
      .replaceFirstMapped(RegExp(r'`sizeof\((.*)\)`'),
          (match) => '`sizeOf<${match.group(1)}>()`')
      .replaceAll(RegExp(r'(`\*\*|\*\*`)'), '`')
      .trim()
      .capitalize();

  String sanitizeCharArray() =>
      replaceFirst('An array of characters', 'A string')
          .replaceFirst('A pointer to a Unicode string', 'A string')
          .replaceFirst('null-terminated ', '');
}
