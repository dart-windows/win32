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
const IID_IUIAutomationMultipleViewPattern =
    '{8d253c91-1dc5-4bb5-b18f-ade16fa495e8}';

/// Provides access to a control that can switch between multiple
/// representations of the same information or set of child controls.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationmultipleviewpattern>.
///
/// {@category com}
class IUIAutomationMultipleViewPattern extends IUnknown {
  IUIAutomationMultipleViewPattern(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationMultipleViewPatternVtbl>().ref;

  final IUIAutomationMultipleViewPatternVtbl _vtable;

  factory IUIAutomationMultipleViewPattern.from(IUnknown interface) =>
      IUIAutomationMultipleViewPattern(
          interface.toInterface(IID_IUIAutomationMultipleViewPattern));

  int getViewName(int view, Pointer<Pointer<Utf16>> name) =>
      _vtable.GetViewName.asFunction<
          int Function(VTablePointer lpVtbl, int view,
              Pointer<Pointer<Utf16>> name)>()(ptr, view, name);

  int setCurrentView(int view) => _vtable.SetCurrentView.asFunction<
      int Function(VTablePointer lpVtbl, int view)>()(ptr, view);

  int get currentCurrentView {
    final retVal = calloc<Int32>();
    try {
      final hr = _vtable.get_CurrentCurrentView.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  int getCurrentSupportedViews(Pointer<Pointer<SAFEARRAY>> retVal) =>
      _vtable.GetCurrentSupportedViews.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<SAFEARRAY>> retVal)>()(ptr, retVal);

  int get cachedCurrentView {
    final retVal = calloc<Int32>();
    try {
      final hr = _vtable.get_CachedCurrentView.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  int getCachedSupportedViews(Pointer<Pointer<SAFEARRAY>> retVal) =>
      _vtable.GetCachedSupportedViews.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<SAFEARRAY>> retVal)>()(ptr, retVal);
}

/// @nodoc
base class IUIAutomationMultipleViewPatternVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 view,
              Pointer<Pointer<Utf16>> name)>> GetViewName;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Int32 view)>>
      SetCurrentView;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> retVal)>>
      get_CurrentCurrentView;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Pointer<SAFEARRAY>> retVal)>>
      GetCurrentSupportedViews;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> retVal)>>
      get_CachedCurrentView;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Pointer<SAFEARRAY>> retVal)>>
      GetCachedSupportedViews;
}