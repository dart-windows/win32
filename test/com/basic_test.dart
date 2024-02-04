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
  test('CLSIDFromString', () {
    final guid = calloc<GUID>();
    final pCLSID = FileSaveDialog.toNativeUtf16();

    final hr = CLSIDFromString(pCLSID, guid);
    expect(hr, equals(S_OK));

    expect(guid.ref.toString(), equalsIgnoringCase(FileSaveDialog));

    free(pCLSID);
    free(guid);
  });

  test('IIDFromString', () {
    final guid = calloc<GUID>();
    final pIID = IID_IShellItem2.toNativeUtf16();

    final hr = IIDFromString(pIID, guid);
    expect(hr, equals(S_OK));

    expect(guid.ref.toString(), equalsIgnoringCase(IID_IShellItem2));

    free(pIID);
    free(guid);
  });

  test('Create COM object without calling CoInitialize should fail', () {
    expect(
        () => IFileOpenDialog(
            createCOMObject(FileOpenDialog, IID_IFileOpenDialog)),
        throwsA(isA<WindowsException>()
            .having((e) => e.hr, 'hr', equals(CO_E_NOTINITIALIZED))
            .having((e) => e.toString(), 'message',
                contains('CoInitialize has not been called.'))));
  });

  group('COM testing', () {
    setUpAll(initializeCOM);

    test('create COM object with CoCreateInstance', () {
      final ptr = calloc<VTablePointer>();
      final clsid = GUIDFromString(FileSaveDialog);
      final iid = GUIDFromString(IID_IFileSaveDialog);

      final hr = CoCreateInstance(clsid, null, CLSCTX_ALL, iid, ptr);
      expect(hr, equals(S_OK));
      expect(ptr.value.address, isNonZero);

      IFileSaveDialog(ptr.value).release();

      free(iid);
      free(clsid);
      free(ptr);
    });

    test('create COM object with CoGetClassObject', () {
      final ptrFactory = calloc<VTablePointer>();
      final ptrSaveDialog = calloc<VTablePointer>();
      final clsid = GUIDFromString(FileSaveDialog);
      final iidClassFactory = GUIDFromString(IID_IClassFactory);
      final iidFileSaveDialog = GUIDFromString(IID_IFileSaveDialog);

      var hr = CoGetClassObject(
          clsid, CLSCTX_ALL, null, iidClassFactory, ptrFactory);
      expect(hr, equals(S_OK));
      expect(ptrFactory.address, isNonZero);

      final classFactory = IClassFactory(ptrFactory.value);
      free(ptrFactory);
      hr = classFactory.createInstance(null, iidFileSaveDialog, ptrSaveDialog);
      expect(hr, equals(S_OK));
      expect(ptrSaveDialog.value.address, isNonZero);

      IFileSaveDialog(ptrSaveDialog.value).release();
      classFactory.release();

      free(iidFileSaveDialog);
      free(iidClassFactory);
      free(clsid);
      free(ptrSaveDialog);
    });

    test('dialog object exists', () {
      final dialog =
          IFileOpenDialog(createCOMObject(FileOpenDialog, IID_IFileOpenDialog));
      expect(dialog.ptr.address, isNonZero);
      expect(dialog.ptr.value.address, isNonZero);
      dialog.release();
    });

    test('can cast to IUnknown', () {
      final dialog =
          IFileOpenDialog(createCOMObject(FileOpenDialog, IID_IFileOpenDialog));
      final unk = IUnknown.from(dialog);
      expect(unk.ptr.address, isNonZero);
      expect(unk.ptr.value.address, isNonZero);
      unk.release();
      dialog.release();
    });

    test('cast to random interface fails', () {
      final dialog =
          IFileOpenDialog(createCOMObject(FileOpenDialog, IID_IFileOpenDialog));
      expect(
          () => dialog.toInterface(IID_IDesktopWallpaper),
          throwsA(isA<WindowsException>()
              .having((e) => e.hr, 'hr', equals(E_NOINTERFACE))
              .having((e) => e.toString(), 'message',
                  contains('No such interface supported'))));
      dialog.release();
    });

    test('addRef / release', () {
      final dialog =
          IFileOpenDialog(createCOMObject(FileOpenDialog, IID_IFileOpenDialog));

      var refs = dialog.addRef();
      expect(refs, equals(2));

      refs = dialog.addRef();
      expect(refs, equals(3));

      refs = dialog.release();
      expect(refs, equals(2));

      refs = dialog.release();
      expect(refs, equals(1));

      dialog.release();
    });

    test('can cast to various supported interfaces', () {
      final dialog =
          IFileOpenDialog(createCOMObject(FileOpenDialog, IID_IFileOpenDialog));

      expect(() => IUnknown.from(dialog), returnsNormally);
      expect(() => IModalWindow.from(dialog), returnsNormally);
      expect(() => IFileOpenDialog.from(dialog), returnsNormally);
      expect(() => IFileDialog.from(dialog), returnsNormally);
      expect(() => IFileDialog2.from(dialog), returnsNormally);

      dialog.release();
    });

    test('cannot cast to various unsupported interfaces', () {
      final dialog =
          IFileOpenDialog(createCOMObject(FileOpenDialog, IID_IFileOpenDialog));

      expect(
          () => IShellItem.from(dialog),
          throwsA(isA<WindowsException>()
              .having((e) => e.hr, 'hr', equals(E_NOINTERFACE))));
      expect(
          () => ISpeechObjectToken.from(dialog),
          throwsA(isA<WindowsException>()
              .having((e) => e.hr, 'hr', equals(E_NOINTERFACE))));

      dialog.release();
    });

    tearDown(forceGC);
    tearDownAll(CoUninitialize);
  });
}
