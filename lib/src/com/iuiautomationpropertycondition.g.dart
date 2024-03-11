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
const IID_IUIAutomationPropertyCondition =
    '{99ebf2cb-5578-4267-9ad4-afd6ea77e94b}';

/// Represents a condition based on a property value that is used to find UI
/// Automation elements.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationpropertycondition>.
///
/// {@category com}
class IUIAutomationPropertyCondition extends IUIAutomationCondition {
  IUIAutomationPropertyCondition(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationPropertyConditionVtbl>().ref;

  final IUIAutomationPropertyConditionVtbl _vtable;

  factory IUIAutomationPropertyCondition.from(IUnknown interface) =>
      IUIAutomationPropertyCondition(
          interface.toInterface(IID_IUIAutomationPropertyCondition));

  /// Retrieves the identifier of the property on which this condition is based.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationpropertycondition-get_propertyid>.
  int get propertyId {
    final propertyId = calloc<Int32>();
    try {
      final hr = _vtable.get_PropertyId.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<Int32> propertyId)>()(
          ptr, propertyId);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = propertyId.value;
      return retValue;
    } finally {
      free(propertyId);
    }
  }

  /// Retrieves the property value that must be matched for the condition to be
  /// true.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationpropertycondition-get_propertyvalue>.
  Pointer<VARIANT> get propertyValue {
    final propertyValue = calloc<VARIANT>();
    final hr = _vtable.get_PropertyValue.asFunction<
        int Function(VTablePointer lpVtbl,
            Pointer<VARIANT> propertyValue)>()(ptr, propertyValue);
    if (FAILED(hr)) {
      free(propertyValue);
      throw WindowsException(hr);
    }
    return propertyValue;
  }

  /// Retrieves a set of flags that specify how the condition is applied.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationpropertycondition-get_propertyconditionflags>.
  int get propertyConditionFlags {
    final flags = calloc<Int32>();
    try {
      final hr = _vtable.get_PropertyConditionFlags.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> flags)>()(ptr, flags);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = flags.value;
      return retValue;
    } finally {
      free(flags);
    }
  }
}

/// @nodoc
base class IUIAutomationPropertyConditionVtbl extends Struct {
  external IUIAutomationConditionVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Int32> propertyId)>> get_PropertyId;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VARIANT> propertyValue)>>
      get_PropertyValue;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> flags)>>
      get_PropertyConditionFlags;
}
