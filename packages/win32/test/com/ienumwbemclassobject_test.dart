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

  final enumwbemclassobject = IEnumWbemClassObject(ptr);
  test('Can instantiate IEnumWbemClassObject.reset', () {
    expect(enumwbemclassobject.reset, isA<Function>());
  });
  test('Can instantiate IEnumWbemClassObject.next', () {
    expect(enumwbemclassobject.next, isA<Function>());
  });
  test('Can instantiate IEnumWbemClassObject.nextAsync', () {
    expect(enumwbemclassobject.nextAsync, isA<Function>());
  });
  test('Can instantiate IEnumWbemClassObject.clone', () {
    expect(enumwbemclassobject.clone, isA<Function>());
  });
  test('Can instantiate IEnumWbemClassObject.skip', () {
    expect(enumwbemclassobject.skip, isA<Function>());
  });

  free(ptr);
}