// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'dart:ffi';

import 'package:test/test.dart';
import 'package:win32/win32.dart';

void main() {
  // Run these tests a large number of times to try and identify memory leaks or
  // buffer overruns.
  const testRuns = 500;

  const testString = 'Longhorn is a bar in the village resort between the '
      'Whistler and Blackcomb mountains';

  group('PSTR', () {
    test('length', () {
      for (var i = 0; i < testRuns; i++) {
        final pstr = PSTR.fromString(testString);
        expect(testString.length, equals(84));
        expect(pstr.length, equals(84));
        pstr.free();
      }
    });

    test('toDartString', () {
      for (var i = 0; i < testRuns; i++) {
        final pstr = PSTR.fromString(testString);
        expect(pstr.toDartString(), equals(testString));
        pstr.free();
      }
    });

    test('toNativePSTR', () {
      for (var i = 0; i < testRuns; i++) {
        final pstr = PSTR.fromString(testString);
        expect(pstr.toDartString(), equals(testString));

        // A PSTR should end with a BYTE-length null terminator.
        final pNull =
            Pointer<BYTE>.fromAddress(pstr.address + testString.length);
        expect(pNull.value, isZero, reason: 'test run $i');

        pstr.free();
      }
    });

    test('long PSTRs', () {
      final longString = 'A very long string with padding.' * 65536;

      // Ten allocations is probably enough for an expensive test like this.
      for (var i = 0; i < 10; i++) {
        // This string is 4MB (32 chars * 1 bytes * 65536).
        final pstr = PSTR.fromString(longString);
        expect(pstr.toDartString(), equals(longString));

        // A PSTR should end with a BYTE-length null terminator.
        final pNull =
            Pointer<WORD>.fromAddress(pstr.address + longString.length);
        expect(pNull.value, isZero, reason: 'test run $i');

        pstr.free();
      }
    });
  });
}
