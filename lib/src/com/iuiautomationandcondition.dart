// iuiautomationandcondition.dart

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
import 'iuiautomationcondition.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IUIAutomationAndCondition = '{a7d0af36-b912-45fe-9855-091ddc174aec}';

/// Exposes properties and methods that Microsoft UI Automation client
/// applications can use to retrieve information about an AND-based property
/// condition.
///
/// {@category com}
class IUIAutomationAndCondition extends IUIAutomationCondition {
  IUIAutomationAndCondition(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationAndConditionVtbl>().ref;

  final IUIAutomationAndConditionVtbl _vtable;

  factory IUIAutomationAndCondition.from(IUnknown interface) =>
      IUIAutomationAndCondition(
          interface.toInterface(IID_IUIAutomationAndCondition));

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
base class IUIAutomationAndConditionVtbl extends Struct {
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
