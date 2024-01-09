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

  final metadataimport2 = IMetaDataImport2(ptr);
  test('Can instantiate IMetaDataImport2.enumGenericParams', () {
    expect(metadataimport2.enumGenericParams, isA<Function>());
  });
  test('Can instantiate IMetaDataImport2.getGenericParamProps', () {
    expect(metadataimport2.getGenericParamProps, isA<Function>());
  });
  test('Can instantiate IMetaDataImport2.getMethodSpecProps', () {
    expect(metadataimport2.getMethodSpecProps, isA<Function>());
  });
  test('Can instantiate IMetaDataImport2.enumGenericParamConstraints', () {
    expect(metadataimport2.enumGenericParamConstraints, isA<Function>());
  });
  test('Can instantiate IMetaDataImport2.getGenericParamConstraintProps', () {
    expect(metadataimport2.getGenericParamConstraintProps, isA<Function>());
  });
  test('Can instantiate IMetaDataImport2.getPEKind', () {
    expect(metadataimport2.getPEKind, isA<Function>());
  });
  test('Can instantiate IMetaDataImport2.getVersionString', () {
    expect(metadataimport2.getVersionString, isA<Function>());
  });
  test('Can instantiate IMetaDataImport2.enumMethodSpecs', () {
    expect(metadataimport2.enumMethodSpecs, isA<Function>());
  });

  free(ptr);
}
