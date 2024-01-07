// iuiautomationpropertycondition.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../exceptions.dart';
import '../macros.dart';
import '../types.dart';
import '../utils.dart';
import '../variant.dart';
import 'iuiautomationcondition.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IUIAutomationPropertyCondition =
    '{99ebf2cb-5578-4267-9ad4-afd6ea77e94b}';

/// Represents a condition based on a property value that is used to find UI
/// Automation elements.
///
/// {@category com}
class IUIAutomationPropertyCondition extends IUIAutomationCondition {
  IUIAutomationPropertyCondition(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationPropertyConditionVtbl>().ref;

  final IUIAutomationPropertyConditionVtbl _vtable;

  factory IUIAutomationPropertyCondition.from(IUnknown interface) =>
      IUIAutomationPropertyCondition(
          interface.toInterface(IID_IUIAutomationPropertyCondition));

  int get propertyId {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_PropertyId.asFunction<
          int Function(
              VTablePointer, Pointer<Int32> propertyId)>()(ptr, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  VARIANT get propertyValue {
    final retValuePtr = calloc<VARIANT>();

    try {
      final hr = _vtable.get_PropertyValue.asFunction<
              int Function(VTablePointer, Pointer<VARIANT> propertyValue)>()(
          ptr, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.ref;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get propertyConditionFlags {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_PropertyConditionFlags
              .asFunction<int Function(VTablePointer, Pointer<Int32> flags)>()(
          ptr, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}

/// @nodoc
base class IUIAutomationPropertyConditionVtbl extends Struct {
  external IUIAutomationConditionVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Int32> propertyId)>>
      get_PropertyId;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VARIANT> propertyValue)>>
      get_PropertyValue;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> flags)>>
      get_PropertyConditionFlags;
}
