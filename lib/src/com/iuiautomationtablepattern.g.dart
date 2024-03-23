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
const IID_IUIAutomationTablePattern = '{620e691c-ea96-4710-a850-754b24ce2417}';

/// Provides access to a control that acts as a container for a collection of
/// child elements.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationtablepattern>.
///
/// {@category com}
class IUIAutomationTablePattern extends IUnknown {
  IUIAutomationTablePattern(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationTablePatternVtbl>().ref;

  final IUIAutomationTablePatternVtbl _vtable;

  /// Creates a new instance of `IUIAutomationTablePattern` from an existing
  /// [interface].
  ///
  /// This constructor invokes the [queryInterface] method to obtain a reference
  /// to the `IUIAutomationTablePattern` interface with the provided interface.
  ///
  /// Throws a [WindowsException] if the `queryInterface` call fails.
  factory IUIAutomationTablePattern.from(IUnknown interface) =>
      IUIAutomationTablePattern(
          interface.toInterface(IID_IUIAutomationTablePattern));

  /// Retrieves a collection of UI Automation elements representing all the row
  /// headers in a table.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtablepattern-getcurrentrowheaders>.
  int getCurrentRowHeaders(Pointer<VTablePointer> retVal) =>
      _vtable.GetCurrentRowHeaders.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> retVal)>()(ptr, retVal);

  /// Retrieves a collection of UI Automation elements representing all the column
  /// headers in a table.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtablepattern-getcurrentcolumnheaders>.
  int getCurrentColumnHeaders(Pointer<VTablePointer> retVal) =>
      _vtable.GetCurrentColumnHeaders.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> retVal)>()(ptr, retVal);

  /// Retrieves the primary direction of traversal for the table.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtablepattern-get_currentroworcolumnmajor>.
  int get currentRowOrColumnMajor {
    final retVal = calloc<Int32>();
    try {
      final hr = _vtable.get_CurrentRowOrColumnMajor.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Retrieves a cached collection of UI Automation elements representing all the
  /// row headers in a table.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtablepattern-getcachedrowheaders>.
  int getCachedRowHeaders(Pointer<VTablePointer> retVal) =>
      _vtable.GetCachedRowHeaders.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> retVal)>()(ptr, retVal);

  /// Retrieves a cached collection of UI Automation elements representing all the
  /// column headers in a table.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtablepattern-getcachedcolumnheaders>.
  int getCachedColumnHeaders(Pointer<VTablePointer> retVal) =>
      _vtable.GetCachedColumnHeaders.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> retVal)>()(ptr, retVal);

  /// Retrieves the cached primary direction of traversal for the table.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtablepattern-get_cachedroworcolumnmajor>.
  int get cachedRowOrColumnMajor {
    final retVal = calloc<Int32>();
    try {
      final hr = _vtable.get_CachedRowOrColumnMajor.asFunction<
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
base class IUIAutomationTablePatternVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> retVal)>>
      GetCurrentRowHeaders;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> retVal)>>
      GetCurrentColumnHeaders;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> retVal)>>
      get_CurrentRowOrColumnMajor;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> retVal)>>
      GetCachedRowHeaders;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> retVal)>>
      GetCachedColumnHeaders;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> retVal)>>
      get_CachedRowOrColumnMajor;
}