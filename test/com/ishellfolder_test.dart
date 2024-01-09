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

  final shellfolder = IShellFolder(ptr);
  test('Can instantiate IShellFolder.parseDisplayName', () {
    expect(shellfolder.parseDisplayName, isA<Function>());
  });
  test('Can instantiate IShellFolder.enumObjects', () {
    expect(shellfolder.enumObjects, isA<Function>());
  });
  test('Can instantiate IShellFolder.bindToObject', () {
    expect(shellfolder.bindToObject, isA<Function>());
  });
  test('Can instantiate IShellFolder.bindToStorage', () {
    expect(shellfolder.bindToStorage, isA<Function>());
  });
  test('Can instantiate IShellFolder.compareIDs', () {
    expect(shellfolder.compareIDs, isA<Function>());
  });
  test('Can instantiate IShellFolder.createViewObject', () {
    expect(shellfolder.createViewObject, isA<Function>());
  });
  test('Can instantiate IShellFolder.getAttributesOf', () {
    expect(shellfolder.getAttributesOf, isA<Function>());
  });
  test('Can instantiate IShellFolder.getUIObjectOf', () {
    expect(shellfolder.getUIObjectOf, isA<Function>());
  });
  test('Can instantiate IShellFolder.getDisplayNameOf', () {
    expect(shellfolder.getDisplayNameOf, isA<Function>());
  });
  test('Can instantiate IShellFolder.setNameOf', () {
    expect(shellfolder.setNameOf, isA<Function>());
  });

  free(ptr);
}
