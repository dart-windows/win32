// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:test/test.dart';
import 'package:win32/win32.dart';

import '../helpers.dart';

void main() {
  setUpAll(initializeCom);

  group('VARIANT', () {
    test('creation', () {
      final variant = calloc<VARIANT>();
      expect(variant.ref.vt, equals(VARENUM.VT_EMPTY));
      VariantClear(variant);
      free(variant);
    });

    test('IUnknown BYREF', () {
      final unknown = IUnknown(createComObject(SpVoice, IID_IUnknown));
      final variant = calloc<VARIANT>();
      final ppunkval = calloc<VTablePointer>()..value = unknown.ptr;
      variant.ref
        ..vt = VARENUM.VT_UNKNOWN | VARENUM.VT_BYREF
        ..ppunkVal = ppunkval;
      final unk = IUnknown(variant.ref.ppunkVal.value);
      expect(unk.ptr.address, isNonZero);
      expect(refCount(unk), equals(1));
      free(ppunkval);
      VariantClear(variant);
      free(variant);
      unknown.release();
    });

    test('time representation from DOS date/time', () {
      // MS-DOS dates are YYYYYYYMMMMDDDDD, where Y is offset from 1980
      const theDate = 29 + (02 << 5) + (24 << 9); // Feb 29th, 2004
      final pvTime = calloc<DOUBLE>();
      expect(DosDateTimeToVariantTime(theDate, NULL, pvTime), equals(TRUE));

      final lpSystemTime = calloc<SYSTEMTIME>();
      expect(VariantTimeToSystemTime(pvTime.value, lpSystemTime), equals(TRUE));
      expect(lpSystemTime.ref.wYear, equals(2004));
      expect(lpSystemTime.ref.wMonth, equals(2));
      expect(lpSystemTime.ref.wDay, equals(29));

      final dosDate = calloc<USHORT>();
      final dosTime = calloc<USHORT>();
      expect(VariantTimeToDosDateTime(pvTime.value, dosDate, dosTime),
          equals(TRUE));
      expect(dosDate.value, equals(theDate));

      free(pvTime);
      free(lpSystemTime);
      free(dosDate);
      free(dosTime);
    });
  });

  group('Variant', () {
    test('empty', () {
      final variant = Variant.empty();
      expect(variant.ref.vt, equals(VARENUM.VT_EMPTY));
      expect(variant.isEmpty, isTrue);
      variant.free();
    });

    test('bool', () {
      final variant = Variant.bool_(true);
      expect(variant.ref.vt, equals(VARENUM.VT_BOOL));
      expect(variant.value, isTrue);
      variant.value = false;
      expect(variant.value, isFalse);
      variant.free();
    });

    test('bstr', () {
      const testString = 'Hello, world!';
      final variant = Variant.bstr(testString);
      expect(variant.ref.vt, equals(VARENUM.VT_BSTR));
      expect(variant.value, equals(testString));
      variant.free();
    });

    test('double', () {
      const testValue = 3.14159;
      final variant = Variant.double_(testValue);
      expect(variant.ref.vt, equals(VARENUM.VT_R8));
      expect(variant.value, equals(testValue));
      variant.free();
    });

    test('float', () {
      const testValue = 3.14159;
      final variant = Variant.float(testValue);
      expect(variant.ref.vt, equals(VARENUM.VT_R4));
      expect(variant.value, equals(3.141590118408203));
      variant.free();
    });

    test('int8', () {
      const testValue = -128; // -2^7
      final variant = Variant.int8(testValue);
      expect(variant.ref.vt, equals(VARENUM.VT_I1));
      expect(variant.value, equals(testValue));
      variant.value = 127; // 2^7 - 1
      expect(variant.value, equals(127));
      variant.free();
    });

    test('int16', () {
      const testValue = -32768; // -2^15
      final variant = Variant.int16(testValue);
      expect(variant.ref.vt, equals(VARENUM.VT_I2));
      expect(variant.value, equals(testValue));
      variant.value = 32767; // 2^15 - 1
      expect(variant.value, equals(32767));
      variant.free();
    });

    test('int32', () {
      const testValue = -2147483648; // -2^31
      final variant = Variant.int32(testValue);
      expect(variant.ref.vt, equals(VARENUM.VT_I4));
      expect(variant.value, equals(testValue));
      variant.value = 2147483647; // 2^31 - 1
      expect(variant.value, equals(2147483647));
      variant.free();
    });

    test('int64', () {
      const testValue = -9223372036854775808; // -2^63
      final variant = Variant.int64(testValue);
      expect(variant.ref.vt, equals(VARENUM.VT_I8));
      expect(variant.value, equals(testValue));
      variant.value = 9223372036854775807; // 2^63 - 1
      expect(variant.value, equals(9223372036854775807));
      variant.free();
    });

    test('idispatch', () {
      final dispatch =
          IDispatch(createComObject('Shell.Application', IID_IDispatch))
            ..addRef();
      final variant = Variant.idispatch(dispatch);
      expect(variant.ref.vt, equals(VARENUM.VT_DISPATCH));
      expect(refCount(variant.value), equals(2));
      variant.free();
      expect(refCount(dispatch), equals(1));
    });

    test('iunknown', () {
      final unknown = IUnknown(createComObject(SpVoice, IID_IUnknown))
        ..addRef();
      final variant = Variant.iunknown(unknown);
      expect(variant.ref.vt, equals(VARENUM.VT_UNKNOWN));
      expect(refCount(variant.value), equals(2));
      variant.free();
      expect(refCount(unknown), equals(1));
    });

    test('uint8', () {
      const testValue = 0;
      final variant = Variant.uint8(testValue);
      expect(variant.ref.vt, equals(VARENUM.VT_UI1));
      expect(variant.value, equals(testValue));
      variant.value = 255; // 2^8 - 1
      expect(variant.value, equals(255));
      variant.free();
    });

    test('uint16', () {
      const testValue = 0;
      final variant = Variant.uint16(testValue);
      expect(variant.ref.vt, equals(VARENUM.VT_UI2));
      expect(variant.value, equals(testValue));
      variant.value = 65535; // 2^16 - 1
      expect(variant.value, equals(65535));
      variant.free();
    });

    test('uint32', () {
      const testValue = 0;
      final variant = Variant.uint32(testValue);
      expect(variant.ref.vt, equals(VARENUM.VT_UI4));
      expect(variant.value, equals(testValue));
      variant.value = 4294967295; // 2^32 - 1
      expect(variant.value, equals(4294967295));
      variant.free();
    });

    test('uint64', () {
      const testValue = 0;
      final variant = Variant.uint64(testValue);
      expect(variant.ref.vt, equals(VARENUM.VT_UI8));
      expect(variant.value, equals(testValue));
      variant.value = (1 << 64) - 1; // 2^64 - 1
      expect(variant.value, equals((1 << 64) - 1));
      expect(variant.value, equals(-1));
      expect(variant.value.toHexString(64), equals('0xffffffffffffffff'));
      variant.free();
    });
  });

  tearDownAll(CoUninitialize);
}
