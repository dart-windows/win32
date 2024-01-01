// iuiautomationelement2.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import '../exceptions.dart';
import '../macros.dart';
import '../utils.dart';
import 'iuiautomationelement.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IUIAutomationElement2 = '{6749c683-f70d-4487-a698-5f79d55290d6}';

/// Extends the IUIAutomationElement interface.
///
/// {@category com}
class IUIAutomationElement2 extends IUIAutomationElement {
  // vtable begins at 85, is 6 entries long.
  IUIAutomationElement2(super.ptr)
      : _vtable = ptr.ref.vtable.cast<IUIAutomationElement2Vtbl>().ref;

  final IUIAutomationElement2Vtbl _vtable;

  factory IUIAutomationElement2.from(IUnknown interface) =>
      IUIAutomationElement2(interface.toInterface(IID_IUIAutomationElement2));

  int get currentOptimizeForVisualContent {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CurrentOptimizeForVisualContent
              .asFunction<int Function(Pointer, Pointer<Int32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get cachedOptimizeForVisualContent {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CachedOptimizeForVisualContent
              .asFunction<int Function(Pointer, Pointer<Int32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get currentLiveSetting {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CurrentLiveSetting
              .asFunction<int Function(Pointer, Pointer<Int32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get cachedLiveSetting {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CachedLiveSetting
              .asFunction<int Function(Pointer, Pointer<Int32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<COMObject> get currentFlowsFrom {
    final retValuePtr = calloc<COMObject>();

    final hr = _vtable.get_CurrentFlowsFrom
            .asFunction<int Function(Pointer, Pointer<COMObject> retVal)>()(
        ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }

  Pointer<COMObject> get cachedFlowsFrom {
    final retValuePtr = calloc<COMObject>();

    final hr = _vtable.get_CachedFlowsFrom
            .asFunction<int Function(Pointer, Pointer<COMObject> retVal)>()(
        ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }
}

/// @nodoc
base class IUIAutomationElement2Vtbl extends Struct {
  external IUIAutomationElementVtbl baseVtbl;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> retVal)>>
      get_CurrentOptimizeForVisualContent;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> retVal)>>
      get_CachedOptimizeForVisualContent;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> retVal)>>
      get_CurrentLiveSetting;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> retVal)>>
      get_CachedLiveSetting;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<COMObject> retVal)>>
      get_CurrentFlowsFrom;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<COMObject> retVal)>>
      get_CachedFlowsFrom;
}
