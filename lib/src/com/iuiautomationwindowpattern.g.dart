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
import 'iunknown.g.dart';

/// @nodoc
const IID_IUIAutomationWindowPattern = '{0faef453-9208-43ef-bbb2-3b485177864f}';

/// Provides access to the fundamental functionality of a window.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationwindowpattern>.
///
/// {@category com}
class IUIAutomationWindowPattern extends IUnknown {
  IUIAutomationWindowPattern(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationWindowPatternVtbl>().ref;

  final IUIAutomationWindowPatternVtbl _vtable;

  /// Creates a new instance of `IUIAutomationWindowPattern` from an existing
  /// [interface].
  ///
  /// This constructor invokes the [queryInterface] method to obtain a reference
  /// to the `IUIAutomationWindowPattern` interface with the provided interface.
  ///
  /// Throws a [WindowsException] if the `queryInterface` call fails.
  factory IUIAutomationWindowPattern.from(IUnknown interface) =>
      IUIAutomationWindowPattern(
          interface.toInterface(IID_IUIAutomationWindowPattern));

  /// Closes the window.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationwindowpattern-close>.
  int close() =>
      _vtable.Close.asFunction<int Function(VTablePointer lpVtbl)>()(ptr);

  /// Causes the calling code to block for the specified time or until the
  /// associated process enters an idle state, whichever completes first.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationwindowpattern-waitforinputidle>.
  int waitForInputIdle(int milliseconds, Pointer<BOOL> success) =>
      _vtable.WaitForInputIdle.asFunction<
          int Function(VTablePointer lpVtbl, int milliseconds,
              Pointer<BOOL> success)>()(ptr, milliseconds, success);

  /// Minimizes, maximizes, or restores the window.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationwindowpattern-setwindowvisualstate>.
  int setWindowVisualState(int state) => _vtable.SetWindowVisualState
      .asFunction<int Function(VTablePointer lpVtbl, int state)>()(ptr, state);

  /// Indicates whether the window can be maximized.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationwindowpattern-get_currentcanmaximize>.
  int get currentCanMaximize {
    final retVal = calloc<BOOL>();
    try {
      final hr = _vtable.get_CurrentCanMaximize.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<BOOL> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Indicates whether the window can be minimized.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationwindowpattern-get_currentcanminimize>.
  int get currentCanMinimize {
    final retVal = calloc<BOOL>();
    try {
      final hr = _vtable.get_CurrentCanMinimize.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<BOOL> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Indicates whether the window is modal.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationwindowpattern-get_currentismodal>.
  int get currentIsModal {
    final retVal = calloc<BOOL>();
    try {
      final hr = _vtable.get_CurrentIsModal.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<BOOL> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Indicates whether the window is the topmost element in the z-order.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationwindowpattern-get_currentistopmost>.
  int get currentIsTopmost {
    final retVal = calloc<BOOL>();
    try {
      final hr = _vtable.get_CurrentIsTopmost.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<BOOL> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Retrieves the visual state of the window; that is, whether it is in the
  /// normal, maximized, or minimized state.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationwindowpattern-get_currentwindowvisualstate>.
  int get currentWindowVisualState {
    final retVal = calloc<Int32>();
    try {
      final hr = _vtable.get_CurrentWindowVisualState.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Retrieves the current state of the window for the purposes of user
  /// interaction.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationwindowpattern-get_currentwindowinteractionstate>.
  int get currentWindowInteractionState {
    final retVal = calloc<Int32>();
    try {
      final hr = _vtable.get_CurrentWindowInteractionState.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Retrieves a cached value that indicates whether the window can be maximized.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationwindowpattern-get_cachedcanmaximize>.
  int get cachedCanMaximize {
    final retVal = calloc<BOOL>();
    try {
      final hr = _vtable.get_CachedCanMaximize.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<BOOL> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Retrieves a cached value that indicates whether the window can be minimized.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationwindowpattern-get_cachedcanminimize>.
  int get cachedCanMinimize {
    final retVal = calloc<BOOL>();
    try {
      final hr = _vtable.get_CachedCanMinimize.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<BOOL> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Retrieves a cached value that indicates whether the window is modal.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationwindowpattern-get_cachedismodal>.
  int get cachedIsModal {
    final retVal = calloc<BOOL>();
    try {
      final hr = _vtable.get_CachedIsModal.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<BOOL> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Retrieves a cached value that indicates whether the window is the topmost
  /// element in the z-order.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationwindowpattern-get_cachedistopmost>.
  int get cachedIsTopmost {
    final retVal = calloc<BOOL>();
    try {
      final hr = _vtable.get_CachedIsTopmost.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<BOOL> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Retrieves a cached value that indicates the visual state of the window; that
  /// is, whether it is in the normal, maximized, or minimized state.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationwindowpattern-get_cachedwindowvisualstate>.
  int get cachedWindowVisualState {
    final retVal = calloc<Int32>();
    try {
      final hr = _vtable.get_CachedWindowVisualState.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Retrieves a cached value that indicates the current state of the window for
  /// the purposes of user interaction.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationwindowpattern-get_cachedwindowinteractionstate>.
  int get cachedWindowInteractionState {
    final retVal = calloc<Int32>();
    try {
      final hr = _vtable.get_CachedWindowInteractionState.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }
}

/// @nodoc
base class IUIAutomationWindowPatternVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      Close;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 milliseconds,
              Pointer<BOOL> success)>> WaitForInputIdle;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Int32 state)>>
      SetWindowVisualState;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<BOOL> retVal)>>
      get_CurrentCanMaximize;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<BOOL> retVal)>>
      get_CurrentCanMinimize;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<BOOL> retVal)>>
      get_CurrentIsModal;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<BOOL> retVal)>>
      get_CurrentIsTopmost;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> retVal)>>
      get_CurrentWindowVisualState;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> retVal)>>
      get_CurrentWindowInteractionState;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<BOOL> retVal)>>
      get_CachedCanMaximize;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<BOOL> retVal)>>
      get_CachedCanMinimize;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<BOOL> retVal)>>
      get_CachedIsModal;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<BOOL> retVal)>>
      get_CachedIsTopmost;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> retVal)>>
      get_CachedWindowVisualState;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> retVal)>>
      get_CachedWindowInteractionState;
}
