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
import 'iuiautomationelement.g.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IUIAutomationElement2 = '{6749c683-f70d-4487-a698-5f79d55290d6}';

/// Extends the IUIAutomationElement interface.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationelement2>.
///
/// {@category com}
class IUIAutomationElement2 extends IUIAutomationElement {
  IUIAutomationElement2(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationElement2Vtbl>().ref;

  final IUIAutomationElement2Vtbl _vtable;

  /// Creates a new instance of `IUIAutomationElement2` from an existing
  /// [interface].
  ///
  /// This constructor invokes the [queryInterface] method to obtain a reference
  /// to the `IUIAutomationElement2` interface with the provided interface.
  ///
  /// Throws a [WindowsException] if the `queryInterface` call fails.
  factory IUIAutomationElement2.from(IUnknown interface) =>
      IUIAutomationElement2(interface.toInterface(IID_IUIAutomationElement2));

  /// Indicates whether the provider exposes only elements that are visible.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement2-get_currentoptimizeforvisualcontent>.
  int get currentOptimizeForVisualContent {
    final retVal = calloc<BOOL>();
    try {
      final hr = _vtable.get_CurrentOptimizeForVisualContent.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<BOOL> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Retrieves a cached value that indicates whether the provider exposes only
  /// elements that are visible.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement2-get_cachedoptimizeforvisualcontent>.
  int get cachedOptimizeForVisualContent {
    final retVal = calloc<BOOL>();
    try {
      final hr = _vtable.get_CachedOptimizeForVisualContent.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<BOOL> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Indicates the type of notifications, if any, that the element sends when the
  /// content of the element changes.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement2-get_currentlivesetting>.
  int get currentLiveSetting {
    final retVal = calloc<Int32>();
    try {
      final hr = _vtable.get_CurrentLiveSetting.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Retrieves a cached value that indicates the type of notifications, if any,
  /// that the element sends when the content of the element changes.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement2-get_cachedlivesetting>.
  int get cachedLiveSetting {
    final retVal = calloc<Int32>();
    try {
      final hr = _vtable.get_CachedLiveSetting.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Retrieves an array of elements that indicates the reading order before the
  /// current element.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement2-get_currentflowsfrom>.
  VTablePointer get currentFlowsFrom {
    final retVal = calloc<VTablePointer>();
    try {
      final hr = _vtable.get_CurrentFlowsFrom.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Retrieves a cached array of elements that indicate the reading order before
  /// the current element.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement2-get_cachedflowsfrom>.
  VTablePointer get cachedFlowsFrom {
    final retVal = calloc<VTablePointer>();
    try {
      final hr = _vtable.get_CachedFlowsFrom.asFunction<
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
base class IUIAutomationElement2Vtbl extends Struct {
  external IUIAutomationElementVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<BOOL> retVal)>>
      get_CurrentOptimizeForVisualContent;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<BOOL> retVal)>>
      get_CachedOptimizeForVisualContent;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> retVal)>>
      get_CurrentLiveSetting;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> retVal)>>
      get_CachedLiveSetting;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> retVal)>>
      get_CurrentFlowsFrom;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> retVal)>>
      get_CachedFlowsFrom;
}
