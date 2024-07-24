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

  final appxfactory = IAppxFactory(ptr);
  test('Can instantiate IAppxFactory.createPackageWriter', () {
    expect(appxfactory.createPackageWriter, isA<Function>());
  });
  test('Can instantiate IAppxFactory.createPackageReader', () {
    expect(appxfactory.createPackageReader, isA<Function>());
  });
  test('Can instantiate IAppxFactory.createManifestReader', () {
    expect(appxfactory.createManifestReader, isA<Function>());
  });
  test('Can instantiate IAppxFactory.createBlockMapReader', () {
    expect(appxfactory.createBlockMapReader, isA<Function>());
  });
  test('Can instantiate IAppxFactory.createValidatedBlockMapReader', () {
    expect(appxfactory.createValidatedBlockMapReader, isA<Function>());
  });

  free(ptr);
}