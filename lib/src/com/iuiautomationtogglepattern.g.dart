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
const IID_IUIAutomationTogglePattern = '{94cf8058-9b8d-4ab9-8bfd-4cd0a33c8c70}';

/// Provides access to a control that can cycle through a set of states, and
/// maintain a state after it is set.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationtogglepattern>.
///
/// {@category com}
class IUIAutomationTogglePattern extends IUnknown {
  IUIAutomationTogglePattern(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationTogglePatternVtbl>().ref;

  final IUIAutomationTogglePatternVtbl _vtable;

  /// Creates a new instance of `IUIAutomationTogglePattern` from an existing
  /// [interface].
  ///
  /// This constructor invokes the [queryInterface] method to obtain a reference
  /// to the `IUIAutomationTogglePattern` interface with the provided interface.
  ///
  /// Throws a [WindowsException] if the `queryInterface` call fails.
  factory IUIAutomationTogglePattern.from(IUnknown interface) =>
      IUIAutomationTogglePattern(
          interface.toInterface(IID_IUIAutomationTogglePattern));

  /// Cycles through the toggle states of the control.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtogglepattern-toggle>.
  int toggle() =>
      _vtable.Toggle.asFunction<int Function(VTablePointer lpVtbl)>()(ptr);

  /// Retrieves the state of the control.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtogglepattern-get_currenttogglestate>.
  int get currentToggleState {
    final retVal = calloc<Int32>();
    try {
      final hr = _vtable.get_CurrentToggleState.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Retrieves the cached state of the control.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtogglepattern-get_cachedtogglestate>.
  int get cachedToggleState {
    final retVal = calloc<Int32>();
    try {
      final hr = _vtable.get_CachedToggleState.asFunction<
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
base class IUIAutomationTogglePatternVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      Toggle;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> retVal)>>
      get_CurrentToggleState;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> retVal)>>
      get_CachedToggleState;
}
