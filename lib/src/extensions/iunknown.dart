// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../com/iunknown.g.dart';
import '../exceptions.dart';
import '../macros.dart';
import '../types.dart';
import '../utils.dart';

/// Extension method for casting COM objects to a specified interface.
extension IUnknownToInterface on IUnknown {
  /// Casts this COM object to the specified interface identified by its [iid].
  ///
  /// The [iid] parameter specifies the IID (Interface Identifier) of the
  /// interface to cast to. Typically, this is a constant such as
  /// `IID_IModalWindow`.
  ///
  /// This method performs a COM QueryInterface operation to obtain a reference
  /// to the desired interface.
  ///
  /// Throws a [WindowsException] if the QueryInterface call fails.
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
