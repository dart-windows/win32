// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:test/test.dart';
import 'package:win32/win32.dart';

void main() {
  const testRuns = 500;

  test('BSTR allocation', () {
    const testString = 'This is a sample text string.';
    final testStringPtr = testString.toNativeUtf16();
    final bstr = SysAllocString(testStringPtr);

    expect(SysStringLen(bstr), equals(testString.length));
    expect(SysStringByteLen(bstr), equals(testString.length * 2));

    SysFreeString(bstr);
    free(testStringPtr);
  });

  group('Bstr', () {
    test('fromString constructor', () {
      const testString = 'Hello world';

      for (var i = 0; i < testRuns; i++) {
        final bstr = Bstr.fromString(testString);

        // A BSTR should have a DWORD-length prefix containing its length.
        final pIndex =
            Pointer<DWORD>.fromAddress(bstr.ptr.address - sizeOf<DWORD>());
        expect(pIndex.value, equals(testString.length * 2));

        expect(bstr.ptr.toDartString(), equals(testString));

        // A BSTR should end with a word-length null terminator.
        final pNull =
            Pointer<WORD>.fromAddress(bstr.ptr.address + testString.length * 2);
        expect(pNull.value, isZero, reason: 'test run $i');

        bstr.free();
      }
    });

    test('long BSTRs', () {
      final longString = 'A very long string with padding.' * 65536;

      // Ten allocations is probably enough for an expensive test like this.
      for (var i = 0; i < 10; i++) {
        // This string is 4MB (32 chars * 2 bytes * 65536).
        final bstr = Bstr.fromString(longString);

        // A BSTR should have a DWORD-length prefix containing its length.
        final pIndex =
            Pointer<DWORD>.fromAddress(bstr.ptr.address - sizeOf<DWORD>());
        expect(pIndex.value, equals(longString.length * 2));

        expect(bstr.ptr.toDartString(), equals(longString));

        // A BSTR should end with a word-length null terminator.
        final pNull =
            Pointer<WORD>.fromAddress(bstr.ptr.address + longString.length * 2);
        expect(pNull.value, isZero);

        bstr.free();
      }
    });

    test('lengths', () {
      const testString = 'Longhorn is a bar in the village resort between the '
          'Whistler and Blackcomb mountains';

      for (var i = 0; i < testRuns; i++) {
        final bstr = Bstr.fromString(testString);
        expect(testString.length, equals(84));
        expect(bstr.byteLength, equals(84 * 2));
        expect(bstr.length, equals(84));
        expect(bstr.toString(), equals(testString));
        bstr.free();
      }
    });

    test('clone', () {
      const testString = 'This message is not unique.';

      for (var i = 0; i < testRuns; i++) {
        final original = Bstr.fromString(testString);
        final clone = original.clone();

        // Text should be equal, but pointer address should not be equal.
        expect(original.ptr.toDartString(), equals(clone.ptr.toDartString()));
        expect(original.toString(), equals(clone.toString()));
        expect(original.ptr, isNot(equals(clone.ptr)));

        clone.free();
        original.free();
      }
    });

    test('concatenation', () {
      for (var i = 0; i < testRuns; i++) {
        final first = Bstr.fromString('Windows');
        final second = Bstr.fromString(' and Dart');
        final matchInHeaven = first + second;
        expect(matchInHeaven.toString(), equals('Windows and Dart'));
        [first, second, matchInHeaven].map((object) => object.free());
      }
    });
  });
}
