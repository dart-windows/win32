// Copyright (c) 2020, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

void main() {
  // Initialize COM.
  CoInitializeEx(COINIT_APARTMENTTHREADED | COINIT_DISABLE_OLE1DDE);

  final method = BSTR.fromString('GET');
  final url = BSTR.fromString('https://dart.dev');
  final varFalse = Variant.bool_(false);
  final varEmpty = Variant.empty()..ref.vt = VARENUM.VT_ERROR;

  try {
    // Create an instance of WinHttpRequest class.
    final winHttpRequest =
        IWinHttpRequest(createComObject(WinHttpRequest, IID_IWinHttpRequest));

    // Open an HTTP connection.
    var hr = winHttpRequest.open(method, url, varFalse.ref);
    if (FAILED(hr)) throw WindowsException(hr);

    // Send request.
    hr = winHttpRequest.send(varEmpty.ref);
    if (FAILED(hr)) throw WindowsException(hr);

    // Get response text.
    final responseTextPtr = winHttpRequest.responseText;
    final responseText = responseTextPtr.toDartString();
    SysFreeString(responseTextPtr);
    print(responseText);

    winHttpRequest.release();
  } finally {
    varFalse.free();
    varEmpty.free();
    method.free();
    url.free();
  }

  CoUninitialize();
}
