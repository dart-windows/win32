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

  group('Parameter', () {
    test('isReserved', () {
      final apis = scope.findTypeDef('Windows.Win32.System.Com.Apis');
      expect(apis, isNotNull);

      final coInitEx = apis!.findMethod('CoInitializeEx');
      expect(coInitEx, isNotNull);

      final pvReserved = coInitEx!.parameters.first;
      expect(pvReserved.isReserved, isTrue);

      final dwCoInit = coInitEx.parameters.last;
      expect(dwCoInit.isReserved, isFalse);
    });
  });

  tearDownAll(MetadataStore.close);
}
