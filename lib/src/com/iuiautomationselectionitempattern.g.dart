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

  factory IUIAutomationSelectionItemPattern.from(IUnknown interface) =>
      IUIAutomationSelectionItemPattern(
          interface.toInterface(IID_IUIAutomationSelectionItemPattern));

  int select() =>
      _vtable.Select.asFunction<int Function(VTablePointer lpVtbl)>()(ptr);

  int addToSelection() =>
      _vtable.AddToSelection.asFunction<int Function(VTablePointer lpVtbl)>()(
          ptr);

  int removeFromSelection() => _vtable.RemoveFromSelection.asFunction<
      int Function(VTablePointer lpVtbl)>()(ptr);

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
