@TestOn('windows')

import 'package:ffi/ffi.dart';
import 'package:test/test.dart';
import 'package:win32/win32.dart';

const testString = "If my grandmother had wheels, she'd be a motorbike";

const testDartStringArray = ['heads', 'shoulders', 'knees', 'toes'];

// String arrays are delimited with NUL characters, and ended with a double NUL.
// Since the TEXT macro null-terminates all input, we only add one NUL character
// to the end of the string here.
const testStringArray =
    'apples\x00hazelnuts\x00bananas\x00raisins\x00coconuts\x00sultanas\x00';

void main() {
  // Run these tests a large number of times to try and identify memory leaks or
  // buffer overruns
  const testRuns = 500;

  group('Unicode', () {
    test('Can create string', () {
      for (var i = 0; i < testRuns; i++) {
        final stringPtr = TEXT(testString);

        expect(stringPtr.toDartString(length: 5),
            equals(testString.substring(0, 5)));
        free(stringPtr);
      }
    });

    test('Overflow string', () {
      for (var i = 0; i < testRuns; i++) {
        final stringPtr = TEXT(testString);

        expect(stringPtr.toDartString(), equals(testString));
        free(stringPtr);
      }
    });

    test('Empty string', () {
      for (var i = 0; i < testRuns; i++) {
        final stringPtr = TEXT('');

        expect(stringPtr.toDartString(), equals(''));
        free(stringPtr);
      }
    });

    test('String array unpacking', () {
      for (var i = 0; i < testRuns; i++) {
        final arrayPtr = TEXT(testStringArray);

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

    test('String array packing', () {
      for (var i = 0; i < testRuns; i++) {
        final lpStringArray = testDartStringArray.toWideCharArray();

        final outArray = lpStringArray.unpackStringArray(100);
        expect(outArray.length, equals(testDartStringArray.length));
        expect(outArray.first, equals(testDartStringArray.first));
        expect(outArray.last, equals(testDartStringArray.last));
        free(lpStringArray);
      }
    });
  });
}
