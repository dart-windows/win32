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
const IID_IUIAutomationSelectionPattern =
    '{5ed5202e-b2ac-47a6-b638-4b0bf140d78e}';

/// Provides access to a control that contains selectable child items.
///
/// The children of this element support IUIAutomationSelectionItemPattern.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationselectionpattern>.
///
/// {@category com}
class IUIAutomationSelectionPattern extends IUnknown {
  IUIAutomationSelectionPattern(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationSelectionPatternVtbl>().ref;

  final IUIAutomationSelectionPatternVtbl _vtable;

  /// Creates a new instance of `IUIAutomationSelectionPattern` from an existing
  /// [interface].
  ///
  /// This constructor invokes the [queryInterface] method to obtain a reference
  /// to the `IUIAutomationSelectionPattern` interface with the provided
  /// interface.
  ///
  /// Throws a [WindowsException] if the `queryInterface` call fails.
  factory IUIAutomationSelectionPattern.from(IUnknown interface) =>
      IUIAutomationSelectionPattern(
          interface.toInterface(IID_IUIAutomationSelectionPattern));

  /// Retrieves the selected elements in the container.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationselectionpattern-getcurrentselection>.
  int getCurrentSelection(Pointer<VTablePointer> retVal) =>
      _vtable.GetCurrentSelection.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> retVal)>()(ptr, retVal);

  /// Indicates whether more than one item in the container can be selected at one
  /// time.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationselectionpattern-get_currentcanselectmultiple>.
  int get currentCanSelectMultiple {
    final retVal = calloc<BOOL>();
    try {
      final hr = _vtable.get_CurrentCanSelectMultiple.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<BOOL> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Indicates whether at least one item must be selected at all times.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationselectionpattern-get_currentisselectionrequired>.
  int get currentIsSelectionRequired {
    final retVal = calloc<BOOL>();
    try {
      final hr = _vtable.get_CurrentIsSelectionRequired.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<BOOL> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Retrieves the cached selected elements in the container.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationselectionpattern-getcachedselection>.
  int getCachedSelection(Pointer<VTablePointer> retVal) =>
      _vtable.GetCachedSelection.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> retVal)>()(ptr, retVal);

  /// Retrieves a cached value that indicates whether more than one item in the
  /// container can be selected at one time.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationselectionpattern-get_cachedcanselectmultiple>.
  int get cachedCanSelectMultiple {
    final retVal = calloc<BOOL>();
    try {
      final hr = _vtable.get_CachedCanSelectMultiple.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<BOOL> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Retrieves a cached value that indicates whether at least one item must be
  /// selected at all times.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationselectionpattern-get_cachedisselectionrequired>.
  int get cachedIsSelectionRequired {
    final retVal = calloc<BOOL>();
    try {
      final hr = _vtable.get_CachedIsSelectionRequired.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<BOOL> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }
}

/// @nodoc
base class IUIAutomationSelectionPatternVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> retVal)>>
      GetCurrentSelection;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<BOOL> retVal)>>
      get_CurrentCanSelectMultiple;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<BOOL> retVal)>>
      get_CurrentIsSelectionRequired;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> retVal)>>
      GetCachedSelection;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<BOOL> retVal)>>
      get_CachedCanSelectMultiple;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<BOOL> retVal)>>
      get_CachedIsSelectionRequired;
}