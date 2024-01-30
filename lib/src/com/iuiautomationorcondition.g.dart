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
const IID_IUIAutomationOrCondition = '{8753f032-3db1-47b5-a1fc-6e34a266c712}';

/// Represents a condition made up of multiple conditions, at least one of which
/// must be true.
///
/// {@category com}
class IUIAutomationOrCondition extends IUIAutomationCondition {
  IUIAutomationOrCondition(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationOrConditionVtbl>().ref;

  final IUIAutomationOrConditionVtbl _vtable;

  factory IUIAutomationOrCondition.from(IUnknown interface) =>
      IUIAutomationOrCondition(
          interface.toInterface(IID_IUIAutomationOrCondition));

  int get childCount {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_ChildCount.asFunction<
          int Function(
              VTablePointer, Pointer<Int32> childCount)>()(ptr, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int getChildrenAsNativeArray(Pointer<Pointer<VTablePointer>> childArray,
          Pointer<Int32> childArrayCount) =>
      _vtable.GetChildrenAsNativeArray.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<Pointer<VTablePointer>> childArray,
                  Pointer<Int32> childArrayCount)>()(
          ptr, childArray, childArrayCount);

  int getChildren(Pointer<Pointer<SAFEARRAY>> childArray) =>
      _vtable.GetChildren.asFunction<
          int Function(VTablePointer,
              Pointer<Pointer<SAFEARRAY>> childArray)>()(ptr, childArray);
}

/// @nodoc
base class IUIAutomationOrConditionVtbl extends Struct {
  external IUIAutomationConditionVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Int32> childCount)>>
      get_ChildCount;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<Pointer<VTablePointer>> childArray,
              Pointer<Int32> childArrayCount)>> GetChildrenAsNativeArray;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Pointer<SAFEARRAY>> childArray)>>
      GetChildren;
}
