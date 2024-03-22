// Copyright (c) 2020, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Demonstrates raw registry commands. For a more comprehensive library that
// uses these functions, check out win32_registry
// (https://pub.dev/packages/win32_registry).

// ignore_for_file: constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

const regKey = r'Software\Microsoft\Windows NT\CurrentVersion\Devices';
const MAX_ITEMLENGTH = 1024;

class RegistryKeyValuePair {
  const RegistryKeyValuePair(this.key, this.value);

  final String key;
  final String value;
}

int getRegistryKeyHandle(int hive, String key) {
  final phKey = calloc<HANDLE>();
  final lpKeyPath = PWSTR.fromString(key);

  try {
    if (RegOpenKeyEx(hive, lpKeyPath, 0, REG_SAM_FLAGS.KEY_READ, phKey) !=
        WIN32_ERROR.ERROR_SUCCESS) {
      throw StateError("Can't open registry key");
    }

    return phKey.value;
  } finally {
    free(phKey);
    lpKeyPath.free();
  }
}

RegistryKeyValuePair? enumerateKey(int hKey, int index) {
  final lpValueName = PWSTR.empty(MAX_PATH);
  final lpcchValueName = calloc<DWORD>()..value = MAX_PATH;
  final lpType = calloc<DWORD>();
  final lpData = calloc<BYTE>(MAX_ITEMLENGTH);
  final lpcbData = calloc<DWORD>()..value = MAX_ITEMLENGTH;

  try {
    final status = RegEnumValue(
        hKey, index, lpValueName, lpcchValueName, lpType, lpData, lpcbData);

    switch (status) {
      case WIN32_ERROR.ERROR_SUCCESS:
        if (lpType.value != REG_VALUE_TYPE.REG_SZ) {
          throw StateError('Non-string content.');
        }
        return RegistryKeyValuePair(
          lpValueName.toDartString(),
          lpData.cast<Utf16>().toDartString(),
        );

      case WIN32_ERROR.ERROR_MORE_DATA:
        throw StateError('An item required more than $MAX_ITEMLENGTH bytes.');

      case WIN32_ERROR.ERROR_NO_MORE_ITEMS:
        return null;

      default:
        throw StateError('unknown error');
    }
  } finally {
    free(lpValueName);
    free(lpcchValueName);
    free(lpType);
    free(lpData);
    free(lpcbData);
  }
}

Map<String, String> getDevices() {
  /// availablePorts String list
  final portsList = <String, String>{};

  final hKey = getRegistryKeyHandle(HKEY_CURRENT_USER, regKey);

  /// The index of the value to be retrieved.
  var dwIndex = 0;
  RegistryKeyValuePair? item;

  item = enumerateKey(hKey, dwIndex);
  while (item != null) {
    portsList[item.key] = item.value;
    dwIndex++;
    item = enumerateKey(hKey, dwIndex);
  }

  RegCloseKey(hKey);
  return portsList;
}

void main(List<String> args) {
  final devices = getDevices();
  for (final device in devices.keys) {
    print('${device.padRight(40)} Port: ${devices[device]}');
  }
}
