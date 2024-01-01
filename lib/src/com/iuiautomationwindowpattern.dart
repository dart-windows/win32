// iuiautomationwindowpattern.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../exceptions.dart';
import '../macros.dart';
import '../utils.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IUIAutomationWindowPattern = '{0faef453-9208-43ef-bbb2-3b485177864f}';

/// Provides access to the fundamental functionality of a window.
///
/// {@category com}
class IUIAutomationWindowPattern extends IUnknown {
  // vtable begins at 3, is 15 entries long.
  IUIAutomationWindowPattern(super.ptr)
      : _vtable = ptr.ref.vtable.cast<IUIAutomationWindowPatternVtbl>().ref;

  final IUIAutomationWindowPatternVtbl _vtable;

  factory IUIAutomationWindowPattern.from(IUnknown interface) =>
      IUIAutomationWindowPattern(
          interface.toInterface(IID_IUIAutomationWindowPattern));

  int close() =>
      _vtable.Close.asFunction<int Function(Pointer)>()(ptr.ref.lpVtbl);

  int waitForInputIdle(int milliseconds, Pointer<Int32> success) =>
      _vtable.WaitForInputIdle.asFunction<
          int Function(Pointer, int milliseconds,
              Pointer<Int32> success)>()(ptr.ref.lpVtbl, milliseconds, success);

  int setWindowVisualState(int state) => _vtable.SetWindowVisualState
      .asFunction<int Function(Pointer, int state)>()(ptr.ref.lpVtbl, state);

  int get currentCanMaximize {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CurrentCanMaximize
              .asFunction<int Function(Pointer, Pointer<Int32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get currentCanMinimize {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CurrentCanMinimize
              .asFunction<int Function(Pointer, Pointer<Int32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get currentIsModal {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CurrentIsModal
              .asFunction<int Function(Pointer, Pointer<Int32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get currentIsTopmost {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CurrentIsTopmost
              .asFunction<int Function(Pointer, Pointer<Int32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get currentWindowVisualState {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CurrentWindowVisualState
              .asFunction<int Function(Pointer, Pointer<Int32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get currentWindowInteractionState {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CurrentWindowInteractionState
              .asFunction<int Function(Pointer, Pointer<Int32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get cachedCanMaximize {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CachedCanMaximize
              .asFunction<int Function(Pointer, Pointer<Int32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get cachedCanMinimize {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CachedCanMinimize
              .asFunction<int Function(Pointer, Pointer<Int32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get cachedIsModal {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CachedIsModal
              .asFunction<int Function(Pointer, Pointer<Int32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get cachedIsTopmost {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CachedIsTopmost
              .asFunction<int Function(Pointer, Pointer<Int32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get cachedWindowVisualState {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CachedWindowVisualState
              .asFunction<int Function(Pointer, Pointer<Int32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get cachedWindowInteractionState {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CachedWindowInteractionState
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
base class IUIAutomationWindowPatternVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<NativeFunction<Int32 Function(Pointer)>> Close;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer, Int32 milliseconds, Pointer<Int32> success)>>
      WaitForInputIdle;
  external Pointer<NativeFunction<Int32 Function(Pointer, Int32 state)>>
      SetWindowVisualState;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> retVal)>>
      get_CurrentCanMaximize;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> retVal)>>
      get_CurrentCanMinimize;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> retVal)>>
      get_CurrentIsModal;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> retVal)>>
      get_CurrentIsTopmost;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> retVal)>>
      get_CurrentWindowVisualState;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> retVal)>>
      get_CurrentWindowInteractionState;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> retVal)>>
      get_CachedCanMaximize;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> retVal)>>
      get_CachedCanMinimize;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> retVal)>>
      get_CachedIsModal;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> retVal)>>
      get_CachedIsTopmost;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> retVal)>>
      get_CachedWindowVisualState;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> retVal)>>
      get_CachedWindowInteractionState;
}
