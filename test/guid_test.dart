// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:test/test.dart';
import 'package:win32/win32.dart';

void main() {
  group('GUID', () {
    test('creation', () {
      final guid = calloc<GUID>();
      final hr = CoCreateGuid(guid);
      expect(hr, equals(S_OK));

      final guid2 = calloc<GUID>()..ref.setGUID(guid.ref.toString());
      expect(guid.ref.toString(), equals(guid2.ref.toString()));

      free(guid2);
      free(guid);
    });

    test('creation failure', () {
      final guid = calloc<GUID>();
      try {
        // Note the rogue 'X' here.
        expect(
          () => guid.ref.setGUID('{X161CA9B-9409-4A77-7327-8B8D3363C6B9}'),
          throwsA(anyOf(isA<FormatException>(), isA<AssertionError>())),
        );
      } finally {
        free(guid);
      }
    });

    test('handles largest value correctly', () {
      final pGUID = GUIDFromString('{FFFFFFFF-FFFF-FFFF-FFFF-FFFFFFFFFFFF}');
      final bytes = pGUID.cast<BYTE>().asTypedList(16);
      expect(
        bytes,
        equals([
          0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, //
          0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
        ]),
      );
      free(pGUID);
    });

    test('invalid hex string', () {
      expect(() => GUIDFromString('{123G4567-G89B-12D3-A456-426655440000}'),
          throwsA(isA<AssertionError>()));
    });

    test('invalid length string', () {
      expect(() => GUIDFromString('{123E4567-G89B-12D3-426655440000}'),
          throwsA(isA<AssertionError>()));
    });

    test('create GUID from string', () {
      final guid = GUIDFromString('{123E4567-E89B-12D3-A456-426655440000}');
      expect(
        guid.ref.toString(),
        equals('{123e4567-e89b-12d3-a456-426655440000}'),
      );
      free(guid);
    });

    test('is ordered correctly', () {
      final guid = GUIDFromString('{00112233-4455-6677-8899-AABBCCDDEEFF}');
      final bytes = guid.cast<Uint8>().asTypedList(16);
      expect(
        bytes,
        equals([
          0x33, 0x22, 0x11, 0x00, 0x55, 0x44, 0x77, 0x66, // Reversed ordering
          0x88, 0x99, 0xAA, 0xBB, 0xCC, 0xDD, 0xEE, 0xFF
        ]),
      );
      free(guid);
    });

    test('check representation of native GUID versus Win32 API', () {
      final guid = '{6EC9E41B-6709-5647-9918-A1270110FC4E}';

      final pIID = convertToIID(guid); // wraps IIDFromString()
      final pGUID = GUIDFromString(guid);

      // Check string representation matches.
      expect(
        guid.toLowerCase(),
        allOf(equals(pGUID.ref.toString()), equals(pIID.ref.toString())),
      );

      // Check binary representation matches.
      expect(
        pIID.cast<Uint8>().asTypedList(16),
        equals(pGUID.cast<Uint8>().asTypedList(16)),
      );

      free(pIID);
      free(pGUID);
    });

    test('roundtrip String conversion correctly', () {
      const guidString = '{5552a738-29dd-4fbe-b1b8-e869eeb94601}';

      final nativeGUID = GUIDFromString(guidString);
      expect(nativeGUID.ref.toString(), equals(guidString));

      final dartGuid = nativeGUID.toDartGuid();
      expect(dartGuid.toString(), equals(guidString));

      free(nativeGUID);
    });
  });

  group('Guid', () {
    test('equality', () {
      final guid1 = Guid.parse('{aaa4737b-ce75-4703-ab1b-222e278524c5}');
      final guid2 = Guid.parse('{aaa4737b-ce75-4703-ab1b-222e278524c5}');
      final randomGuid = Guid.generate();
      final nilGuid = Guid.zero();

      expect(guid1, equals(guid2));
      expect(guid1, isNot(equals(randomGuid)));
      expect(guid1, isNot(equals(nilGuid)));
    });

    test('nil Guid is created correctly', () {
      final nil = Guid.zero();
      expect(nil.toString(), equals('{00000000-0000-0000-0000-000000000000}'));
    });

    test('handles largest value correctly 1', () {
      final guid = Guid.parse('{FFFFFFFF-FFFF-FFFF-FFFF-FFFFFFFFFFFF}');
      final pGUID = guid.toNativeGUID();
      expect(
        guid.bytes,
        equals([
          0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, //
          0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
        ]),
      );
      expect(
        pGUID.cast<BYTE>().asTypedList(16),
        equals([
          0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, //
          0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
        ]),
      );
      free(pGUID);
    });

    test('handles largest value correctly 2', () {
      final pGUID = GUIDFromString('{FFFFFFFF-FFFF-FFFF-FFFF-FFFFFFFFFFFF}');
      final guid = pGUID.toDartGuid();
      expect(guid.toString(), equals('{ffffffff-ffff-ffff-ffff-ffffffffffff}'));
      free(pGUID);
    });

    test('is ordered correctly', () {
      final guid = Guid.parse('{00112233-4455-6677-8899-AABBCCDDEEFF}');
      final pGUID = guid.toNativeGUID();
      final bytes = pGUID.cast<BYTE>().asTypedList(16);
      expect(
        bytes,
        equals([
          0x33, 0x22, 0x11, 0x00, 0x55, 0x44, 0x77, 0x66, // Reversed ordering
          0x88, 0x99, 0xAA, 0xBB, 0xCC, 0xDD, 0xEE, 0xFF
        ]),
      );
      free(pGUID);
    });

    test('check representation of Dart Guid versus Win32 API', () {
      const guidString = '{6EC9E41B-6709-5647-9918-A1270110FC4E}';

      final pIID = convertToIID(guidString);
      final dartGuid = Guid.parse(guidString);

      // Check string representation matches
      expect(pIID.ref.toString(), equals(dartGuid.toString()));

      // Check binary representation matches
      expect(dartGuid.bytes, equals(pIID.cast<BYTE>().asTypedList(16)));

      free(pIID);
    });

    test('roundtrip String conversion correctly', () {
      const guidString = '{537320b6-2f84-4347-89ff-22bc4f803d29}';

      final dartGuid = Guid.parse(guidString);
      expect(dartGuid.toString(), equals(guidString));

      final nativeGUID = dartGuid.toNativeGUID();
      expect(nativeGUID.ref.toString(), equals(guidString));

      free(nativeGUID);
    });
  });
}
