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
import 'iuiautomationcondition.g.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IUIAutomationBoolCondition = '{1b4e1f2e-75eb-4d0b-8952-5a69988e2307}';

/// Represents a condition that can be either TRUE (selects all elements) or
/// FALSE (selects no elements).
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationboolcondition>.
///
/// {@category com}
class IUIAutomationBoolCondition extends IUIAutomationCondition {
  IUIAutomationBoolCondition(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationBoolConditionVtbl>().ref;

  final IUIAutomationBoolConditionVtbl _vtable;

  /// Creates a new instance of `IUIAutomationBoolCondition` from an existing
  /// [interface].
  ///
  /// This constructor invokes the [queryInterface] method to obtain a reference
  /// to the `IUIAutomationBoolCondition` interface with the provided interface.
  ///
  /// Throws a [WindowsException] if the `queryInterface` call fails.
  factory IUIAutomationBoolCondition.from(IUnknown interface) =>
      IUIAutomationBoolCondition(
          interface.toInterface(IID_IUIAutomationBoolCondition));

  /// Retrieves the value of the condition: either TRUE or FALSE.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationboolcondition-get_booleanvalue>.
  int get booleanValue {
    final boolVal = calloc<BOOL>();
    try {
      final hr = _vtable.get_BooleanValue.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<BOOL> boolVal)>()(ptr, boolVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = boolVal.value;
      return retValue;
    } finally {
      free(boolVal);
    }
  }
}

/// @nodoc
base class IUIAutomationBoolConditionVtbl extends Struct {
  external IUIAutomationConditionVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<BOOL> boolVal)>>
      get_BooleanValue;
}
