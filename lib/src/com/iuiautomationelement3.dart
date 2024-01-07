// iuiautomationelement3.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../exceptions.dart';
import '../macros.dart';
import '../types.dart';
import '../utils.dart';
import 'iuiautomationelement2.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IUIAutomationElement3 = '{8471df34-aee0-4a01-a7de-7db9af12c296}';

/// Extends the IUIAutomationElement2 interface.
///
/// {@category com}
class IUIAutomationElement3 extends IUIAutomationElement2 {
  // vtable begins at 91, is 3 entries long.
  IUIAutomationElement3(super.ptr)
      : _vtable = ptr.value.value.cast<IUIAutomationElement3Vtbl>().ref;

  final IUIAutomationElement3Vtbl _vtable;

  factory IUIAutomationElement3.from(IUnknown interface) =>
      IUIAutomationElement3(interface.toInterface(IID_IUIAutomationElement3));

  int showContextMenu() =>
      _vtable.ShowContextMenu.asFunction<int Function(VTablePointer)>()(
          ptr.value);

  int get currentIsPeripheral {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CurrentIsPeripheral
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr.value, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get cachedIsPeripheral {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CachedIsPeripheral
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr.value, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}

/// @nodoc
base class IUIAutomationElement3Vtbl extends Struct {
  external IUIAutomationElement2Vtbl baseVtbl;
  external Pointer<NativeFunction<Int32 Function(VTablePointer)>>
      ShowContextMenu;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CurrentIsPeripheral;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CachedIsPeripheral;
}
