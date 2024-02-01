// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:collection';

extension StringHelpers on String {
  /// Returns `true` if the string can be converted to an integer.
  bool get _characterIsNumeral => int.tryParse(this) != null;

  /// Return the final component of a fully qualified name (e.g.,
  /// `Windows.Win32.UI.Controls.TASKDIALOGCONFIG` becomes `TASKDIALOGCONFIG`).
  String get lastComponent => split('.').last;

  /// Converts this string into a safe Dart identifier (i.e. one that is not a
  /// reserved word or a private modifier).
  ///
  /// For example, `VARIANT var` should be converted to `VARIANT var_`, and
  /// `_XmlWriterProperty` should be converted to `XmlWriterProperty`.
  String get safeIdentifier {
    final str = stripLeadingUnderscores();
    return _badIdentifierNames.contains(str) ? '${str}_' : str;
  }

  /// Strips off any private modifiers from this string.
  ///
  /// For example, `Pointer<_alljoyn_abouticon_handle>` should become
  /// `Pointer<alljoyn_abouticon_handle>`.
  String get safeTypename {
    if (startsWith('Array<')) {
      final wrappedType = stripArray();
      return 'Array<${wrappedType.safeTypename}>';
    }

    if (startsWith('Pointer<')) {
      final wrappedType = stripPointer();
      return 'Pointer<${wrappedType.safeTypename}>';
    }

    return stripLeadingUnderscores();
  }

  /// Strips the ANSI (`A`) or Unicode (`W`) suffix from the string.
  ///
  /// For example, `MessageBoxW` should become `MessageBox`.
  String stripAnsiUnicodeSuffix() {
    // Remove the last character if the string ends with either `A` or `W`.
    if (endsWith('A') || endsWith('W')) return substring(0, length - 1);

    // Otherwise, return the original string.
    return this;
  }

  /// Extracts the inner wrapped type from the string that represents a nested
  /// `Array` structure.
  ///
  /// For example, given a name like `Array<Int32>`, this method returns the
  /// inner wrapped type, which in this case would be `Int32`.
  String stripArray() => startsWith('Array<') ? substring(6, length - 1) : this;

  /// Strips the leading underscores from the string.
  ///
  /// If the string does not start with an underscore, it returns the original
  /// string.
  ///
  /// If the string starts with an underscore, it checks if the character
  /// following the underscore is a numeral (0-9). If it is, it prepends an `x`
  /// to the string to ensure it remains a valid identifier.
  ///
  /// If the following character is not a numeral, it continues stripping
  /// leading underscores recursively until a non-underscore or a
  /// numeral-followed underscore is encountered.
  String stripLeadingUnderscores() {
    if (!startsWith('_')) return this;
    return substring(1, 2)._characterIsNumeral
        ? 'x${substring(1)}'
        : substring(1).stripLeadingUnderscores();
  }

  /// Extracts the inner wrapped type from the string that represents a nested
  /// `Pointer` structure.
  ///
  /// For example, given a name like `Pointer<Int32>`, this method returns the
  /// inner wrapped type, which in this case would be `Int32`.
  String stripPointer() =>
      startsWith('Pointer<') ? substring(8, length - 1) : this;

  /// Converts this string to `camelCase` convention.
  String toCamelCase() {
    if (isEmpty) return this;
    if (length == 1) return toLowerCase();
    return this[0].toLowerCase() + substring(1);
  }

  /// Converts this string into a formatted doc comment(s).
  ///
  /// The [wrapLength] parameter (defaults to `80`) controls the maximum number
  /// of characters allowed in a single line of the doc comment. If a word would
  /// exceed the [wrapLength], it will be wrapped to the next line.
  ///
  /// Example usage:
  /// ```dart
  /// final content =
  ///     'This is a long text that needs to be formatted into a doc comment. '
  ///     'It will be broken down into multiple lines, each not exceeding the '
  ///     'default wrapLength of 80 characters.';
  /// final docComment = content.toDocComment();
  /// print(docComment);
  /// ```
  ///
  /// Result:
  /// ```
  /// /// This is a long text that needs to be formatted into a doc comment. It will
  /// /// be broken down into multiple lines, each not exceeding the default
  /// /// wrapLength of 80 characters.
  /// ```
  ///
  /// If the string contains newline characters (`\n`), they will be treated as
  /// line breaks, resulting in separate paragraphs in the doc comments.
  ///
  /// For example:
  /// ```dart
  /// final contentWithNewlines =
  ///     'This is the first paragraph. \n This is the second paragraph.';
  /// final docComment = contentWithNewlines.toDocComment();
  /// print(docComment);
  /// ```
  ///
  /// Result:
  /// ```
  /// /// This is the first paragraph.
  /// ///
  /// /// This is the second paragraph.
  /// ```
  String toDocComment({int wrapLength = 80}) {
    if (isEmpty) return '';

    final words = split(' ');
    final textLine = StringBuffer('///');
    final wrappedText = StringBuffer();

    for (final word in words) {
      // If the word is a newline character, start a new paragraph.
      if (word == '\n') {
        textLine.write('\n///\n///');
        wrappedText.write(textLine);
        textLine.clear();
        continue;
      }

      // If the word would exceed the wrapLength, wrap it to the next line.
      if ((textLine.length + word.length) >= wrapLength) {
        textLine.write('\n');
        wrappedText.write(textLine);
        textLine
          ..clear()
          ..write('/// $word');
      } else {
        textLine.write(' $word');
      }
    }

    wrappedText.write(textLine);
    return wrappedText.toString().trimRight();
  }

