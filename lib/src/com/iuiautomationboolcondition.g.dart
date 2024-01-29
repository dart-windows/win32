// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../extensions/iunknown.dart';
import '../types.dart';
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

  int get_BooleanValue(Pointer<Int32> boolVal) => _vtable.get_BooleanValue
          .asFunction<int Function(VTablePointer, Pointer<Int32> boolVal)>()(
      ptr, boolVal);
}

/// @nodoc
base class IUIAutomationBoolConditionVtbl extends Struct {
  external IUIAutomationConditionVtbl baseVtbl;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> boolVal)>>
      get_BooleanValue;
}
