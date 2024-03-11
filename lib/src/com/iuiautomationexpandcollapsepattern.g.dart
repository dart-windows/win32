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
const IID_IUIAutomationExpandCollapsePattern =
    '{619be086-1f4e-4ee4-bafa-210128738730}';

/// Provides access to a control that can visually expand to display content,
/// and collapse to hide content.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationexpandcollapsepattern>.
///
/// {@category com}
class IUIAutomationExpandCollapsePattern extends IUnknown {
  IUIAutomationExpandCollapsePattern(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationExpandCollapsePatternVtbl>().ref;

  final IUIAutomationExpandCollapsePatternVtbl _vtable;

  factory IUIAutomationExpandCollapsePattern.from(IUnknown interface) =>
      IUIAutomationExpandCollapsePattern(
          interface.toInterface(IID_IUIAutomationExpandCollapsePattern));

  /// Displays all child nodes, controls, or content of the element.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationexpandcollapsepattern-expand>.
  int expand() =>
      _vtable.Expand.asFunction<int Function(VTablePointer lpVtbl)>()(ptr);

  /// Hides all child nodes, controls, or content of the element.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationexpandcollapsepattern-collapse>.
  int collapse() =>
      _vtable.Collapse.asFunction<int Function(VTablePointer lpVtbl)>()(ptr);

  /// Retrieves a value that indicates the state, expanded or collapsed, of the
  /// element.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationexpandcollapsepattern-get_currentexpandcollapsestate>.
  int get currentExpandCollapseState {
    final retVal = calloc<Int32>();
    try {
      final hr = _vtable.get_CurrentExpandCollapseState.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Retrieves a cached value that indicates the state, expanded or collapsed, of
  /// the element.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationexpandcollapsepattern-get_cachedexpandcollapsestate>.
  int get cachedExpandCollapseState {
    final retVal = calloc<Int32>();
    try {
      final hr = _vtable.get_CachedExpandCollapseState.asFunction<
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
base class IUIAutomationExpandCollapsePatternVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      Expand;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      Collapse;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> retVal)>>
      get_CurrentExpandCollapseState;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> retVal)>>
      get_CachedExpandCollapseState;
}
