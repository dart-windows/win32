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

  group('PWSTR', () {
    test('empty', () {
      for (var i = 0; i < testRuns; i++) {
        final pwstr = PWSTR.empty(256);
        final ptr = pwstr.cast<WCHAR>();
        for (var i = 0; i < 256; i++) {
          expect(ptr[i], isZero);
        }
        pwstr.free();
      }
    });

    test('length', () {
      for (var i = 0; i < testRuns; i++) {
        final pwstr = PWSTR.fromString(testString);
        expect(testString.length, equals(84));
        expect(pwstr.length, equals(84));
        pwstr.free();
      }
    });

    test('toDartString', () {
      for (var i = 0; i < testRuns; i++) {
        final pwstr = PWSTR.fromString(testString);
        expect(pwstr.toDartString(), equals(testString));
        pwstr.free();
      }
    });

    test('toNativePSTR', () {
      for (var i = 0; i < testRuns; i++) {
        final pwstr = PWSTR.fromString(testString);
        expect(pwstr.toDartString(), equals(testString));

        // A PWSTR should end with a WCHAR-length null terminator.
        final pNull =
            Pointer<WCHAR>.fromAddress(pwstr.address + testString.length * 2);
        expect(pNull.value, isZero, reason: 'test run $i');

        pwstr.free();
      }
    });

    test('long PWSTRs', () {
      final longString = 'A very long string with padding.' * 65536;

      // Ten allocations is probably enough for an expensive test like this.
      for (var i = 0; i < 10; i++) {
        // This string is 4MB (32 chars * 2 bytes * 65536).
        final pwstr = PWSTR.fromString(longString);
        expect(pwstr.toDartString(), equals(longString));

        // A PWSTR should end with a WCHAR-length null terminator.
        final pNull =
            Pointer<WCHAR>.fromAddress(pwstr.address + longString.length * 2);
        expect(pNull.value, isZero, reason: 'test run $i');

        pwstr.free();
      }
    });
  });
}
