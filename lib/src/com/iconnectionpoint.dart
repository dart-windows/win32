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
const IID_IConnectionPoint = '{b196b286-bab4-101a-b69c-00aa00341d07}';

/// Supports connection points for connectable objects.
///
/// {@category com}
class IConnectionPoint extends IUnknown {
  IConnectionPoint(super.ptr)
      : _vtable = ptr.value.cast<IConnectionPointVtbl>().ref;

  final IConnectionPointVtbl _vtable;

  factory IConnectionPoint.from(IUnknown interface) =>
      IConnectionPoint(interface.toInterface(IID_IConnectionPoint));

  int getConnectionInterface(Pointer<GUID> pIID) =>
      _vtable.GetConnectionInterface.asFunction<
          int Function(VTablePointer, Pointer<GUID> pIID)>()(ptr, pIID);

  int getConnectionPointContainer(Pointer<VTablePointer> ppCPC) =>
      _vtable.GetConnectionPointContainer.asFunction<
          int Function(
              VTablePointer, Pointer<VTablePointer> ppCPC)>()(ptr, ppCPC);

  int advise(VTablePointer pUnkSink, Pointer<Uint32> pdwCookie) =>
      _vtable.Advise.asFunction<
          int Function(VTablePointer, VTablePointer pUnkSink,
              Pointer<Uint32> pdwCookie)>()(ptr, pUnkSink, pdwCookie);

  int unadvise(int dwCookie) =>
      _vtable.Unadvise.asFunction<int Function(VTablePointer, int dwCookie)>()(
          ptr, dwCookie);

  int enumConnections(Pointer<VTablePointer> ppEnum) =>
      _vtable.EnumConnections.asFunction<
          int Function(
              VTablePointer, Pointer<VTablePointer> ppEnum)>()(ptr, ppEnum);
}

/// @nodoc
base class IConnectionPointVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<GUID> pIID)>>
      GetConnectionInterface;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> ppCPC)>>
      GetConnectionPointContainer;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, VTablePointer pUnkSink,
              Pointer<Uint32> pdwCookie)>> Advise;
  external Pointer<
      NativeFunction<Int32 Function(VTablePointer, Uint32 dwCookie)>> Unadvise;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> ppEnum)>>
      EnumConnections;
}
