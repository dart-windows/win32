// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

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

  factory IUIAutomationTableItemPattern.from(IUnknown interface) =>
      IUIAutomationTableItemPattern(
          interface.toInterface(IID_IUIAutomationTableItemPattern));

  int getCurrentRowHeaderItems(Pointer<VTablePointer> retVal) =>
      _vtable.GetCurrentRowHeaderItems.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> retVal)>()(ptr, retVal);

  int getCurrentColumnHeaderItems(Pointer<VTablePointer> retVal) =>
      _vtable.GetCurrentColumnHeaderItems.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> retVal)>()(ptr, retVal);

  int getCachedRowHeaderItems(Pointer<VTablePointer> retVal) =>
      _vtable.GetCachedRowHeaderItems.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> retVal)>()(ptr, retVal);

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