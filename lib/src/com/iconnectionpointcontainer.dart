// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../extensions/iunknown.dart';
import '../guid.dart';
import '../types.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IConnectionPointContainer = '{b196b284-bab4-101a-b69c-00aa00341d07}';

/// Supports connection points for connectable objects.
///
/// {@category com}
class IConnectionPointContainer extends IUnknown {
  IConnectionPointContainer(super.ptr)
      : _vtable = ptr.value.cast<IConnectionPointContainerVtbl>().ref;

  final IConnectionPointContainerVtbl _vtable;

  factory IConnectionPointContainer.from(IUnknown interface) =>
      IConnectionPointContainer(
          interface.toInterface(IID_IConnectionPointContainer));

  int enumConnectionPoints(Pointer<VTablePointer> ppEnum) =>
      _vtable.EnumConnectionPoints.asFunction<
          int Function(
              VTablePointer, Pointer<VTablePointer> ppEnum)>()(ptr, ppEnum);

  int findConnectionPoint(Pointer<GUID> riid, Pointer<VTablePointer> ppCP) =>
      _vtable.FindConnectionPoint.asFunction<
          int Function(VTablePointer, Pointer<GUID> riid,
              Pointer<VTablePointer> ppCP)>()(ptr, riid, ppCP);
}

/// @nodoc
base class IConnectionPointContainerVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> ppEnum)>>
      EnumConnectionPoints;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<GUID> riid,
              Pointer<VTablePointer> ppCP)>> FindConnectionPoint;
}
