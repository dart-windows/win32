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
const IID_IUIAutomationDragPattern = '{1dc7b570-1f54-4bad-bcda-d36a722fb7bd}';

/// Provides access to information exposed by a UI Automation provider for an
/// element that can be dragged as part of a drag-and-drop operation.
///
/// {@category com}
class IUIAutomationDragPattern extends IUnknown {
  IUIAutomationDragPattern(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationDragPatternVtbl>().ref;

  final IUIAutomationDragPatternVtbl _vtable;

  factory IUIAutomationDragPattern.from(IUnknown interface) =>
      IUIAutomationDragPattern(
          interface.toInterface(IID_IUIAutomationDragPattern));

  int get currentIsGrabbed {
    final retVal = calloc<BOOL>();
    try {
      final hr = _vtable.get_CurrentIsGrabbed.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<BOOL> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  int get cachedIsGrabbed {
    final retVal = calloc<BOOL>();
    try {
      final hr = _vtable.get_CachedIsGrabbed.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<BOOL> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  BSTR get currentDropEffect {
    final retVal = calloc<BSTR>();
    try {
      final hr = _vtable.get_CurrentDropEffect.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<BSTR> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  BSTR get cachedDropEffect {
    final retVal = calloc<BSTR>();
    try {
      final hr = _vtable.get_CachedDropEffect.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<BSTR> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  Pointer<SAFEARRAY> get currentDropEffects {
    final retVal = calloc<Pointer<SAFEARRAY>>();
    try {
      final hr = _vtable.get_CurrentDropEffects.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<SAFEARRAY>> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  Pointer<SAFEARRAY> get cachedDropEffects {
    final retVal = calloc<Pointer<SAFEARRAY>>();
    try {
      final hr = _vtable.get_CachedDropEffects.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<SAFEARRAY>> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  int getCurrentGrabbedItems(Pointer<VTablePointer> retVal) =>
      _vtable.GetCurrentGrabbedItems.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> retVal)>()(ptr, retVal);

  int getCachedGrabbedItems(Pointer<VTablePointer> retVal) =>
      _vtable.GetCachedGrabbedItems.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> retVal)>()(ptr, retVal);
}

/// @nodoc
base class IUIAutomationDragPatternVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<BOOL> retVal)>>
      get_CurrentIsGrabbed;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<BOOL> retVal)>>
      get_CachedIsGrabbed;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<BSTR> retVal)>>
      get_CurrentDropEffect;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<BSTR> retVal)>>
      get_CachedDropEffect;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Pointer<SAFEARRAY>> retVal)>>
      get_CurrentDropEffects;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Pointer<SAFEARRAY>> retVal)>>
      get_CachedDropEffects;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> retVal)>>
      GetCurrentGrabbedItems;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> retVal)>>
      GetCachedGrabbedItems;
}
