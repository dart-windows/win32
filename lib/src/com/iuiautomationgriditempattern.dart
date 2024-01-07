// iuiautomationgriditempattern.dart

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
const IID_IUIAutomationGridItemPattern =
    '{78f8ef57-66c3-4e09-bd7c-e79b2004894d}';

/// Provides access to a child control in a grid-style container that
/// supports the IUIAutomationGridPattern interface.
///
/// {@category com}
class IUIAutomationGridItemPattern extends IUnknown {
  IUIAutomationGridItemPattern(super.ptr)
      : _vtable = ptr.value.value.cast<IUIAutomationGridItemPatternVtbl>().ref;

  final IUIAutomationGridItemPatternVtbl _vtable;

  factory IUIAutomationGridItemPattern.from(IUnknown interface) =>
      IUIAutomationGridItemPattern(
          interface.toInterface(IID_IUIAutomationGridItemPattern));

  Pointer<VTablePointer> get currentContainingGrid {
    final retValuePtr = calloc<VTablePointer>();

    final hr = _vtable.get_CurrentContainingGrid.asFunction<
            int Function(VTablePointer, Pointer<VTablePointer> retVal)>()(
        ptr.value, retValuePtr);
    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }

  int get currentRow {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CurrentRow
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr.value, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get currentColumn {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CurrentColumn
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr.value, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get currentRowSpan {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CurrentRowSpan
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr.value, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get currentColumnSpan {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CurrentColumnSpan
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr.value, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<VTablePointer> get cachedContainingGrid {
    final retValuePtr = calloc<VTablePointer>();

    final hr = _vtable.get_CachedContainingGrid.asFunction<
            int Function(VTablePointer, Pointer<VTablePointer> retVal)>()(
        ptr.value, retValuePtr);
    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }

  int get cachedRow {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CachedRow
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr.value, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get cachedColumn {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CachedColumn
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr.value, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get cachedRowSpan {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CachedRowSpan
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr.value, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get cachedColumnSpan {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CachedColumnSpan
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
base class IUIAutomationGridItemPatternVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> retVal)>>
      get_CurrentContainingGrid;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CurrentRow;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CurrentColumn;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CurrentRowSpan;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CurrentColumnSpan;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> retVal)>>
      get_CachedContainingGrid;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CachedRow;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CachedColumn;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CachedRowSpan;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CachedColumnSpan;
}
