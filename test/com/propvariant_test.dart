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

  group('PROPVARIANT', () {
    test('creation', () {
      final propVariant = calloc<PROPVARIANT>();
      expect(propVariant.ref.vt, equals(VARENUM.VT_EMPTY));
      PropVariantClear(propVariant);
      free(propVariant);
    });

    test('IUnknown BYREF', () {
      final unknown = IUnknown(createComObject(SpVoice, IID_IUnknown));
      final propVariant = calloc<PROPVARIANT>();
      final ppunkval = calloc<VTablePointer>()..value = unknown.ptr;
      propVariant.ref
        ..vt = VARENUM.VT_UNKNOWN | VARENUM.VT_BYREF
        ..ppunkVal = ppunkval;
      final unk = IUnknown(propVariant.ref.ppunkVal.value);
      expect(unk.ptr.address, isNonZero);
      expect(refCount(unk), equals(1));
      free(ppunkval);
      PropVariantClear(propVariant);
      free(propVariant);
      unknown.release();
    });
  });

  group('PropVariant', () {
    test('empty', () {
      final propVariant = PropVariant.empty();
      expect(propVariant.ref.vt, equals(VARENUM.VT_EMPTY));
      expect(propVariant.isEmpty, isTrue);
      propVariant.free();
    });

    test('bool', () {
      final propVariant = PropVariant.bool_(true);
      expect(propVariant.ref.vt, equals(VARENUM.VT_BOOL));
      expect(propVariant.value, isTrue);
      propVariant.value = false;
      expect(propVariant.value, isFalse);
      propVariant.free();
    });

    test('bstr', () {
      const testString = 'Hello, world!';
      final propVariant = PropVariant.bstr(testString);
      expect(propVariant.ref.vt, equals(VARENUM.VT_BSTR));
      expect(propVariant.value, equals(testString));
      propVariant.free();
    });

    test('double', () {
      const testValue = 3.14159;
      final propVariant = PropVariant.double_(testValue);
      expect(propVariant.ref.vt, equals(VARENUM.VT_R8));
      expect(propVariant.value, equals(testValue));
      propVariant.free();
    });

    test('float', () {
      const testValue = 3.14159;
      final propVariant = PropVariant.float(testValue);
      expect(propVariant.ref.vt, equals(VARENUM.VT_R4));
      expect(propVariant.value, equals(3.141590118408203));
      propVariant.free();
    });

    test('int8', () {
      const testValue = -128; // -2^7
      final propVariant = PropVariant.int8(testValue);
      expect(propVariant.ref.vt, equals(VARENUM.VT_I1));
      expect(propVariant.value, equals(testValue));
      propVariant.value = 127; // 2^7 - 1
      expect(propVariant.value, equals(127));
      propVariant.free();
    });

    test('int16', () {
      const testValue = -32768; // -2^15
      final propVariant = PropVariant.int16(testValue);
      expect(propVariant.ref.vt, equals(VARENUM.VT_I2));
      expect(propVariant.value, equals(testValue));
      propVariant.value = 32767; // 2^15 - 1
      expect(propVariant.value, equals(32767));
      propVariant.free();
    });

    test('int32', () {
      const testValue = -2147483648; // -2^31
      final propVariant = PropVariant.int32(testValue);
      expect(propVariant.ref.vt, equals(VARENUM.VT_I4));
      expect(propVariant.value, equals(testValue));
      propVariant.value = 2147483647; // 2^31 - 1
      expect(propVariant.value, equals(2147483647));
      propVariant.free();
    });

    test('idispatch', () {
      final dispatch =
          IDispatch(createComObject('Shell.Application', IID_IDispatch))
            ..addRef();
      final propVariant = PropVariant.idispatch(dispatch);
      expect(propVariant.ref.vt, equals(VARENUM.VT_DISPATCH));
      expect(refCount(propVariant.value), equals(2));
      propVariant.free();
      expect(refCount(dispatch), equals(1));
    });

    test('iunknown', () {
      final unknown = IUnknown(createComObject(SpVoice, IID_IUnknown))
        ..addRef();
      final propVariant = PropVariant.iunknown(unknown);
      expect(propVariant.ref.vt, equals(VARENUM.VT_UNKNOWN));
      expect(refCount(propVariant.value), equals(2));
      propVariant.free();
      expect(refCount(unknown), equals(1));
    });

    test('uint8', () {
      const testValue = 0;
      final propVariant = PropVariant.uint8(testValue);
      expect(propVariant.ref.vt, equals(VARENUM.VT_UI1));
      expect(propVariant.value, equals(testValue));
      propVariant.value = 255; // 2^8 - 1
      expect(propVariant.value, equals(255));
      propVariant.free();
    });

    test('uint16', () {
      const testValue = 0;
      final propVariant = PropVariant.uint16(testValue);
      expect(propVariant.ref.vt, equals(VARENUM.VT_UI2));
      expect(propVariant.value, equals(testValue));
      propVariant.value = 65535; // 2^16 - 1
      expect(propVariant.value, equals(65535));
      propVariant.free();
    });

    test('uint32', () {
      const testValue = 0;
      final propVariant = PropVariant.uint32(testValue);
      expect(propVariant.ref.vt, equals(VARENUM.VT_UI4));
      expect(propVariant.value, equals(testValue));
      propVariant.value = 4294967295; // 2^32 - 1
      expect(propVariant.value, equals(4294967295));
      propVariant.free();
    });
  });

  tearDownAll(CoUninitialize);
}
