// iuiautomation2.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../exceptions.dart';
import '../macros.dart';
import '../types.dart';
import '../utils.dart';
import 'iuiautomation.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IUIAutomation2 = '{34723aff-0c9d-49d0-9896-7ab52df8cd8a}';

/// Extends the IUIAutomation interface to expose additional methods for
/// controlling Microsoft UI Automation functionality.
///
/// {@category com}
class IUIAutomation2 extends IUIAutomation {
  IUIAutomation2(super.ptr)
      : _vtable = ptr.value.value.cast<IUIAutomation2Vtbl>().ref;

  final IUIAutomation2Vtbl _vtable;

  factory IUIAutomation2.from(IUnknown interface) =>
      IUIAutomation2(interface.toInterface(IID_IUIAutomation2));

  int get autoSetFocus {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_AutoSetFocus.asFunction<
              int Function(VTablePointer, Pointer<Int32> autoSetFocus)>()(
          ptr.value, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set autoSetFocus(int value) {
    final hr = _vtable.put_AutoSetFocus
            .asFunction<int Function(VTablePointer, int autoSetFocus)>()(
        ptr.value, value);
    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get connectionTimeout {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = _vtable.get_ConnectionTimeout.asFunction<
              int Function(VTablePointer, Pointer<Uint32> timeout)>()(
          ptr.value, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set connectionTimeout(int value) {
    final hr = _vtable.put_ConnectionTimeout
            .asFunction<int Function(VTablePointer, int timeout)>()(
        ptr.value, value);
    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get transactionTimeout {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = _vtable.get_TransactionTimeout.asFunction<
              int Function(VTablePointer, Pointer<Uint32> timeout)>()(
          ptr.value, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set transactionTimeout(int value) {
    final hr = _vtable.put_TransactionTimeout
            .asFunction<int Function(VTablePointer, int timeout)>()(
        ptr.value, value);
    if (FAILED(hr)) throw WindowsException(hr);
  }
}

/// @nodoc
base class IUIAutomation2Vtbl extends Struct {
  external IUIAutomationVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Int32> autoSetFocus)>>
      get_AutoSetFocus;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Int32 autoSetFocus)>>
      put_AutoSetFocus;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Uint32> timeout)>>
      get_ConnectionTimeout;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Uint32 timeout)>>
      put_ConnectionTimeout;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Uint32> timeout)>>
      get_TransactionTimeout;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Uint32 timeout)>>
      put_TransactionTimeout;
}

/// @nodoc
const CLSID_CUIAutomation8 = '{e22ad333-b25f-460c-83d0-0581107395c9}';

/// {@category com}
class CUIAutomation8 extends IUIAutomation2 {
  CUIAutomation8(super.ptr);

  factory CUIAutomation8.createInstance() =>
      CUIAutomation8(createCOMObject(CLSID_CUIAutomation8, IID_IUIAutomation2));
}
