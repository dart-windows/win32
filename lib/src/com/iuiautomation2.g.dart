// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../exceptions.dart';
import '../extensions/iunknown.dart';
import '../macros.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import 'iuiautomation.g.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IUIAutomation2 = '{34723aff-0c9d-49d0-9896-7ab52df8cd8a}';

/// Extends the IUIAutomation interface to expose additional methods for
/// controlling Microsoft UI Automation functionality.
///
/// {@category com}
class IUIAutomation2 extends IUIAutomation {
  IUIAutomation2(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomation2Vtbl>().ref;

  final IUIAutomation2Vtbl _vtable;

  factory IUIAutomation2.from(IUnknown interface) =>
      IUIAutomation2(interface.toInterface(IID_IUIAutomation2));

  int get autoSetFocus {
    final autoSetFocus = calloc<BOOL>();
    try {
      final hr = _vtable.get_AutoSetFocus.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<BOOL> autoSetFocus)>()(
          ptr, autoSetFocus);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = autoSetFocus.value;
      return retValue;
    } finally {
      free(autoSetFocus);
    }
  }

  set autoSetFocus(int autoSetFocus) {
    final hr = _vtable.put_AutoSetFocus
            .asFunction<int Function(VTablePointer lpVtbl, int autoSetFocus)>()(
        ptr, autoSetFocus);
    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get connectionTimeout {
    final timeout = calloc<Uint32>();
    try {
      final hr = _vtable.get_ConnectionTimeout.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint32> timeout)>()(ptr, timeout);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = timeout.value;
      return retValue;
    } finally {
      free(timeout);
    }
  }

  set connectionTimeout(int timeout) {
    final hr = _vtable.put_ConnectionTimeout
            .asFunction<int Function(VTablePointer lpVtbl, int timeout)>()(
        ptr, timeout);
    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get transactionTimeout {
    final timeout = calloc<Uint32>();
    try {
      final hr = _vtable.get_TransactionTimeout.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint32> timeout)>()(ptr, timeout);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = timeout.value;
      return retValue;
    } finally {
      free(timeout);
    }
  }

  set transactionTimeout(int timeout) {
    final hr = _vtable.put_TransactionTimeout
            .asFunction<int Function(VTablePointer lpVtbl, int timeout)>()(
        ptr, timeout);
    if (FAILED(hr)) throw WindowsException(hr);
  }
}

/// @nodoc
base class IUIAutomation2Vtbl extends Struct {
  external IUIAutomationVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<BOOL> autoSetFocus)>>
      get_AutoSetFocus;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, BOOL autoSetFocus)>>
      put_AutoSetFocus;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> timeout)>>
      get_ConnectionTimeout;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Uint32 timeout)>>
      put_ConnectionTimeout;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> timeout)>>
      get_TransactionTimeout;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Uint32 timeout)>>
      put_TransactionTimeout;
}

/// @nodoc
const CUIAutomation8 = '{e22ad333-b25f-460c-83d0-0581107395c9}';
