// iuiautomationandcondition.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import '../exceptions.dart';
import '../macros.dart';
import '../structs.g.dart';
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
  // vtable begins at 3, is 3 entries long.
  IUIAutomationAndCondition(super.ptr)
      : _vtable = ptr.ref.vtable.cast<IUIAutomationAndConditionVtbl>().ref;

  final IUIAutomationAndConditionVtbl _vtable;

  factory IUIAutomationAndCondition.from(IUnknown interface) =>
      IUIAutomationAndCondition(
          interface.toInterface(IID_IUIAutomationAndCondition));

  int get childCount {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_ChildCount
              .asFunction<int Function(Pointer, Pointer<Int32> childCount)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int getChildrenAsNativeArray(Pointer<Pointer<Pointer<COMObject>>> childArray,
          Pointer<Int32> childArrayCount) =>
      _vtable.GetChildrenAsNativeArray.asFunction<
              int Function(
                  Pointer,
                  Pointer<Pointer<Pointer<COMObject>>> childArray,
                  Pointer<Int32> childArrayCount)>()(
          ptr.ref.lpVtbl, childArray, childArrayCount);

  int getChildren(Pointer<Pointer<SAFEARRAY>> childArray) =>
      _vtable.GetChildren.asFunction<
              int Function(Pointer, Pointer<Pointer<SAFEARRAY>> childArray)>()(
          ptr.ref.lpVtbl, childArray);
}

/// @nodoc
base class IUIAutomationAndConditionVtbl extends Struct {
  external IUIAutomationConditionVtbl baseVtbl;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> childCount)>>
      get_ChildCount;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              Pointer<Pointer<Pointer<COMObject>>> childArray,
              Pointer<Int32> childArrayCount)>> GetChildrenAsNativeArray;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Pointer<SAFEARRAY>> childArray)>>
      GetChildren;
}
