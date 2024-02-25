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

  group('TypeDef', () {
    test('isBitwiseEnum', () {
      final typeDef1 = getTypeDef(
          'Windows.Win32.UI.Input.XboxController.XINPUT_CAPABILITIES_FLAGS');
      expect(typeDef1.isBitwiseEnum, isTrue);

      final typeDef2 =
          getTypeDef('Windows.Win32.System.Memory.GLOBAL_ALLOC_FLAGS');
      expect(typeDef2.isBitwiseEnum, isTrue);

      final typeDef3 = getTypeDef('Windows.Win32.Foundation.WIN32_ERROR');
      expect(typeDef3.isBitwiseEnum, isFalse);
    });

    test('isWrapperStruct', () {
      final typeDef1 = getTypeDef('Windows.Win32.Foundation.HWND');
      expect(typeDef1.isWrapperStruct, isTrue);

      final typeDef2 =
          getTypeDef('Windows.Win32.System.Memory.MEMORY_MAPPED_VIEW_ADDRESS');
      expect(typeDef2.isWrapperStruct, isTrue);

      final typeDef3 = getTypeDef('Windows.Win32.Media.MMTIME');
      expect(typeDef3.isWrapperStruct, isFalse);
    });

    test('nameWithoutEncoding', () {
      final typeDef1 = getTypeDef('Windows.Win32.UI.Shell.IFileDialog');
      expect(typeDef1.nameWithoutEncoding,
          equals('Windows.Win32.UI.Shell.IFileDialog'));

      final typeDef2 = getTypeDef('Windows.Win32.UI.Shell.IShellLinkA');
      expect(typeDef2.nameWithoutEncoding,
          equals('Windows.Win32.UI.Shell.IShellLink'));

      final typeDef3 = getTypeDef('Windows.Win32.UI.Shell.IShellLinkW');
      expect(typeDef3.nameWithoutEncoding,
          equals('Windows.Win32.UI.Shell.IShellLink'));

      final typeDef4 = getTypeDef('Windows.Win32.Devices.Fax.IStillImageW');
      expect(typeDef4.nameWithoutEncoding,
          equals('Windows.Win32.Devices.Fax.IStillImage'));
    });

    test('rootType', () {
      final charInfo = getTypeDef('Windows.Win32.System.Console.CHAR_INFO');

      final char = charInfo.findField('Char');
      expect(char, isNotNull);
      expect(char!.typeIdentifier.type!.rootType, equals(charInfo));
    });

    test('safeFilename', () {
      final typeDef1 =
          getTypeDef('Windows.Win32.UI.Accessibility.IUIAutomation');
      expect(typeDef1.safeFilename, equals('iuiautomation.g.dart'));

      final typeDef2 = getTypeDef('Windows.Win32.System.Mmc._AppEvents');
      expect(typeDef2.safeFilename, equals('appevents.g.dart'));

      final typeDef3 = getTypeDef('Windows.Win32.UI.Shell.IShellLinkW');
      expect(typeDef3.safeFilename, equals('ishelllink.g.dart'));
    });

    test('safeIdentifier', () {
      final typeDef1 =
          getTypeDef('Windows.Win32.UI.Accessibility.IUIAutomation');
      expect(typeDef1.safeIdentifier, equals('IUIAutomation'));

      final typeDef2 = getTypeDef('Windows.Win32.System.Mmc._AppEvents');
      expect(typeDef2.safeIdentifier, equals('AppEvents'));

      final typeDef3 = getTypeDef('Windows.Win32.UI.Shell.IShellLinkW');
      expect(typeDef3.safeIdentifier, equals('IShellLink'));
    });

    test('safeTypename', () {
      final typeDef1 =
          getTypeDef('Windows.Win32.UI.Accessibility.IUIAutomation');
      expect(typeDef1.safeTypename, equals('IUIAutomation'));

      final typeDef2 = getTypeDef('Windows.Win32.System.Mmc._AppEvents');
      expect(typeDef2.safeTypename, equals('AppEvents'));

      final typeDef3 = getTypeDef('Windows.Win32.UI.Shell.IShellLinkW');
      expect(typeDef3.safeTypename, equals('IShellLink'));
    });
  });

  tearDownAll(MetadataStore.close);
}
