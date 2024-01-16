// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'package:test/test.dart';
import 'package:win32gen/win32gen.dart';
import 'package:winmd/winmd.dart';

void main() {
  late Scope scope;

  setUpAll(() async {
    scope =
        await MetadataStore.loadWin32Metadata(version: win32MetadataVersion);
  });

  group('Method', () {
    test('isRealGetProperty', () {
      final services = scope
          .findTypeDef('Windows.Win32.Devices.Enumeration.Pnp.IUPnPServices');
      expect(services, isNotNull);

      final method1 = services!.findMethod('get_Count');
      expect(method1, isNotNull);
      expect(method1!.isRealGetProperty, isTrue);

      final method2 = services.findMethod('get_Item');
      expect(method2, isNotNull);
      expect(method2!.isRealGetProperty, isFalse);
    });

    test('isRealSetProperty', () {
      final container = scope.findTypeDef(
          'Windows.Win32.Media.DirectShow.Tv.ITuningSpaceContainer');
      expect(container, isNotNull);

      final method1 = container!.findMethod('put_MaxCount');
      expect(method1, isNotNull);
      expect(method1!.isRealSetProperty, isTrue);

      final method2 = container.findMethod('put_Item');
      expect(method2, isNotNull);
      expect(method2!.isRealSetProperty, isFalse);
    });

    test('nameWithoutAnsiUnicodeSuffix', () {
      final apis =
          scope.findTypeDef('Windows.Win32.UI.WindowsAndMessaging.Apis');
      expect(apis, isNotNull);

      final method1 = apis!.findMethod('EndMenu');
      expect(method1, isNotNull);
      expect(method1!.nameWithoutAnsiUnicodeSuffix, equals('EndMenu'));

      final method2 = apis.findMethod('GetClassNameA');
      expect(method2, isNotNull);
      expect(method2!.nameWithoutAnsiUnicodeSuffix, equals('GetClassName'));

      final method3 = apis.findMethod('GetClassNameW');
      expect(method3, isNotNull);
      expect(method3!.nameWithoutAnsiUnicodeSuffix, equals('GetClassName'));
    });
  });

  tearDownAll(MetadataStore.close);
}
