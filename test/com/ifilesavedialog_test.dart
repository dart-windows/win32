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

  final filesavedialog = IFileSaveDialog(ptr);
  test('Can instantiate IFileSaveDialog.setSaveAsItem', () {
    expect(filesavedialog.setSaveAsItem, isA<Function>());
  });
  test('Can instantiate IFileSaveDialog.setProperties', () {
    expect(filesavedialog.setProperties, isA<Function>());
  });
  test('Can instantiate IFileSaveDialog.setCollectedProperties', () {
    expect(filesavedialog.setCollectedProperties, isA<Function>());
  });
  test('Can instantiate IFileSaveDialog.getProperties', () {
    expect(filesavedialog.getProperties, isA<Function>());
  });
  test('Can instantiate IFileSaveDialog.applyProperties', () {
    expect(filesavedialog.applyProperties, isA<Function>());
  });

  free(ptr);
}
