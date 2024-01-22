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

  group('CustomAttributesMixin', () {
    test('isAnsi', () {
      final devModeA = scope.findTypeDef('Windows.Win32.Graphics.Gdi.DEVMODEA');
      expect(devModeA, isNotNull);
      expect(devModeA!.isAnsi, isTrue);
      expect(devModeA.isUnicode, isFalse);

      final shellFolder =
          scope.findTypeDef('Windows.Win32.UI.Shell.IShellFolder');
      expect(shellFolder, isNotNull);
      expect(shellFolder!.isAnsi, isFalse);
      expect(shellFolder.isUnicode, isFalse);

      final shellLinkA =
          scope.findTypeDef('Windows.Win32.UI.Shell.IShellLinkA');
      expect(shellLinkA, isNotNull);
      expect(shellLinkA!.isAnsi, isTrue);
      expect(shellLinkA.isUnicode, isFalse);
    });

    test('isUnicode', () {
      final devModeW = scope.findTypeDef('Windows.Win32.Graphics.Gdi.DEVMODEW');
      expect(devModeW, isNotNull);
      expect(devModeW!.isAnsi, isFalse);
      expect(devModeW.isUnicode, isTrue);

      final shellFolder =
          scope.findTypeDef('Windows.Win32.UI.Shell.IShellFolder');
      expect(shellFolder, isNotNull);
      expect(shellFolder!.isAnsi, isFalse);
      expect(shellFolder.isUnicode, isFalse);

      final shellLinkW =
          scope.findTypeDef('Windows.Win32.UI.Shell.IShellLinkW');
      expect(shellLinkW, isNotNull);
      expect(shellLinkW!.isUnicode, isTrue);
    });
  });

  tearDownAll(MetadataStore.close);
}
