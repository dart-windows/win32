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

      final structProjection1 = StructProjection(bluetoothAddress!);
      expect(structProjection1.baseType, equals('Struct'));

      final bluetoothAddress0 =
          bluetoothAddress.fields.first.typeIdentifier.type;
      expect(bluetoothAddress0, isNotNull);
      final structProjection2 = StructProjection(bluetoothAddress0!);
      expect(structProjection2.baseType, equals('Union'));
    });

    test('classModifier', () {
      final bluetoothAddress = scope
          .findTypeDef('Windows.Win32.Devices.Bluetooth.BLUETOOTH_ADDRESS');
      expect(bluetoothAddress, isNotNull);

      final structProjection1 = StructProjection(bluetoothAddress!);
      expect(structProjection1.classModifier, equals('base'));

      final bluetoothAddress0 =
          bluetoothAddress.fields.first.typeIdentifier.type;
      expect(bluetoothAddress0, isNotNull);
      final structProjection2 = StructProjection(bluetoothAddress0!);
      expect(structProjection2.classModifier, equals('sealed'));
    });

    test('nestedTypes 1', () {
      final wlanRawDataList = scope.findTypeDef(
          'Windows.Win32.NetworkManagement.WiFi.WLAN_RAW_DATA_LIST');
      expect(wlanRawDataList, isNotNull);
      final structProjection = StructProjection(wlanRawDataList!);
      expect(structProjection.fieldsProjection, equalsIgnoringWhitespace('''
@Uint32()
external int dwTotalSize;
@Uint32()
external int dwNumberOfItems;
@Array(1)
external Array<WLAN_RAW_DATA_LIST_0> DataList;
'''));
      expect(structProjection.nestedTypes, equalsIgnoringWhitespace('''
/// {@category struct}
sealed class WLAN_RAW_DATA_LIST_0 extends Struct {
@Uint32()
external int dwDataOffset;

@Uint32()
external int dwDataSize;
}
'''));
    });

    test('nestedTypes 2', () {
      final dhcpAllOptions = scope
          .findTypeDef('Windows.Win32.NetworkManagement.Dhcp.DHCP_ALL_OPTIONS');
      expect(dhcpAllOptions, isNotNull);
      final structProjection = StructProjection(dhcpAllOptions!);
      expect(structProjection.fieldsProjection, equalsIgnoringWhitespace('''
@Uint32()
 external int Flags;
external Pointer<DHCP_OPTION_ARRAY> NonVendorOptions;
@Uint32()
external int NumVendorOptions;
external Pointer<DHCP_ALL_OPTIONS_0> VendorOptions;
'''));
      expect(structProjection.nestedTypes, equalsIgnoringWhitespace('''
/// {@category struct}
sealed class DHCP_ALL_OPTIONS_0 extends Struct {
external DHCP_OPTION Option;
external Pointer<Utf16> VendorName;
external Pointer<Utf16> ClassName;
}
'''));
    });

    test('packingAlignment', () {
      // DWM_BLURBEHIND contains a BOOL, which appears in Win32 metadata as a
      // struct, but that shouldn't stop it being packed.
      final typeDef1 =
          scope.findTypeDef('Windows.Win32.Graphics.Dwm.DWM_BLURBEHIND');
      expect(typeDef1, isNotNull);
      final structProjection1 = StructProjection(typeDef1!);
      expect(structProjection1.packingAlignment, equals(1));
      expect(structProjection1.classPreamble, contains('@Packed(1)'));

      final typeDef2 =
          scope.findTypeDef('Windows.Win32.Media.Multimedia.MCI_OPEN_PARMSW');
      expect(typeDef2, isNotNull);
      final structProjection2 = StructProjection(typeDef2!);
      expect(structProjection2.packingAlignment, equals(1));
      expect(structProjection2.classPreamble, contains('@Packed(1)'));

      final typeDef3 = scope
          .findTypeDef('Windows.Win32.Media.Multimedia.YAMAHA_ADPCMWAVEFORMAT');
      expect(typeDef3, isNotNull);
      final structProjection3 = StructProjection(typeDef3!);
      expect(structProjection3.packingAlignment, equals(1));
      expect(structProjection3.classPreamble, contains('@Packed(1)'));

      final typeDef4 =
          scope.findTypeDef('Windows.Win32.Devices.Bluetooth.SOCKADDR_BTH');
      expect(typeDef4, isNotNull);
      final structProjection4 = StructProjection(typeDef4!);
      expect(structProjection4.packingAlignment, equals(1));
      expect(structProjection4.classPreamble, contains('@Packed(1)'));

      final typeDef5 =
          scope.findTypeDef('Windows.Win32.Graphics.Gdi.BITMAPFILEHEADER');
      expect(typeDef5, isNotNull);
      final structProjection5 = StructProjection(typeDef5!);
      expect(structProjection5.packingAlignment, equals(2));
      expect(structProjection5.classPreamble, contains('@Packed(2)'));
    });
  });

  tearDownAll(MetadataStore.close);
}
