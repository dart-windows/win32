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

  group('Method', () {
    test('nameWithoutEncoding', () {
      final apis =
          scope.findTypeDef('Windows.Win32.UI.WindowsAndMessaging.Apis');
      expect(apis, isNotNull);

      final method1 = apis!.findMethod('EndMenu');
      expect(method1, isNotNull);
      expect(method1!.nameWithoutEncoding, equals('EndMenu'));

      final method2 = apis.findMethod('GetClassNameA');
      expect(method2, isNotNull);
      expect(method2!.nameWithoutEncoding, equals('GetClassName'));

      final method3 = apis.findMethod('GetClassNameW');
      expect(method3, isNotNull);
      expect(method3!.nameWithoutEncoding, equals('GetClassName'));
    });

    test('uniqueName', () {
      // TODO(halildurmus): Add tests
    });
  });

  tearDownAll(MetadataStore.close);
}
