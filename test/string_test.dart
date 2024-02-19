// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'package:test/test.dart';
import 'package:win32/win32.dart';

void main() {
  const testDartStringArray = ['heads', 'shoulders', 'knees', 'toes'];

  // String arrays are delimited with NUL characters, and ended with a double
  // NUL. Since the TEXT macro null-terminates all input, we only add one NUL
  // character to the end of the string here.
  const testStringArray =
      'apples\x00hazelnuts\x00bananas\x00raisins\x00coconuts\x00sultanas\x00';

  // Run these tests a large number of times to try and identify memory leaks or
  // buffer overruns.
  const testRuns = 500;

  group('Unicode', () {
    test('string array packing', () {
      for (var i = 0; i < testRuns; i++) {
        final lpStringArray = testDartStringArray.toWideCharArray();

        final outArray = lpStringArray.unpackStringArray(100);
        expect(outArray.length, equals(testDartStringArray.length));
        expect(outArray.first, equals(testDartStringArray.first));
        expect(outArray.last, equals(testDartStringArray.last));
        free(lpStringArray);
      }
    });

    test('string array unpacking', () {
      for (var i = 0; i < testRuns; i++) {
        final arrayPtr = PWSTR.fromString(testStringArray);

        // 400 is an arbitrarily long length to try and force an overflow error,
        // if one exists
        expect(arrayPtr.unpackStringArray(400)[0], equals('apples'));
        expect(arrayPtr.unpackStringArray(400)[1], equals('hazelnuts'));
        expect(arrayPtr.unpackStringArray(400)[2], equals('bananas'));
        expect(arrayPtr.unpackStringArray(400)[5], equals('sultanas'));
        expect(arrayPtr.unpackStringArray(400).length, equals(6));

        free(arrayPtr);
      }
    });
  });
}
