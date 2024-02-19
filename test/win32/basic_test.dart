// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'package:test/test.dart';
import 'package:win32/win32.dart';

void main() {
  test('Successful GetModuleHandle', () {
    final lpModuleName = PWSTR.fromString('kernel32.dll');
    try {
      final hModule = GetModuleHandle(lpModuleName);
      expect(hModule, isNot(NULL));
    } finally {
      lpModuleName.free();
    }
  });

  test('Failed GetModuleHandle', () {
    final lpFakeModuleName = PWSTR.fromString('kernel33_fake_not_a_real.dll');
    try {
      final hModule = GetModuleHandle(lpFakeModuleName);
      expect(hModule, equals(NULL));
    } finally {
      lpFakeModuleName.free();
    }
  });

  test('Successful GetProcAddress', () {
    final lpKernelModuleName = PWSTR.fromString('kernel32.dll');
    final lpBeepProcName = PSTR.fromString('Beep');

    try {
      final hModule = GetModuleHandle(lpKernelModuleName);
      final pGetNativeSystemInfo = GetProcAddress(hModule, lpBeepProcName);
      expect(pGetNativeSystemInfo.address, isNonZero);
    } finally {
      lpKernelModuleName.free();
      lpBeepProcName.free();
    }
  });

  test('Successful GetCurrentProcess', () {
    // In all current versions of Windows, this returns -1. In theory, a future
    // version of Windows could change this value. This is a pseudo-handle, and
    // so CloseHandle is not required.
    final hProcess = GetCurrentProcess();
    expect(hProcess, equals(-1));
  });
}
