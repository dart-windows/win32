// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'package:generator/generator.dart';
import 'package:meta/meta.dart';
import 'package:test/test.dart';
import 'package:winmd/winmd.dart';

import '../helpers.dart';

void main() {
  setUpAll(loadMetadataAndDocs);

  group('CallbackProjection', () {
    testCallback('Windows.Wdk.Foundation.DRIVER_ADD_DEVICE', (projection) {
      final CallbackProjection(:name, :type, :comment, :toString) = projection;
      expect(name, equals('DRIVER_ADD_DEVICE'));
      expect(
        type,
        equals(
          'NTSTATUS Function(Pointer<DRIVER_OBJECT> driverObject, '
          'Pointer<DEVICE_OBJECT> physicalDeviceObject)',
        ),
      );
      expect(comment, equals('/// {@category callback}'));
      expect(
        toString(),
        equals('$comment\ntypedef $name = $type;'),
      );
    });

    testCallback('Windows.Win32.Foundation.PROC', (projection) {
      final CallbackProjection(:name, :type, :comment, :toString) = projection;
      expect(name, equals('PROC'));
      expect(type, equals('Pointer'));
      expect(comment, equals('/// {@category callback}'));
      expect(
        toString(),
        equals('$comment\ntypedef $name = $type;'),
      );
    });

    testCallback(
        'Windows.Win32.Security.Authentication.Identity.INIT_SECURITY_INTERFACE_W',
        (projection) {
      final CallbackProjection(:name, :type, :comment, :toString) = projection;
      expect(name, equals('INIT_SECURITY_INTERFACE_'));
      expect(
        type,
        equals('Pointer<SecurityFunctionTable> Function()'),
      );
      expect(comment, equals('/// {@category callback}'));
      expect(
        toString(),
        equals('$comment\ntypedef $name = $type;'),
      );
    });

    testCallback('Windows.Win32.Graphics.Gdi.FONTENUMPROCW', (projection) {
      final CallbackProjection(:name, :type, :comment, :toString) = projection;
      expect(name, equals('FONTENUMPROC'));
      expect(
        type,
        equals(
          'Int32 Function(Pointer<LOGFONT> param0, '
          'Pointer<TEXTMETRIC> param1, Uint32 param2, LPARAM param3)',
        ),
      );
      expect(comment, equals('''
/// An application defined callback function used with the EnumFontFamilies
/// function.
///
/// To learn more about this callback, see
/// <https://learn.microsoft.com/previous-versions/dd162621(v=vs.85)>.
///
/// {@category callback}'''));
      expect(
        toString(),
        equals('$comment\ntypedef $name = $type;'),
      );
    });

    testCallback('Windows.Win32.UI.WindowsAndMessaging.WNDPROC', (projection) {
      final CallbackProjection(:name, :type, :comment, :toString) = projection;
      expect(name, equals('WNDPROC'));
      expect(
        type,
        equals(
          'LRESULT Function('
          'HWND param0, Uint32 param1, WPARAM param2, LPARAM param3)',
        ),
      );
      expect(comment, equals('''
/// A callback function, which you define in your application, that processes
/// messages sent to a window.
///
/// To learn more about this callback, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nc-winuser-wndproc>.
///
/// {@category callback}'''));
      expect(
        toString(),
        equals('$comment\ntypedef $name = $type;'),
      );
    });
  });

  tearDownAll(MetadataStore.close);
}

@isTest
void testCallback(
    String callbackName, void Function(CallbackProjection) projection) {
  test(callbackName, () {
    final typeDef = getTypeDef(callbackName);
    projection(CallbackProjection(typeDef));
  });
}
