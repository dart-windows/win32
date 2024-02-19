// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// ignore_for_file: non_constant_identifier_names

@TestOn('windows')

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:test/test.dart';
import 'package:win32/win32.dart';

int MainWindowProc(int hwnd, int uMsg, int wParam, int lParam) =>
    DefWindowProc(hwnd, uMsg, wParam, lParam);

void main() {
  test('GetModuleHandle()', () {
    final outputHandle = GetModuleHandle(null);
    expect(outputHandle, isNot(0));
  });

  test('RegisterClass()', () {
    final hInstance = GetModuleHandle(null);
    final pClassName = PWSTR.fromString('CLASS_NAME');
    final lpfnWndProc = NativeCallable<WNDPROC>.isolateLocal(
      MainWindowProc,
      exceptionalReturn: 0,
    );

    final wc = calloc<WNDCLASS>();
    wc.ref
      ..style = CS_HREDRAW | CS_VREDRAW
      ..lpfnWndProc = lpfnWndProc.nativeFunction
      ..hInstance = hInstance
      ..lpszClassName = pClassName
      ..hCursor = LoadCursor(null, IDC_ARROW)
      ..hbrBackground = GetStockObject(WHITE_BRUSH);

    try {
      final result = RegisterClass(wc);
      expect(result, isNot(0));
    } finally {
      lpfnWndProc.close();
      free(wc);
      pClassName.free();
    }
  });
}
