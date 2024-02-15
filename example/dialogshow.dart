// Copyright (c) 2020, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Opens the File Open dialog box and shows results

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

void main() {
  var hr = CoInitializeEx(COINIT_APARTMENTTHREADED | COINIT_DISABLE_OLE1DDE);
  if (FAILED(hr)) throw WindowsException(hr);

  final fileDialog =
      IFileOpenDialog(createComObject(FileOpenDialog, IID_IFileOpenDialog));

  final pfos = calloc<Uint32>();
  hr = fileDialog.getOptions(pfos);
  if (FAILED(hr)) throw WindowsException(hr);

  final options = pfos.value | FILEOPENDIALOGOPTIONS.FOS_FORCEFILESYSTEM;
  hr = fileDialog.setOptions(options);
  if (FAILED(hr)) throw WindowsException(hr);

  final defaultExtensions = TEXT('txt;csv');
  hr = fileDialog.setDefaultExtension(defaultExtensions);
  if (FAILED(hr)) throw WindowsException(hr);
  free(defaultExtensions);

  final fileNameLabel = TEXT('Custom Label:');
  hr = fileDialog.setFileNameLabel(fileNameLabel);
  if (FAILED(hr)) throw WindowsException(hr);
  free(fileNameLabel);

  final title = TEXT('Custom Title');
  hr = fileDialog.setTitle(title);
  if (FAILED(hr)) throw WindowsException(hr);
  free(title);

  final okButtonLabel = TEXT('Go');
  hr = fileDialog.setOkButtonLabel(okButtonLabel);
  if (FAILED(hr)) throw WindowsException(hr);
  free(okButtonLabel);

  final rgSpec = calloc<COMDLG_FILTERSPEC>(3);
  rgSpec[0]
    ..pszName = TEXT('JPEG Files')
    ..pszSpec = TEXT('*.jpg;*.jpeg');
  rgSpec[1]
    ..pszName = TEXT('Bitmap Files')
    ..pszSpec = TEXT('*.bmp');
  rgSpec[2]
    ..pszName = TEXT('All Files (*.*)')
    ..pszSpec = TEXT('*.*');
  hr = fileDialog.setFileTypes(3, rgSpec);
  if (FAILED(hr)) throw WindowsException(hr);

  hr = fileDialog.show(null);
  if (FAILED(hr)) {
    if (hr == HRESULT_FROM_WIN32(ERROR_CANCELLED)) {
      print('Dialog cancelled.');
    } else {
      throw WindowsException(hr);
    }
  } else {
    final ppsi = calloc<VTablePointer>();
    hr = fileDialog.getResult(ppsi);
    if (FAILED(hr)) throw WindowsException(hr);

    final item = IShellItem(ppsi.value);
    free(ppsi);
    final pathPtr = calloc<PWSTR>();
    hr = item.getDisplayName(SIGDN.SIGDN_FILESYSPATH, pathPtr);
    if (FAILED(hr)) throw WindowsException(hr);

    item.release();

    // MAX_PATH may truncate early if long filename support is enabled
    final path = pathPtr.value.toDartString();

    print('Result: $path');
  }

  fileDialog.release();

  CoUninitialize();
  print('All done!');
}
