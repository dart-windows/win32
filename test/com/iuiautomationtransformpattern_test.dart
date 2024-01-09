// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Tests that Win32 API prototypes can be successfully loaded (i.e. that
// lookupFunction works for all the APIs generated)

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_local_variable

@TestOn('windows')

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:test/test.dart';
import 'package:win32/win32.dart';

void main() {
  final ptr = calloc<Pointer<IntPtr>>();

  final uiautomationtransformpattern = IUIAutomationTransformPattern(ptr);
  test('Can instantiate IUIAutomationTransformPattern.move', () {
    expect(uiautomationtransformpattern.move, isA<Function>());
  });
  test('Can instantiate IUIAutomationTransformPattern.resize', () {
    expect(uiautomationtransformpattern.resize, isA<Function>());
  });
  test('Can instantiate IUIAutomationTransformPattern.rotate', () {
    expect(uiautomationtransformpattern.rotate, isA<Function>());
  });

  free(ptr);
}
