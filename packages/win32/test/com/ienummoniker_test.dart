// Tests that Win32 API prototypes can be successfully loaded (i.e. that
// lookupFunction works for all the APIs generated)

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_local_variable

@TestOn('windows')
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:test/test.dart';
import 'package:win32/win32.dart';

void main() {
  final ptr = calloc<COMObject>();

  final enummoniker = IEnumMoniker(ptr);
  test('Can instantiate IEnumMoniker.next', () {
    expect(enummoniker.next, isA<Function>());
  });
  test('Can instantiate IEnumMoniker.skip', () {
    expect(enummoniker.skip, isA<Function>());
  });
  test('Can instantiate IEnumMoniker.reset', () {
    expect(enummoniker.reset, isA<Function>());
  });
  test('Can instantiate IEnumMoniker.clone', () {
    expect(enummoniker.clone, isA<Function>());
  });

  free(ptr);
}