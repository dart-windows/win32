// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../exceptions.dart';
import '../extensions/iunknown.dart';
import '../macros.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import 'idispatch.g.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IEnumNetworks = '{dcb00003-570f-4a9b-8d69-199fdba5723b}';

/// The IEnumNetworks interface is a standard enumerator for networks. It
/// enumerates all networks available on the local machine. This interface can
/// be obtained from the `INetworkListManager` interface.
///
/// {@category com}
class IEnumNetworks extends IDispatch {
  IEnumNetworks(super.ptr) : _vtable = ptr.value.cast<IEnumNetworksVtbl>().ref;

  final IEnumNetworksVtbl _vtable;

  factory IEnumNetworks.from(IUnknown interface) =>
      IEnumNetworks(interface.toInterface(IID_IEnumNetworks));

  VTablePointer get newEnum {
    final ppEnumVar = calloc<VTablePointer>();
    try {
      final hr = _vtable.get__NewEnum.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> ppEnumVar)>()(ptr, ppEnumVar);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = ppEnumVar.value;
      return retValue;
    } finally {
      free(ppEnumVar);
    }
  }

  int next(int celt, Pointer<VTablePointer> rgelt,
          Pointer<Uint32>? pceltFetched) =>
      _vtable.Next.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  int celt,
                  Pointer<VTablePointer> rgelt,
                  Pointer<Uint32> pceltFetched)>()(
          ptr, celt, rgelt, pceltFetched ?? nullptr);

  int skip(int celt) =>
      _vtable.Skip.asFunction<int Function(VTablePointer lpVtbl, int celt)>()(
          ptr, celt);

  int reset() =>
      _vtable.Reset.asFunction<int Function(VTablePointer lpVtbl)>()(ptr);

  int clone(Pointer<VTablePointer> ppEnumNetwork) => _vtable.Clone.asFunction<
      int Function(VTablePointer lpVtbl,
          Pointer<VTablePointer> ppEnumNetwork)>()(ptr, ppEnumNetwork);
}

/// @nodoc
base class IEnumNetworksVtbl extends Struct {
  external IDispatchVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> ppEnumVar)>>
      get__NewEnum;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 celt,
              Pointer<VTablePointer> rgelt,
              Pointer<Uint32> pceltFetched)>> Next;
  external Pointer<
      NativeFunction<HRESULT Function(VTablePointer lpVtbl, Uint32 celt)>> Skip;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      Reset;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> ppEnumNetwork)>>
      Clone;
}
