// Copyright (c) 2020, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Enumerates device interfaces that support Bluetooth LE

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

void main() {
  final devicePaths = using((Arena arena) {
    final interfaceGuid =
        GUIDFromString(GUID_BLUETOOTHLE_DEVICE_INTERFACE, allocator: arena);
    final hDevInfo = SetupDiGetClassDevs(
      interfaceGuid,
      null,
      null,
      SETUP_DI_GET_CLASS_DEVS_FLAGS.DIGCF_PRESENT |
          SETUP_DI_GET_CLASS_DEVS_FLAGS.DIGCF_DEVICEINTERFACE,
    );
    try {
      return devicesByInterface(hDevInfo, interfaceGuid).toList();
    } finally {
      SetupDiDestroyDeviceInfoList(hDevInfo);
    }
  });

  for (final path in devicePaths) {
    final pathPtr = PWSTR.fromString(path);
    final hDevice = CreateFile(
      pathPtr,
      0,
      FILE_SHARE_MODE.FILE_SHARE_READ | FILE_SHARE_MODE.FILE_SHARE_WRITE,
      null,
      FILE_CREATION_DISPOSITION.OPEN_EXISTING,
      FILE_FLAGS_AND_ATTRIBUTES.FILE_ATTRIBUTE_NORMAL,
      NULL,
    );
    if (hDevice == INVALID_HANDLE_VALUE) {
      // TODO(halildurmus): Uncomment when
      // https://github.com/dart-windows/win32/issues/384 is resolved.
      // final error = GetLastError();
      // print('CreateFile - Get Device Handle error: $error');
      // throw WindowsException(error);
      throw StateError('CreateFile call failed.');
    }

    try {
      print('BLUETOOTHLE_DEVICE - $path');
      printServicesByDevice(hDevice);
    } finally {
      CloseHandle(hDevice);
      pathPtr.free();
    }
  }
}

Iterable<String> devicesByInterface(
    int hDevInfo, Pointer<GUID> interfaceGuid) sync* {
  final requiredSizePtr = calloc<DWORD>();
  final deviceInterfaceDataPtr = calloc<SP_DEVICE_INTERFACE_DATA>()
    ..ref.cbSize = sizeOf<SP_DEVICE_INTERFACE_DATA>();

  try {
    for (var index = 0;
        SetupDiEnumDeviceInterfaces(
              hDevInfo,
              null,
              interfaceGuid,
              index,
              deviceInterfaceDataPtr,
            ) ==
            TRUE;
        index++) {
      final hr = SetupDiGetDeviceInterfaceDetail(
        hDevInfo,
        deviceInterfaceDataPtr,
        null,
        0,
        requiredSizePtr,
        null,
      );

      if (hr != TRUE) {
        // TODO(halildurmus): Uncomment when
        // https://github.com/dart-windows/win32/issues/384 is resolved.
        // final error = GetLastError();
        // if (error != ERROR_INSUFFICIENT_BUFFER) {
        //   print(
        //       'SetupDiGetDeviceInterfaceDetail - Get Data Size error: $error');
        //   throw WindowsException(error);
        // }
        throw StateError('SetupDiGetDeviceInterfaceDetail call failed.');
      }

      final deviceInterfaceDetailDataPtr = calloc<BYTE>(requiredSizePtr.value)
          .cast<SP_DEVICE_INTERFACE_DETAIL_DATA_>()
        ..ref.cbSize = sizeOf<SP_DEVICE_INTERFACE_DETAIL_DATA_>();

      try {
        final hr = SetupDiGetDeviceInterfaceDetail(
            hDevInfo,
            deviceInterfaceDataPtr,
            deviceInterfaceDetailDataPtr,
            requiredSizePtr.value,
            null,
            null);
        if (hr != TRUE) {
          print(
              'SetupDiGetDeviceInterfaceDetail - Get Data error: ${GetLastError()}');
          continue;
        }

        yield deviceInterfaceDetailDataPtr.devicePath;
      } finally {
        free(deviceInterfaceDetailDataPtr);
      }
    }

    final error = GetLastError();
    if (error != S_OK && error != WIN32_ERROR.ERROR_NO_MORE_ITEMS) {
      throw WindowsException(error);
    }
  } finally {
    free(requiredSizePtr);
    free(deviceInterfaceDataPtr);
  }
}

extension on Pointer<SP_DEVICE_INTERFACE_DETAIL_DATA_> {
  String get devicePath => Pointer<WCHAR>.fromAddress(address + sizeOf<DWORD>())
      .cast<Utf16>()
      .toDartString();
}

// -----------------------------------------------------------------------------
// GATT Security and Other Flag-related Facilities
// -----------------------------------------------------------------------------

