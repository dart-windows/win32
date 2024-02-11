// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'package:generator/generator.dart';
import 'package:test/test.dart';
import 'package:winmd/winmd.dart';

void main() {
  setUpAll(() async {
    await MetadataStore.loadWdkMetadata(version: wdkMetadataVersion);
    await MetadataStore.loadWin32Metadata(version: win32MetadataVersion);
  });

  group('FieldProjection', () {
    testField('Windows.Wdk.Foundation.DEVICE_OBJECT', 'Queue', (projection) {
      expect(projection.type, equals('DEVICE_OBJECT_0'));
      expect(
        projection.toString(),
        equals('external DEVICE_OBJECT_0 Queue;'),
      );
    });

    testField('Windows.Win32.Devices.Bluetooth.BLUETOOTH_OOB_DATA_INFO', 'C',
        (projection) {
      expect(projection.type, equals('Array<Uint8>'));
      expect(
        projection.toString(),
        equals('@Array(16)\nexternal Array<Uint8> C;'),
      );
    });

    testField('Windows.Win32.Devices.Bluetooth.BLUETOOTH_ADDRESS', 'Anonymous',
        (projection) {
      expect(projection.type, equals('BLUETOOTH_ADDRESS_0'));
      expect(projection.toString(),
          equals('external BLUETOOTH_ADDRESS_0 Anonymous;'));
    });

    testField('Windows.Win32.Devices.Bluetooth.BLUETOOTH_DEVICE_SEARCH_PARAMS',
        'hRadio', (projection) {
      expect(projection.type, equals('int'));
      expect(projection.toString(), equals('@IntPtr()\nexternal int hRadio;'));
    });

    testField('Windows.Win32.Devices.Bluetooth.BLUETOOTH_SELECT_DEVICE_PARAMS',
        'pszInfo', (projection) {
      expect(projection.type, equals('Pointer<Utf16>'));
      expect(projection.toString(), equals('external Pointer<Utf16> pszInfo;'));
    });

    testField('Windows.Win32.Devices.Bluetooth.BTH_QUERY_SERVICE', 'uuids',
        (projection) {
      expect(projection.type, equals('Array<SdpQueryUuid>'));
      expect(
        projection.toString(),
        equals('@Array(12)\nexternal Array<SdpQueryUuid> uuids;'),
      );
    });

    testField('Windows.Win32.Graphics.Dwm.DWM_BLURBEHIND', 'fEnable',
        (projection) {
      expect(projection.type, equals('int'));
      expect(projection.toString(), equals('@Int32()\nexternal int fEnable;'));
    });

    testField('Windows.Win32.Graphics.Gdi.BITMAPFILEHEADER', 'bfReserved1',
        (projection) {
      expect(projection.type, equals('int'));
      expect(projection.toString(), equalsIgnoringWhitespace('''
    @Uint16()
    // ignore: unused_field
    external int _bfReserved1;'''));
    });

    testField('Windows.Win32.Graphics.Gdi.DEVMODEW', 'dmDeviceName',
        (projection) {
      expect(projection.type, equals('Array<Uint16>'));
      expect(
        projection.toString(),
        equalsIgnoringWhitespace('''
  @Array(32)
  external Array<Uint16> _dmDeviceName;

  String get dmDeviceName {
    final charCodes = <int>[];
    for (var i = 0; i < 32; i++) {
      if (_dmDeviceName[i] == 0x00) break;
      charCodes.add(_dmDeviceName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set dmDeviceName(String value) {
    final stringToStore = value.padRight(32, '\\x00');
    for (var i = 0; i < 32; i++) {
      _dmDeviceName[i] = stringToStore.codeUnitAt(i);
    }
  }'''),
      );
    });

    testField('Windows.Win32.Media.Audio.AudioClientProperties', 'Options',
        (projection) {
      expect(projection.type, equals('int'));
      expect(projection.toString(), equals('@Int32()\nexternal int Options;'));
    });

    testField('Windows.Win32.Media.Multimedia.YAMAHA_ADPCMWAVEFORMAT', 'wfx',
        (projection) {
      expect(projection.type, equals('WAVEFORMATEX'));
      expect(projection.toString(), equals('external WAVEFORMATEX wfx;'));
    });

    testField('Windows.Win32.Security.Cryptography.CERT_EXTENSION', 'pszObjId',
        (projection) {
      expect(projection.type, equals('Pointer<Utf8>'));
      expect(projection.toString(), equals('external Pointer<Utf8> pszObjId;'));
    });

    testField('Windows.Win32.System.Com.StructuredStorage.CALPSTR', 'pElems',
        (projection) {
      expect(projection.type, equals('Pointer<Pointer<Utf8>>'));
      expect(projection.toString(),
          equals('external Pointer<Pointer<Utf8>> pElems;'));
    });

    testField('Windows.Win32.System.Com.StructuredStorage.CALPWSTR', 'pElems',
        (projection) {
      expect(projection.type, equals('Pointer<Pointer<Utf16>>'));
      expect(projection.toString(),
          equals('external Pointer<Pointer<Utf16>> pElems;'));
    });

    testField(
        'Windows.Win32.System.Com.StructuredStorage.VERSIONEDSTREAM', 'pStream',
        (projection) {
      expect(projection.type, equals('VTablePointer'));
      expect(projection.toString(), equals('external VTablePointer pStream;'));
    });

    testField('Windows.Win32.System.Iis.CONFIGURATION_ENTRY', 'bstrKey',
        (projection) {
      expect(projection.type, equals('Pointer<Utf16>'));
      expect(projection.toString(), equals('external Pointer<Utf16> bstrKey;'));
    });

    testField('Windows.Win32.System.Ole.ARRAYDESC', 'rgbounds', (projection) {
      expect(projection.type, equals('Array<SAFEARRAYBOUND>'));
      expect(projection.toString(),
          equals('@Array(1)\nexternal Array<SAFEARRAYBOUND> rgbounds;'));
    });

    testField('Windows.Win32.System.Search.RMTPACK', 'rgBSTR', (projection) {
      expect(projection.type, equals('Pointer<Pointer<Utf16>>'));
      expect(projection.toString(),
          equals('external Pointer<Pointer<Utf16>> rgBSTR;'));
    });

    testField('Windows.Win32.UI.Controls.Dialogs.CHOOSECOLORW', 'Flags',
        (projection) {
      expect(projection.type, equals('int'));
      expect(projection.toString(), equals('@Uint32()\nexternal int Flags;'));
    });

    testField('Windows.Win32.UI.Shell.KNOWNFOLDER_DEFINITION', 'fidParent',
        (projection) {
      expect(projection.type, equals('GUID'));
      expect(projection.toString(), equals('external GUID fidParent;'));
    });

    testField(
        'Windows.Win32.UI.WindowsAndMessaging.MENUITEMTEMPLATE', 'mtString',
        (projection) {
      expect(projection.type, equals('Array<Uint16>'));
      expect(projection.toString(),
          equals('@Array(1)\nexternal Array<Uint16> mtString;'));
    });

    testField('Windows.Win32.UI.WindowsAndMessaging.WNDCLASSW', 'lpfnWndProc',
        (projection) {
      expect(projection.type, equals('Pointer<NativeFunction<WNDPROC>>'));
      expect(projection.toString(),
          equals('external Pointer<NativeFunction<WNDPROC>> lpfnWndProc;'));
    });
  });

  tearDownAll(MetadataStore.close);
}

void testField(
  String struct,
  String fieldName,
  void Function(FieldProjection) projection,
) {
  test("$struct's $fieldName field", () {
    final typeDef = MetadataStore.getMetadataForType(struct);
    expect(
      typeDef,
      isNotNull,
      reason: '`$struct` type is not found in the metadata.',
    );
    final field = typeDef!.findField(fieldName);
    expect(
      field,
      isNotNull,
      reason: '`$fieldName` field is not found in the `$struct`.',
    );
    projection(FieldProjection(field!));
  });
}
