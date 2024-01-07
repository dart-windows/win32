// iuiautomationselectionitempattern.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../exceptions.dart';
import '../macros.dart';
import '../types.dart';
import '../utils.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IUIAutomationSelectionItemPattern =
    '{a8efa66a-0fda-421a-9194-38021f3578ea}';

/// Provides access to the selectable child items of a container control
/// that supports IUIAutomationSelectionPattern.
///
/// {@category com}
class IUIAutomationSelectionItemPattern extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  IUIAutomationSelectionItemPattern(super.ptr)
      : _vtable =
            ptr.value.value.cast<IUIAutomationSelectionItemPatternVtbl>().ref;

  final IUIAutomationSelectionItemPatternVtbl _vtable;

  factory IUIAutomationSelectionItemPattern.from(IUnknown interface) =>
      IUIAutomationSelectionItemPattern(
          interface.toInterface(IID_IUIAutomationSelectionItemPattern));

  int select() =>
      _vtable.Select.asFunction<int Function(VTablePointer)>()(ptr.value);

  int addToSelection() =>
      _vtable.AddToSelection.asFunction<int Function(VTablePointer)>()(
          ptr.value);

  int removeFromSelection() =>
      _vtable.RemoveFromSelection.asFunction<int Function(VTablePointer)>()(
          ptr.value);

  int get currentIsSelected {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CurrentIsSelected
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr.value, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<VTablePointer> get currentSelectionContainer {
    final retValuePtr = calloc<VTablePointer>();

    final hr = _vtable.get_CurrentSelectionContainer.asFunction<
            int Function(VTablePointer, Pointer<VTablePointer> retVal)>()(
        ptr.value, retValuePtr);
    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }

  int get cachedIsSelected {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CachedIsSelected
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr.value, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<VTablePointer> get cachedSelectionContainer {
    final retValuePtr = calloc<VTablePointer>();

    final hr = _vtable.get_CachedSelectionContainer.asFunction<
            int Function(VTablePointer, Pointer<VTablePointer> retVal)>()(
        ptr.value, retValuePtr);
    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }
}

/// @nodoc
base class IUIAutomationSelectionItemPatternVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<NativeFunction<Int32 Function(VTablePointer)>> Select;
  external Pointer<NativeFunction<Int32 Function(VTablePointer)>>
      AddToSelection;
  external Pointer<NativeFunction<Int32 Function(VTablePointer)>>
      RemoveFromSelection;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CurrentIsSelected;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> retVal)>>
      get_CurrentSelectionContainer;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CachedIsSelected;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> retVal)>>
      get_CachedSelectionContainer;
}