void printServicesByDevice(int hDevice) {
  int hr;
  using((Arena arena) {
    final bufferCountPtr = arena<USHORT>();
    hr = BluetoothGATTGetServices(
        hDevice, 0, null, bufferCountPtr, BLUETOOTH_GATT_FLAG_NONE);
    if (hr != HRESULT_FROM_WIN32(WIN32_ERROR.ERROR_MORE_DATA)) {
      print('BluetoothGATTGetServices - Get Buffer Count error: $hr');
      throw WindowsException(hr);
    }

    final bufferPtr = arena<BTH_LE_GATT_SERVICE>(bufferCountPtr.value);
    final numberPtr = arena<USHORT>();

    hr = BluetoothGATTGetServices(hDevice, bufferCountPtr.value, bufferPtr,
        numberPtr, BLUETOOTH_GATT_FLAG_NONE);

    if (hr != S_OK) {
      print('BluetoothGATTGetServices - Get Buffer Data error: $hr');
      throw WindowsException(hr);
    }

    for (var i = 0; i < numberPtr.value; i++) {
      final servicePtr = Pointer<BTH_LE_GATT_SERVICE>.fromAddress(
          bufferPtr.address + i * sizeOf<BTH_LE_GATT_SERVICE>());
      print('└─BTH_LE_GATT_SERVICE - ${servicePtr.ref.ServiceUuid.LongUuid}');
      printCharacteristicsByService(hDevice, servicePtr);
    }
  });
}

void printCharacteristicsByService(
    int hDevice, Pointer<BTH_LE_GATT_SERVICE> servicePtr) {
  int hr;
  using((Arena arena) {
    final bufferCountPtr = arena<USHORT>();
    hr = BluetoothGATTGetCharacteristics(
        hDevice, servicePtr, 0, null, bufferCountPtr, BLUETOOTH_GATT_FLAG_NONE);
    if (hr != HRESULT_FROM_WIN32(WIN32_ERROR.ERROR_MORE_DATA)) {
      if (hr == HRESULT_FROM_WIN32(WIN32_ERROR.ERROR_NOT_FOUND)) {
        return;
      }
      print('BluetoothGATTGetCharacteristics - Get Buffer Count error: $hr');
      throw WindowsException(hr);
    }

    final bufferPtr = arena<BTH_LE_GATT_CHARACTERISTIC>(bufferCountPtr.value);
    final numberPtr = arena<USHORT>();

    hr = BluetoothGATTGetCharacteristics(hDevice, servicePtr,
        bufferCountPtr.value, bufferPtr, numberPtr, BLUETOOTH_GATT_FLAG_NONE);
    if (hr != S_OK) {
      print('BluetoothGATTGetCharacteristics - Get Buffer Data error: $hr');
      throw WindowsException(hr);
    }

    for (var i = 0; i < numberPtr.value; i++) {
      final characteristicPtr = Pointer<BTH_LE_GATT_CHARACTERISTIC>.fromAddress(
          bufferPtr.address + i * sizeOf<BTH_LE_GATT_CHARACTERISTIC>());
      print(
          '  └─BTH_LE_GATT_CHARACTERISTIC - ${characteristicPtr.ref.CharacteristicUuid.LongUuid}');
      printDescriptorsByCharacteristic(hDevice, characteristicPtr);
    }
  });
}

void printDescriptorsByCharacteristic(
    int hDevice, Pointer<BTH_LE_GATT_CHARACTERISTIC> characteristicPtr) {
  int hr;
  using((Arena arena) {
    final bufferCountPtr = arena<USHORT>();
    hr = BluetoothGATTGetDescriptors(hDevice, characteristicPtr, 0, null,
        bufferCountPtr, BLUETOOTH_GATT_FLAG_NONE);
    if (hr != HRESULT_FROM_WIN32(WIN32_ERROR.ERROR_MORE_DATA)) {
      if (hr == HRESULT_FROM_WIN32(WIN32_ERROR.ERROR_NOT_FOUND)) {
        return;
      }
      print('BluetoothGATTGetDescriptors - Get Buffer Count error: $hr');
      throw WindowsException(hr);
    }

    final bufferPtr = arena<BTH_LE_GATT_DESCRIPTOR>(bufferCountPtr.value);
    final numberPtr = arena<USHORT>();

    hr = BluetoothGATTGetDescriptors(hDevice, characteristicPtr,
        bufferCountPtr.value, bufferPtr, numberPtr, BLUETOOTH_GATT_FLAG_NONE);
    if (hr != S_OK) {
      print('BluetoothGATTGetDescriptors - Get Buffer Data error: $hr');
      throw WindowsException(hr);
    }

    for (var i = 0; i < numberPtr.value; i++) {
      final descriptorPtr = Pointer<BTH_LE_GATT_DESCRIPTOR>.fromAddress(
          bufferPtr.address + i * sizeOf<BTH_LE_GATT_DESCRIPTOR>());
      print(
          '    └─BTH_LE_GATT_DESCRIPTOR - ${descriptorPtr.ref.DescriptorUuid.LongUuid}');
    }
  });
}
