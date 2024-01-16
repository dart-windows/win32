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
  String get safeIdentifier => _badIdentifierNames.contains(this)
      ? '${this}_'
      : stripLeadingUnderscores();

  /// Strips off any private modifiers from this string.
  ///
  /// For example, `Pointer<_alljoyn_abouticon_handle>` should become
  /// `Pointer<alljoyn_abouticon_handle>`.
  String get safeTypename {
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
    // TODO(halildurmus): Remove this
    // Frustratingly, Windows.Win32.System.Wmi.MI_* types are the exception
    // where 'A' suffix does not seem to denote ASCII.
    if (_ansiTypes.contains(this) ||
        _typePretendsToBeAnsi ||
        startsWith('MI_')) {
      return this;
    }

    if (endsWith('A') || endsWith('W')) {
      final end = endsWith('_A') || endsWith('_W') ? length - 2 : length - 1;
      return substring(0, end);
    }

    return this;
  }

  /// Returns `true` if a TypeDef name ends with `A` but is _not_ ANSI.
  bool get _typePretendsToBeAnsi {
    for (final word in _falseAnsiEndings) {
      if (endsWith(word)) return true;
    }

    // There are a number of types in this namespace that end with 'A' but are
    // not ANSI, so we treat this as a one-off exception.
    if (startsWith('Windows.Win32.System.Wmi.MI_')) return true;

    return false;
  }

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
  /// pointer structure.
  ///
  /// For example, given a name like `Pointer<Pointer<Int32>>`, this method
  /// returns the inner wrapped type, which in this case would be
  /// `Pointer<Int32>`.
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

// TODO(halildurmus): Remove this
const _ansiTypes = <String>{
  // ANSI Functions
  'CMCreateProfile',
  'CMCreateTransform',
  'CMCreateTransformExt',
  'DbgHelpCreateUserDump',
  'EnumDirTree',
  'EnumerateLoadedModulesEx',
  'FindDebugInfoFileEx',
  'FindExecutableImageEx',
  'FreeAddrInfoEx',
  'GetEnvironmentStrings',
  'Module32First',
  'Module32Next',
  'Process32First',
  'Process32Next',
  'RatingAccessDeniedDialog',
  'RatingAccessDeniedDialog2',
  'RatingCheckUserAccess',
  'RatingEnable',
  'RatingObtainQuery',
  'RatingSetupUI',
  'RoOriginateError',
  'RoTransformError',
  'SQLSetDescField',
  'SQLSetStmtAttr',
  'SearchTreeForFile',
  'SymAddSymbol',
  'SymDeleteSymbol',
  'SymEnumLines',
  'SymEnumSourceFiles',
  'SymEnumSourceLines',
  'SymEnumSymbols',
  'SymEnumSymbolsEx',
  'SymEnumSymbolsForAddr',
  'SymEnumTypes',
  'SymEnumTypesByName',
  'SymEnumerateSymbols',
  'SymFindDebugInfoFile',
  'SymFindExecutableImage',
  'SymFindFileInPath',
  'SymFromAddr',
  'SymFromIndex',
  'SymFromInlineContext',
  'SymFromName',
  'SymFromToken',
  'SymGetHomeDirectory',
  'SymGetLineFromInlineContext',
  'SymGetModuleInfo',
  'SymGetScope',
  'SymGetSearchPath',
  'SymGetSourceFile',
  'SymGetSourceFileChecksum',
  'SymGetSourceFileFromToken',
  'SymGetSourceFileFromTokenByTokenName',
  'SymGetSourceFileToken',
  'SymGetSourceFileTokenByTokenName',
  'SymGetSourceVarFromToken',
  'SymGetSymbolFile',
  'SymGetTypeFromName',
  'SymInitialize',
  'SymLoadModuleEx',
  'SymMatchFileName',
  'SymNext',
  'SymPrev',
  'SymSearch',
  'SymSetHomeDirectory',
  'SymSetSearchPath',
  'SymSrvDeltaName',
  'SymSrvGetFileIndexInfo',
  'SymSrvGetFileIndexString',
  'SymSrvGetFileIndexes',
  'SymSrvGetSupplement',
  'SymSrvIsStore',
  'SymSrvStoreFile',
  'SymSrvStoreSupplement',
  'UnDecorateSymbolName',
  'ldap_get_option',
  'ldap_set_option',
  // ANSI Structs
  'LINEREQMAKECALL',
  'LINEREQMEDIACALL',
  'IMAGEHLP_SYMBOL',
  'IMAGEHLP_MODULE',
  'IMAGEHLP_LINE',
  'SOURCEFILE',
  'IMAGEHLP_CBA_EVENT',
  'SRCCODEINFO',
  'SYMBOL_INFO',
  'SYMBOL_INFO_PACKAGE',
  'SYMSRV_INDEX_INFO',
  'PROCESSENTRY32',
  'MODULEENTRY32',
  'MapiFileDesc',
  'MapiMessage',
  'MapiRecipDesc',
  'EMRCREATECOLORSPACE',
};

// TODO(halildurmus): Remove this
const _falseAnsiEndings = <String>{
  // These are structs that appear in the Win32 metadata that end in 'A' but
  // are not ANSI. In the absence of a better way to determine ANSI attributes
  // (https://github.com/microsoft/win32metadata/issues/711), we resort to a
  // manual list.
  'DATA', 'SCHEMA', 'AREA', 'ANTENNA', 'MEDIA', 'M128A', 'CIECHROMA', 'PARA',
  'ALPHA', 'BUFFER_WMA', 'CRITERIA', 'UIDNA', 'YCbCrA', 'RGBA',
  'PSP_FILE_CALLBACK_A',
};

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