  /// Converts a namespace (e.g., `Windows.Win32.System.Console`) and returns
  /// the matching folder path (e.g., `system`).
  String toFolderPath() {
    final segments = split('.').skip(2).toList()..removeLast();
    return segments.join('/').toLowerCase();
  }
}

/// Reserved words in the Dart language that can never be used as identifiers.
/// Keywords from https://dart.dev/guides/language/language-tour#keywords.
const _dartReservedWords = <String>{
  // Contextual keywords and built-in identifiers are not included here, since
  // they can be used as valid identifiers in most places.
  'assert', 'break', 'case', 'catch', 'class', 'const', 'continue', 'default',
  'do', 'else', 'enum', 'extends', 'false', 'final', 'finally', 'for', 'if',
  'in', 'is', 'new', 'null', 'rethrow', 'return', 'super', 'switch', 'this',
  'throw', 'true', 'try', 'var', 'void', 'while', 'with',
};

/// Dart intrinsic types.
const _dartTypes = <String>{
  // These will cause problems if used as identifiers.
  'bool', 'double', 'int', 'List', 'Map', 'Set', 'String',
};

/// FFI types.
const _ffiTypes = <String>{
  // These will also cause problems if used as identifiers. Several of these are
  // used in Win32 as identifiers, particularly Pointer.
  'Array', 'Double', 'Float', 'IntPtr',
  'Int8', 'Int16', 'Int32', 'Int64', 'Uint8', 'Uint16', 'Uint32', 'Uint64',
  'Opaque', 'Packed', 'Pointer', 'Struct', 'Union', 'Unsized', 'Void',

  // While `Handle` is an FFI type, in practice, it doesn't seem to be a
  // problem, and since it's used by user32.dart, we're manually excluding it
  // from this list.
  //
  // 'Handle',

  // TODO(halildurmus): Add named prefix to use of dart:ffi so that this is a
  // non-issue.
};

/// These types are used in Win32 both as types and identifiers.
///
/// Since `GUID GUID;` is not a valid statement in Dart if the type already
/// exists, we need to avoid these. (An example is
/// `Windows.Win32.Media.DirectShow.VMRGUID.GUID`.)
const _win32TypesUsedAsIdentifiers = <String>{'GUID', 'UiInfo'};

/// A list of all words that should not be used as identifiers.
const _badIdentifierNames = <String>[
  ..._dartReservedWords,
  ..._dartTypes,
  ..._ffiTypes,
  ..._win32TypesUsedAsIdentifiers,
  'ptr' // used in COM
];

extension StringListHelpers on List<String> {
  /// Sorts import lines according to Effective Dart: Style guidelines.
  /// See https://dart.dev/guides/language/effective-dart/style#ordering
  List<String> sortImports() {
    if (isEmpty) return this;

    final dartImports = SplayTreeSet<String>();
    final packageImports = SplayTreeSet<String>();
    final projectRelativeImports = SplayTreeSet<String>();

    for (final importLine in this) {
      assert(importLine.startsWith('import ') && importLine.endsWith(';'));

      if (importLine.contains('dart:')) {
        dartImports.add(importLine);
      } else if (importLine.contains('package:')) {
        packageImports.add(importLine);
      } else {
        projectRelativeImports.add(importLine);
      }
    }

    final sortedImportLines = <String>[];

    if (dartImports.isNotEmpty) {
      sortedImportLines.addAll(dartImports);
    }

    if (packageImports.isNotEmpty) {
      if (dartImports.isNotEmpty) sortedImportLines.add('');
      sortedImportLines.addAll(packageImports);
    }

    if (projectRelativeImports.isNotEmpty) {
      if (dartImports.isNotEmpty || packageImports.isNotEmpty) {
        sortedImportLines.add('');
      }

      sortedImportLines.addAll(projectRelativeImports);
    }

    return sortedImportLines;
  }
}
