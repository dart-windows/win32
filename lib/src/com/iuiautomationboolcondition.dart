// iuiautomationboolcondition.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../exceptions.dart';
import '../macros.dart';
import '../types.dart';
import '../utils.dart';
import 'iuiautomationcondition.dart';
import 'iunknown.dart';

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
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_BooleanValue.asFunction<
          int Function(
              VTablePointer, Pointer<Int32> boolVal)>()(ptr, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}

/// @nodoc
base class IUIAutomationBoolConditionVtbl extends Struct {
  external IUIAutomationConditionVtbl baseVtbl;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> boolVal)>>
      get_BooleanValue;
}
