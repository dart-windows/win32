// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'package:generator/generator.dart';
import 'package:test/test.dart';
import 'package:winmd/winmd.dart';

void main() {
  late Scope scope;

  setUpAll(() async {
    scope =
        await MetadataStore.loadWin32Metadata(version: win32MetadataVersion);
  });

  group('CallbackProjection', () {
    test('FONTENUMPROCW', () {
      final typeDef =
          scope.findTypeDef('Windows.Win32.Graphics.Gdi.FONTENUMPROCW');
      expect(typeDef, isNotNull);
      final callbackProjection = CallbackProjection(typeDef!);
      expect(callbackProjection.name, equals('FONTENUMPROC'));
      expect(
        callbackProjection.type,
        equals('Int32 Function(Pointer<LOGFONT> param0, '
            'Pointer<TEXTMETRIC> param1, Uint32 param2, IntPtr param3)'),
      );
      expect(
        callbackProjection.toString(),
        equals('typedef FONTENUMPROC = Int32 Function(Pointer<LOGFONT> param0, '
            'Pointer<TEXTMETRIC> param1, Uint32 param2, IntPtr param3);'),
      );
    });

    test('PROC', () {
      final typeDef = scope.findTypeDef('Windows.Win32.Foundation.PROC');
      expect(typeDef, isNotNull);
      final callbackProjection = CallbackProjection(typeDef!);
      expect(callbackProjection.name, equals('PROC'));
      expect(callbackProjection.type, equals('Pointer'));
      expect(callbackProjection.toString(), equals('typedef PROC = Pointer;'));
    });

    test('WNDPROC', () {
      final typeDef =
          scope.findTypeDef('Windows.Win32.UI.WindowsAndMessaging.WNDPROC');
      expect(typeDef, isNotNull);
      final callbackProjection = CallbackProjection(typeDef!);
      expect(callbackProjection.name, equals('WNDPROC'));
      expect(
        callbackProjection.type,
        equals(
          'IntPtr Function('
          'IntPtr param0, Uint32 param1, IntPtr param2, IntPtr param3)',
        ),
      );
      expect(
        callbackProjection.toString(),
        equals(
          'typedef WNDPROC = IntPtr Function('
          'IntPtr param0, Uint32 param1, IntPtr param2, IntPtr param3);',
        ),
      );
    });
  });

  tearDownAll(MetadataStore.close);
}
