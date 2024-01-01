// iuiautomationnotcondition.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../combase.dart';
import 'iuiautomationcondition.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IUIAutomationNotCondition = '{f528b657-847b-498c-8896-d52b565407a1}';

/// Represents a condition that is the negative of another condition.
///
/// {@category com}
class IUIAutomationNotCondition extends IUIAutomationCondition {
  // vtable begins at 3, is 1 entries long.
  IUIAutomationNotCondition(super.ptr)
      : _vtable = ptr.ref.vtable.cast<IUIAutomationNotConditionVtbl>().ref;

  final IUIAutomationNotConditionVtbl _vtable;

  factory IUIAutomationNotCondition.from(IUnknown interface) =>
      IUIAutomationNotCondition(
          interface.toInterface(IID_IUIAutomationNotCondition));

  int getChild(Pointer<Pointer<COMObject>> condition) =>
      _vtable.GetChild.asFunction<
              int Function(Pointer, Pointer<Pointer<COMObject>> condition)>()(
          ptr.ref.lpVtbl, condition);
}

/// @nodoc
base class IUIAutomationNotConditionVtbl extends Struct {
  external IUIAutomationConditionVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Pointer<COMObject>> condition)>>
      GetChild;
}
