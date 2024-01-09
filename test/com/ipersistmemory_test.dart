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

  final persistmemory = IPersistMemory(ptr);
  test('Can instantiate IPersistMemory.isDirty', () {
    expect(persistmemory.isDirty, isA<Function>());
  });
  test('Can instantiate IPersistMemory.load', () {
    expect(persistmemory.load, isA<Function>());
  });
  test('Can instantiate IPersistMemory.save', () {
    expect(persistmemory.save, isA<Function>());
  });
  test('Can instantiate IPersistMemory.getSizeMax', () {
    expect(persistmemory.getSizeMax, isA<Function>());
  });
  test('Can instantiate IPersistMemory.initNew', () {
    expect(persistmemory.initNew, isA<Function>());
  });

  free(ptr);
}
