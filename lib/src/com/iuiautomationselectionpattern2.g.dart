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
import 'iuiautomationselectionpattern.g.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IUIAutomationSelectionPattern2 =
    '{0532bfae-c011-4e32-a343-6d642d798555}';

/// Extends the IUIAutomationSelectionPattern interface to provide information
/// about selected items.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationselectionpattern2>.
///
/// {@category com}
class IUIAutomationSelectionPattern2 extends IUIAutomationSelectionPattern {
  IUIAutomationSelectionPattern2(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationSelectionPattern2Vtbl>().ref;

  final IUIAutomationSelectionPattern2Vtbl _vtable;

  factory IUIAutomationSelectionPattern2.from(IUnknown interface) =>
      IUIAutomationSelectionPattern2(
          interface.toInterface(IID_IUIAutomationSelectionPattern2));

  /// Gets an IUIAutomationElement object representing the first item in a group
  /// of selected items.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationselectionpattern2-get_currentfirstselecteditem>.
  VTablePointer get currentFirstSelectedItem {
    final retVal = calloc<VTablePointer>();
    try {
      final hr = _vtable.get_CurrentFirstSelectedItem.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Gets an IUIAutomationElement object representing the last item in a group of
  /// selected items.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationselectionpattern2-get_currentlastselecteditem>.
  VTablePointer get currentLastSelectedItem {
    final retVal = calloc<VTablePointer>();
    try {
      final hr = _vtable.get_CurrentLastSelectedItem.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Gets an IUIAutomationElement object representing the currently selected
  /// item.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationselectionpattern2-get_currentcurrentselecteditem>.
  VTablePointer get currentCurrentSelectedItem {
    final retVal = calloc<VTablePointer>();
    try {
      final hr = _vtable.get_CurrentCurrentSelectedItem.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Gets an integer value indicating the number of selected items.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationselectionpattern2-get_currentitemcount>.
  int get currentItemCount {
    final retVal = calloc<Int32>();
    try {
      final hr = _vtable.get_CurrentItemCount.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Gets a cached IUIAutomationElement object representing the first item in a
  /// group of selected items.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationselectionpattern2-get_cachedfirstselecteditem>.
  VTablePointer get cachedFirstSelectedItem {
    final retVal = calloc<VTablePointer>();
    try {
      final hr = _vtable.get_CachedFirstSelectedItem.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Gets a cached IUIAutomationElement object representing the last item in a
  /// group of selected items.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationselectionpattern2-get_cachedlastselecteditem>.
  VTablePointer get cachedLastSelectedItem {
    final retVal = calloc<VTablePointer>();
    try {
      final hr = _vtable.get_CachedLastSelectedItem.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Gets a cached IUIAutomationElement object representing the currently
  /// selected item.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationselectionpattern2-get_cachedcurrentselecteditem>.
  VTablePointer get cachedCurrentSelectedItem {
    final retVal = calloc<VTablePointer>();
    try {
      final hr = _vtable.get_CachedCurrentSelectedItem.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Gets a cached integer value indicating the number of selected items.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationselectionpattern2-get_cacheditemcount>.
  int get cachedItemCount {
    final retVal = calloc<Int32>();
    try {
      final hr = _vtable.get_CachedItemCount.asFunction<
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
base class IUIAutomationSelectionPattern2Vtbl extends Struct {
  external IUIAutomationSelectionPatternVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> retVal)>>
      get_CurrentFirstSelectedItem;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> retVal)>>
      get_CurrentLastSelectedItem;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> retVal)>>
      get_CurrentCurrentSelectedItem;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> retVal)>>
      get_CurrentItemCount;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> retVal)>>
      get_CachedFirstSelectedItem;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> retVal)>>
      get_CachedLastSelectedItem;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> retVal)>>
      get_CachedCurrentSelectedItem;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> retVal)>>
      get_CachedItemCount;
}
