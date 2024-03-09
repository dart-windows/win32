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
  setUpAll(loadMetadataAndDocs);

  group('FieldProjection', () {
    testField('Windows.Wdk.Foundation.DEVICE_OBJECT', 'Queue', (projection) {
      final FieldProjection(:type, :toString) = projection;
      expect(type, equals('DEVICE_OBJECT_0'));
      expect(toString(), equals('external $type Queue;'));
    });

    testField('Windows.Win32.Devices.Bluetooth.BLUETOOTH_OOB_DATA_INFO', 'C',
        (projection) {
      final FieldProjection(:type, :toString) = projection;
      expect(type, equals('Array<Uint8>'));
      expect(toString(), equalsIgnoringWhitespace('''
  /// A 128-bit cryptographic key used for two-way authentication.
  @Array(16)
  external $type C;'''));
    });

    testField('Windows.Win32.Devices.Bluetooth.BLUETOOTH_ADDRESS', 'Anonymous',
        (projection) {
      final FieldProjection(:type, :toString) = projection;
      expect(type, equals('BLUETOOTH_ADDRESS_0'));
      expect(toString(), equals('external $type Anonymous;'));
    });

    testField('Windows.Win32.Devices.Bluetooth.BLUETOOTH_DEVICE_SEARCH_PARAMS',
        'hRadio', (projection) {
      final FieldProjection(:type, :toString) = projection;
      expect(type, equals('int'));
      expect(toString(), equalsIgnoringWhitespace('''
  /// A handle for the radio on which to perform the inquiry.
  @IntPtr()
  external $type hRadio;'''));
    });

    testField('Windows.Win32.Devices.Bluetooth.BLUETOOTH_SELECT_DEVICE_PARAMS',
        'pszInfo', (projection) {
      final FieldProjection(:type, :toString) = projection;
      expect(type, equals('Pointer<Utf16>'));
      expect(toString(), equalsIgnoringWhitespace('''
  /// Sets the information text when not <b>NULL</b>.
  external $type pszInfo;'''));
    });

    testField('Windows.Win32.Devices.Bluetooth.BTH_QUERY_SERVICE', 'uuids',
        (projection) {
      final FieldProjection(:type, :toString) = projection;
      expect(type, equals('Array<SdpQueryUuid>'));
      expect(toString(), equalsIgnoringWhitespace('''
  /// UUIDs that a record must contain to match the search.
  @Array(12)
  external $type uuids;'''));
    });

    testField('Windows.Win32.Graphics.Dwm.DWM_BLURBEHIND', 'fEnable',
        (projection) {
      final FieldProjection(:type, :toString) = projection;
      expect(type, equals('int'));
      expect(toString(), equalsIgnoringWhitespace('''
  /// [TRUE] to register the window handle to DWM blur behind; [FALSE] to
  /// unregister the window handle from DWM blur behind.
  @Int32()
  external $type fEnable;'''));
    });

    testField('Windows.Win32.Graphics.Gdi.BITMAPFILEHEADER', 'bfReserved1',
        (projection) {
      final FieldProjection(:type, :toString) = projection;
      expect(type, equals('int'));
      expect(toString(), equalsIgnoringWhitespace('''
  /// Reserved; must be zero.
  @Uint16()
  // ignore: unused_field
  external $type _bfReserved1;'''));
    });

    testField('Windows.Win32.Graphics.Gdi.DEVMODEW', 'dmDeviceName',
        (projection) {
      final FieldProjection(:type, :toString) = projection;
      expect(type, equals('Array<Uint16>'));
      expect(
        toString(),
        equalsIgnoringWhitespace('''
  @Array(32)
  external $type _dmDeviceName;

  /// For a display, specifies the name of the display driver's DLL; for
  /// example, "perm3dd" for the 3Dlabs Permedia3 display driver.
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
      final FieldProjection(:type, :toString) = projection;
      expect(type, equals('int'));
      expect(toString(), equals('@Int32()\nexternal $type Options;'));
    });

    testField('Windows.Win32.Media.Multimedia.YAMAHA_ADPCMWAVEFORMAT', 'wfx',
        (projection) {
      final FieldProjection(:type, :toString) = projection;
      expect(type, equals('WAVEFORMATEX'));
      expect(toString(), equals('external $type wfx;'));
    });

    testField('Windows.Win32.Security.Cryptography.CERT_EXTENSION', 'pszObjId',
        (projection) {
      final FieldProjection(:type, :toString) = projection;
      expect(type, equals('Pointer<Utf8>'));
      expect(toString(), equalsIgnoringWhitespace('''
  /// <a href="https://docs.microsoft.com/windows/desktop/SecGloss/o-gly">Object
  /// identifier</a> (OID) that specifies the structure of the extension data
  /// contained in the <b>Value</b> member.
  external $type pszObjId;'''));
    });

    testField('Windows.Win32.System.Com.StructuredStorage.CALPSTR', 'pElems',
        (projection) {
      final FieldProjection(:type, :toString) = projection;
      expect(type, equals('Pointer<Pointer<Utf8>>'));
      expect(toString(), equals('external $type pElems;'));
    });

    testField('Windows.Win32.System.Com.StructuredStorage.CALPWSTR', 'pElems',
        (projection) {
      final FieldProjection(:type, :toString) = projection;
      expect(type, equals('Pointer<Pointer<Utf16>>'));
      expect(toString(), equals('external $type pElems;'));
    });

    testField(
        'Windows.Win32.System.Com.StructuredStorage.VERSIONEDSTREAM', 'pStream',
        (projection) {
      final FieldProjection(:type, :toString) = projection;
      expect(type, equals('VTablePointer'));
      expect(toString(), equals('external $type pStream;'));
    });

    testField('Windows.Win32.System.Iis.CONFIGURATION_ENTRY', 'bstrKey',
        (projection) {
      final FieldProjection(:type, :toString) = projection;
      expect(type, equals('Pointer<Utf16>'));
      expect(toString(), equals('external $type bstrKey;'));
    });

    testField('Windows.Win32.System.Ole.ARRAYDESC', 'rgbounds', (projection) {
      final FieldProjection(:type, :toString) = projection;
      expect(type, equals('Array<SAFEARRAYBOUND>'));
      expect(toString(), equalsIgnoringWhitespace('''
  /// A variable-length array containing one element for each dimension.
  @Array(1)
  external $type rgbounds;'''));
    });

    testField('Windows.Win32.System.Search.RMTPACK', 'rgBSTR', (projection) {
      final FieldProjection(:type, :toString) = projection;
      expect(type, equals('Pointer<Pointer<Utf16>>'));
      expect(toString(), equals('external $type rgBSTR;'));
    });

    testField('Windows.Win32.UI.Controls.Dialogs.CHOOSECOLORW', 'Flags',
        (projection) {
      final FieldProjection(:type, :toString) = projection;
      expect(type, equals('int'));
      expect(toString(), equalsIgnoringWhitespace('''
  /// A set of bit flags that you can use to initialize the <b>Color</b> dialog
  /// box.
  @Uint32()
  external $type Flags;'''));
    });

    testField('Windows.Win32.UI.Shell.KNOWNFOLDER_DEFINITION', 'fidParent',
        (projection) {
      final FieldProjection(:type, :toString) = projection;
      expect(type, equals('GUID'));
      expect(toString(), equalsIgnoringWhitespace('''
  /// A <a
  /// href="https://docs.microsoft.com/windows/desktop/shell/knownfolderid">KNOWNFOLDERID</a>
  /// value that names another known folder to serve as the parent folder.
  external $type fidParent;'''));
    });

    testField(
        'Windows.Win32.UI.WindowsAndMessaging.MENUITEMTEMPLATE', 'mtString',
        (projection) {
      final FieldProjection(:type, :toString) = projection;
      expect(type, equals('Array<Uint16>'));
      expect(toString(), equalsIgnoringWhitespace('''
  /// The menu item.
  @Array(1)
  external $type mtString;'''));
    });

    testField('Windows.Win32.UI.WindowsAndMessaging.WNDCLASSW', 'lpfnWndProc',
        (projection) {
      final FieldProjection(:type, :toString) = projection;
      expect(type, equals('Pointer<NativeFunction<WNDPROC>>'));
      expect(toString(), equalsIgnoringWhitespace('''
  /// A pointer to the window procedure.
  external $type lpfnWndProc;'''));
    });
  });

  tearDownAll(MetadataStore.close);
}

@isTest
void testField(
  String structName,
  String fieldName,
  void Function(FieldProjection) projection,
) {
  test('$structName.$fieldName', () {
    final typeDef = getTypeDef(structName);
    final field = typeDef.findField(fieldName);
    expect(
      field,
      isNotNull,
      reason: '`$fieldName` field is not found in the `$structName`.',
    );
    projection(FieldProjection(field!));
  });
}
