// iconnectionpointcontainer.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

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
      : _vtable = ptr.value.value.cast<IConnectionPointContainerVtbl>().ref;

  final IConnectionPointContainerVtbl _vtable;

  factory IConnectionPointContainer.from(IUnknown interface) =>
      IConnectionPointContainer(
          interface.toInterface(IID_IConnectionPointContainer));

  int enumConnectionPoints(Pointer<Pointer<VTablePointer>> ppEnum) =>
      _vtable.EnumConnectionPoints.asFunction<
          int Function(VTablePointer,
              Pointer<Pointer<VTablePointer>> ppEnum)>()(ptr.value, ppEnum);

  int findConnectionPoint(
          Pointer<GUID> riid, Pointer<Pointer<VTablePointer>> ppCP) =>
      _vtable.FindConnectionPoint.asFunction<
          int Function(VTablePointer, Pointer<GUID> riid,
              Pointer<Pointer<VTablePointer>> ppCP)>()(ptr.value, riid, ppCP);
}

/// @nodoc
base class IConnectionPointContainerVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Pointer<VTablePointer>> ppEnum)>>
      EnumConnectionPoints;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<GUID> riid,
              Pointer<Pointer<VTablePointer>> ppCP)>> FindConnectionPoint;
}
