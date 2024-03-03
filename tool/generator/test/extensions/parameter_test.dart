// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'package:generator/generator.dart';
import 'package:test/test.dart';
import 'package:winmd/winmd.dart';

import '../helpers.dart';

void main() {
  setUpAll(loadMetadataAndDocs);

  group('Parameter', () {
    test('isReserved', () {
      final apis = getTypeDef('Windows.Win32.System.Com.Apis');

      final coInitEx = apis.findMethod('CoInitializeEx');
      expect(coInitEx, isNotNull);

      final pvReserved = coInitEx!.parameters.first;
      expect(pvReserved.isReserved, isTrue);

      final dwCoInit = coInitEx.parameters.last;
      expect(dwCoInit.isReserved, isFalse);
    });
  });

  tearDownAll(MetadataStore.close);
}
