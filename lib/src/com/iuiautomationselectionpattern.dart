// iuiautomationselectionpattern.dart

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
const IID_IUIAutomationSelectionPattern =
    '{5ed5202e-b2ac-47a6-b638-4b0bf140d78e}';

/// Provides access to a control that contains selectable child items. The
/// children of this element support IUIAutomationSelectionItemPattern.
///
/// {@category com}
class IUIAutomationSelectionPattern extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IUIAutomationSelectionPattern(super.ptr)
      : _vtable = ptr.value.value.cast<IUIAutomationSelectionPatternVtbl>().ref;

  final IUIAutomationSelectionPatternVtbl _vtable;

  factory IUIAutomationSelectionPattern.from(IUnknown interface) =>
      IUIAutomationSelectionPattern(
          interface.toInterface(IID_IUIAutomationSelectionPattern));

  int getCurrentSelection(Pointer<Pointer<VTablePointer>> retVal) =>
      _vtable.GetCurrentSelection.asFunction<
          int Function(VTablePointer,
              Pointer<Pointer<VTablePointer>> retVal)>()(ptr.value, retVal);

  int get currentCanSelectMultiple {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CurrentCanSelectMultiple
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr.value, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get currentIsSelectionRequired {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CurrentIsSelectionRequired
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr.value, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int getCachedSelection(Pointer<Pointer<VTablePointer>> retVal) =>
      _vtable.GetCachedSelection.asFunction<
          int Function(VTablePointer,
              Pointer<Pointer<VTablePointer>> retVal)>()(ptr.value, retVal);

  int get cachedCanSelectMultiple {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CachedCanSelectMultiple
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr.value, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get cachedIsSelectionRequired {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CachedIsSelectionRequired
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
base class IUIAutomationSelectionPatternVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Pointer<VTablePointer>> retVal)>>
      GetCurrentSelection;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CurrentCanSelectMultiple;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CurrentIsSelectionRequired;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Pointer<VTablePointer>> retVal)>>
      GetCachedSelection;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CachedCanSelectMultiple;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CachedIsSelectionRequired;
}
