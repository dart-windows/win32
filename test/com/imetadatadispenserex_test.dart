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

  final metadatadispenserex = IMetaDataDispenserEx(ptr);
  test('Can instantiate IMetaDataDispenserEx.setOption', () {
    expect(metadatadispenserex.setOption, isA<Function>());
  });
  test('Can instantiate IMetaDataDispenserEx.getOption', () {
    expect(metadatadispenserex.getOption, isA<Function>());
  });
  test('Can instantiate IMetaDataDispenserEx.openScopeOnITypeInfo', () {
    expect(metadatadispenserex.openScopeOnITypeInfo, isA<Function>());
  });
  test('Can instantiate IMetaDataDispenserEx.getCORSystemDirectory', () {
    expect(metadatadispenserex.getCORSystemDirectory, isA<Function>());
  });
  test('Can instantiate IMetaDataDispenserEx.findAssembly', () {
    expect(metadatadispenserex.findAssembly, isA<Function>());
  });
  test('Can instantiate IMetaDataDispenserEx.findAssemblyModule', () {
    expect(metadatadispenserex.findAssemblyModule, isA<Function>());
  });

  free(ptr);
}
