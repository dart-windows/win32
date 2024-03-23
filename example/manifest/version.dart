// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

void main() {
  final osVersionInfo = calloc<OSVERSIONINFO>()
    ..ref.dwOSVersionInfoSize = sizeOf<OSVERSIONINFO>();

  final result = GetVersionEx(osVersionInfo);
  if (result == TRUE) {
    final OSVERSIONINFO(:dwMajorVersion, :dwMinorVersion, :dwBuildNumber) =
        osVersionInfo.ref;
    print('Windows $dwMajorVersion.$dwMinorVersion Build $dwBuildNumber');
  }

  final isWindows10OrGreater = IsWindows10OrGreater();
  print('IsWindows10OrGreater() reports ${isWindows10OrGreater == TRUE}');

  final isWindowsServer = IsWindowsServer();
  print('IsWindowsServer() reports ${isWindowsServer == TRUE}');

  free(osVersionInfo);
}
