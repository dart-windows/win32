// Copyright (c) 2020, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Demonstrates the use of Dispatcher for calling COM automation objects from
// Dart.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

void main() {
  CoInitializeEx(
      COINIT.COINIT_APARTMENTTHREADED | COINIT.COINIT_DISABLE_OLE1DDE);

  final dispatcher = Dispatcher.fromProgID('Shell.Application');

  // Example of calling an automation method with no parameters.
  print('Minimizing all windows via `Shell.Application` Automation object');
  dispatcher.invoke('MinimizeAll');

  // Example of calling an automation method with a parameter.
  print(r'Launching the Windows Explorer, starting at the C:\ directory');
  final exploreParam = Variant.bstr(r'C:\');
  final exploreParams = calloc<DISPPARAMS>();
  exploreParams.ref
    ..cArgs = 1
    ..rgvarg = exploreParam;
  dispatcher.invoke('Explore', exploreParams);
  free(exploreParams);
  exploreParam.free();

  print('Cleaning up.');
  dispatcher.dispose();
  CoUninitialize();
}
