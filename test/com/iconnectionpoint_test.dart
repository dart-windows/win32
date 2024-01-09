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

  final connectionpoint = IConnectionPoint(ptr);
  test('Can instantiate IConnectionPoint.getConnectionInterface', () {
    expect(connectionpoint.getConnectionInterface, isA<Function>());
  });
  test('Can instantiate IConnectionPoint.getConnectionPointContainer', () {
    expect(connectionpoint.getConnectionPointContainer, isA<Function>());
  });
  test('Can instantiate IConnectionPoint.advise', () {
    expect(connectionpoint.advise, isA<Function>());
  });
  test('Can instantiate IConnectionPoint.unadvise', () {
    expect(connectionpoint.unadvise, isA<Function>());
  });
  test('Can instantiate IConnectionPoint.enumConnections', () {
    expect(connectionpoint.enumConnections, isA<Function>());
  });

  free(ptr);
}
