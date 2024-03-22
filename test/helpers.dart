// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

/// Returns the Windows build number.
int getWindowsBuildNumber() => int.parse(
      getRegistryValue(
        HKEY_LOCAL_MACHINE,
        'SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\',
        'CurrentBuildNumber',
      ) as String,
    );

/// Returns the Registry value for the given key, subkey, and value name.
Object getRegistryValue(int key, String subKey, String valueName) {
  late Object dataValue;

  final subKeyPtr = PWSTR.fromString(subKey);
  final valueNamePtr = PWSTR.fromString(valueName);
  final openKeyPtr = calloc<HANDLE>();
  final dataType = calloc<DWORD>();

  // 256 bytes is more than enough, and Windows will throw ERROR_MORE_DATA if
  // not, so there won't be an overrun.
  final data = calloc<BYTE>(256);
  final dataSize = calloc<DWORD>()..value = 256;

  try {
    var result =
        RegOpenKeyEx(key, subKeyPtr, 0, REG_SAM_FLAGS.KEY_READ, openKeyPtr);
    if (result == WIN32_ERROR.ERROR_SUCCESS) {
      result = RegQueryValueEx(
          openKeyPtr.value, valueNamePtr, dataType, data, dataSize);

      if (result == WIN32_ERROR.ERROR_SUCCESS) {
        if (dataType.value == REG_VALUE_TYPE.REG_DWORD) {
          dataValue = data.value;
        } else if (dataType.value == REG_VALUE_TYPE.REG_SZ) {
          dataValue = data.cast<Utf16>().toDartString();
        } else {
          // other data types are available, but this is a sample
        }
      } else {
        throw WindowsException(HRESULT_FROM_WIN32(result));
      }
    } else {
      throw WindowsException(HRESULT_FROM_WIN32(result));
    }
  } finally {
    subKeyPtr.free();
    valueNamePtr.free();
    free(openKeyPtr);
    free(data);
    free(dataSize);
  }
  RegCloseKey(openKeyPtr.value);

  return dataValue;
}

void initializeCom() {
  final hr = CoInitializeEx(
      COINIT.COINIT_APARTMENTTHREADED | COINIT.COINIT_DISABLE_OLE1DDE);
  if (FAILED(hr)) throw WindowsException(hr);
}
