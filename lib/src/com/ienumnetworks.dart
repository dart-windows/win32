// ienumnetworks.dart

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
const IID_IEnumNetworks = '{dcb00003-570f-4a9b-8d69-199fdba5723b}';

/// The IEnumNetworks interface is a standard enumerator for networks. It
/// enumerates all networks available on the local machine. This interface
/// can be obtained from the `INetworkListManager` interface.
///
/// {@category com}
class IEnumNetworks extends IDispatch {
  // vtable begins at 7, is 5 entries long.
  IEnumNetworks(super.ptr)
      : _vtable = ptr.value.value.cast<IEnumNetworksVtbl>().ref;

  final IEnumNetworksVtbl _vtable;

  factory IEnumNetworks.from(IUnknown interface) =>
      IEnumNetworks(interface.toInterface(IID_IEnumNetworks));

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
base class IEnumNetworksVtbl extends Struct {
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
