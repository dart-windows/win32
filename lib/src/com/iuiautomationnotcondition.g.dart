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
const IID_IUIAutomationNotCondition = '{f528b657-847b-498c-8896-d52b565407a1}';

/// Represents a condition that is the negative of another condition.
///
/// {@category com}
class IUIAutomationNotCondition extends IUIAutomationCondition {
  IUIAutomationNotCondition(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationNotConditionVtbl>().ref;

  final IUIAutomationNotConditionVtbl _vtable;

  factory IUIAutomationNotCondition.from(IUnknown interface) =>
      IUIAutomationNotCondition(
          interface.toInterface(IID_IUIAutomationNotCondition));

  int getChild(Pointer<VTablePointer> condition) => _vtable.GetChild.asFunction<
      int Function(
          VTablePointer, Pointer<VTablePointer> condition)>()(ptr, condition);
}

/// @nodoc
base class IUIAutomationNotConditionVtbl extends Struct {
  external IUIAutomationConditionVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> condition)>>
      GetChild;
}
