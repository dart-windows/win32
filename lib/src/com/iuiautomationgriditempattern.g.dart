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
const IID_IUIAutomationGridItemPattern =
    '{78f8ef57-66c3-4e09-bd7c-e79b2004894d}';

/// Provides access to a child control in a grid-style container that supports
/// the IUIAutomationGridPattern interface.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationgriditempattern>.
///
/// {@category com}
class IUIAutomationGridItemPattern extends IUnknown {
  IUIAutomationGridItemPattern(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationGridItemPatternVtbl>().ref;

  final IUIAutomationGridItemPatternVtbl _vtable;

  /// Creates a new instance of `IUIAutomationGridItemPattern` from an existing
  /// [interface].
  ///
  /// This constructor invokes the [queryInterface] method to obtain a reference
  /// to the `IUIAutomationGridItemPattern` interface with the provided
  /// interface.
  ///
  /// Throws a [WindowsException] if the `queryInterface` call fails.
  factory IUIAutomationGridItemPattern.from(IUnknown interface) =>
      IUIAutomationGridItemPattern(
          interface.toInterface(IID_IUIAutomationGridItemPattern));

  /// Retrieves the element that contains the grid item.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationgriditempattern-get_currentcontaininggrid>.
  VTablePointer get currentContainingGrid {
    final retVal = calloc<VTablePointer>();
    try {
      final hr = _vtable.get_CurrentContainingGrid.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Retrieves the zero-based index of the row that contains the grid item.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationgriditempattern-get_currentrow>.
  int get currentRow {
    final retVal = calloc<Int32>();
    try {
      final hr = _vtable.get_CurrentRow.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Retrieves the zero-based index of the column that contains the item.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationgriditempattern-get_currentcolumn>.
  int get currentColumn {
    final retVal = calloc<Int32>();
    try {
      final hr = _vtable.get_CurrentColumn.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Retrieves the number of rows spanned by the grid item.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationgriditempattern-get_currentrowspan>.
  int get currentRowSpan {
    final retVal = calloc<Int32>();
    try {
      final hr = _vtable.get_CurrentRowSpan.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Retrieves the number of columns spanned by the grid item.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationgriditempattern-get_currentcolumnspan>.
  int get currentColumnSpan {
    final retVal = calloc<Int32>();
    try {
      final hr = _vtable.get_CurrentColumnSpan.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Retrieves the cached element that contains the grid item.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationgriditempattern-get_cachedcontaininggrid>.
  VTablePointer get cachedContainingGrid {
    final retVal = calloc<VTablePointer>();
    try {
      final hr = _vtable.get_CachedContainingGrid.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Retrieves the cached zero-based index of the row that contains the item.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationgriditempattern-get_cachedrow>.
  int get cachedRow {
    final retVal = calloc<Int32>();
    try {
      final hr = _vtable.get_CachedRow.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Retrieves the cached zero-based index of the column that contains the grid
  /// item.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationgriditempattern-get_cachedcolumn>.
  int get cachedColumn {
    final retVal = calloc<Int32>();
    try {
      final hr = _vtable.get_CachedColumn.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Retrieves the cached number of rows spanned by a grid item.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationgriditempattern-get_cachedrowspan>.
  int get cachedRowSpan {
    final retVal = calloc<Int32>();
    try {
      final hr = _vtable.get_CachedRowSpan.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Retrieves the cached number of columns spanned by the grid item.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationgriditempattern-get_cachedcolumnspan>.
  int get cachedColumnSpan {
    final retVal = calloc<Int32>();
    try {
      final hr = _vtable.get_CachedColumnSpan.asFunction<
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
base class IUIAutomationGridItemPatternVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> retVal)>>
      get_CurrentContainingGrid;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> retVal)>>
      get_CurrentRow;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> retVal)>>
      get_CurrentColumn;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> retVal)>>
      get_CurrentRowSpan;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> retVal)>>
      get_CurrentColumnSpan;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> retVal)>>
      get_CachedContainingGrid;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> retVal)>>
      get_CachedRow;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> retVal)>>
      get_CachedColumn;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> retVal)>>
      get_CachedRowSpan;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> retVal)>>
      get_CachedColumnSpan;
}
