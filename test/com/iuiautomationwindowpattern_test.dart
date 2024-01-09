// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Tests that COM interface methods are correctly projected

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

@TestOn('windows')

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:test/test.dart';
import 'package:win32/win32.dart';

void main() {
  final ptr = calloc<Pointer<IntPtr>>();

  final uiautomationwindowpattern = IUIAutomationWindowPattern(ptr);
  test('Can instantiate IUIAutomationWindowPattern.close', () {
    expect(uiautomationwindowpattern.close, isA<Function>());
  });
  test('Can instantiate IUIAutomationWindowPattern.waitForInputIdle', () {
    expect(uiautomationwindowpattern.waitForInputIdle, isA<Function>());
  });
  test('Can instantiate IUIAutomationWindowPattern.setWindowVisualState', () {
    expect(uiautomationwindowpattern.setWindowVisualState, isA<Function>());
  });

  free(ptr);
}
