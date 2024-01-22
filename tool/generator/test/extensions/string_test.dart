// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:generator/generator.dart';
import 'package:test/test.dart';

void main() {
  group('String', () {
    test('lastComponent', () {
      expect('Windows.Win32.System.Com.IUnknown'.lastComponent,
          equals('IUnknown'));
      expect('Windows.Win32.System.Mmc._AppEvents'.lastComponent,
          equals('_AppEvents'));
      expect('IUri'.lastComponent, equals('IUri'));
    });

    test('safeIdentifier', () {
      expect('break'.safeIdentifier, equals('break_'));
      expect('int'.safeIdentifier, equals('int_'));
      expect('Double'.safeIdentifier, equals('Double_'));
      expect('GUID'.safeIdentifier, equals('GUID_'));
      expect('ptr'.safeIdentifier, equals('ptr_'));
      expect('_AppEvents'.safeIdentifier, equals('AppEvents'));
      expect('uri'.safeIdentifier, equals('uri'));
    });

    test('safeTypename', () {
      expect('Array<__Handle>'.safeTypename, equals('Array<Handle>'));
      expect('Pointer<_alljoyn_abouticon_handle>'.safeTypename,
          equals('Pointer<alljoyn_abouticon_handle>'));
      expect('_AppEvents'.safeTypename, equals('AppEvents'));
      expect('IUnknown'.safeTypename, equals('IUnknown'));
    });

    test('stripAnsiUnicodeSuffix', () {
      expect(
          'ENUMLOGFONTEXA'.stripAnsiUnicodeSuffix(), equals('ENUMLOGFONTEX'));
      expect(
          'ENUMLOGFONTEXW'.stripAnsiUnicodeSuffix(), equals('ENUMLOGFONTEX'));
      expect(
          'ENUMLOGFONTEX_A'.stripAnsiUnicodeSuffix(), equals('ENUMLOGFONTEX'));
      expect(
          'ENUMLOGFONTEX_W'.stripAnsiUnicodeSuffix(), equals('ENUMLOGFONTEX'));
      expect(
          'ADDJOB_INFO_1W'.stripAnsiUnicodeSuffix(), equals('ADDJOB_INFO_1'));
    });

    test('stripArray', () {
      expect('Array<Int32>'.stripArray(), equals('Int32'));
      expect('noArray'.stripArray(), equals('noArray'));
    });

    test('stripLeadingUnderscores', () {
      expect('_leading'.stripLeadingUnderscores(), equals('leading'));
      expect('__leading'.stripLeadingUnderscores(), equals('leading'));
      expect('_2'.stripLeadingUnderscores(), equals('x2'));
      expect('noUnderscore'.stripLeadingUnderscores(), equals('noUnderscore'));
    });

    test('stripPointer', () {
      expect('Pointer<Int32>'.stripPointer(), equals('Int32'));
      expect(
          'Pointer<Pointer<IntPtr>>'.stripPointer(), equals('Pointer<IntPtr>'));
      expect('noPointer'.stripPointer(), equals('noPointer'));
    });

    test('toCamelCase', () {
      expect('TitleCase'.toCamelCase(), equals('titleCase'));
      expect('camelCase'.toCamelCase(), equals('camelCase'));
      expect('X'.toCamelCase(), equals('x'));
      expect(''.toCamelCase(), isEmpty);
    });

    test('toDocComment', () {
      expect(''.toDocComment(wrapLength: 4), isEmpty);
      expect('This is a short string'.toDocComment(wrapLength: 8), equals('''
/// This
/// is a
/// short
/// string'''));
      expect('This is a short string'.toDocComment(wrapLength: 12), equals('''
/// This is
/// a short
/// string'''));
      expect('This is a short string'.toDocComment(wrapLength: 20), equals('''
/// This is a short
/// string'''));
      expect('This is a short string'.toDocComment(wrapLength: 200),
          equals('/// This is a short string'));
      expect(
          'This is a long text that needs to be formatted into a doc comment. '
                  'It will be broken down into multiple lines, each not '
                  'exceeding the wrapLength of 78 characters.'
              .toDocComment(wrapLength: 78),
          equals('''
/// This is a long text that needs to be formatted into a doc comment. It will
/// be broken down into multiple lines, each not exceeding the wrapLength of
/// 78 characters.'''));
      expect(
          'This is a long text that needs to be formatted into a doc comment. '
                  'It will be broken down into multiple lines, each not '
                  'exceeding the default wrapLength of 80 characters.'
              .toDocComment(),
          equals('''
/// This is a long text that needs to be formatted into a doc comment. It will
/// be broken down into multiple lines, each not exceeding the default
/// wrapLength of 80 characters.'''));
      expect(
          'This is the first paragraph. \n This is the second paragraph.'
              .toDocComment(),
          equals('''
/// This is the first paragraph.
///
/// This is the second paragraph.'''));
    });

    test('toFolderPath', () {
      expect('Windows.Win32.System.Console'.toFolderPath(), equals('system'));
      expect(
          'Windows.Win32.UI.Shell.Common'.toFolderPath(), equals('ui/shell'));
    });
  });

  group('List<String>', () {
    test('sortImports', () {
      expect(
          [
            "import 'dart:ffi';",
            "import 'package:ffi/ffi.dart';",
            "import 'dart:async';",
            "import 'package:win32/win32.dart';",
            "import '../../../exceptions.dart';",
            "import '../../../types.dart';",
            "import '../../../utils.dart';",
            "import '../../../win32/api_ms_win_core_winrt_string_l1_1_0.g.dart';",
            "import '../../../macros.dart';",
          ].sortImports(),
          orderedEquals([
            "import 'dart:async';",
            "import 'dart:ffi';",
            "",
            "import 'package:ffi/ffi.dart';",
            "import 'package:win32/win32.dart';",
            "",
            "import '../../../exceptions.dart';",
            "import '../../../macros.dart';",
            "import '../../../types.dart';",
            "import '../../../utils.dart';",
            "import '../../../win32/api_ms_win_core_winrt_string_l1_1_0.g.dart';",
          ]));
    });
  });
}
