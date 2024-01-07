// ienumnetworkconnections.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../exceptions.dart';
import '../macros.dart';
import '../types.dart';
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
  IEnumNetworkConnections(super.ptr)
      : _vtable = ptr.value.value.cast<IEnumNetworkConnectionsVtbl>().ref;

  final IEnumNetworkConnectionsVtbl _vtable;

  factory IEnumNetworkConnections.from(IUnknown interface) =>
      IEnumNetworkConnections(
          interface.toInterface(IID_IEnumNetworkConnections));

  Pointer<VTablePointer> get newEnum {
    final retValuePtr = calloc<VTablePointer>();

    final hr = _vtable.get__NewEnum.asFunction<
            int Function(VTablePointer, Pointer<VTablePointer> ppEnumVar)>()(
        ptr.value, retValuePtr);
    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }

  int next(int celt, Pointer<Pointer<VTablePointer>> rgelt,
          Pointer<Uint32> pceltFetched) =>
      _vtable.Next.asFunction<
              int Function(
                  VTablePointer,
                  int celt,
                  Pointer<Pointer<VTablePointer>> rgelt,
                  Pointer<Uint32> pceltFetched)>()(
          ptr.value, celt, rgelt, pceltFetched);

  int skip(int celt) =>
      _vtable.Skip.asFunction<int Function(VTablePointer, int celt)>()(
          ptr.value, celt);

  int reset() =>
      _vtable.Reset.asFunction<int Function(VTablePointer)>()(ptr.value);

  int clone(Pointer<Pointer<VTablePointer>> ppEnumNetwork) =>
      _vtable.Clone.asFunction<
              int Function(VTablePointer,
                  Pointer<Pointer<VTablePointer>> ppEnumNetwork)>()(
          ptr.value, ppEnumNetwork);
}

/// @nodoc
base class IEnumNetworkConnectionsVtbl extends Struct {
  external IDispatchVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> ppEnumVar)>>
      get__NewEnum;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Uint32 celt,
              Pointer<Pointer<VTablePointer>> rgelt,
              Pointer<Uint32> pceltFetched)>> Next;
  external Pointer<NativeFunction<Int32 Function(VTablePointer, Uint32 celt)>>
      Skip;
  external Pointer<NativeFunction<Int32 Function(VTablePointer)>> Reset;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer,
              Pointer<Pointer<VTablePointer>> ppEnumNetwork)>> Clone;
}
