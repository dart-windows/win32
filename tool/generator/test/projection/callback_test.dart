// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'package:generator/generator.dart';
import 'package:test/test.dart';
import 'package:winmd/winmd.dart';

void main() {
  setUpAll(() async {
    await MetadataStore.loadWdkMetadata(version: wdkMetadataVersion);
    await MetadataStore.loadWin32Metadata(version: win32MetadataVersion);
  });

  group('CallbackProjection', () {
    testCallback('Windows.Wdk.Foundation.DRIVER_ADD_DEVICE', (projection) {
      expect(projection.name, equals('DRIVER_ADD_DEVICE'));
      expect(
        projection.type,
        equals('Int32 Function(Pointer<DRIVER_OBJECT> driverObject, '
            'Pointer<DEVICE_OBJECT> physicalDeviceObject)'),
      );
      expect(
        projection.toString(),
        equals('typedef DRIVER_ADD_DEVICE = Int32 Function('
            'Pointer<DRIVER_OBJECT> driverObject, '
            'Pointer<DEVICE_OBJECT> physicalDeviceObject);'),
      );
    });

    testCallback('Windows.Win32.Foundation.PROC', (projection) {
      expect(projection.name, equals('PROC'));
      expect(projection.type, equals('Pointer'));
      expect(projection.toString(), equals('typedef PROC = Pointer;'));
    });

    testCallback('Windows.Win32.Graphics.Gdi.FONTENUMPROCW', (projection) {
      expect(projection.name, equals('FONTENUMPROC'));
      expect(
        projection.type,
        equals('Int32 Function(Pointer<LOGFONT> param0, '
            'Pointer<TEXTMETRIC> param1, Uint32 param2, IntPtr param3)'),
      );
      expect(
        projection.toString(),
        equals('typedef FONTENUMPROC = Int32 Function(Pointer<LOGFONT> param0, '
            'Pointer<TEXTMETRIC> param1, Uint32 param2, IntPtr param3);'),
      );
    });

    testCallback('Windows.Win32.UI.WindowsAndMessaging.WNDPROC', (projection) {
      expect(projection.name, equals('WNDPROC'));
      expect(
        projection.type,
        equals(
          'IntPtr Function('
          'IntPtr param0, Uint32 param1, IntPtr param2, IntPtr param3)',
        ),
      );
      expect(
        projection.toString(),
        equals(
          'typedef WNDPROC = IntPtr Function('
          'IntPtr param0, Uint32 param1, IntPtr param2, IntPtr param3);',
        ),
      );
    });
  });

  tearDownAll(MetadataStore.close);
}

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
