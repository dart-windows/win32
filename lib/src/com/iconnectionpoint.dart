// iconnectionpoint.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../combase.dart';
import '../guid.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IConnectionPoint = '{b196b286-bab4-101a-b69c-00aa00341d07}';

/// Supports connection points for connectable objects.
///
/// {@category com}
class IConnectionPoint extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IConnectionPoint(super.ptr)
      : _vtable = ptr.ref.vtable.cast<IConnectionPointVtbl>().ref;

  final IConnectionPointVtbl _vtable;

  factory IConnectionPoint.from(IUnknown interface) =>
      IConnectionPoint(interface.toInterface(IID_IConnectionPoint));

  int getConnectionInterface(Pointer<GUID> pIID) =>
      _vtable.GetConnectionInterface.asFunction<
          int Function(Pointer, Pointer<GUID> pIID)>()(ptr.ref.lpVtbl, pIID);

  int getConnectionPointContainer(Pointer<Pointer<COMObject>> ppCPC) =>
      _vtable.GetConnectionPointContainer.asFunction<
              int Function(Pointer, Pointer<Pointer<COMObject>> ppCPC)>()(
          ptr.ref.lpVtbl, ppCPC);

  int advise(Pointer<COMObject> pUnkSink, Pointer<Uint32> pdwCookie) =>
      _vtable.Advise.asFunction<
              int Function(Pointer, Pointer<COMObject> pUnkSink,
                  Pointer<Uint32> pdwCookie)>()(
          ptr.ref.lpVtbl, pUnkSink, pdwCookie);

  int unadvise(int dwCookie) =>
      _vtable.Unadvise.asFunction<int Function(Pointer, int dwCookie)>()(
          ptr.ref.lpVtbl, dwCookie);

  int enumConnections(Pointer<Pointer<COMObject>> ppEnum) =>
      _vtable.EnumConnections.asFunction<
              int Function(Pointer, Pointer<Pointer<COMObject>> ppEnum)>()(
          ptr.ref.lpVtbl, ppEnum);
}

/// @nodoc
base class IConnectionPointVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<NativeFunction<Int32 Function(Pointer, Pointer<GUID> pIID)>>
      GetConnectionInterface;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Pointer<COMObject>> ppCPC)>>
      GetConnectionPointContainer;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<COMObject> pUnkSink,
              Pointer<Uint32> pdwCookie)>> Advise;
  external Pointer<NativeFunction<Int32 Function(Pointer, Uint32 dwCookie)>>
      Unadvise;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Pointer<COMObject>> ppEnum)>>
      EnumConnections;
}
