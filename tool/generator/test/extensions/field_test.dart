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

  group('Field', () {
    test('arrayUpperBound', () {
      final queryService = scope
          .findTypeDef('Windows.Win32.Devices.Bluetooth.BTH_QUERY_SERVICE');
      expect(queryService, isNotNull);

      final uuids = queryService!.findField('uuids');
      expect(uuids, isNotNull);
      expect(uuids!.arrayUpperBound, equals(12));

      final numRange = queryService.findField('numRange');
      expect(numRange, isNotNull);
      expect(numRange!.arrayUpperBound, isNull);

      final pRange = queryService.findField('pRange');
      expect(pRange, isNotNull);
      expect(pRange!.arrayUpperBound, equals(1));
    });

    test('instanceName', () {
      final charInfo =
          scope.findTypeDef('Windows.Win32.System.Console.CHAR_INFO');
      expect(charInfo, isNotNull);

      final char = charInfo!.findField('Char');
      expect(char, isNotNull);
      expect(char!.instanceName, equals('Char'));

      final [unicodeChar, asciiChar] = char.typeIdentifier.type!.fields;
      expect(unicodeChar.instanceName, equals('Char.UnicodeChar'));
      expect(asciiChar.instanceName, equals('Char.AsciiChar'));

      final attributes = charInfo.findField('Attributes');
      expect(attributes, isNotNull);
      expect(attributes!.instanceName, equals('Attributes'));
    });

    test('isArray', () {
      final queryService = scope
          .findTypeDef('Windows.Win32.Devices.Bluetooth.BTH_QUERY_SERVICE');
      expect(queryService, isNotNull);

      final uuids = queryService!.findField('uuids');
      expect(uuids, isNotNull);
      expect(uuids!.isArray, isTrue);

      final numRange = queryService.findField('numRange');
      expect(numRange, isNotNull);
      expect(numRange!.isArray, isFalse);
    });

    test('isCharArray', () {
      final deviceInfo = scope
          .findTypeDef('Windows.Win32.Devices.Bluetooth.BLUETOOTH_DEVICE_INFO');
      expect(deviceInfo, isNotNull);

      final szName = deviceInfo!.findField('szName');
      expect(szName, isNotNull);
      expect(szName!.isCharArray, isTrue);

      final queryService = scope
          .findTypeDef('Windows.Win32.Devices.Bluetooth.BTH_QUERY_SERVICE');
      expect(queryService, isNotNull);

      final uuids = queryService!.findField('uuids');
      expect(uuids, isNotNull);
      expect(uuids!.isCharArray, isFalse);
    });

    test('isFlexibleArray', () {
      final detailData = scope.findTypeDef(
          'Windows.Win32.Devices.DeviceAndDriverInstallation.SP_DEVICE_INTERFACE_DETAIL_DATA_W');
      expect(detailData, isNotNull);

      final devicePath = detailData!.findField('DevicePath');
      expect(devicePath, isNotNull);
      expect(devicePath!.isFlexibleArray, isTrue);

      final designVector =
          scope.findTypeDef('Windows.Win32.Graphics.Gdi.DESIGNVECTOR');
      expect(designVector, isNotNull);

      final dvValues = designVector!.findField('dvValues');
      expect(dvValues, isNotNull);
      expect(dvValues!.isFlexibleArray, isFalse);
    });

    test('isNested', () {
      final bluetoothAddress = scope
          .findTypeDef('Windows.Win32.Devices.Bluetooth.BLUETOOTH_ADDRESS');
      expect(bluetoothAddress, isNotNull);

      final anonymous = bluetoothAddress!.findField('Anonymous');
      expect(anonymous, isNotNull);
      expect(anonymous!.isNested, isTrue);
    });

    test('isNestedArray', () {
      final wlanRawDataList = scope.findTypeDef(
          'Windows.Win32.NetworkManagement.WiFi.WLAN_RAW_DATA_LIST');
      expect(wlanRawDataList, isNotNull);

      final dataList = wlanRawDataList!.findField('DataList');
      expect(dataList, isNotNull);
      expect(dataList!.isNestedArray, isTrue);
    });

    test('isNestedPointer', () {
      final dhcpAllOptions = scope
          .findTypeDef('Windows.Win32.NetworkManagement.Dhcp.DHCP_ALL_OPTIONS');
      expect(dhcpAllOptions, isNotNull);

      final vendorOptions = dhcpAllOptions!.findField('VendorOptions');
      expect(vendorOptions, isNotNull);
      expect(vendorOptions!.isNestedPointer, isTrue);
    });

    test('isPointer', () {
      final dhcpAllOptions = scope
          .findTypeDef('Windows.Win32.NetworkManagement.Dhcp.DHCP_ALL_OPTIONS');
      expect(dhcpAllOptions, isNotNull);

      final vendorOptions = dhcpAllOptions!.findField('VendorOptions');
      expect(vendorOptions, isNotNull);
      expect(vendorOptions!.isPointer, isTrue);
    });
  });

  tearDownAll(MetadataStore.close);
}