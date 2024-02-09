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

  group('FieldProjection', () {
    test('Array<T extends Struct> fields are projected appropriately', () {
      final typeDef = scope
          .findTypeDef('Windows.Win32.Devices.Bluetooth.BTH_QUERY_SERVICE');
      expect(typeDef, isNotNull);
      final uuids = typeDef!.fields[2]; // SdpQueryUuid uuids[12];
      final fieldProjection = FieldProjection(uuids);
      final typeProjection = fieldProjection.typeProjection;
      expect(typeProjection.nativeType, equals('Array<SdpQueryUuid>'));
      expect(typeProjection.dartType, equals('Array<SdpQueryUuid>'));
      expect(
        fieldProjection.toString(),
        equals('@Array(12)\nexternal Array<SdpQueryUuid> uuids;'),
      );
    });

    test('Array<Uint8> fields are projected appropriately', () {
      final typeDef = scope.findTypeDef(
          'Windows.Win32.Devices.Bluetooth.BLUETOOTH_OOB_DATA_INFO');
      expect(typeDef, isNotNull);
      final c = typeDef!.fields[0]; // UCHAR C[16];
      final fieldProjection = FieldProjection(c);
      final typeProjection = fieldProjection.typeProjection;
      expect(typeProjection.nativeType, equals('Array<Uint8>'));
      expect(typeProjection.dartType, equals('Array<Uint8>'));
      expect(
        fieldProjection.toString(),
        equals('@Array(16)\nexternal Array<Uint8> C;'),
      );
    });

    test('Array<WCHAR> fields are projected appropriately', () {
      final typeDef = scope.findTypeDef('Windows.Win32.Graphics.Gdi.DEVMODEW');
      expect(typeDef, isNotNull);
      final dmDeviceName = typeDef!.fields[0]; // WCHAR dmDeviceName[32];
      final fieldProjection = FieldProjection(dmDeviceName);
      final typeProjection = fieldProjection.typeProjection;
      expect(typeProjection.nativeType, equals('Array<Uint16>'));
      expect(typeProjection.dartType, equals('Array<Uint16>'));
      expect(
        fieldProjection.toString(),
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

    test('BOOL fields are projected to int', () {
      final typeDef =
          scope.findTypeDef('Windows.Win32.Graphics.Dwm.DWM_BLURBEHIND');
      expect(typeDef, isNotNull);
      final fEnable = typeDef!.fields[1]; // BOOL fEnable;
      final fieldProjection = FieldProjection(fEnable);
      final typeProjection = fieldProjection.typeProjection;
      expect(typeProjection.nativeType, equals('Int32'));
      expect(typeProjection.dartType, equals('int'));
      expect(
        fieldProjection.toString(),
        equals('@Int32()\nexternal int fEnable;'),
      );
    });

    test('BSTR fields are projected to Pointer<Utf16>', () {
      final typeDef =
          scope.findTypeDef('Windows.Win32.System.Iis.CONFIGURATION_ENTRY');
      expect(typeDef, isNotNull);
      final bstrKey = typeDef!.fields.first; // BSTR bstrKey;
      final fieldProjection = FieldProjection(bstrKey);
      final typeProjection = fieldProjection.typeProjection;
      expect(typeProjection.nativeType, equals('Pointer<Utf16>'));
      expect(typeProjection.dartType, equals('Pointer<Utf16>'));
      expect(fieldProjection.toString(),
          equals('\nexternal Pointer<Utf16> bstrKey;'));
    });

    test('BSTR* fields are projected to Pointer<Pointer<Utf16>>', () {
      final typeDef = scope.findTypeDef('Windows.Win32.System.Search.RMTPACK');
      expect(typeDef, isNotNull);
      final rgBSTR = typeDef!.fields[3]; // BSTR* rgBSTR;
      final fieldProjection = FieldProjection(rgBSTR);
      final typeProjection = fieldProjection.typeProjection;
      expect(typeProjection.nativeType, equals('Pointer<Pointer<Utf16>>'));
      expect(typeProjection.dartType, equals('Pointer<Pointer<Utf16>>'));
      expect(
        fieldProjection.toString(),
        equals('\nexternal Pointer<Pointer<Utf16>> rgBSTR;'),
      );
    });

    test('callback fields are projected appropriately', () {
      final typeDef =
          scope.findTypeDef('Windows.Win32.UI.WindowsAndMessaging.WNDCLASSW');
      expect(typeDef, isNotNull);
      final lpfnWndProc = typeDef!.fields[1]; // WNDPROC lpfnWndProc;
      final fieldProjection = FieldProjection(lpfnWndProc);
      final typeProjection = fieldProjection.typeProjection;
      expect(typeProjection.nativeType,
          equals('Pointer<NativeFunction<WNDPROC>>'));
      expect(
          typeProjection.dartType, equals('Pointer<NativeFunction<WNDPROC>>'));
      expect(fieldProjection.toString(),
          equals('\nexternal Pointer<NativeFunction<WNDPROC>> lpfnWndProc;'));
    });

    test('COM interfaces fields are projected appropriately', () {
      final typeDef = scope.findTypeDef(
          'Windows.Win32.System.Com.StructuredStorage.VERSIONEDSTREAM');
      expect(typeDef, isNotNull);
      final pStream = typeDef!.fields[1]; // IStream pStream;
      final fieldProjection = FieldProjection(pStream);
      final typeProjection = fieldProjection.typeProjection;
      expect(typeProjection.nativeType, equals('VTablePointer'));
      expect(typeProjection.dartType, equals('VTablePointer'));
      expect(fieldProjection.toString(),
          equals('\nexternal VTablePointer pStream;'));
    });

    test('Enum fields are projected appropriately', () {
      final typeDef =
          scope.findTypeDef('Windows.Win32.Media.Audio.AudioClientProperties');
      expect(typeDef, isNotNull);
      final options = typeDef!.fields[3]; // AUDCLNT_STREAMOPTIONS Options;
      final fieldProjection = FieldProjection(options);
      final typeProjection = fieldProjection.typeProjection;
      expect(typeProjection.nativeType, equals('Int32'));
      expect(typeProjection.dartType, equals('int'));
      expect(
        fieldProjection.toString(),
        equals('@Int32()\nexternal int Options;'),
      );
    });

    test('FlagsEnum fields are projected appropriately', () {
      final typeDef =
          scope.findTypeDef('Windows.Win32.UI.Controls.Dialogs.CHOOSECOLORW');
      expect(typeDef, isNotNull);
      final flags = typeDef!.fields[5]; // CHOOSECOLOR_FLAGS Flags;
      final fieldProjection = FieldProjection(flags);
      final typeProjection = fieldProjection.typeProjection;
      expect(typeProjection.nativeType, equals('Uint32'));
      expect(typeProjection.dartType, equals('int'));
      expect(
        fieldProjection.toString(),
        equals('@Uint32()\nexternal int Flags;'),
      );
    });

    test('FlexibleArray<T extends Struct> fields are projected appropriately',
        () {
      final typeDef = scope.findTypeDef('Windows.Win32.System.Ole.ARRAYDESC');
      expect(typeDef, isNotNull);
      final rgbounds = typeDef!.fields[2]; // SAFEARRAYBOUND rgbounds[1];
      final fieldProjection = FieldProjection(rgbounds);
      final typeProjection = fieldProjection.typeProjection;
      expect(typeProjection.nativeType, equals('Array<SAFEARRAYBOUND>'));
      expect(typeProjection.dartType, equals('Array<SAFEARRAYBOUND>'));
      expect(
        fieldProjection.toString(),
        equals('@Array(1)\nexternal Array<SAFEARRAYBOUND> rgbounds;'),
      );
    });

    test('FlexibleArray<WCHAR> fields are projected appropriately', () {
      final typeDef = scope
          .findTypeDef('Windows.Win32.UI.WindowsAndMessaging.MENUITEMTEMPLATE');
      expect(typeDef, isNotNull);
      final mtString = typeDef!.fields[2]; // WCHAR mtString[1];
      final fieldProjection = FieldProjection(mtString);
      final typeProjection = fieldProjection.typeProjection;
      expect(typeProjection.nativeType, equals('Array<Uint16>'));
      expect(typeProjection.dartType, equals('Array<Uint16>'));
      expect(
        fieldProjection.toString(),
        equals('@Array(1)\nexternal Array<Uint16> mtString;'),
      );
    });

    test('GUID fields are projected appropriatelys', () {
      final typeDef =
          scope.findTypeDef('Windows.Win32.UI.Shell.KNOWNFOLDER_DEFINITION');
      expect(typeDef, isNotNull);
      final fidParent = typeDef!.fields[3]; // GUID fidParent;
      final fieldProjection = FieldProjection(fidParent);
      final typeProjection = fieldProjection.typeProjection;
      expect(typeProjection.nativeType, equals('GUID'));
      expect(typeProjection.dartType, equals('GUID'));
      expect(fieldProjection.toString(), equals('\nexternal GUID fidParent;'));
    });

    test('HANDLE fields are projected to int', () {
      final typeDef = scope.findTypeDef(
          'Windows.Win32.Devices.Bluetooth.BLUETOOTH_DEVICE_SEARCH_PARAMS');
      expect(typeDef, isNotNull);
      final hRadio = typeDef!.fields.last; // HANDLE hRadio;
      final fieldProjection = FieldProjection(hRadio);
      final typeProjection = fieldProjection.typeProjection;
      expect(typeProjection.nativeType, equals('IntPtr'));
      expect(typeProjection.dartType, equals('int'));
      expect(fieldProjection.toString(),
          equals('@IntPtr()\nexternal int hRadio;'));
    });

    test('PSTR fields are projected to Pointer<Utf8>', () {
      final typeDef = scope
          .findTypeDef('Windows.Win32.Security.Cryptography.CERT_EXTENSION');
      expect(typeDef, isNotNull);
      final pszObjId = typeDef!.fields[0]; // PSTR pszObjId;
      final fieldProjection = FieldProjection(pszObjId);
      final typeProjection = fieldProjection.typeProjection;
      expect(typeProjection.nativeType, equals('Pointer<Utf8>'));
      expect(typeProjection.dartType, equals('Pointer<Utf8>'));
      expect(fieldProjection.toString(),
          equals('\nexternal Pointer<Utf8> pszObjId;'));
    });

    test('PSTR* fields are projected to Pointer<Pointer<Utf8>>', () {
      final typeDef = scope
          .findTypeDef('Windows.Win32.System.Com.StructuredStorage.CALPSTR');
      expect(typeDef, isNotNull);
      final pElems = typeDef!.fields[1]; // PSTR* pElems;
      final fieldProjection = FieldProjection(pElems);
      final typeProjection = fieldProjection.typeProjection;
      expect(typeProjection.nativeType, equals('Pointer<Pointer<Utf8>>'));
      expect(typeProjection.dartType, equals('Pointer<Pointer<Utf8>>'));
      expect(fieldProjection.toString(),
          equals('\nexternal Pointer<Pointer<Utf8>> pElems;'));
    });

    test('nested struct fields are projected appropriately', () {
      final typeDef = scope
          .findTypeDef('Windows.Win32.Devices.Bluetooth.BLUETOOTH_ADDRESS');
      expect(typeDef, isNotNull);
      final anonymous = typeDef!.fields[0]; // _Anonymous_e__Union Anonymous;
      final fieldProjection = FieldProjection(anonymous);
      final typeProjection = fieldProjection.typeProjection;
      expect(typeProjection.nativeType, equals('BLUETOOTH_ADDRESS_0'));
      expect(typeProjection.dartType, equals('BLUETOOTH_ADDRESS_0'));
      expect(fieldProjection.toString(),
          equals('\nexternal BLUETOOTH_ADDRESS_0 Anonymous;'));
    });

    test('obsolete fields are hidden', () {
      final typeDef = scope.findTypeDef('Windows.Win32.System.Variant.VARIANT');
      expect(typeDef, isNotNull);
      // VARIANT_BOOL __OBSOLETE__VARIANT_BOOL;
      final obsolete = typeDef!.fields[0].typeIdentifier.type!.fields[0]
          .typeIdentifier.type!.fields[4].typeIdentifier.type!.fields
          .firstWhere((f) => f.name == '__OBSOLETE__VARIANT_BOOL');
      final fieldProjection = FieldProjection(obsolete);
      final typeProjection = fieldProjection.typeProjection;
      expect(typeProjection.nativeType, equals('Int16'));
      expect(typeProjection.dartType, equals('int'));
      expect(
        fieldProjection.toString(),
        equalsIgnoringWhitespace('''
@Int16()
// ignore: unused_field
external int __OBSOLETE__VARIANT_BOOL;'''),
      );
    });

    test('PWSTR fields are projected to Pointer<Utf16>', () {
      final typeDef = scope.findTypeDef(
          'Windows.Win32.Devices.Bluetooth.BLUETOOTH_SELECT_DEVICE_PARAMS');
      expect(typeDef, isNotNull);
      final pszInfo = typeDef!.fields[3]; // PWSTR pszInfo;
      final fieldProjection = FieldProjection(pszInfo);
      final typeProjection = fieldProjection.typeProjection;
      expect(typeProjection.nativeType, equals('Pointer<Utf16>'));
      expect(typeProjection.dartType, equals('Pointer<Utf16>'));
      expect(fieldProjection.toString(),
          equals('\nexternal Pointer<Utf16> pszInfo;'));
    });

    test('PWSTR* fields are projected to Pointer<Pointer<Utf16>>', () {
      final typeDef = scope
          .findTypeDef('Windows.Win32.System.Com.StructuredStorage.CALPWSTR');
      expect(typeDef, isNotNull);
      final pElems = typeDef!.fields[1]; // PWSTR* pElems;
      final fieldProjection = FieldProjection(pElems);
      final typeProjection = fieldProjection.typeProjection;
      expect(typeProjection.nativeType, equals('Pointer<Pointer<Utf16>>'));
      expect(typeProjection.dartType, equals('Pointer<Pointer<Utf16>>'));
      expect(fieldProjection.toString(),
          equals('\nexternal Pointer<Pointer<Utf16>> pElems;'));
    });

    test('reserved fields are hidden', () {
      final typeDef =
          scope.findTypeDef('Windows.Win32.Graphics.Gdi.BITMAPFILEHEADER');
      expect(typeDef, isNotNull);
      final bfReserved1 = typeDef!.fields[2]; // WORD bfReserved1;
      final fieldProjection = FieldProjection(bfReserved1);
      final typeProjection = fieldProjection.typeProjection;
      expect(typeProjection.nativeType, equals('Uint16'));
      expect(typeProjection.dartType, equals('int'));
      expect(
        fieldProjection.toString(),
        equalsIgnoringWhitespace('''
@Uint16()
// ignore: unused_field
external int _bfReserved1;'''),
      );
    });

    test('struct fields are projected appropriately', () {
      final typeDef = scope
          .findTypeDef('Windows.Win32.Media.Multimedia.YAMAHA_ADPCMWAVEFORMAT');
      expect(typeDef, isNotNull);
      final wfx = typeDef!.fields.first; // WAVEFORMATEX wfx;
      final fieldProjection = FieldProjection(wfx);
      final typeProjection = fieldProjection.typeProjection;
      expect(typeProjection.nativeType, equals('WAVEFORMATEX'));
      expect(typeProjection.dartType, equals('WAVEFORMATEX'));
      expect(
          fieldProjection.toString(), equals('\nexternal WAVEFORMATEX wfx;'));
    });
  });

  tearDownAll(MetadataStore.close);
}
