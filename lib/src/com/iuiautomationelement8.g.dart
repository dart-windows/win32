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
import 'iuiautomationelement7.g.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IUIAutomationElement8 = '{8c60217d-5411-4cde-bcc0-1ceda223830c}';

/// Extends the IUIAutomationElement7 interface.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationelement8>.
///
/// {@category com}
class IUIAutomationElement8 extends IUIAutomationElement7 {
  IUIAutomationElement8(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationElement8Vtbl>().ref;

  final IUIAutomationElement8Vtbl _vtable;

  /// Creates a new instance of `IUIAutomationElement8` from an existing
  /// [interface].
  ///
  /// This constructor invokes the [queryInterface] method to obtain a reference
  /// to the `IUIAutomationElement8` interface with the provided interface.
  ///
  /// Throws a [WindowsException] if the `queryInterface` call fails.
  factory IUIAutomationElement8.from(IUnknown interface) =>
      IUIAutomationElement8(interface.toInterface(IID_IUIAutomationElement8));

  /// Gets the current heading level of the automation element.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement8-get_currentheadinglevel>.
  int get currentHeadingLevel {
    final retVal = calloc<Int32>();
    try {
      final hr = _vtable.get_CurrentHeadingLevel.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Gets the cached heading level of the automation element.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement8-get_cachedheadinglevel>.
  int get cachedHeadingLevel {
    final retVal = calloc<Int32>();
    try {
      final hr = _vtable.get_CachedHeadingLevel.asFunction<
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
base class IUIAutomationElement8Vtbl extends Struct {
  external IUIAutomationElement7Vtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> retVal)>>
      get_CurrentHeadingLevel;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> retVal)>>
      get_CachedHeadingLevel;
}
