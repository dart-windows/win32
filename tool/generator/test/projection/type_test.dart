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

  group('TypeProjection', () {
    testMethodParameterType('Windows.Wdk.Foundation.Apis', 'NtQueryObject',
        'ObjectInformationClass', (projection) {
      expect(projection.nativeType, equals('Int32'));
      expect(projection.dartType, equals('int'));
      expect(projection.attribute, equals('@Int32()'));
      expect(projection.isDartPrimitive, isTrue);
    });

    testMethodParameterType('Windows.Win32.Devices.Bluetooth.Apis',
        'BluetoothRemoveDevice', 'pAddress', (projection) {
      expect(projection.nativeType, equals('Pointer<BLUETOOTH_ADDRESS>'));
      expect(projection.dartType, equals('Pointer<BLUETOOTH_ADDRESS>'));
      expect(projection.attribute, isEmpty);
      expect(projection.isDartPrimitive, isTrue);
    });

    testMethodParameterType(
        'Windows.Win32.Foundation.Apis', 'SysAllocString', 'psz', (projection) {
      expect(projection.nativeType, equals('Pointer<Utf16>'));
      expect(projection.dartType, equals('Pointer<Utf16>'));
      expect(projection.attribute, isEmpty);
      expect(projection.isDartPrimitive, isTrue);
    });

    testMethodParameterType(
        'Windows.Win32.Graphics.Gdi.Apis', 'CreateDIBitmap', 'iUsage',
        (projection) {
      expect(projection.nativeType, equals('Uint32'));
      expect(projection.dartType, equals('int'));
      expect(projection.attribute, equals('@Uint32()'));
      expect(projection.isDartPrimitive, isTrue);
    });

    testMethodParameterType(
        'Windows.Win32.Graphics.Gdi.Apis', 'EnumFontFamiliesExW', 'lpProc',
        (projection) {
      expect(
        projection.nativeType,
        equals('Pointer<NativeFunction<FONTENUMPROC>>'),
      );
      expect(
        projection.dartType,
        equals('Pointer<NativeFunction<FONTENUMPROC>>'),
      );
      expect(projection.attribute, isEmpty);
      expect(projection.isDartPrimitive, isTrue);
    });

    testMethodParameterType(
        'Windows.Win32.Security.Credentials.Apis', 'CredFree', 'Buffer',
        (projection) {
      expect(projection.nativeType, equals('Pointer'));
      expect(projection.dartType, equals('Pointer'));
      expect(projection.attribute, isEmpty);
      expect(projection.isDartPrimitive, isTrue);
    });

    testMethodParameterType('Windows.Win32.System.Console.Apis',
        'GenerateConsoleCtrlEvent', 'dwCtrlEvent', (projection) {
      expect(projection.nativeType, equals('Uint32'));
      expect(projection.dartType, equals('int'));
      expect(projection.attribute, equals('@Uint32()'));
      expect(projection.isDartPrimitive, isTrue);
    });

    testMethodParameterType('Windows.Win32.System.Diagnostics.Debug.Apis',
        'SymEnumSymbolsW', 'EnumSymbolsCallback', (projection) {
      expect(
        projection.nativeType,
        equals('Pointer<NativeFunction<PSYM_ENUMERATESYMBOLS_CALLBACK>>'),
      );
      expect(
        projection.dartType,
        equals('Pointer<NativeFunction<PSYM_ENUMERATESYMBOLS_CALLBACK>>'),
      );
      expect(projection.attribute, isEmpty);
      expect(projection.isDartPrimitive, isTrue);
    });

    testMethodParameterType(
        'Windows.Win32.System.EventLog.Apis', 'ReportEventW', 'wType',
        (projection) {
      expect(projection.nativeType, equals('Uint16'));
      expect(projection.dartType, equals('int'));
      expect(projection.attribute, equals('@Uint16()'));
      expect(projection.isDartPrimitive, isTrue);
    });

    testMethodParameterType(
        'Windows.Win32.System.Ole.Apis', 'GetActiveObject', 'ppunk',
        (projection) {
      expect(projection.nativeType, equals('Pointer<VTablePointer>'));
      expect(projection.dartType, equals('Pointer<VTablePointer>'));
      expect(projection.attribute, isEmpty);
      expect(projection.isDartPrimitive, isTrue);
    });

    testMethodParameterType(
        'Windows.Win32.Security.Credentials.Apis', 'CredReadW', 'Credential',
        (projection) {
      expect(projection.nativeType, equals('Pointer<Pointer<CREDENTIAL>>'));
      expect(projection.dartType, equals('Pointer<Pointer<CREDENTIAL>>'));
      expect(projection.attribute, isEmpty);
      expect(projection.isDartPrimitive, isTrue);
    });

    testMethodParameterType('Windows.Win32.Storage.FileSystem.Apis',
        'SetFilePointerEx', 'liDistanceToMove', (projection) {
      expect(projection.nativeType, equals('Int64'));
      expect(projection.dartType, equals('int'));
      expect(projection.attribute, equals('@Int64()'));
      expect(projection.isDartPrimitive, isTrue);
    });

    testMethodParameterType(
        'Windows.Win32.System.Com.Apis', 'CoCreateInstance', 'pUnkOuter',
        (projection) {
      expect(projection.dartType, equals('VTablePointer'));
      expect(projection.nativeType, equals('VTablePointer'));
      expect(projection.attribute, isEmpty);
      expect(projection.isDartPrimitive, isTrue);
    });

    testMethodParameterType(
        'Windows.Win32.System.Com.Apis', 'CoSetProxyBlanket', 'pProxy',
        (projection) {
      expect(projection.dartType, equals('VTablePointer'));
      expect(projection.nativeType, equals('VTablePointer'));
      expect(projection.attribute, isEmpty);
      expect(projection.isDartPrimitive, isTrue);
    });

    testMethodParameterType(
        'Windows.Win32.System.Com.Apis', 'CreateAntiMoniker', 'ppmk',
        (projection) {
      expect(projection.dartType, equals('Pointer<VTablePointer>'));
      expect(projection.nativeType, equals('Pointer<VTablePointer>'));
      expect(projection.attribute, isEmpty);
      expect(projection.isDartPrimitive, isTrue);
    });

    testMethodParameterType(
        'Windows.Win32.System.Pipes.Apis', 'GetNamedPipeInfo', 'lpFlags',
        (projection) {
      expect(projection.nativeType, equals('Pointer<Uint32>'));
      expect(projection.dartType, equals('Pointer<Uint32>'));
      expect(projection.attribute, isEmpty);
      expect(projection.isDartPrimitive, isTrue);
    });

    testMethodParameterType('Windows.Win32.System.Threading.Apis',
        'InitializeProcThreadAttributeList', 'lpAttributeList', (projection) {
      expect(projection.nativeType, equals('Pointer'));
      expect(projection.dartType, equals('Pointer'));
      expect(projection.attribute, isEmpty);
      expect(projection.isDartPrimitive, isTrue);
    });

    testMethodParameterType(
        'Windows.Win32.UI.Controls.Dialogs.Apis', 'ChooseFontW', 'param0',
        (projection) {
      expect(projection.nativeType, equals('Pointer<CHOOSEFONT>'));
      expect(projection.dartType, equals('Pointer<CHOOSEFONT>'));
      expect(projection.attribute, isEmpty);
      expect(projection.isDartPrimitive, isTrue);
    });

    testMethodParameterType('Windows.Win32.UI.Input.KeyboardAndMouse.Apis',
        'GetKeyboardState', 'lpKeyState', (projection) {
      expect(projection.nativeType, equals('Pointer<Uint8>'));
      expect(projection.dartType, equals('Pointer<Uint8>'));
      expect(projection.attribute, isEmpty);
      expect(projection.isDartPrimitive, isTrue);
    });

    testMethodParameterType('Windows.Win32.UI.Input.KeyboardAndMouse.Apis',
        'GetKeyNameTextA', 'lpString', (projection) {
      expect(projection.nativeType, equals('Pointer<Utf8>'));
      expect(projection.dartType, equals('Pointer<Utf8>'));
      expect(projection.attribute, isEmpty);
      expect(projection.isDartPrimitive, isTrue);
    });

    testMethodParameterType(
        'Windows.Win32.UI.Shell.Apis', 'SHGetKnownFolderPath', 'ppszPath',
        (projection) {
      expect(projection.nativeType, equals('Pointer<Pointer<Utf16>>'));
      expect(projection.dartType, equals('Pointer<Pointer<Utf16>>'));
      expect(projection.attribute, isEmpty);
      expect(projection.isDartPrimitive, isTrue);
    });

    testMethodParameterType('Windows.Win32.UI.Shell.PropertiesSystem.Apis',
        'PSPropertyBag_WriteGUID', 'value', (projection) {
      expect(projection.nativeType, equals('Pointer<GUID>'));
      expect(projection.dartType, equals('Pointer<GUID>'));
      expect(projection.attribute, isEmpty);
      expect(projection.isDartPrimitive, isTrue);
    });

    testMethodParameterType(
        'Windows.Win32.UI.WindowsAndMessaging.Apis', 'CloseWindow', 'hWnd',
        (projection) {
      expect(projection.nativeType, equals('IntPtr'));
      expect(projection.dartType, equals('int'));
      expect(projection.attribute, equals('@IntPtr()'));
      expect(projection.isDartPrimitive, isTrue);
    });

    testMethodParameterType('Windows.Win32.UI.WindowsAndMessaging.Apis',
        'GetWindowTextW', 'lpString', (projection) {
      expect(projection.nativeType, equals('Pointer<Utf16>'));
      expect(projection.dartType, equals('Pointer<Utf16>'));
      expect(projection.attribute, isEmpty);
      expect(projection.isDartPrimitive, isTrue);
    });

    testMethodParameterType(
        'Windows.Win32.UI.WindowsAndMessaging.Apis', 'CascadeWindows', 'lpKids',
        (projection) {
      expect(projection.nativeType, equals('Pointer<IntPtr>'));
      expect(projection.dartType, equals('Pointer<IntPtr>'));
      expect(projection.attribute, isEmpty);
      expect(projection.isDartPrimitive, isTrue);
    });

    testMethodReturnType('Windows.Wdk.Foundation.Apis', 'NtQueryObject',
        (projection) {
      expect(projection.nativeType, equals('Int32'));
      expect(projection.dartType, equals('int'));
      expect(projection.attribute, equals('@Int32()'));
      expect(projection.isDartPrimitive, isTrue);
    });

    testMethodReturnType(
        'Windows.Win32.Graphics.Gdi.Apis', 'CreateCompatibleDC', (projection) {
      expect(projection.nativeType, equals('IntPtr'));
      expect(projection.dartType, equals('int'));
      expect(projection.attribute, equals('@IntPtr()'));
      expect(projection.isDartPrimitive, isTrue);
    });

    testMethodReturnType('Windows.Win32.Security.Credentials.Apis', 'CredFree',
        (projection) {
      expect(projection.nativeType, equals('Void'));
      expect(projection.dartType, equals('void'));
      expect(projection.attribute, isEmpty);
      expect(projection.isDartPrimitive, isTrue);
    });

    testMethodReturnType('Windows.Win32.System.Com.Apis', 'CoInitialize',
        (projection) {
      expect(projection.nativeType, equals('Int32'));
      expect(projection.dartType, equals('int'));
      expect(projection.attribute, equals('@Int32()'));
      expect(projection.isDartPrimitive, isTrue);
    });

    testMethodReturnType(
        'Windows.Win32.System.LibraryLoader.Apis', 'GetProcAddress',
        (projection) {
      expect(projection.nativeType, equals('FARPROC'));
      expect(projection.dartType, equals('FARPROC'));
      expect(projection.attribute, isEmpty);
      expect(projection.isDartPrimitive, isFalse);
    });

    testMethodReturnType(
        'Windows.Win32.System.Threading.Apis', 'GetCurrentProcess',
        (projection) {
      expect(projection.nativeType, equals('IntPtr'));
      expect(projection.dartType, equals('int'));
      expect(projection.attribute, equals('@IntPtr()'));
      expect(projection.isDartPrimitive, isTrue);
    });

    testStructFieldType('Windows.Wdk.Foundation.ACCESS_STATE', 'ObjectName',
        (projection) {
      expect(projection.nativeType, equals('UNICODE_STRING'));
      expect(projection.dartType, equals('UNICODE_STRING'));
      expect(projection.attribute, isEmpty);
      expect(projection.isDartPrimitive, isFalse);
    });

    testStructFieldType(
        'Windows.Win32.Devices.Bluetooth.BLUETOOTH_RADIO_INFO', 'szName',
        (projection) {
      expect(projection.nativeType, equals('Array<Uint16>'));
      expect(projection.dartType, equals('Array<Uint16>'));
      expect(projection.attribute, equals('@Array(248)'));
      expect(projection.isDartPrimitive, isTrue);
    });

    testStructFieldType('Windows.Win32.Graphics.Dwm.DWM_BLURBEHIND', 'fEnable',
        (projection) {
      expect(projection.nativeType, equals('Int32'));
      expect(projection.dartType, equals('int'));
      expect(projection.attribute, equals('@Int32()'));
      expect(projection.isDartPrimitive, isTrue);
    });

    testStructFieldType('Windows.Win32.Graphics.Gdi.BITMAPINFO', 'bmiColors',
        (projection) {
      expect(projection.nativeType, equals('Array<RGBQUAD>'));
      expect(projection.dartType, equals('Array<RGBQUAD>'));
      expect(projection.attribute, equals('@Array(1)'));
      expect(projection.isDartPrimitive, isTrue);
    });

    testStructFieldType(
        'Windows.Win32.Media.Multimedia.YAMAHA_ADPCMWAVEFORMAT', 'wfx',
        (projection) {
      expect(projection.nativeType, equals('WAVEFORMATEX'));
      expect(projection.dartType, equals('WAVEFORMATEX'));
      expect(projection.attribute, isEmpty);
      expect(projection.isDartPrimitive, isFalse);
    });

    testStructFieldType('Windows.Win32.NetworkManagement.Dhcp.DHCP_ALL_OPTIONS',
        'VendorOptions', (projection) {
      expect(projection.nativeType, equals('Pointer<DHCP_ALL_OPTIONS_0>'));
      expect(projection.dartType, equals('Pointer<DHCP_ALL_OPTIONS_0>'));
      expect(projection.attribute, isEmpty);
      expect(projection.isDartPrimitive, isTrue);
    });

    testStructFieldType(
        'Windows.Win32.NetworkManagement.WiFi.DOT11_NETWORK_LIST', 'Network',
        (projection) {
      expect(projection.nativeType, equals('Array<DOT11_NETWORK>'));
      expect(projection.dartType, equals('Array<DOT11_NETWORK>'));
      expect(projection.attribute, equals('@Array(1)'));
      expect(projection.isDartPrimitive, isTrue);
    });

    testStructFieldType(
        'Windows.Win32.NetworkManagement.WiFi.WLAN_RAW_DATA_LIST', 'DataList',
        (projection) {
      expect(projection.nativeType, equals('Array<WLAN_RAW_DATA_LIST_0>'));
      expect(projection.dartType, equals('Array<WLAN_RAW_DATA_LIST_0>'));
      expect(projection.attribute, equals('@Array(1)'));
      expect(projection.isDartPrimitive, isTrue);
    });

    testStructFieldType('Windows.Win32.System.Com.STATSTG', 'cbSize',
        (projection) {
      expect(projection.nativeType, equals('Uint64'));
      expect(projection.dartType, equals('int'));
      expect(projection.attribute, equals('@Uint64()'));
      expect(projection.isDartPrimitive, isTrue);
    });

    testStructFieldType(
        'Windows.Win32.UI.Magnification.MAGCOLOREFFECT', 'transform',
        (projection) {
      expect(projection.nativeType, equals('Array<Float>'));
      expect(projection.dartType, equals('Array<Float>'));
      expect(projection.attribute, equals('@Array(25)'));
      expect(projection.isDartPrimitive, isTrue);
    });

    testStructFieldType('Windows.Win32.Graphics.Gdi.DEVMODEW', 'Anonymous1',
        (projection) {
      expect(projection.nativeType, equals('DEVMODE_0'));
      expect(projection.dartType, equals('DEVMODE_0'));
      expect(projection.attribute, isEmpty);
      expect(projection.isDartPrimitive, isFalse);
    });

    testStructFieldType('Windows.Win32.Graphics.Gdi.DEVMODEW', 'Anonymous2',
        (projection) {
      expect(projection.nativeType, equals('DEVMODE_1'));
      expect(projection.dartType, equals('DEVMODE_1'));
      expect(projection.attribute, isEmpty);
      expect(projection.isDartPrimitive, isFalse);
    });

    test('Special types exist in metadata', () {
      for (final specialType in specialTypes.keys
          .where((type) => type.startsWith('Windows.Win32'))) {
        expect(
          MetadataStore.getMetadataForType(specialType),
          isNotNull,
          reason: '$specialType missing',
        );
      }
    });
  });

  tearDownAll(MetadataStore.close);
}

