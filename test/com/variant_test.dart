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
  group('VARIANT', () {
    setUp(initializeCom);

    test('creation', () {
      final variant = calloc<VARIANT>();
      VariantInit(variant);
      expect(variant.ref.vt, equals(VARENUM.VT_EMPTY));
      VariantClear(variant);
      free(variant);
    });

    test('BSTR', () {
      const testString = 'Hello, world';
      final variant = calloc<VARIANT>();
      VariantInit(variant);
      variant.ref
        ..vt = VARENUM.VT_BSTR
        ..bstrVal = BSTR.fromString(testString);
      expect(variant.ref.bstrVal.toDartString(), equals(testString));
      VariantClear(variant);
      free(variant);
    });

    test('pointer to an object that implements the IUnknown interface', () {
      final spVoice = ISpVoice(createComObject(SpVoice, IID_ISpVoice))
        ..addRef();
      final spellChecker = ISpellCheckerFactory(
          createComObject(SpellCheckerFactory, IID_ISpellCheckerFactory))
        ..addRef();

      final variant = calloc<VARIANT>();
      VariantInit(variant);
      variant.ref
        ..vt = VARENUM.VT_UNKNOWN
        ..punkVal = spVoice.ptr;
      final unk = IUnknown(variant.ref.punkVal);
      expect(unk.ptr.address, isNonZero);
      expect(refCount(unk), equals(2));
      unk.release();

      variant.ref.punkVal = spellChecker.ptr;
      final unk2 = IUnknown(variant.ref.punkVal);
      expect(unk2.ptr.address, isNonZero);
      expect(refCount(unk2), equals(2));
      unk2.release();

      VariantClear(variant);
      free(variant);

      spellChecker.release();
      spVoice.release();
    });

    test('reference to an IUnknown interface pointer', () {
      final spVoice = ISpVoice(createComObject(SpVoice, IID_ISpVoice))
        ..addRef();
      final spellChecker = ISpellCheckerFactory(
          createComObject(SpellCheckerFactory, IID_ISpellCheckerFactory))
        ..addRef();

      final variant = calloc<VARIANT>();
      VariantInit(variant);
      final ppunkval = calloc<VTablePointer>()..value = spVoice.ptr;
      variant.ref
        ..vt = VARENUM.VT_UNKNOWN | VARENUM.VT_BYREF
        ..ppunkVal = ppunkval;
      final unk = IUnknown(variant.ref.ppunkVal.value);
      expect(unk.ptr.address, isNonZero);
      expect(refCount(unk), equals(2));
      unk.release();
      free(ppunkval);

      final ppunkval2 = calloc<VTablePointer>()..value = spellChecker.ptr;
      variant.ref.ppunkVal = ppunkval2;
      final unk2 = IUnknown(variant.ref.ppunkVal.value);
      expect(unk2.ptr.address, isNonZero);
      expect(refCount(unk2), equals(2));
      unk2.release();
      free(ppunkval2);

      VariantClear(variant);
      free(variant);

      spellChecker.release();
      spVoice.release();
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

    test('LONG', () {
      final variant = calloc<VARIANT>();
      VariantInit(variant);
      variant.ref.vt = VARENUM.VT_I4;
      variant.ref.lVal = -2147483648;
      expect(variant.ref.lVal, equals(-2147483648));

      variant.ref.lVal = 2147483647;
      expect(variant.ref.lVal, equals(2147483647));

      variant.ref.lVal = 0x80000000;
      expect(variant.ref.lVal, equals(-2147483648));

      VariantClear(variant);
      free(variant);
    });

    test('INT', () {
      final variant = calloc<VARIANT>();
      VariantInit(variant);
      variant.ref.vt = VARENUM.VT_I4;
      variant.ref.intVal = -2147483648;
      expect(variant.ref.intVal, equals(-2147483648));

      variant.ref.intVal = 2147483647;
      expect(variant.ref.intVal, equals(2147483647));

      variant.ref.intVal = 0x80000000;
      expect(variant.ref.intVal, equals(-2147483648));

      VariantClear(variant);
      free(variant);
    });

    test('ULONGLONG', () {
      final variant = calloc<VARIANT>();
      VariantInit(variant);
      variant.ref.vt = VARENUM.VT_UI8;
      variant.ref.ullVal = BigInt.zero;
      expect(variant.ref.ullVal, equals(BigInt.from(0)));

      variant.ref.ullVal = BigInt.parse('18446744073709551615');
      final uint64Max = BigInt.parse('FFFFFFFFFFFFFFFF', radix: 16);
      expect(variant.ref.ullVal, equals(uint64Max));

      variant.ref.ullVal = BigInt.parse('8000000000000000', radix: 16);
      final testValue2 = BigInt.parse('9223372036854775808');
      expect(variant.ref.ullVal, equals(testValue2));

      VariantClear(variant);
      free(variant);
    });

    test('ULONG', () {
      final variant = calloc<VARIANT>();
      VariantInit(variant);
      variant.ref.vt = VARENUM.VT_UI4;
      variant.ref.ulVal = 0;
      expect(variant.ref.ulVal, equals(0));

      variant.ref.ulVal = 4294967295;
      expect(variant.ref.ulVal, equals(4294967295));

      variant.ref.ulVal = 0x80000000;
      expect(variant.ref.ulVal, equals(2147483648));

      VariantClear(variant);
      free(variant);
    });

    test('UINT', () {
      final variant = calloc<VARIANT>();
      VariantInit(variant);
      variant.ref.vt = VARENUM.VT_UI4;
      variant.ref.uintVal = 0;
      expect(variant.ref.uintVal, equals(0));

      variant.ref.uintVal = 4294967295;
      expect(variant.ref.uintVal, equals(4294967295));

      variant.ref.uintVal = 0x80000000;
      expect(variant.ref.uintVal, equals(2147483648));

      VariantClear(variant);
      free(variant);
    });

    test('SHORT', () {
      final variant = calloc<VARIANT>();
      VariantInit(variant);
      variant.ref.vt = VARENUM.VT_I2;
      variant.ref.iVal = -32768;
      expect(variant.ref.iVal, equals(-32768));

      variant.ref.iVal = 32767;
      expect(variant.ref.iVal, equals(32767));

      variant.ref.iVal = 0x8000;
      expect(variant.ref.iVal, equals(-32768));

      VariantClear(variant);
      free(variant);
    });
    test('BYTE', () {
      final variant = calloc<VARIANT>();
      VariantInit(variant);
      variant.ref.vt = VARENUM.VT_UI1;
      variant.ref.bVal = 0;
      expect(variant.ref.bVal, equals(0));

      variant.ref.bVal = 255;
      expect(variant.ref.bVal, equals(255));

      variant.ref.bVal = 0x80;
      expect(variant.ref.bVal, equals(128));

      VariantClear(variant);
      free(variant);
    });

    test('USHORT', () {
      final variant = calloc<VARIANT>();
      VariantInit(variant);
      variant.ref.vt = VARENUM.VT_UI2;
      variant.ref.uiVal = 0;
      expect(variant.ref.uiVal, equals(0));

      variant.ref.uiVal = 65535;
      expect(variant.ref.uiVal, equals(65535));

      variant.ref.uiVal = 0x8000;
      expect(variant.ref.uiVal, equals(32768));

      VariantClear(variant);
      free(variant);
    });

    tearDownAll(CoUninitialize);
  });
}
