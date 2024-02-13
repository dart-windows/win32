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
import '../types.dart';
import '../utils.dart';
import 'iuiautomationcondition.g.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IUIAutomationBoolCondition = '{1b4e1f2e-75eb-4d0b-8952-5a69988e2307}';

/// Represents a condition that can be either TRUE (selects all elements) or
/// FALSE (selects no elements).
///
/// {@category com}
class IUIAutomationBoolCondition extends IUIAutomationCondition {
  IUIAutomationBoolCondition(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationBoolConditionVtbl>().ref;

  final IUIAutomationBoolConditionVtbl _vtable;

  factory IUIAutomationBoolCondition.from(IUnknown interface) =>
      IUIAutomationBoolCondition(
          interface.toInterface(IID_IUIAutomationBoolCondition));

  int get booleanValue {
    final boolVal = calloc<Int32>();
    try {
      final hr = _vtable.get_BooleanValue.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> boolVal)>()(ptr, boolVal);
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
              Int32 Function(VTablePointer lpVtbl, Pointer<Int32> boolVal)>>
      get_BooleanValue;
}