void testMethodParameterType(
  String parent,
  String methodName,
  String parameterName,
  void Function(TypeProjection) projection,
) {
  test("$parent.$methodName method's $parameterName parameter", () {
    final typeDef = MetadataStore.getMetadataForType(parent);
    expect(
      typeDef,
      isNotNull,
      reason: '`$parent` type is not found in the metadata.',
    );
    final method = typeDef!.findMethod(methodName);
    expect(
      method,
      isNotNull,
      reason: '`$methodName` method is not found in `$parent`.',
    );
    final parameter =
        method!.parameters.where((p) => p.name == parameterName).firstOrNull;
    expect(
      parameter,
      isNotNull,
      reason: '`$parameterName` parameter is not found in the `$methodName` '
          'method of `$parent`.',
    );
    projection(TypeProjection(parameter!.typeIdentifier));
  });
}

void testMethodReturnType(
  String parent,
  String methodName,
  void Function(TypeProjection) projection,
) {
  test("$parent.$methodName method's return type", () {
    final typeDef = MetadataStore.getMetadataForType(parent);
    expect(
      typeDef,
      isNotNull,
      reason: '`$parent` type is not found in the metadata.',
    );
    final method = typeDef!.findMethod(methodName);
    expect(
      method,
      isNotNull,
      reason: '`$methodName` method is not found in `$parent`.',
    );
    projection(TypeProjection(method!.returnType.typeIdentifier));
  });
}

void testStructFieldType(
  String struct,
  String fieldName,
  void Function(TypeProjection) projection,
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
    projection(TypeProjection(field!.typeIdentifier));
  });
}
