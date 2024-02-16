// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'package:generator/generator.dart';
import 'package:meta/meta.dart';
import 'package:test/test.dart';
import 'package:winmd/winmd.dart';

import '../helpers.dart';

void main() {
  setUpAll(loadMetadata);

  group('StructProjection', () {
    testStruct('Windows.Wdk.Foundation.DRIVER_EXTENSION', (projection) {
      expect(projection.name, equals('DRIVER_EXTENSION'));
      expect(projection.packingAlignment, isZero);
      expect(projection.classPreamble, equals('/// {@category struct}'));
      expect(projection.classModifier, equals('base'));
      expect(projection.baseType, equals('Struct'));
      expect(projection.classHeader,
          equals('base class DRIVER_EXTENSION extends Struct'));
      final [driverObject, addDevice, count, serviceKeyName] =
          projection.fieldProjections;
      expect(driverObject.toString(),
          equals('external Pointer<DRIVER_OBJECT> DriverObject;'));
      expect(
          addDevice.toString(),
          equals(
              'external Pointer<Pointer<NativeFunction<DRIVER_ADD_DEVICE>>> AddDevice;'));
      expect(count.toString(), equals('@Uint32()\nexternal int Count;'));
      expect(serviceKeyName.toString(),
          equals('external UNICODE_STRING ServiceKeyName;'));
      expect(projection.propertyAccessors, isEmpty);
      expect(projection.nestedTypeProjections, isEmpty);
    });

    testStruct('Windows.Win32.Devices.Bluetooth.BLUETOOTH_ADDRESS',
        (projection) {
      expect(projection.name, equals('BLUETOOTH_ADDRESS'));
      expect(projection.packingAlignment, isZero);
      expect(projection.classPreamble, equals('/// {@category struct}'));
      expect(projection.classModifier, equals('base'));
      expect(projection.baseType, equals('Struct'));
      expect(projection.classHeader,
          equals('base class BLUETOOTH_ADDRESS extends Struct'));
      final [anonymous] = projection.fieldProjections;
      expect(anonymous.toString(),
          equals('external BLUETOOTH_ADDRESS_0 Anonymous;'));
      expect(projection.propertyAccessors, isEmpty);
      final [bluetoothAddress0] = projection.nestedTypeProjections;
      expect(bluetoothAddress0.name, equals('BLUETOOTH_ADDRESS_0'));
      expect(bluetoothAddress0.packingAlignment, isZero);
      expect(bluetoothAddress0.classPreamble, equals('/// {@category union}'));
      expect(bluetoothAddress0.classModifier, equals('sealed'));
      expect(bluetoothAddress0.baseType, equals('Union'));
      expect(bluetoothAddress0.classHeader,
          equals('sealed class BLUETOOTH_ADDRESS_0 extends Union'));
      final [ullLong, rgBytes] = bluetoothAddress0.fieldProjections;
      expect(ullLong.toString(), equals('@Uint64()\nexternal int ullLong;'));
      expect(rgBytes.toString(),
          equals('@Array(6)\nexternal Array<Uint8> rgBytes;'));
      expect(bluetoothAddress0.propertyAccessors, equalsIgnoringWhitespace('''
extension BLUETOOTH_ADDRESS_0_Extension on BLUETOOTH_ADDRESS {
  int get ullLong => this.Anonymous.ullLong;
  set ullLong(int value) => this.Anonymous.ullLong = value;

  Array<Uint8> get rgBytes => this.Anonymous.rgBytes;
  set rgBytes(Array<Uint8> value) => this.Anonymous.rgBytes = value;
}'''));
    });

    testStruct('Windows.Win32.Graphics.Gdi.BITMAPFILEHEADER', (projection) {
      expect(projection.name, equals('BITMAPFILEHEADER'));
      expect(projection.packingAlignment, equals(2));
      expect(projection.classPreamble,
          equals('/// {@category struct}\n@Packed(2)'));
      expect(projection.classModifier, equals('base'));
      expect(projection.baseType, equals('Struct'));
      expect(projection.classHeader,
          equals('base class BITMAPFILEHEADER extends Struct'));
      final [bfType, bfSize, bfReserved1, bfReserved2, bfOffBits] =
          projection.fieldProjections;
      expect(bfType.toString(), equals('@Uint16()\nexternal int bfType;'));
      expect(bfSize.toString(), equals('@Uint32()\nexternal int bfSize;'));
      expect(
          bfReserved1.toString(),
          equals(
              '@Uint16()\n  // ignore: unused_field\nexternal int _bfReserved1;'));
      expect(
          bfReserved2.toString(),
          equals(
              '@Uint16()\n  // ignore: unused_field\nexternal int _bfReserved2;'));
      expect(
          bfOffBits.toString(), equals('@Uint32()\nexternal int bfOffBits;'));
      expect(projection.propertyAccessors, isEmpty);
      expect(projection.nestedTypeProjections, isEmpty);
    });

    testStruct('Windows.Win32.NetworkManagement.Dhcp.DHCP_ALL_OPTIONS',
        (projection) {
      expect(projection.name, equals('DHCP_ALL_OPTIONS'));
      expect(projection.packingAlignment, isZero);
      expect(projection.classPreamble, equals('/// {@category struct}'));
      expect(projection.classModifier, equals('base'));
      expect(projection.baseType, equals('Struct'));
      expect(projection.classHeader,
          equals('base class DHCP_ALL_OPTIONS extends Struct'));
      final [flags, nonVendorOptions, numVendorOptions, vendorOptions] =
          projection.fieldProjections;
      expect(flags.toString(), equals('@Uint32()\nexternal int Flags;'));
      expect(nonVendorOptions.toString(),
          equals('external Pointer<DHCP_OPTION_ARRAY> NonVendorOptions;'));
      expect(numVendorOptions.toString(),
          equals('@Uint32()\nexternal int NumVendorOptions;'));
      expect(vendorOptions.toString(),
          equals('external Pointer<DHCP_ALL_OPTIONS_0> VendorOptions;'));
      expect(projection.propertyAccessors, isEmpty);
      final [dhcpAllOptions0] = projection.nestedTypeProjections;
      expect(dhcpAllOptions0.name, equals('DHCP_ALL_OPTIONS_0'));
      expect(dhcpAllOptions0.packingAlignment, isZero);
      expect(dhcpAllOptions0.classPreamble, equals('/// {@category struct}'));
      expect(dhcpAllOptions0.classModifier, equals('sealed'));
      expect(dhcpAllOptions0.baseType, equals('Struct'));
      expect(dhcpAllOptions0.classHeader,
          equals('sealed class DHCP_ALL_OPTIONS_0 extends Struct'));
      final [option, vendorName, className] = dhcpAllOptions0.fieldProjections;
      expect(option.toString(), equals('external DHCP_OPTION Option;'));
      expect(vendorName.toString(), equals('external PWSTR VendorName;'));
      expect(className.toString(), equals('external PWSTR ClassName;'));
      expect(dhcpAllOptions0.propertyAccessors, isEmpty);
    });

    testStruct('Windows.Win32.NetworkManagement.WiFi.WLAN_RAW_DATA_LIST',
        (projection) {
      expect(projection.name, equals('WLAN_RAW_DATA_LIST'));
      expect(projection.packingAlignment, isZero);
      expect(projection.classPreamble, equals('/// {@category struct}'));
      expect(projection.classModifier, equals('base'));
      expect(projection.baseType, equals('Struct'));
      expect(projection.classHeader,
          equals('base class WLAN_RAW_DATA_LIST extends Struct'));
      final [dwTotalSize, dwNumberOfItems, dataList] =
          projection.fieldProjections;
      expect(dwTotalSize.toString(),
          equals('@Uint32()\nexternal int dwTotalSize;'));
      expect(dwNumberOfItems.toString(),
          equals('@Uint32()\nexternal int dwNumberOfItems;'));
      expect(dataList.toString(),
          equals('@Array(1)\nexternal Array<WLAN_RAW_DATA_LIST_0> DataList;'));
      expect(projection.propertyAccessors, isEmpty);
      final [wlanRawDataList0] = projection.nestedTypeProjections;
      expect(wlanRawDataList0.name, equals('WLAN_RAW_DATA_LIST_0'));
      expect(wlanRawDataList0.packingAlignment, isZero);
      expect(wlanRawDataList0.classPreamble, equals('/// {@category struct}'));
      expect(wlanRawDataList0.classModifier, equals('sealed'));
      expect(wlanRawDataList0.baseType, equals('Struct'));
      expect(wlanRawDataList0.classHeader,
          equals('sealed class WLAN_RAW_DATA_LIST_0 extends Struct'));
      final [dwDataOffset, dwDataSize] = wlanRawDataList0.fieldProjections;
      expect(dwDataOffset.toString(),
          equals('@Uint32()\nexternal int dwDataOffset;'));
      expect(
          dwDataSize.toString(), equals('@Uint32()\nexternal int dwDataSize;'));
      expect(wlanRawDataList0.propertyAccessors, isEmpty);
    });
  });

  tearDownAll(MetadataStore.close);
}

@isTest
void testStruct(String structName, void Function(StructProjection) projection) {
  test(structName, () {
    final typeDef = getTypeDef(structName);
    projection(StructProjection(typeDef));
  });
}
