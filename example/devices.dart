// Copyright (c) 2020, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Finds physical volumes on the system

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

void displayVolumePaths(String volumeName) {
  var error = 0;

  // Could be arbitrarily long, but 4*MAX_PATH is a reasonable default.
  // More sophisticated solutions can be found online
  final pathNamePtr = PWSTR.empty(MAX_PATH * 4);
  final charCount = calloc<DWORD>();
  final volumeNamePtr = PWSTR.fromString(volumeName);

  try {
    charCount.value = MAX_PATH;
    error = GetVolumePathNamesForVolumeName(
      volumeNamePtr,
      pathNamePtr,
      charCount.value,
      charCount,
    );

    if (error != 0) {
      if (charCount.value > 1) {
        for (final path in pathNamePtr.unpackStringArray(charCount.value)) {
          print(path);
        }
      } else {
        print('[none]');
      }
    } else {
      error = GetLastError();
      print('GetVolumePathNamesForVolumeName failed with error code $error');
    }
  } finally {
    volumeNamePtr.free();
    free(pathNamePtr);
    free(charCount);
  }
}

void main() {
  var error = 0;
  final volumeNamePtr = PWSTR.empty(MAX_PATH);

  final hFindVolume = FindFirstVolume(volumeNamePtr, MAX_PATH);
  if (hFindVolume == INVALID_HANDLE_VALUE) {
    error = GetLastError();
    print('FindFirstVolume failed with error code $error');
    return;
  }

  while (true) {
    final volumeName = volumeNamePtr.toDartString();

    //  Skip the \\?\ prefix and remove the trailing backslash.
    final shortVolumeName = volumeName.substring(4, volumeName.length - 1);
    final shortVolumeNamePtr = PWSTR.fromString(shortVolumeName);

    final deviceName = PWSTR.empty(MAX_PATH);
    final charCount = QueryDosDevice(shortVolumeNamePtr, deviceName, MAX_PATH);

    free(shortVolumeNamePtr);

    if (charCount == 0) {
      error = GetLastError();
      print('QueryDosDevice failed with error code $error');
      break;
    }

    print('\nFound a device:\n${deviceName.toDartString()}');
    deviceName.free();
    print('Volume name: $volumeName');
    print('Paths:');
    displayVolumePaths(volumeName);

    final success = FindNextVolume(hFindVolume, volumeNamePtr, MAX_PATH);
    if (success == 0) {
      error = GetLastError();
      if (error != WIN32_ERROR.ERROR_NO_MORE_FILES &&
          error != WIN32_ERROR.ERROR_SUCCESS) {
        print('FindNextVolume failed with error code $error');
        break;
      } else {
        error = WIN32_ERROR.ERROR_SUCCESS;
        break;
      }
    }
  }

  volumeNamePtr.free();
  FindVolumeClose(hFindVolume);
}
