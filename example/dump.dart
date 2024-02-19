// Copyright (c) 2020, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Retrieves the exported symbols from kernel32

import 'dart:ffi';
import 'dart:io' show exit;

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

extension SymbolInfoHelper on Pointer<SYMBOL_INFO> {
  int get virtAddress => ref.Address;
  String get name => (cast<BYTE>() + 84).cast<Utf16>().toDartString();
}

final _exportedSymbols = <String, int>{};

/// Callback called once for each enumerated symbol by SymEnumSymbols.
int _enumSymbolProc(Pointer<SYMBOL_INFO> pSymInfo, int size, Pointer ctx) {
  // Only include symbols from the export table
  if (pSymInfo.ref.Flags & SYMFLAG_EXPORT == SYMFLAG_EXPORT) {
    _exportedSymbols[pSymInfo.name] = pSymInfo.virtAddress;
  }

  return TRUE; // Keep enumerating
}

Map<String, int> getExports(int hProcess, String module) {
  final status = SymInitialize(hProcess, null, FALSE);
  if (status == FALSE) {
    print('SymInitialize failed.');
    exit(1);
  }

  final modulePtr = PWSTR.fromString(module);

  final baseOfDll =
      SymLoadModuleEx(hProcess, null, modulePtr, null, 0, 0, null, 0);

  if (baseOfDll == 0) {
    print('SymLoadModuleEx failed.');

    SymCleanup(hProcess);
    exit(1);
  }

  final mask = PWSTR.fromString('*');

  final callback = NativeCallable<PSYM_ENUMERATESYMBOLS_CALLBACK>.isolateLocal(
    _enumSymbolProc,
    exceptionalReturn: 0,
  );

  if (SymEnumSymbols(
          hProcess, baseOfDll, mask, callback.nativeFunction, null) ==
      FALSE) {
    print('SymEnumSymbols failed.');
  }

  callback.close();
  SymCleanup(hProcess);
  modulePtr.free();
  mask.free();

  return _exportedSymbols;
}

/// Test which processor architecture Windows is running
bool isWindowsOnArm(int hProcess) {
  final pProcessMachine = calloc<USHORT>();
  final pNativeMachine = calloc<USHORT>();

  try {
    IsWow64Process2(hProcess, pProcessMachine, pNativeMachine);
    return pNativeMachine.value == IMAGE_FILE_MACHINE_ARM64;
  } finally {
    free(pProcessMachine);
    free(pNativeMachine);
  }
}

void main() {
  final hProcess = GetCurrentProcess();

  final kernel32 = isWindowsOnArm(hProcess)
      ? r'c:\windows\SysArm32\kernel32.dll'
      : r'c:\windows\system32\kernel32.dll';

  getExports(hProcess, kernel32)
      .forEach((name, address) => print('[${address.toHexString(32)}] $name'));
}
