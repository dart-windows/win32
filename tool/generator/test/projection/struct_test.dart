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

  group('StructProjection', () {
    test('baseType', () {
      final bluetoothAddress = scope
          .findTypeDef('Windows.Win32.Devices.Bluetooth.BLUETOOTH_ADDRESS');
      expect(bluetoothAddress, isNotNull);

      final structProjection1 =
          StructProjection(bluetoothAddress!, 'BLUETOOTH_ADDRESS');
      expect(structProjection1.baseType, equals('Struct'));

      final bluetoothAddress0 =
          bluetoothAddress.fields.first.typeIdentifier.type;
      expect(bluetoothAddress0, isNotNull);
      final structProjection2 =
          StructProjection(bluetoothAddress0!, 'BLUETOOTH_ADDRESS_0');
      expect(structProjection2.baseType, equals('Union'));
    });

    test('classModifier', () {
      final bluetoothAddress = scope
          .findTypeDef('Windows.Win32.Devices.Bluetooth.BLUETOOTH_ADDRESS');
      expect(bluetoothAddress, isNotNull);

      final structProjection1 =
          StructProjection(bluetoothAddress!, 'BLUETOOTH_ADDRESS');
      expect(structProjection1.classModifier, equals('base'));

      final bluetoothAddress0 =
          bluetoothAddress.fields.first.typeIdentifier.type;
      expect(bluetoothAddress0, isNotNull);
      final structProjection2 =
          StructProjection(bluetoothAddress0!, 'BLUETOOTH_ADDRESS_0');
      expect(structProjection2.classModifier, equals('sealed'));
    });

    test('packingAlignment', () {
      // DWM_BLURBEHIND contains a BOOL, which appears in Win32 metadata as a
      // struct, but that shouldn't stop it being packed.
      final typeDef1 =
          scope.findTypeDef('Windows.Win32.Graphics.Dwm.DWM_BLURBEHIND');
      expect(typeDef1, isNotNull);
      final structProjection1 = StructProjection(typeDef1!, 'DWM_BLURBEHIND');
      expect(structProjection1.packingAlignment, equals(1));
      expect(structProjection1.classPreamble, contains('@Packed(1)'));

      final typeDef2 =
          scope.findTypeDef('Windows.Win32.Media.Multimedia.MCI_OPEN_PARMSW');
      expect(typeDef2, isNotNull);
      final structProjection2 = StructProjection(typeDef2!, 'MCI_OPEN_PARMS');
      expect(structProjection2.packingAlignment, equals(1));
      expect(structProjection2.classPreamble, contains('@Packed(1)'));

      final typeDef3 = scope
          .findTypeDef('Windows.Win32.Media.Multimedia.YAMAHA_ADPCMWAVEFORMAT');
      expect(typeDef3, isNotNull);
      final structProjection3 =
          StructProjection(typeDef3!, 'YAMAHA_ADPCMWAVEFORMAT');
      expect(structProjection3.packingAlignment, equals(1));
      expect(structProjection3.classPreamble, contains('@Packed(1)'));

      final typeDef4 =
          scope.findTypeDef('Windows.Win32.Devices.Bluetooth.SOCKADDR_BTH');
      expect(typeDef4, isNotNull);
      final structProjection4 = StructProjection(typeDef4!, 'SOCKADDR_BTH');
      expect(structProjection4.packingAlignment, equals(1));
      expect(structProjection4.classPreamble, contains('@Packed(1)'));

      final typeDef5 =
          scope.findTypeDef('Windows.Win32.Graphics.Gdi.BITMAPFILEHEADER');
      expect(typeDef5, isNotNull);
      final structProjection5 = StructProjection(typeDef5!, 'BITMAPFILEHEADER');
      expect(structProjection5.packingAlignment, equals(2));
      expect(structProjection5.classPreamble, contains('@Packed(2)'));
    });
  });

  tearDownAll(MetadataStore.close);
}
