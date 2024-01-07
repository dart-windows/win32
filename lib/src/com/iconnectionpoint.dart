// iconnectionpoint.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../guid.dart';
import '../types.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IConnectionPoint = '{b196b286-bab4-101a-b69c-00aa00341d07}';

/// Supports connection points for connectable objects.
///
/// {@category com}
class IConnectionPoint extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IConnectionPoint(super.ptr)
      : _vtable = ptr.value.value.cast<IConnectionPointVtbl>().ref;

  final IConnectionPointVtbl _vtable;

  factory IConnectionPoint.from(IUnknown interface) =>
      IConnectionPoint(interface.toInterface(IID_IConnectionPoint));

  int getConnectionInterface(Pointer<GUID> pIID) =>
      _vtable.GetConnectionInterface.asFunction<
          int Function(VTablePointer, Pointer<GUID> pIID)>()(ptr.value, pIID);

  int getConnectionPointContainer(Pointer<Pointer<VTablePointer>> ppCPC) =>
      _vtable.GetConnectionPointContainer.asFunction<
          int Function(VTablePointer,
              Pointer<Pointer<VTablePointer>> ppCPC)>()(ptr.value, ppCPC);

  int advise(Pointer<VTablePointer> pUnkSink, Pointer<Uint32> pdwCookie) =>
      _vtable.Advise.asFunction<
          int Function(VTablePointer, Pointer<VTablePointer> pUnkSink,
              Pointer<Uint32> pdwCookie)>()(ptr.value, pUnkSink, pdwCookie);

  int unadvise(int dwCookie) =>
      _vtable.Unadvise.asFunction<int Function(VTablePointer, int dwCookie)>()(
          ptr.value, dwCookie);

  int enumConnections(Pointer<Pointer<VTablePointer>> ppEnum) =>
      _vtable.EnumConnections.asFunction<
          int Function(VTablePointer,
              Pointer<Pointer<VTablePointer>> ppEnum)>()(ptr.value, ppEnum);
}

/// @nodoc
base class IConnectionPointVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<GUID> pIID)>>
      GetConnectionInterface;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Pointer<VTablePointer>> ppCPC)>>
      GetConnectionPointContainer;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<VTablePointer> pUnkSink,
              Pointer<Uint32> pdwCookie)>> Advise;
  external Pointer<
      NativeFunction<Int32 Function(VTablePointer, Uint32 dwCookie)>> Unadvise;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Pointer<VTablePointer>> ppEnum)>>
      EnumConnections;
}
