// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'dart:ffi';

import 'package:test/test.dart';
import 'package:win32/win32.dart';

void main() {
  group('convertToCLSID', () {
    test('GUID', () {
      final clsid = convertToCLSID(FileOpenDialog);
      expect(clsid.ref.toString(), equals(FileOpenDialog));
      free(clsid);
    });

    test('ProgID', () {
      final clsid = convertToCLSID('Shell.Application');
      expect(
        clsid.ref.toString(),
        equals('{13709620-c279-11ce-a49e-444553540000}'),
      );
      free(clsid);
    });
  });

  test('convertToIID', () {
    final iid = convertToIID(IID_IUnknown);
    expect(iid.ref.toString(), equals(IID_IUnknown));
    free(iid);
  });

  test('createComObject', () {
    final hr =
        CoInitializeEx(COINIT_APARTMENTTHREADED | COINIT_DISABLE_OLE1DDE);
    expect(hr, equals(S_OK));
    final ptr = createComObject(SpellCheckerFactory, IID_ISpellCheckerFactory);
    expect(ptr.address, isNonZero);
    final unknown = IUnknown(ptr);
    expect(unknown.addRef(), equals(2));
    expect(unknown.release(), equals(1));
    unknown.release();
    CoUninitialize();
  });

  test('isComInitialized', () {
    expect(isComInitialized, isFalse);
    final hr =
        CoInitializeEx(COINIT_APARTMENTTHREADED | COINIT_DISABLE_OLE1DDE);
    expect(hr, equals(S_OK));
    expect(isComInitialized, isTrue);
    CoUninitialize();
  });

  test('isWindowsRuntimeAvailable', () {
    expect(isWindowsRuntimeAvailable(), isTrue);
  });

  test('refCount', () {
    final hr =
        CoInitializeEx(COINIT_APARTMENTTHREADED | COINIT_DISABLE_OLE1DDE);
    expect(hr, equals(S_OK));
    final ptr = createComObject(SpellCheckerFactory, IID_ISpellCheckerFactory);
    final unknown = IUnknown(ptr);
    expect(refCount(unknown), equals(1));
    unknown.addRef();
    expect(refCount(unknown), equals(2));
    unknown.release();
    expect(refCount(unknown), equals(1));
    unknown.release();
    CoUninitialize();
  });
}
