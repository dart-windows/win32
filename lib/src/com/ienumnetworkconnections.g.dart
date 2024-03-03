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
const IID_IEnumNetworkConnections = '{dcb00006-570f-4a9b-8d69-199fdba5723b}';

/// Provides a standard enumerator for network connections.
///
/// It enumerates active, disconnected, or all network connections within a
/// network. This interface can be obtained from the INetwork interface.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/netlistmgr/nn-netlistmgr-ienumnetworkconnections>.
///
/// {@category com}
class IEnumNetworkConnections extends IDispatch {
  IEnumNetworkConnections(super.ptr)
      : _vtable = ptr.value.cast<IEnumNetworkConnectionsVtbl>().ref;

  final IEnumNetworkConnectionsVtbl _vtable;

  factory IEnumNetworkConnections.from(IUnknown interface) =>
      IEnumNetworkConnections(
          interface.toInterface(IID_IEnumNetworkConnections));

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
base class IEnumNetworkConnectionsVtbl extends Struct {
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
