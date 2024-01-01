// iuiautomationselectionpattern2.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import '../exceptions.dart';
import '../macros.dart';
import '../utils.dart';
import 'iuiautomationselectionpattern.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IUIAutomationSelectionPattern2 =
    '{0532bfae-c011-4e32-a343-6d642d798555}';

/// Extends the IUIAutomationSelectionPattern interface to provide
/// information about selected items.
///
/// {@category com}
class IUIAutomationSelectionPattern2 extends IUIAutomationSelectionPattern {
  // vtable begins at 9, is 8 entries long.
  IUIAutomationSelectionPattern2(super.ptr)
      : _vtable = ptr.ref.vtable.cast<IUIAutomationSelectionPattern2Vtbl>().ref;

  final IUIAutomationSelectionPattern2Vtbl _vtable;

  factory IUIAutomationSelectionPattern2.from(IUnknown interface) =>
      IUIAutomationSelectionPattern2(
          interface.toInterface(IID_IUIAutomationSelectionPattern2));

  Pointer<COMObject> get currentFirstSelectedItem {
    final retValuePtr = calloc<COMObject>();

    final hr = _vtable.get_CurrentFirstSelectedItem
            .asFunction<int Function(Pointer, Pointer<COMObject> retVal)>()(
        ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }

  Pointer<COMObject> get currentLastSelectedItem {
    final retValuePtr = calloc<COMObject>();

    final hr = _vtable.get_CurrentLastSelectedItem
            .asFunction<int Function(Pointer, Pointer<COMObject> retVal)>()(
        ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }

  Pointer<COMObject> get currentCurrentSelectedItem {
    final retValuePtr = calloc<COMObject>();

    final hr = _vtable.get_CurrentCurrentSelectedItem
            .asFunction<int Function(Pointer, Pointer<COMObject> retVal)>()(
        ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }

  int get currentItemCount {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CurrentItemCount
              .asFunction<int Function(Pointer, Pointer<Int32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<COMObject> get cachedFirstSelectedItem {
    final retValuePtr = calloc<COMObject>();

    final hr = _vtable.get_CachedFirstSelectedItem
            .asFunction<int Function(Pointer, Pointer<COMObject> retVal)>()(
        ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }

  Pointer<COMObject> get cachedLastSelectedItem {
    final retValuePtr = calloc<COMObject>();

    final hr = _vtable.get_CachedLastSelectedItem
            .asFunction<int Function(Pointer, Pointer<COMObject> retVal)>()(
        ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }

  Pointer<COMObject> get cachedCurrentSelectedItem {
    final retValuePtr = calloc<COMObject>();

    final hr = _vtable.get_CachedCurrentSelectedItem
            .asFunction<int Function(Pointer, Pointer<COMObject> retVal)>()(
        ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }

  int get cachedItemCount {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CachedItemCount
              .asFunction<int Function(Pointer, Pointer<Int32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}

/// @nodoc
base class IUIAutomationSelectionPattern2Vtbl extends Struct {
  external IUIAutomationSelectionPatternVtbl baseVtbl;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<COMObject> retVal)>>
      get_CurrentFirstSelectedItem;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<COMObject> retVal)>>
      get_CurrentLastSelectedItem;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<COMObject> retVal)>>
      get_CurrentCurrentSelectedItem;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> retVal)>>
      get_CurrentItemCount;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<COMObject> retVal)>>
      get_CachedFirstSelectedItem;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<COMObject> retVal)>>
      get_CachedLastSelectedItem;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<COMObject> retVal)>>
      get_CachedCurrentSelectedItem;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> retVal)>>
      get_CachedItemCount;
}
