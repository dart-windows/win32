// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'package:generator/generator.dart';
import 'package:test/test.dart';
import 'package:winmd/winmd.dart';

import '../helpers.dart';

void main() {
  setUpAll(loadMetadata);

  group('CustomAttributesMixin', () {
    test('isAnsi', () {
      final devModeA = getTypeDef('Windows.Win32.Graphics.Gdi.DEVMODEA');
      expect(devModeA.isAnsi, isTrue);

      final shellFolder = getTypeDef('Windows.Win32.UI.Shell.IShellFolder');
      expect(shellFolder.isAnsi, isFalse);

      final shellLinkA = getTypeDef('Windows.Win32.UI.Shell.IShellLinkA');
      expect(shellLinkA.isAnsi, isTrue);
    });

    test('isUnicode', () {
      final devModeW = getTypeDef('Windows.Win32.Graphics.Gdi.DEVMODEW');
      expect(devModeW.isUnicode, isTrue);

      final shellFolder = getTypeDef('Windows.Win32.UI.Shell.IShellFolder');
      expect(shellFolder.isUnicode, isFalse);

      final shellLinkW = getTypeDef('Windows.Win32.UI.Shell.IShellLinkW');
      expect(shellLinkW.isUnicode, isTrue);
    });
  });

  tearDownAll(MetadataStore.close);
}
