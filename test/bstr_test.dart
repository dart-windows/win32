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

  group('BSTR', () {
    test('allocation', () {
      final testStringPtr = PWSTR.fromString(testString);
      final bstr = SysAllocString(testStringPtr);

      expect(SysStringLen(bstr), equals(testString.length));
      expect(SysStringByteLen(bstr), equals(testString.length * 2));

      SysFreeString(bstr);
      testStringPtr.free();
    });

    test('toNativeBSTR', () {
      for (var i = 0; i < testRuns; i++) {
        final bstr = BSTR.fromString(testString);

        // A BSTR should have a DWORD-length prefix containing its length.
        final pIndex =
            Pointer<DWORD>.fromAddress(bstr.address - sizeOf<DWORD>());
        expect(pIndex.value, equals(testString.length * 2));

        expect(bstr.toDartString(), equals(testString));

        // A BSTR should end with a word-length null terminator.
        final pNull =
            Pointer<WORD>.fromAddress(bstr.address + testString.length * 2);
        expect(pNull.value, isZero, reason: 'test run $i');

        bstr.free();
      }
    });

    test('long BSTRs', () {
      final longString = 'A very long string with padding.' * 65536;

      // Ten allocations is probably enough for an expensive test like this.
      for (var i = 0; i < 10; i++) {
        // This string is 4MB (32 chars * 2 bytes * 65536).
        final bstr = BSTR.fromString(longString);

        // A BSTR should have a DWORD-length prefix containing its length.
        final pIndex =
            Pointer<DWORD>.fromAddress(bstr.address - sizeOf<DWORD>());
        expect(pIndex.value, equals(longString.length * 2));

        expect(bstr.toDartString(), equals(longString));

        // A BSTR should end with a word-length null terminator.
        final pNull =
            Pointer<WORD>.fromAddress(bstr.address + longString.length * 2);
        expect(pNull.value, isZero);

        bstr.free();
      }
    });

    test('lengths', () {
      for (var i = 0; i < testRuns; i++) {
        final bstr = BSTR.fromString(testString);
        expect(testString.length, equals(84));
        expect(bstr.byteLength, equals(84 * 2));
        expect(bstr.length, equals(84));
        expect(bstr.toDartString(), equals(testString));
        bstr.free();
      }
    });

    test('clone', () {
      for (var i = 0; i < testRuns; i++) {
        final original = BSTR.fromString(testString);
        final clone = original.clone();

        // Text should be equal, but pointer address should not be equal.
        expect(original.toDartString(), equals(clone.toDartString()));
        expect(original, isNot(equals(clone)));

        clone.free();
        original.free();
      }
    });

    test('concatenation', () {
      for (var i = 0; i < testRuns; i++) {
        final first = BSTR.fromString('Windows');
        final second = BSTR.fromString(' and Dart');
        final matchInHeaven = first + second;
        expect(matchInHeaven.toDartString(), equals('Windows and Dart'));
        first.free();
        second.free();
        matchInHeaven.free();
      }
    });
  });
}
