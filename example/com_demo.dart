// Copyright (c) 2020, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Demonstrates COM object creation, casting, and calling methods.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

void main() {
  // Initialize COM.
  var hr = CoInitializeEx(
      COINIT.COINIT_APARTMENTTHREADED | COINIT.COINIT_DISABLE_OLE1DDE);
  if (FAILED(hr)) throw WindowsException(hr);

  using((arena) {
    // Create an instance of the FileOpenDialog class w/ IFileDialog interface.
    final fileDialog =
        IFileDialog(createComObject(FileOpenDialog, IID_IFileDialog));
    print('Created fileDialog (fileDialog.ptr address is: '
        '${fileDialog.ptr.address.toHexString(64)}).');
    print('refCount is now ${refCount(fileDialog)}.\n');

    // Cast the IFileDialog interface to an IFileDialog2 interface.
    final fileDialog2 = IFileDialog2.from(fileDialog);
    print('Casted to IFileDialog2 interface (fileDialog2.ptr address is: '
        '${fileDialog2.ptr.address.toHexString(64)}).');
    print('refCount is now ${refCount(fileDialog2)}.\n');

    // Change the title of the dialog.
    final pTitle = PWSTR.fromString('Dart Open File Dialog', allocator: arena);
    hr = fileDialog2.setTitle(pTitle);
    if (FAILED(hr)) throw WindowsException(hr);

    // Cast the IFileDialog2 interface to an IModalWindow interface.
    final modalWindow = IModalWindow.from(fileDialog2);
    print('Casted to IModalWindow interface (modalWindow.ptr address is: '
        '${modalWindow.ptr.address.toHexString(64)}).');
    print('refCount is now ${refCount(modalWindow)}.\n');

    // Cast the IModalWindow interface to an IFileOpenDialog interface.
    final fileOpenDialog = IFileOpenDialog.from(modalWindow);
    print('Casted to IFileOpenDialog interface (fileOpenDialog.ptr address is: '
        '${fileOpenDialog.ptr.address.toHexString(64)}).');
    print('refCount is now ${refCount(fileOpenDialog)}.\n');

    // Launch the dialog.
    hr = fileOpenDialog.show(null);
    if (hr == S_OK) {
      // Print the path of the selected file.
      final psiResult = arena<VTablePointer>();
      hr = fileOpenDialog.getResult(psiResult);
      if (FAILED(hr)) throw WindowsException(hr);

      final shellItem = IShellItem(psiResult.value);
      final pszFilePath = arena<Pointer<Utf16>>();
      hr = shellItem.getDisplayName(SIGDN.SIGDN_FILESYSPATH, pszFilePath);
      if (FAILED(hr)) throw WindowsException(hr);
      print('Selected file: ${pszFilePath.value.toDartString()}\n');
      free(pszFilePath.value);
    } else {
      if (hr == HRESULT_FROM_WIN32(WIN32_ERROR.ERROR_CANCELLED)) {
        print('Dialog cancelled.');
      } else {
        throw WindowsException(hr);
      }
    }

    // Clean up.
    fileOpenDialog.release();
    modalWindow.release();
    fileDialog2.release();
    fileDialog.release();
    CoUninitialize();
    print('All done!');
  });
}
