// iuiautomationorcondition.dart

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
const IID_IUIAutomationOrCondition = '{8753f032-3db1-47b5-a1fc-6e34a266c712}';

/// Represents a condition made up of multiple conditions, at least one of
/// which must be true.
///
/// {@category com}
class IUIAutomationOrCondition extends IUIAutomationCondition {
  // vtable begins at 3, is 3 entries long.
  IUIAutomationOrCondition(super.ptr)
      : _vtable = ptr.ref.vtable.cast<IUIAutomationOrConditionVtbl>().ref;

  final IUIAutomationOrConditionVtbl _vtable;

  factory IUIAutomationOrCondition.from(IUnknown interface) =>
      IUIAutomationOrCondition(
          interface.toInterface(IID_IUIAutomationOrCondition));

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
base class IUIAutomationOrConditionVtbl extends Struct {
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
