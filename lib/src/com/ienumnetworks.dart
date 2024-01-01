// ienumnetworks.dart

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
const IID_IEnumNetworks = '{dcb00003-570f-4a9b-8d69-199fdba5723b}';

/// The IEnumNetworks interface is a standard enumerator for networks. It
/// enumerates all networks available on the local machine. This interface
/// can be obtained from the `INetworkListManager` interface.
///
/// {@category com}
class IEnumNetworks extends IDispatch {
  // vtable begins at 7, is 5 entries long.
  IEnumNetworks(super.ptr)
      : _vtable = ptr.ref.vtable.cast<IEnumNetworksVtbl>().ref;

  final IEnumNetworksVtbl _vtable;

  factory IEnumNetworks.from(IUnknown interface) =>
      IEnumNetworks(interface.toInterface(IID_IEnumNetworks));

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
base class IEnumNetworksVtbl extends Struct {
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
