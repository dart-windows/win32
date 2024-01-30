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

  group('TypeDef', () {
    test('nameWithoutEncoding', () {
      final typeDef1 = scope.findTypeDef('Windows.Win32.UI.Shell.IFileDialog');
      expect(typeDef1, isNotNull);
      expect(typeDef1!.nameWithoutEncoding,
          equals('Windows.Win32.UI.Shell.IFileDialog'));

      final typeDef2 = scope.findTypeDef('Windows.Win32.UI.Shell.IShellLinkA');
      expect(typeDef2, isNotNull);
      expect(typeDef2!.nameWithoutEncoding,
          equals('Windows.Win32.UI.Shell.IShellLink'));

      final typeDef3 = scope.findTypeDef('Windows.Win32.UI.Shell.IShellLinkW');
      expect(typeDef3, isNotNull);
      expect(typeDef3!.nameWithoutEncoding,
          equals('Windows.Win32.UI.Shell.IShellLink'));

      final typeDef4 =
          scope.findTypeDef('Windows.Win32.Devices.Fax.IStillImageW');
      expect(typeDef4, isNotNull);
      expect(typeDef4!.nameWithoutEncoding,
          equals('Windows.Win32.Devices.Fax.IStillImage'));
    });

    test('rootType', () {
      final charInfo =
          scope.findTypeDef('Windows.Win32.System.Console.CHAR_INFO');
      expect(charInfo, isNotNull);

      final char = charInfo!.findField('Char');
      expect(char, isNotNull);
      expect(char!.typeIdentifier.type!.rootType, equals(charInfo));
    });

    test('safeFilename', () {
      final typeDef1 =
          scope.findTypeDef('Windows.Win32.UI.Accessibility.IUIAutomation');
      expect(typeDef1, isNotNull);
      expect(typeDef1!.safeFilename, equals('iuiautomation.g.dart'));

      final typeDef2 = scope.findTypeDef('Windows.Win32.System.Mmc._AppEvents');
      expect(typeDef2, isNotNull);
      expect(typeDef2!.safeFilename, equals('appevents.g.dart'));

      final typeDef3 = scope.findTypeDef('Windows.Win32.UI.Shell.IShellLinkW');
      expect(typeDef3, isNotNull);
      expect(typeDef3!.safeFilename, equals('ishelllink.g.dart'));
    });

    test('safeIdentifier', () {
      final typeDef1 =
          scope.findTypeDef('Windows.Win32.UI.Accessibility.IUIAutomation');
      expect(typeDef1, isNotNull);
      expect(typeDef1!.safeIdentifier, equals('IUIAutomation'));

      final typeDef2 = scope.findTypeDef('Windows.Win32.System.Mmc._AppEvents');
      expect(typeDef2, isNotNull);
      expect(typeDef2!.safeIdentifier, equals('AppEvents'));

      final typeDef3 = scope.findTypeDef('Windows.Win32.UI.Shell.IShellLinkW');
      expect(typeDef3, isNotNull);
      expect(typeDef3!.safeIdentifier, equals('IShellLink'));
    });

    test('safeTypename', () {
      final typeDef1 =
          scope.findTypeDef('Windows.Win32.UI.Accessibility.IUIAutomation');
      expect(typeDef1, isNotNull);
      expect(typeDef1!.safeTypename, equals('IUIAutomation'));

      final typeDef2 = scope.findTypeDef('Windows.Win32.System.Mmc._AppEvents');
      expect(typeDef2, isNotNull);
      expect(typeDef2!.safeTypename, equals('AppEvents'));

      final typeDef3 = scope.findTypeDef('Windows.Win32.UI.Shell.IShellLinkW');
      expect(typeDef3, isNotNull);
      expect(typeDef3!.safeTypename, equals('IShellLink'));
    });
  });

  tearDownAll(MetadataStore.close);
}
