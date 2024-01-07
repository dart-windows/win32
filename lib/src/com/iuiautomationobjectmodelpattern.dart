// iuiautomationobjectmodelpattern.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../types.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IUIAutomationObjectModelPattern =
    '{71c284b3-c14d-4d14-981e-19751b0d756d}';

/// Provides access to the underlying object model implemented by a control
/// or application.
///
/// {@category com}
class IUIAutomationObjectModelPattern extends IUnknown {
  IUIAutomationObjectModelPattern(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationObjectModelPatternVtbl>().ref;

  final IUIAutomationObjectModelPatternVtbl _vtable;

  factory IUIAutomationObjectModelPattern.from(IUnknown interface) =>
      IUIAutomationObjectModelPattern(
          interface.toInterface(IID_IUIAutomationObjectModelPattern));

  int getUnderlyingObjectModel(Pointer<VTablePointer> retVal) =>
      _vtable.GetUnderlyingObjectModel.asFunction<
          int Function(
              VTablePointer, Pointer<VTablePointer> retVal)>()(ptr, retVal);
}

/// @nodoc
base class IUIAutomationObjectModelPatternVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> retVal)>>
      GetUnderlyingObjectModel;
}
