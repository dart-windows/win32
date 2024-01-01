// iuiautomationdockpattern.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../exceptions.dart';
import '../macros.dart';
import '../utils.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IUIAutomationDockPattern = '{fde5ef97-1464-48f6-90bf-43d0948e86ec}';

/// Provides access to a control that enables child elements to be arranged
/// horizontally and vertically, relative to each other.
///
/// {@category com}
class IUIAutomationDockPattern extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IUIAutomationDockPattern(super.ptr)
      : _vtable = ptr.ref.vtable.cast<IUIAutomationDockPatternVtbl>().ref;

  final IUIAutomationDockPatternVtbl _vtable;

  factory IUIAutomationDockPattern.from(IUnknown interface) =>
      IUIAutomationDockPattern(
          interface.toInterface(IID_IUIAutomationDockPattern));

  int setDockPosition(int dockPos) =>
      _vtable.SetDockPosition.asFunction<int Function(Pointer, int dockPos)>()(
          ptr.ref.lpVtbl, dockPos);

  int get currentDockPosition {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CurrentDockPosition
              .asFunction<int Function(Pointer, Pointer<Int32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get cachedDockPosition {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CachedDockPosition
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
base class IUIAutomationDockPatternVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<NativeFunction<Int32 Function(Pointer, Int32 dockPos)>>
      SetDockPosition;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> retVal)>>
      get_CurrentDockPosition;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> retVal)>>
      get_CachedDockPosition;
}
