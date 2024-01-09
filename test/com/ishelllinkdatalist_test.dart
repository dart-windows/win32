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

  final shelllinkdatalist = IShellLinkDataList(ptr);
  test('Can instantiate IShellLinkDataList.addDataBlock', () {
    expect(shelllinkdatalist.addDataBlock, isA<Function>());
  });
  test('Can instantiate IShellLinkDataList.copyDataBlock', () {
    expect(shelllinkdatalist.copyDataBlock, isA<Function>());
  });
  test('Can instantiate IShellLinkDataList.removeDataBlock', () {
    expect(shelllinkdatalist.removeDataBlock, isA<Function>());
  });
  test('Can instantiate IShellLinkDataList.getFlags', () {
    expect(shelllinkdatalist.getFlags, isA<Function>());
  });
  test('Can instantiate IShellLinkDataList.setFlags', () {
    expect(shelllinkdatalist.setFlags, isA<Function>());
  });

  free(ptr);
}
