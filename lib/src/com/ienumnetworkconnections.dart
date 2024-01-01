// ienumnetworkconnections.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import '../exceptions.dart';
import '../macros.dart';
import '../utils.dart';
import 'idispatch.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IEnumNetworkConnections = '{dcb00006-570f-4a9b-8d69-199fdba5723b}';

/// The IEnumNetworkConnections interface provides a standard enumerator for
/// network connections. It enumerates active, disconnected, or all network
/// connections within a network. This interface can be obtained from the
/// INetwork interface.
///
/// {@category com}
class IEnumNetworkConnections extends IDispatch {
  // vtable begins at 7, is 5 entries long.
  IEnumNetworkConnections(super.ptr)
      : _vtable = ptr.ref.vtable.cast<IEnumNetworkConnectionsVtbl>().ref;

  final IEnumNetworkConnectionsVtbl _vtable;

  factory IEnumNetworkConnections.from(IUnknown interface) =>
      IEnumNetworkConnections(
          interface.toInterface(IID_IEnumNetworkConnections));

  Pointer<COMObject> get newEnum {
    final retValuePtr = calloc<COMObject>();

    final hr = _vtable.get__NewEnum
            .asFunction<int Function(Pointer, Pointer<COMObject> ppEnumVar)>()(
        ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }

  int next(int celt, Pointer<Pointer<COMObject>> rgelt,
          Pointer<Uint32> pceltFetched) =>
      _vtable.Next.asFunction<
              int Function(Pointer, int celt, Pointer<Pointer<COMObject>> rgelt,
                  Pointer<Uint32> pceltFetched)>()(
          ptr.ref.lpVtbl, celt, rgelt, pceltFetched);

  int skip(int celt) =>
      _vtable.Skip.asFunction<int Function(Pointer, int celt)>()(
          ptr.ref.lpVtbl, celt);

  int reset() =>
      _vtable.Reset.asFunction<int Function(Pointer)>()(ptr.ref.lpVtbl);

  int clone(Pointer<Pointer<COMObject>> ppEnumNetwork) =>
      _vtable.Clone.asFunction<
              int Function(
                  Pointer, Pointer<Pointer<COMObject>> ppEnumNetwork)>()(
          ptr.ref.lpVtbl, ppEnumNetwork);
}

/// @nodoc
base class IEnumNetworkConnectionsVtbl extends Struct {
  external IDispatchVtbl baseVtbl;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<COMObject> ppEnumVar)>>
      get__NewEnum;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              Uint32 celt,
              Pointer<Pointer<COMObject>> rgelt,
              Pointer<Uint32> pceltFetched)>> Next;
  external Pointer<NativeFunction<Int32 Function(Pointer, Uint32 celt)>> Skip;
  external Pointer<NativeFunction<Int32 Function(Pointer)>> Reset;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer, Pointer<Pointer<COMObject>> ppEnumNetwork)>> Clone;
}
