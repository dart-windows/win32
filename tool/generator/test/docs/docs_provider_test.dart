// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'package:generator/generator.dart';
import 'package:test/test.dart';

void main() {
  group('DocsProvider', () {
    test('getDocs', () async {
      await DocsProvider.load(version: win32DocsVersion);
      final docs = DocsProvider.getDocs('MessageBoxW');
      expect(docs, isNotNull);
      expect(
        docs!.description,
        equals(
          'Displays a modal dialog box that contains a system icon, a set of '
          'buttons, and a brief application-specific message, such as status '
          'or error information. The message box returns an integer value that '
          'indicates which button the user clicked.',
        ),
      );
      expect(docs.remarks, isNotEmpty);
      expect(
        docs.helpLink.toString(),
        equals(
          'https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-messageboxw',
        ),
      );
      expect(docs.returnValue, startsWith('Type: <b>int</b>'));
      expect(
        docs.parameters,
        equals({
          'hWnd': 'Type: <b>HWND</b>\n\n'
              'A handle to the owner window of the message box to be created. '
              'If this parameter is <b>NULL</b>, the message box has no owner '
              'window.',
          'lpText': 'Type: <b>LPCTSTR</b>\n\n'
              'The message to be displayed. If the string consists of more '
              'than one line, you can separate the lines using a carriage '
              'return and/or linefeed character between each line.',
          'lpCaption': 'Type: <b>LPCTSTR</b>\n\n'
              'The dialog box title. If this parameter is <b>NULL</b>, the '
              'default title is <b>Error</b>.',
          'uType': 'Type: <b>UINT</b>\n\n'
              'The contents and behavior of the dialog box. This parameter can '
              'be a combination of flags from the following groups of flags.',
        }),
      );
      DocsProvider.clear();
    });

    test('getDescription', () async {
      await DocsProvider.load(version: win32DocsVersion);
      final description = DocsProvider.getDescription('IUnknown');
      expect(description, isNotNull);
      expect(
        description,
        equals('Enables clients to get pointers to other interfaces on a '
            'given object through the QueryInterface method, and manage the '
            'existence of the object through the AddRef and Release methods.'),
      );
      DocsProvider.clear();
    });

    test('getHelpLink', () async {
      await DocsProvider.load(version: win32DocsVersion);
      final helpLink = DocsProvider.getHelpLink('MessageBoxW');
      expect(helpLink, isNotNull);
      expect(
        helpLink.toString(),
        equals(
          'https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-messageboxw',
        ),
      );
      DocsProvider.clear();
    });

    test('appropriate response to searching for empty type', () async {
      await DocsProvider.load();
      expect(
        () => DocsProvider.getDocs(''),
        throwsA(
          isA<ArgumentError>().having(
            (e) => e.message,
            'message',
            equals('Must not be empty.'),
          ),
        ),
      );
      DocsProvider.clear();
    });

    test(
        'appropriate response to searching for an API documentation without '
        'loading the API documentation first', () {
      expect(
        () => DocsProvider.getDocs('IUnknown'),
        throwsA(
          isA<StateError>().having(
            (e) => e.message,
            'message',
            equals(
              'API documentation has not been loaded. Please call '
              'DocsProvider.load() before attempting to retrieve documentation.',
            ),
          ),
        ),
      );
    });
  });
}
