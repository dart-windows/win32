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
/// {@category com}
class IUIAutomationWindowPattern extends IUnknown {
  IUIAutomationWindowPattern(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationWindowPatternVtbl>().ref;

  final IUIAutomationWindowPatternVtbl _vtable;

  factory IUIAutomationWindowPattern.from(IUnknown interface) =>
      IUIAutomationWindowPattern(
          interface.toInterface(IID_IUIAutomationWindowPattern));

  int close() =>
      _vtable.Close.asFunction<int Function(VTablePointer lpVtbl)>()(ptr);

  int waitForInputIdle(int milliseconds, Pointer<BOOL> success) =>
      _vtable.WaitForInputIdle.asFunction<
          int Function(VTablePointer lpVtbl, int milliseconds,
              Pointer<BOOL> success)>()(ptr, milliseconds, success);

  int setWindowVisualState(int state) => _vtable.SetWindowVisualState
      .asFunction<int Function(VTablePointer lpVtbl, int state)>()(ptr, state);

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
