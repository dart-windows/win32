// iuiautomationinvokepattern.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../types.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IUIAutomationInvokePattern = '{fb377fbe-8ea6-46d5-9c73-6499642d3059}';

/// Exposes a method that enables a client application to invoke the action
/// of a control (typically a button).
///
/// {@category com}
class IUIAutomationInvokePattern extends IUnknown {
  IUIAutomationInvokePattern(super.ptr)
      : _vtable = ptr.value.value.cast<IUIAutomationInvokePatternVtbl>().ref;

  final IUIAutomationInvokePatternVtbl _vtable;

  factory IUIAutomationInvokePattern.from(IUnknown interface) =>
      IUIAutomationInvokePattern(
          interface.toInterface(IID_IUIAutomationInvokePattern));

  int invoke() =>
      _vtable.Invoke.asFunction<int Function(VTablePointer)>()(ptr.value);
}

/// @nodoc
base class IUIAutomationInvokePatternVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<NativeFunction<Int32 Function(VTablePointer)>> Invoke;
}
