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
import 'iuiautomationelement2.g.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IUIAutomationElement3 = '{8471df34-aee0-4a01-a7de-7db9af12c296}';

/// Extends the IUIAutomationElement2 interface.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationelement3>.
///
/// {@category com}
class IUIAutomationElement3 extends IUIAutomationElement2 {
  IUIAutomationElement3(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationElement3Vtbl>().ref;

  final IUIAutomationElement3Vtbl _vtable;

  factory IUIAutomationElement3.from(IUnknown interface) =>
      IUIAutomationElement3(interface.toInterface(IID_IUIAutomationElement3));

  int showContextMenu() =>
      _vtable.ShowContextMenu.asFunction<int Function(VTablePointer lpVtbl)>()(
          ptr);

  int get currentIsPeripheral {
    final retVal = calloc<BOOL>();
    try {
      final hr = _vtable.get_CurrentIsPeripheral.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<BOOL> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  int get cachedIsPeripheral {
    final retVal = calloc<BOOL>();
    try {
      final hr = _vtable.get_CachedIsPeripheral.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<BOOL> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }
}

/// @nodoc
base class IUIAutomationElement3Vtbl extends Struct {
  external IUIAutomationElement2Vtbl baseVtbl;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      ShowContextMenu;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<BOOL> retVal)>>
      get_CurrentIsPeripheral;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<BOOL> retVal)>>
      get_CachedIsPeripheral;
}