// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../extensions/iunknown.dart';
import '../types.dart';
import 'iuiautomationtransformpattern.g.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IUIAutomationTransformPattern2 =
    '{6d74d017-6ecb-4381-b38b-3c17a48ff1c2}';

/// Extends the IUIAutomationTransformPattern interface to enable Microsoft UI
/// Automation clients to programmatically access the viewport zooming
/// functionality of a control.
///
/// {@category com}
class IUIAutomationTransformPattern2 extends IUIAutomationTransformPattern {
  IUIAutomationTransformPattern2(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationTransformPattern2Vtbl>().ref;

  final IUIAutomationTransformPattern2Vtbl _vtable;

  factory IUIAutomationTransformPattern2.from(IUnknown interface) =>
      IUIAutomationTransformPattern2(
          interface.toInterface(IID_IUIAutomationTransformPattern2));

  int zoom(double zoomValue) =>
      _vtable.Zoom.asFunction<int Function(VTablePointer, double zoomValue)>()(
          ptr, zoomValue);

  int zoomByUnit(int zoomUnit) => _vtable.ZoomByUnit.asFunction<
      int Function(VTablePointer, int zoomUnit)>()(ptr, zoomUnit);

  int get_CurrentCanZoom(Pointer<Int32> retVal) => _vtable.get_CurrentCanZoom
          .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
      ptr, retVal);

  int get_CachedCanZoom(Pointer<Int32> retVal) => _vtable.get_CachedCanZoom
          .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
      ptr, retVal);

  int get_CurrentZoomLevel(Pointer<Double> retVal) => _vtable
          .get_CurrentZoomLevel
          .asFunction<int Function(VTablePointer, Pointer<Double> retVal)>()(
      ptr, retVal);

  int get_CachedZoomLevel(Pointer<Double> retVal) => _vtable.get_CachedZoomLevel
          .asFunction<int Function(VTablePointer, Pointer<Double> retVal)>()(
      ptr, retVal);

  int get_CurrentZoomMinimum(Pointer<Double> retVal) => _vtable
          .get_CurrentZoomMinimum
          .asFunction<int Function(VTablePointer, Pointer<Double> retVal)>()(
      ptr, retVal);

  int get_CachedZoomMinimum(Pointer<Double> retVal) => _vtable
          .get_CachedZoomMinimum
          .asFunction<int Function(VTablePointer, Pointer<Double> retVal)>()(
      ptr, retVal);

  int get_CurrentZoomMaximum(Pointer<Double> retVal) => _vtable
          .get_CurrentZoomMaximum
          .asFunction<int Function(VTablePointer, Pointer<Double> retVal)>()(
      ptr, retVal);

  int get_CachedZoomMaximum(Pointer<Double> retVal) => _vtable
          .get_CachedZoomMaximum
          .asFunction<int Function(VTablePointer, Pointer<Double> retVal)>()(
      ptr, retVal);
}

/// @nodoc
base class IUIAutomationTransformPattern2Vtbl extends Struct {
  external IUIAutomationTransformPatternVtbl baseVtbl;
  external Pointer<
      NativeFunction<Int32 Function(VTablePointer, Double zoomValue)>> Zoom;
  external Pointer<
      NativeFunction<Int32 Function(VTablePointer, Int32 zoomUnit)>> ZoomByUnit;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CurrentCanZoom;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CachedCanZoom;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Double> retVal)>>
      get_CurrentZoomLevel;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Double> retVal)>>
      get_CachedZoomLevel;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Double> retVal)>>
      get_CurrentZoomMinimum;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Double> retVal)>>
      get_CachedZoomMinimum;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Double> retVal)>>
      get_CurrentZoomMaximum;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Double> retVal)>>
      get_CachedZoomMaximum;
}
