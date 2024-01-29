// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../extensions/iunknown.dart';
import '../types.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IUIAutomationRangeValuePattern =
    '{59213f4f-7346-49e5-b120-80555987a148}';

/// Provides access to a control that presents a range of values.
///
/// {@category com}
class IUIAutomationRangeValuePattern extends IUnknown {
  IUIAutomationRangeValuePattern(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationRangeValuePatternVtbl>().ref;

  final IUIAutomationRangeValuePatternVtbl _vtable;

  factory IUIAutomationRangeValuePattern.from(IUnknown interface) =>
      IUIAutomationRangeValuePattern(
          interface.toInterface(IID_IUIAutomationRangeValuePattern));

  int setValue(double val) =>
      _vtable.SetValue.asFunction<int Function(VTablePointer, double val)>()(
          ptr, val);

  int get_CurrentValue(Pointer<Double> retVal) => _vtable.get_CurrentValue
          .asFunction<int Function(VTablePointer, Pointer<Double> retVal)>()(
      ptr, retVal);

  int get_CurrentIsReadOnly(Pointer<Int32> retVal) =>
      _vtable.get_CurrentIsReadOnly
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr, retVal);

  int get_CurrentMaximum(Pointer<Double> retVal) => _vtable.get_CurrentMaximum
          .asFunction<int Function(VTablePointer, Pointer<Double> retVal)>()(
      ptr, retVal);

  int get_CurrentMinimum(Pointer<Double> retVal) => _vtable.get_CurrentMinimum
          .asFunction<int Function(VTablePointer, Pointer<Double> retVal)>()(
      ptr, retVal);

  int get_CurrentLargeChange(Pointer<Double> retVal) => _vtable
          .get_CurrentLargeChange
          .asFunction<int Function(VTablePointer, Pointer<Double> retVal)>()(
      ptr, retVal);

  int get_CurrentSmallChange(Pointer<Double> retVal) => _vtable
          .get_CurrentSmallChange
          .asFunction<int Function(VTablePointer, Pointer<Double> retVal)>()(
      ptr, retVal);

  int get_CachedValue(Pointer<Double> retVal) => _vtable.get_CachedValue
          .asFunction<int Function(VTablePointer, Pointer<Double> retVal)>()(
      ptr, retVal);

  int get_CachedIsReadOnly(Pointer<Int32> retVal) =>
      _vtable.get_CachedIsReadOnly
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr, retVal);

  int get_CachedMaximum(Pointer<Double> retVal) => _vtable.get_CachedMaximum
          .asFunction<int Function(VTablePointer, Pointer<Double> retVal)>()(
      ptr, retVal);

  int get_CachedMinimum(Pointer<Double> retVal) => _vtable.get_CachedMinimum
          .asFunction<int Function(VTablePointer, Pointer<Double> retVal)>()(
      ptr, retVal);

  int get_CachedLargeChange(Pointer<Double> retVal) => _vtable
          .get_CachedLargeChange
          .asFunction<int Function(VTablePointer, Pointer<Double> retVal)>()(
      ptr, retVal);

  int get_CachedSmallChange(Pointer<Double> retVal) => _vtable
          .get_CachedSmallChange
          .asFunction<int Function(VTablePointer, Pointer<Double> retVal)>()(
      ptr, retVal);
}

/// @nodoc
base class IUIAutomationRangeValuePatternVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<NativeFunction<Int32 Function(VTablePointer, Double val)>>
      SetValue;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Double> retVal)>>
      get_CurrentValue;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CurrentIsReadOnly;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Double> retVal)>>
      get_CurrentMaximum;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Double> retVal)>>
      get_CurrentMinimum;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Double> retVal)>>
      get_CurrentLargeChange;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Double> retVal)>>
      get_CurrentSmallChange;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Double> retVal)>>
      get_CachedValue;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CachedIsReadOnly;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Double> retVal)>>
      get_CachedMaximum;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Double> retVal)>>
      get_CachedMinimum;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Double> retVal)>>
      get_CachedLargeChange;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Double> retVal)>>
      get_CachedSmallChange;
}
