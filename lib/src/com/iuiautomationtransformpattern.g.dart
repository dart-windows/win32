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
const IID_IUIAutomationTransformPattern =
    '{a9b55844-a55d-4ef0-926d-569c16ff89bb}';

/// Provides access to a control that can be moved, resized, or rotated.
///
/// {@category com}
class IUIAutomationTransformPattern extends IUnknown {
  IUIAutomationTransformPattern(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationTransformPatternVtbl>().ref;

  final IUIAutomationTransformPatternVtbl _vtable;

  factory IUIAutomationTransformPattern.from(IUnknown interface) =>
      IUIAutomationTransformPattern(
          interface.toInterface(IID_IUIAutomationTransformPattern));

  int move(double x, double y) => _vtable.Move.asFunction<
      int Function(VTablePointer, double x, double y)>()(ptr, x, y);

  int resize(double width, double height) => _vtable.Resize.asFunction<
      int Function(
          VTablePointer, double width, double height)>()(ptr, width, height);

  int rotate(double degrees) =>
      _vtable.Rotate.asFunction<int Function(VTablePointer, double degrees)>()(
          ptr, degrees);

  int get_CurrentCanMove(Pointer<Int32> retVal) => _vtable.get_CurrentCanMove
          .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
      ptr, retVal);

  int get_CurrentCanResize(Pointer<Int32> retVal) =>
      _vtable.get_CurrentCanResize
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr, retVal);

  int get_CurrentCanRotate(Pointer<Int32> retVal) =>
      _vtable.get_CurrentCanRotate
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr, retVal);

  int get_CachedCanMove(Pointer<Int32> retVal) => _vtable.get_CachedCanMove
          .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
      ptr, retVal);

  int get_CachedCanResize(Pointer<Int32> retVal) => _vtable.get_CachedCanResize
          .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
      ptr, retVal);

  int get_CachedCanRotate(Pointer<Int32> retVal) => _vtable.get_CachedCanRotate
          .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
      ptr, retVal);
}

/// @nodoc
base class IUIAutomationTransformPatternVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<Int32 Function(VTablePointer, Double x, Double y)>> Move;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Double width, Double height)>> Resize;
  external Pointer<
      NativeFunction<Int32 Function(VTablePointer, Double degrees)>> Rotate;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CurrentCanMove;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CurrentCanResize;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CurrentCanRotate;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CachedCanMove;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CachedCanResize;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CachedCanRotate;
}
