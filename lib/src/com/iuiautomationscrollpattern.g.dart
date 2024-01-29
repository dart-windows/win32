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
const IID_IUIAutomationScrollPattern = '{88f4d42a-e881-459d-a77c-73bbbb7e02dc}';

/// Provides access to a control that acts as a scrollable container for a
/// collection of child elements.
///
/// {@category com}
class IUIAutomationScrollPattern extends IUnknown {
  IUIAutomationScrollPattern(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationScrollPatternVtbl>().ref;

  final IUIAutomationScrollPatternVtbl _vtable;

  factory IUIAutomationScrollPattern.from(IUnknown interface) =>
      IUIAutomationScrollPattern(
          interface.toInterface(IID_IUIAutomationScrollPattern));

  int scroll(
          int horizontalAmount, int verticalAmount) =>
      _vtable.Scroll.asFunction<
          int Function(VTablePointer, int horizontalAmount,
              int verticalAmount)>()(ptr, horizontalAmount, verticalAmount);

  int setScrollPercent(double horizontalPercent, double verticalPercent) =>
      _vtable.SetScrollPercent.asFunction<
              int Function(VTablePointer, double horizontalPercent,
                  double verticalPercent)>()(
          ptr, horizontalPercent, verticalPercent);

  int get_CurrentHorizontalScrollPercent(Pointer<Double> retVal) => _vtable
          .get_CurrentHorizontalScrollPercent
          .asFunction<int Function(VTablePointer, Pointer<Double> retVal)>()(
      ptr, retVal);

  int get_CurrentVerticalScrollPercent(Pointer<Double> retVal) => _vtable
          .get_CurrentVerticalScrollPercent
          .asFunction<int Function(VTablePointer, Pointer<Double> retVal)>()(
      ptr, retVal);

  int get_CurrentHorizontalViewSize(Pointer<Double> retVal) => _vtable
          .get_CurrentHorizontalViewSize
          .asFunction<int Function(VTablePointer, Pointer<Double> retVal)>()(
      ptr, retVal);

  int get_CurrentVerticalViewSize(Pointer<Double> retVal) => _vtable
          .get_CurrentVerticalViewSize
          .asFunction<int Function(VTablePointer, Pointer<Double> retVal)>()(
      ptr, retVal);

  int get_CurrentHorizontallyScrollable(Pointer<Int32> retVal) =>
      _vtable.get_CurrentHorizontallyScrollable
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr, retVal);

  int get_CurrentVerticallyScrollable(Pointer<Int32> retVal) =>
      _vtable.get_CurrentVerticallyScrollable
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr, retVal);

  int get_CachedHorizontalScrollPercent(Pointer<Double> retVal) => _vtable
          .get_CachedHorizontalScrollPercent
          .asFunction<int Function(VTablePointer, Pointer<Double> retVal)>()(
      ptr, retVal);

  int get_CachedVerticalScrollPercent(Pointer<Double> retVal) => _vtable
          .get_CachedVerticalScrollPercent
          .asFunction<int Function(VTablePointer, Pointer<Double> retVal)>()(
      ptr, retVal);

  int get_CachedHorizontalViewSize(Pointer<Double> retVal) => _vtable
          .get_CachedHorizontalViewSize
          .asFunction<int Function(VTablePointer, Pointer<Double> retVal)>()(
      ptr, retVal);

  int get_CachedVerticalViewSize(Pointer<Double> retVal) => _vtable
          .get_CachedVerticalViewSize
          .asFunction<int Function(VTablePointer, Pointer<Double> retVal)>()(
      ptr, retVal);

  int get_CachedHorizontallyScrollable(Pointer<Int32> retVal) =>
      _vtable.get_CachedHorizontallyScrollable
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr, retVal);

  int get_CachedVerticallyScrollable(Pointer<Int32> retVal) =>
      _vtable.get_CachedVerticallyScrollable
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr, retVal);
}

/// @nodoc
base class IUIAutomationScrollPatternVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Int32 horizontalAmount, Int32 verticalAmount)>>
      Scroll;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Double horizontalPercent,
              Double verticalPercent)>> SetScrollPercent;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Double> retVal)>>
      get_CurrentHorizontalScrollPercent;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Double> retVal)>>
      get_CurrentVerticalScrollPercent;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Double> retVal)>>
      get_CurrentHorizontalViewSize;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Double> retVal)>>
      get_CurrentVerticalViewSize;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CurrentHorizontallyScrollable;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CurrentVerticallyScrollable;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Double> retVal)>>
      get_CachedHorizontalScrollPercent;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Double> retVal)>>
      get_CachedVerticalScrollPercent;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Double> retVal)>>
      get_CachedHorizontalViewSize;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Double> retVal)>>
      get_CachedVerticalViewSize;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CachedHorizontallyScrollable;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CachedVerticallyScrollable;
}
