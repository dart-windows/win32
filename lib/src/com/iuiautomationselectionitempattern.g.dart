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
const IID_IUIAutomationSelectionItemPattern =
    '{a8efa66a-0fda-421a-9194-38021f3578ea}';

/// Provides access to the selectable child items of a container control that
/// supports IUIAutomationSelectionPattern.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationselectionitempattern>.
///
/// {@category com}
class IUIAutomationSelectionItemPattern extends IUnknown {
  IUIAutomationSelectionItemPattern(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationSelectionItemPatternVtbl>().ref;

  final IUIAutomationSelectionItemPatternVtbl _vtable;

  /// Creates a new instance of `IUIAutomationSelectionItemPattern` from an
  /// existing [interface].
  ///
  /// This constructor invokes the [queryInterface] method to obtain a reference
  /// to the `IUIAutomationSelectionItemPattern` interface with the provided
  /// interface.
  ///
  /// Throws a [WindowsException] if the `queryInterface` call fails.
  factory IUIAutomationSelectionItemPattern.from(IUnknown interface) =>
      IUIAutomationSelectionItemPattern(
          interface.toInterface(IID_IUIAutomationSelectionItemPattern));

  /// Clears any selected items and then selects the current element.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationselectionitempattern-select>.
  int select() =>
      _vtable.Select.asFunction<int Function(VTablePointer lpVtbl)>()(ptr);

  /// Adds the current element to the collection of selected items.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationselectionitempattern-addtoselection>.
  int addToSelection() =>
      _vtable.AddToSelection.asFunction<int Function(VTablePointer lpVtbl)>()(
          ptr);

  /// Removes this element from the selection.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationselectionitempattern-removefromselection>.
  int removeFromSelection() => _vtable.RemoveFromSelection.asFunction<
      int Function(VTablePointer lpVtbl)>()(ptr);

  /// Indicates whether this item is selected.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationselectionitempattern-get_currentisselected>.
  int get currentIsSelected {
    final retVal = calloc<BOOL>();
    try {
      final hr = _vtable.get_CurrentIsSelected.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<BOOL> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Retrieves the element that supports IUIAutomationSelectionPattern and acts
  /// as the container for this item.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationselectionitempattern-get_currentselectioncontainer>.
  VTablePointer get currentSelectionContainer {
    final retVal = calloc<VTablePointer>();
    try {
      final hr = _vtable.get_CurrentSelectionContainer.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// A cached value that indicates whether this item is selected.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationselectionitempattern-get_cachedisselected>.
  int get cachedIsSelected {
    final retVal = calloc<BOOL>();
    try {
      final hr = _vtable.get_CachedIsSelected.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<BOOL> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Retrieves the cached element that supports IUIAutomationSelectionPattern and
  /// acts as the container for this item.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationselectionitempattern-get_cachedselectioncontainer>.
  VTablePointer get cachedSelectionContainer {
    final retVal = calloc<VTablePointer>();
    try {
      final hr = _vtable.get_CachedSelectionContainer.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }
}

/// @nodoc
base class IUIAutomationSelectionItemPatternVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      Select;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      AddToSelection;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      RemoveFromSelection;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<BOOL> retVal)>>
      get_CurrentIsSelected;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> retVal)>>
      get_CurrentSelectionContainer;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<BOOL> retVal)>>
      get_CachedIsSelected;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> retVal)>>
      get_CachedSelectionContainer;
}
