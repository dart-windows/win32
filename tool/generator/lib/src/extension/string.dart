// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:collection';

extension StringHelpers on String {
  /// Whether the string can be converted to an integer.
  bool get _characterIsNumeral => int.tryParse(this) != null;

  /// Capitalizes the first character of this string.
  String capitalize() {
    if (isEmpty) return this;
    if (length == 1) return toUpperCase();
    return this[0].toUpperCase() + substring(1); // e.g., value -> Value
  }

  /// Retrieves the final component of a fully qualified name.
  ///
  /// This method extracts the last component of a fully qualified name (e.g.,
  /// `Windows.Win32.UI.Controls.TASKDIALOGCONFIG` becomes `TASKDIALOGCONFIG`).
  String get lastComponent => split('.').last;

  /// Converts the string into a safe Dart identifier (i.e. one that is not a
  /// reserved word or starts with a private modifier).
  ///
  /// For example, `VARIANT var` should be converted to `VARIANT var_`, and
  /// `_XmlWriterProperty` should be converted to `XmlWriterProperty`.
  String get safeIdentifier {
    final str = stripLeadingUnderscores();

    // If the string is a reserved word, append an underscore to it.
    return _badIdentifierNames.contains(str) ? '${str}_' : str;
  }

  /// Strips off private modifiers from the string to create a safe Dart
  /// typename.
  ///
  /// For example, `Pointer<_alljoyn_abouticon_handle>` should become
  /// `Pointer<alljoyn_abouticon_handle>`.
  String get safeTypename {
    // If the string starts with `Array<`, process the inner type.
    if (startsWith('Array<')) {
      final wrappedType = stripArray();
      return 'Array<${wrappedType.safeTypename}>';
    }

    // If the string starts with `Pointer<`, process the inner type.
    if (startsWith('Pointer<')) {
      final wrappedType = stripPointer();
      return 'Pointer<${wrappedType.safeTypename}>';
    }

    // Otherwise, strip leading underscores from the string.
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
  /// Given a string like `Array<Int32>`, this method returns the inner wrapped
  /// type, which in this case would be `Int32`.
  String stripArray() => startsWith('Array<') ? substring(6, length - 1) : this;

  /// Strips leading underscores from the string while preserving identifier
  /// validity.
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
  /// Given a string like `Pointer<Int32>`, this method returns the inner
  /// wrapped type, which in this case would be `Int32`.
  String stripPointer() =>
      startsWith('Pointer<') ? substring(8, length - 1) : this;

  /// Converts the string to `camelCase` convention.
  String toCamelCase() {
    if (isEmpty) return this;

    // If the input string has only one character, convert it to lowercase.
    if (length == 1) return toLowerCase();

    // Convert the first character to lowercase and concatenate the rest.
    return this[0].toLowerCase() + substring(1);
  }

  /// Converts the string into a formatted doc comments.
  ///
  /// The [wrapLength] parameter (defaults to `80`) controls the maximum number
  /// of characters allowed in a single line of the doc comment. If a word would
  /// exceed the [wrapLength], it will be wrapped to the next line.
  ///
  /// The first sentence of the doc comment is separated from the rest of the
  /// content by an empty line.
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
  /// /// This is a long text that needs to be formatted into a doc comment.
  /// ///
  /// /// It will be broken down into multiple lines, each not exceeding the default
  /// /// wrapLength of 80 characters.
  /// ```
  String toDocComment({int wrapLength = 80}) {
    if (isEmpty) return '';

    // Split the string into sentences for processing.
    final sentences = split(RegExp(r'(?<=[.!?])\s'));

    // Initialize the StringBuffer to start the doc comment.
    final textLine = StringBuffer('///');

    // Initialize the StringBuffer to store the formatted doc comment.
    final wrappedText = StringBuffer();

    // Process each sentence in the string.
    for (final (idx, sentence) in sentences.indexed) {
      // If the sentence starts with `\n`, separate it to the next line unless
      // it's one of the first two sentences.
      if (idx >= 2 && sentence.startsWith('\n')) {
        wrappedText
          ..write(textLine)
          ..write('\n///\n');
        textLine
          ..clear()
          ..write('///');
      }

      // Process each word in the sentence.
      final words = sentence.trim().split(' ');
      for (final word in words) {
        // If the word would exceed the wrapLength, wrap it to the next line.
        if ((textLine.length + word.length) >= wrapLength) {
          textLine.write('\n');
          wrappedText.write(textLine);
          textLine
            ..clear()
            ..write('/// $word');
        } else {
          // Otherwise, add the word to the current line.
          textLine.write(' $word');
        }
      }

      // Separate the first sentence from the rest of the content.
      if (idx == 0 && sentences.length > 1) {
        wrappedText
          ..write(textLine)
          ..write('\n///\n');
        textLine
          ..clear()
          ..write('///');
      } else {
        // Otherwise, add the current line to the formatted doc comment.
        if (idx == sentences.length - 1) {
          wrappedText.write(textLine);
        }
      }
    }

    // Trim any trailing whitespace and return the formatted doc comment.
    return wrappedText.toString().trimRight();
  }

  /// Converts a Win32 namespace (e.g., `Windows.Win32.System.Console`) to its
  /// corresponding folder path (e.g., `system`).
  String toFolderPath() {
    final segments = split('.').skip(2).toList()..removeLast();
    return segments.join('/').toLowerCase();
  }
}

/// Set of reserved words in the Dart that cannot be used as identifiers.
///
/// This set includes Dart keywords and reserved words, as documented in [here](
/// https://dart.dev/language/keywords).
///
/// Contextual keywords and built-in identifiers are not included here, as they
/// can be used as valid identifiers in most places.
const _dartReservedWords = <String>{
  'assert', 'break', 'case', 'catch', 'class', 'const', 'continue', 'default',
  'do', 'else', 'enum', 'extends', 'false', 'final', 'finally', 'for', 'if', //
  'in', 'is', 'new', 'null', 'rethrow', 'return', 'super', 'switch', 'this', //
  'throw', 'true', 'try', 'var', 'void', 'when', 'while', 'with', //
};

/// Set of Dart intrinsic types that can cause problems if used as identifiers.
const _dartTypes = <String>{
  'bool', 'double', 'int', 'List', 'Map', 'Set', 'String', //
};

/// Set of FFI (Foreign Function Interface) types that can cause problems if
/// used as identifiers.
const _ffiTypes = <String>{
  'Array', 'Double', 'Float', 'IntPtr',
  'Int8', 'Int16', 'Int32', 'Int64', 'Uint8', 'Uint16', 'Uint32', 'Uint64',
  'Opaque', 'Packed', 'Pointer', 'Struct', 'Union', 'Unsized', 'Void',

  // `Handle` is excluded as it's used in practice and doesn't seem to cause
  // issues.
  // 'Handle',
};

/// Set of Win32 types used both as types and identifiers.
///
/// In Dart, using a statement like `GUID GUID;` is not valid if the type
/// `GUID` already exists. To avoid such conflicts, this set includes types
/// used in Win32 that may also be used as identifiers. For example,
/// `Windows.Win32.Media.DirectShow.VMRGUID.GUID`.
const _win32TypesUsedAsIdentifiers = <String>{'GUID', 'UiInfo'};

/// Set of words restricted from use as identifiers.
///
/// This set includes reserved words in Dart, Dart types, FFI types, and Win32
/// types that are also used as identifiers. Using these words as identifiers
/// may lead to conflicts or compilation issues.
///
/// Additionally, the word `ptr` is included as it is used in COM.
const _badIdentifierNames = <String>{
  ..._dartReservedWords,
  ..._dartTypes,
  ..._ffiTypes,
  ..._win32TypesUsedAsIdentifiers,
  'ptr' // Used in COM.
};

extension StringListHelpers on List<String> {
  /// Sorts import lines according to [Effective Dart: Style guidelines](
  /// https://dart.dev/effective-dart/style#ordering).
  List<String> sortImports() {
    if (isEmpty) return this;

    // Separate imports into different sets based on their types.
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

    // Combine the sorted import sets into the final sorted list.
    final sortedImportLines = <String>[];

    if (dartImports.isNotEmpty) {
      sortedImportLines.addAll(dartImports);
    }

    if (packageImports.isNotEmpty) {
      // Add a blank line if Dart imports are present.
      if (dartImports.isNotEmpty) sortedImportLines.add('');

      sortedImportLines.addAll(packageImports);
    }

    if (projectRelativeImports.isNotEmpty) {
      // Add a blank line if Dart or package imports are present.
      if (dartImports.isNotEmpty || packageImports.isNotEmpty) {
        sortedImportLines.add('');
      }

      sortedImportLines.addAll(projectRelativeImports);
    }

    return sortedImportLines;
  }
}
