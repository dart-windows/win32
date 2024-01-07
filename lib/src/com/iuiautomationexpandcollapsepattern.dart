// iuiautomationexpandcollapsepattern.dart

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
const IID_IUIAutomationExpandCollapsePattern =
    '{619be086-1f4e-4ee4-bafa-210128738730}';

/// Provides access to a control that can visually expand to display
/// content, and collapse to hide content.
///
/// {@category com}
class IUIAutomationExpandCollapsePattern extends IUnknown {
  IUIAutomationExpandCollapsePattern(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationExpandCollapsePatternVtbl>().ref;

  final IUIAutomationExpandCollapsePatternVtbl _vtable;

  factory IUIAutomationExpandCollapsePattern.from(IUnknown interface) =>
      IUIAutomationExpandCollapsePattern(
          interface.toInterface(IID_IUIAutomationExpandCollapsePattern));

  int expand() => _vtable.Expand.asFunction<int Function(VTablePointer)>()(ptr);

  int collapse() =>
      _vtable.Collapse.asFunction<int Function(VTablePointer)>()(ptr);

  int get currentExpandCollapseState {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CurrentExpandCollapseState
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get cachedExpandCollapseState {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CachedExpandCollapseState
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}

/// @nodoc
base class IUIAutomationExpandCollapsePatternVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<NativeFunction<Int32 Function(VTablePointer)>> Expand;
  external Pointer<NativeFunction<Int32 Function(VTablePointer)>> Collapse;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CurrentExpandCollapseState;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CachedExpandCollapseState;
}
