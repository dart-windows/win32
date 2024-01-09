// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../com/iunknown.dart';
import '../exceptions.dart';
import '../macros.dart';
import '../types.dart';
import '../utils.dart';

extension IUnknownToInterfaceHelper on IUnknown {
  /// Cast an existing COM object to a specified interface.
  ///
  /// Takes a string (typically a constant such as `IID_IModalWindow`) and does
  /// a COM QueryInterface to return a reference to that interface.
  VTablePointer toInterface(String iid) {
    final riid = convertToIID(iid);
    final ppvObject = calloc<VTablePointer>();

    try {
      final hr = queryInterface(riid, ppvObject);
      if (FAILED(hr)) throw WindowsException(hr);
      return ppvObject.value;
    } finally {
      free(ppvObject);
      free(riid);
    }
  }
}
