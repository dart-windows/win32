// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:generator/generator.dart';
import 'package:test/test.dart';

void main() {
  group('String', () {
    test('capitalize', () {
      expect('value'.capitalize(), equals('Value'));
      expect('camelCase'.capitalize(), equals('CamelCase'));
      expect('X'.capitalize(), equals('X'));
      expect(''.capitalize(), isEmpty);
    });

    test('lastComponent', () {
      expect(
        'Windows.Win32.System.Com.IUnknown'.lastComponent,
        equals('IUnknown'),
      );
      expect(
        'Windows.Win32.System.Mmc._AppEvents'.lastComponent,
        equals('_AppEvents'),
      );
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
      expect(
        'Pointer<_alljoyn_abouticon_handle>'.safeTypename,
        equals('Pointer<alljoyn_abouticon_handle>'),
      );
      expect('_AppEvents'.safeTypename, equals('AppEvents'));
      expect('IUnknown'.safeTypename, equals('IUnknown'));
    });

    test('stripAnsiUnicodeSuffix', () {
      expect(
        'ENUMLOGFONTEXA'.stripAnsiUnicodeSuffix(),
        equals('ENUMLOGFONTEX'),
      );
      expect(
        'ENUMLOGFONTEXW'.stripAnsiUnicodeSuffix(),
        equals('ENUMLOGFONTEX'),
      );
      expect(
        'ADDJOB_INFO_1A'.stripAnsiUnicodeSuffix(),
        equals('ADDJOB_INFO_1'),
      );
      expect(
        'ADDJOB_INFO_1W'.stripAnsiUnicodeSuffix(),
        equals('ADDJOB_INFO_1'),
      );
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
        'Pointer<Pointer<Int32>>'.stripPointer(),
        equals('Pointer<Int32>'),
      );
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
      expect(
        'This is a short string.'.toDocComment(wrapLength: 8),
        equals('''
/// This
/// is a
/// short
/// string.'''),
      );
      expect(
        'This is a short string.'.toDocComment(wrapLength: 12),
        equals('''
/// This is
/// a short
/// string.'''),
      );
      expect(
        'This is a short string.'.toDocComment(wrapLength: 20),
        equals('''
/// This is a short
/// string.'''),
      );
      expect(
        'This is a short string.'.toDocComment(wrapLength: 200),
        equals('/// This is a short string.'),
      );
      expect(
        'This is a long text that needs to be formatted into a doc comment. '
                'It will be broken down into multiple lines, each not '
                'exceeding the wrapLength of 78 characters.'
            .toDocComment(wrapLength: 78),
        equals('''
/// This is a long text that needs to be formatted into a doc comment.
///
/// It will be broken down into multiple lines, each not exceeding the
/// wrapLength of 78 characters.'''),
      );
      expect(
        'This is a long text that needs to be formatted into a doc comment. '
                'It will be broken down into multiple lines, each not '
                'exceeding the default wrapLength of 80 characters.'
            .toDocComment(),
        equals('''
/// This is a long text that needs to be formatted into a doc comment.
///
/// It will be broken down into multiple lines, each not exceeding the default
/// wrapLength of 80 characters.'''),
      );
      expect(
        'Enables clients to get pointers to other interfaces on a given object '
                'through the QueryInterface method, and manage the existence '
                'of the object through the AddRef and Release methods. \nTo '
                'learn more about this interface, see '
                '<https://learn.microsoft.com/windows/win32/api/unknwn/nn-unknwn-iunknown>.'
                ' \n{@category com}'
            .toDocComment(),
        equals('''
/// Enables clients to get pointers to other interfaces on a given object
/// through the QueryInterface method, and manage the existence of the object
/// through the AddRef and Release methods.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/unknwn/nn-unknwn-iunknown>.
///
/// {@category com}'''),
      );

      expect(
        'The VARIANT type is used in Win32 to represent a dynamic type. '
                'It is represented as a struct containing a union of the '
                'types that could be stored. VARIANTs must be initialized '
                'with `VariantInit` before their use. \nTo learn more about '
                'this struct, see '
                '<https://learn.microsoft.com/windows/win32/api/oaidl/ns-oaidl-variant>.'
                ' \n{@category struct}'
            .toDocComment(),
        equals('''
/// The VARIANT type is used in Win32 to represent a dynamic type.
///
/// It is represented as a struct containing a union of the types that could be
/// stored. VARIANTs must be initialized with `VariantInit` before their use.
///
/// To learn more about this struct, see
/// <https://learn.microsoft.com/windows/win32/api/oaidl/ns-oaidl-variant>.
///
/// {@category struct}'''),
      );
    });

    test('toFolderPath', () {
      expect('Windows.Win32.System.Console'.toFolderPath(), equals('system'));
      expect(
        'Windows.Win32.UI.Shell.Common'.toFolderPath(),
        equals('ui/shell'),
      );
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
          "import 'exceptions.dart';",
          "import 'types.dart';",
          "import 'utils.dart';",
          "import 'win32/api_ms_win_core_winrt_string_l1_1_0.g.dart';",
          "import 'macros.dart';",
        ].sortImports(),
        orderedEquals([
          "import 'dart:async';",
          "import 'dart:ffi';",
          "",
          "import 'package:ffi/ffi.dart';",
          "import 'package:win32/win32.dart';",
          "",
          "import 'exceptions.dart';",
          "import 'macros.dart';",
          "import 'types.dart';",
          "import 'utils.dart';",
          "import 'win32/api_ms_win_core_winrt_string_l1_1_0.g.dart';",
        ]),
      );
    });
  });
}
