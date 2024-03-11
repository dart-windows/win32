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
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationdragpattern>.
///
/// {@category com}
class IUIAutomationDragPattern extends IUnknown {
  IUIAutomationDragPattern(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationDragPatternVtbl>().ref;

  final IUIAutomationDragPatternVtbl _vtable;

  /// Creates a new instance of `IUIAutomationDragPattern` from an existing
  /// [interface].
  ///
  /// This constructor invokes the [queryInterface] method to obtain a reference
  /// to the `IUIAutomationDragPattern` interface with the provided interface.
  ///
  /// Throws a [WindowsException] if the `queryInterface` call fails.
  factory IUIAutomationDragPattern.from(IUnknown interface) =>
      IUIAutomationDragPattern(
          interface.toInterface(IID_IUIAutomationDragPattern));

  /// Indicates whether the user has grabbed this element as part of a
  /// drag-and-drop operation.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationdragpattern-get_currentisgrabbed>.
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

  /// Retrieves a cached value that indicates whether this element has been
  /// grabbed as part of a drag-and-drop operation.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationdragpattern-get_cachedisgrabbed>.
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

  /// Retrieves a localized string that indicates what happens when the user drops
  /// this element as part of a drag-drop operation.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationdragpattern-get_currentdropeffect>.
  Pointer<Utf16> get currentDropEffect {
    final retVal = calloc<Pointer<Utf16>>();
    try {
      final hr = _vtable.get_CurrentDropEffect.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<Utf16>> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Retrieves a cached localized string that indicates what happens when the
  /// user drops this element as part of a drag-and-drop operation.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationdragpattern-get_cacheddropeffect>.
  Pointer<Utf16> get cachedDropEffect {
    final retVal = calloc<Pointer<Utf16>>();
    try {
      final hr = _vtable.get_CachedDropEffect.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<Utf16>> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Retrieves an array of localized strings that enumerate the full set of
  /// effects that can happen when this element as part of a drag-and-drop
  /// operation.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationdragpattern-get_currentdropeffects>.
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

  /// Retrieves a cached array of localized strings that enumerate the full set of
  /// effects that can happen when the user drops this element as part of a
  /// drag-and-drop operation.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationdragpattern-get_cacheddropeffects>.
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

  /// Retrieves a collection of elements that represent the full set of items that
  /// the user is dragging as part of a drag operation.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationdragpattern-getcurrentgrabbeditems>.
  int getCurrentGrabbedItems(Pointer<VTablePointer> retVal) =>
      _vtable.GetCurrentGrabbedItems.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> retVal)>()(ptr, retVal);

  /// Retrieves a cached collection of elements that represent the full set of
  /// items that the user is dragging as part of a drag operation.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationdragpattern-getcachedgrabbeditems>.
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
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Pointer<Utf16>> retVal)>>
      get_CurrentDropEffect;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Pointer<Utf16>> retVal)>>
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
