// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../exceptions.dart';
import '../extensions/iunknown.dart';
import '../structs.g.dart';
import '../types.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IUIAutomationTableItemPattern =
    '{0b964eb3-ef2e-4464-9c79-61d61737a27e}';

/// Provides access to a child element in a container that supports
/// IUIAutomationTablePattern.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationtableitempattern>.
///
/// {@category com}
class IUIAutomationTableItemPattern extends IUnknown {
  IUIAutomationTableItemPattern(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationTableItemPatternVtbl>().ref;

  final IUIAutomationTableItemPatternVtbl _vtable;

  /// Creates a new instance of `IUIAutomationTableItemPattern` from an existing
  /// [interface].
  ///
  /// This constructor invokes the [queryInterface] method to obtain a reference
  /// to the `IUIAutomationTableItemPattern` interface with the provided
  /// interface.
  ///
  /// Throws a [WindowsException] if the `queryInterface` call fails.
  factory IUIAutomationTableItemPattern.from(IUnknown interface) =>
      IUIAutomationTableItemPattern(
          interface.toInterface(IID_IUIAutomationTableItemPattern));

  /// Retrieves the row headers associated with a table item or cell.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtableitempattern-getcurrentrowheaderitems>.
  int getCurrentRowHeaderItems(Pointer<VTablePointer> retVal) =>
      _vtable.GetCurrentRowHeaderItems.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> retVal)>()(ptr, retVal);

  /// Retrieves the column headers associated with a table item or cell.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtableitempattern-getcurrentcolumnheaderitems>.
  int getCurrentColumnHeaderItems(Pointer<VTablePointer> retVal) =>
      _vtable.GetCurrentColumnHeaderItems.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> retVal)>()(ptr, retVal);

  /// Retrieves the cached row headers associated with a table item or cell.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtableitempattern-getcachedrowheaderitems>.
  int getCachedRowHeaderItems(Pointer<VTablePointer> retVal) =>
      _vtable.GetCachedRowHeaderItems.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> retVal)>()(ptr, retVal);

  /// Retrieves the cached column headers associated with a table item or cell.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtableitempattern-getcachedcolumnheaderitems>.
  int getCachedColumnHeaderItems(Pointer<VTablePointer> retVal) =>
      _vtable.GetCachedColumnHeaderItems.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> retVal)>()(ptr, retVal);
}

/// @nodoc
base class IUIAutomationTableItemPatternVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> retVal)>>
      GetCurrentRowHeaderItems;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> retVal)>>
      GetCurrentColumnHeaderItems;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> retVal)>>
      GetCachedRowHeaderItems;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> retVal)>>
      GetCachedColumnHeaderItems;
}
