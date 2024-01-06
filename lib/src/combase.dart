// Copyright (c) 2020, Dart | Windows.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Foundational COM classes

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'constants.dart';
import 'exceptions.dart';
import 'macros.dart';
import 'utils.dart';
import 'win32/ole32.g.dart';

/// Type alias that represents a Pointer to the COM v-table.
typedef VTablePointer = Pointer<Pointer<IntPtr>>;

/// A representation of a generic COM object. All Dart COM objects inherit from
/// this class.
///
/// {@category com}
base class COMObject extends Struct {
  external VTablePointer lpVtbl;

  /// Whether the [lpVtbl] is a null pointer.
  bool get isNull => lpVtbl.address == 0;

  Pointer<IntPtr> get vtable => lpVtbl.value;

  /// Create an instance of a COM object using its class identifier, cast to the
  /// specified interface.
  ///
  /// The caller is responsible for disposing of the memory of the returned
  /// object when it is no longer required. A FFI `Arena` may be passed as a
  /// custom allocator for ease of memory management.
  static Pointer<COMObject> createFromID(String clsid, String iid,
      {Allocator allocator = calloc}) {
    final pClsid = convertToCLSID(clsid);
    final pIid = convertToIID(iid);
    final pObj = allocator<COMObject>();

    try {
      final hr =
          CoCreateInstance(pClsid, nullptr, CLSCTX_ALL, pIid, pObj.cast());
      if (FAILED(hr)) throw WindowsException(hr);
      return pObj;
    } finally {
      free(pClsid);
      free(pIid);
    }
  }
}
