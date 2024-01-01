// iconnectionpointcontainer.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../combase.dart';
import '../guid.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IConnectionPointContainer = '{b196b284-bab4-101a-b69c-00aa00341d07}';

/// Supports connection points for connectable objects.
///
/// {@category com}
class IConnectionPointContainer extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IConnectionPointContainer(super.ptr)
      : _vtable = ptr.ref.vtable.cast<IConnectionPointContainerVtbl>().ref;

  final IConnectionPointContainerVtbl _vtable;

  factory IConnectionPointContainer.from(IUnknown interface) =>
      IConnectionPointContainer(
          interface.toInterface(IID_IConnectionPointContainer));

  int enumConnectionPoints(Pointer<Pointer<COMObject>> ppEnum) =>
      _vtable.EnumConnectionPoints.asFunction<
              int Function(Pointer, Pointer<Pointer<COMObject>> ppEnum)>()(
          ptr.ref.lpVtbl, ppEnum);

  int findConnectionPoint(
          Pointer<GUID> riid, Pointer<Pointer<COMObject>> ppCP) =>
      _vtable.FindConnectionPoint.asFunction<
          int Function(Pointer, Pointer<GUID> riid,
              Pointer<Pointer<COMObject>> ppCP)>()(ptr.ref.lpVtbl, riid, ppCP);
}

/// @nodoc
base class IConnectionPointContainerVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Pointer<COMObject>> ppEnum)>>
      EnumConnectionPoints;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<GUID> riid,
              Pointer<Pointer<COMObject>> ppCP)>> FindConnectionPoint;
}
