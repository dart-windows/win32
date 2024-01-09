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

  final knownfoldermanager = IKnownFolderManager(ptr);
  test('Can instantiate IKnownFolderManager.folderIdFromCsidl', () {
    expect(knownfoldermanager.folderIdFromCsidl, isA<Function>());
  });
  test('Can instantiate IKnownFolderManager.folderIdToCsidl', () {
    expect(knownfoldermanager.folderIdToCsidl, isA<Function>());
  });
  test('Can instantiate IKnownFolderManager.getFolderIds', () {
    expect(knownfoldermanager.getFolderIds, isA<Function>());
  });
  test('Can instantiate IKnownFolderManager.getFolder', () {
    expect(knownfoldermanager.getFolder, isA<Function>());
  });
  test('Can instantiate IKnownFolderManager.getFolderByName', () {
    expect(knownfoldermanager.getFolderByName, isA<Function>());
  });
  test('Can instantiate IKnownFolderManager.registerFolder', () {
    expect(knownfoldermanager.registerFolder, isA<Function>());
  });
  test('Can instantiate IKnownFolderManager.unregisterFolder', () {
    expect(knownfoldermanager.unregisterFolder, isA<Function>());
  });
  test('Can instantiate IKnownFolderManager.findFolderFromPath', () {
    expect(knownfoldermanager.findFolderFromPath, isA<Function>());
  });
  test('Can instantiate IKnownFolderManager.findFolderFromIDList', () {
    expect(knownfoldermanager.findFolderFromIDList, isA<Function>());
  });
  test('Can instantiate IKnownFolderManager.redirect', () {
    expect(knownfoldermanager.redirect, isA<Function>());
  });

  free(ptr);
}
