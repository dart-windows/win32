// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'package:generator/generator.dart';
import 'package:meta/meta.dart';
import 'package:test/test.dart';
import 'package:winmd/winmd.dart';

void main() {
  setUpAll(() async {
    await MetadataStore.loadWdkMetadata(version: wdkMetadataVersion);
    await MetadataStore.loadWin32Metadata(version: win32MetadataVersion);
  });

  group('CallbackProjection', () {
    testCallback('Windows.Wdk.Foundation.DRIVER_ADD_DEVICE', (projection) {
      final CallbackProjection(:name, :type, :toString) = projection;
      expect(name, equals('DRIVER_ADD_DEVICE'));
      expect(
        type,
        equals(
          'NTSTATUS Function(Pointer<DRIVER_OBJECT> driverObject, '
          'Pointer<DEVICE_OBJECT> physicalDeviceObject)',
        ),
      );
      expect(toString(), equals('typedef $name = $type;'));
    });

    testCallback('Windows.Win32.Foundation.PROC', (projection) {
      final CallbackProjection(:name, :type, :toString) = projection;
      expect(name, equals('PROC'));
      expect(type, equals('Pointer'));
      expect(toString(), equals('typedef $name = $type;'));
    });

    testCallback(
        'Windows.Win32.Security.Authentication.Identity.INIT_SECURITY_INTERFACE_W',
        (projection) {
      final CallbackProjection(:name, :type, :toString) = projection;
      expect(name, equals('INIT_SECURITY_INTERFACE_'));
      expect(
        type,
        equals('Pointer<SecurityFunctionTable> Function()'),
      );
      expect(toString(), equals('typedef $name = $type;'));
    });

    testCallback('Windows.Win32.Graphics.Gdi.FONTENUMPROCW', (projection) {
      final CallbackProjection(:name, :type, :toString) = projection;
      expect(name, equals('FONTENUMPROC'));
      expect(
        type,
        equals(
          'Int32 Function(Pointer<LOGFONT> param0, '
          'Pointer<TEXTMETRIC> param1, Uint32 param2, LPARAM param3)',
        ),
      );
      expect(toString(), equals('typedef $name = $type;'));
    });

    testCallback('Windows.Win32.UI.WindowsAndMessaging.WNDPROC', (projection) {
      final CallbackProjection(:name, :type, :toString) = projection;
      expect(name, equals('WNDPROC'));
      expect(
        type,
        equals(
          'LRESULT Function('
          'HWND param0, Uint32 param1, WPARAM param2, LPARAM param3)',
        ),
      );
      expect(toString(), equals('typedef $name = $type;'));
    });
  });

  tearDownAll(MetadataStore.close);
}

@isTest
void testCallback(
    String callbackName, void Function(CallbackProjection) projection) {
  test(callbackName, () {
    final typeDef = MetadataStore.getMetadataForType(callbackName);
    expect(
      typeDef,
      isNotNull,
      reason: '`$callbackName` type is not found in the metadata.',
    );
    projection(CallbackProjection(typeDef!));
  });
}
