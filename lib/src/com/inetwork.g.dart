// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../exceptions.dart';
import '../extensions/iunknown.dart';
import '../guid.dart';
import '../macros.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import 'idispatch.g.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_INetwork = '{dcb00002-570f-4a9b-8d69-199fdba5723b}';

/// Represents a network on the local machine.
///
/// It can also represent a collection of network connections with a similar
/// network signature.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/netlistmgr/nn-netlistmgr-inetwork>.
///
/// {@category com}
class INetwork extends IDispatch {
  INetwork(super.ptr) : _vtable = ptr.value.cast<INetworkVtbl>().ref;

  final INetworkVtbl _vtable;

  factory INetwork.from(IUnknown interface) =>
      INetwork(interface.toInterface(IID_INetwork));

  int getName(
          Pointer<Pointer<Utf16>> pszNetworkName) =>
      _vtable.GetName.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<Utf16>> pszNetworkName)>()(ptr, pszNetworkName);

  int setName(Pointer<Utf16> szNetworkNewName) => _vtable.SetName.asFunction<
      int Function(VTablePointer lpVtbl,
          Pointer<Utf16> szNetworkNewName)>()(ptr, szNetworkNewName);

  int getDescription(Pointer<Pointer<Utf16>> pszDescription) =>
      _vtable.GetDescription.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<Utf16>> pszDescription)>()(ptr, pszDescription);

  int setDescription(Pointer<Utf16> szDescription) =>
      _vtable.SetDescription.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Utf16> szDescription)>()(ptr, szDescription);

  int getNetworkId(Pointer<GUID> pgdGuidNetworkId) =>
      _vtable.GetNetworkId.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<GUID> pgdGuidNetworkId)>()(ptr, pgdGuidNetworkId);

  int getDomainType(Pointer<Int32> pNetworkType) =>
      _vtable.GetDomainType.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Int32> pNetworkType)>()(ptr, pNetworkType);

  int getNetworkConnections(Pointer<VTablePointer> ppEnumNetworkConnection) =>
      _vtable.GetNetworkConnections.asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<VTablePointer> ppEnumNetworkConnection)>()(
          ptr, ppEnumNetworkConnection);

  int getTimeCreatedAndConnected(
          Pointer<Uint32> pdwLowDateTimeCreated,
          Pointer<Uint32> pdwHighDateTimeCreated,
          Pointer<Uint32> pdwLowDateTimeConnected,
          Pointer<Uint32> pdwHighDateTimeConnected) =>
      _vtable.GetTimeCreatedAndConnected.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  Pointer<Uint32> pdwLowDateTimeCreated,
                  Pointer<Uint32> pdwHighDateTimeCreated,
                  Pointer<Uint32> pdwLowDateTimeConnected,
                  Pointer<Uint32> pdwHighDateTimeConnected)>()(
          ptr,
          pdwLowDateTimeCreated,
          pdwHighDateTimeCreated,
          pdwLowDateTimeConnected,
          pdwHighDateTimeConnected);

  int get isConnectedToInternet {
    final pbIsConnected = calloc<VARIANT_BOOL>();
    try {
      final hr = _vtable.get_IsConnectedToInternet.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VARIANT_BOOL> pbIsConnected)>()(ptr, pbIsConnected);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = pbIsConnected.value;
      return retValue;
    } finally {
      free(pbIsConnected);
    }
  }

  int get isConnected {
    final pbIsConnected = calloc<VARIANT_BOOL>();
    try {
      final hr = _vtable.get_IsConnected.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VARIANT_BOOL> pbIsConnected)>()(ptr, pbIsConnected);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = pbIsConnected.value;
      return retValue;
    } finally {
      free(pbIsConnected);
    }
  }

  int getConnectivity(Pointer<Int32> pConnectivity) =>
      _vtable.GetConnectivity.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Int32> pConnectivity)>()(ptr, pConnectivity);

  int getCategory(Pointer<Int32> pCategory) => _vtable.GetCategory.asFunction<
      int Function(
          VTablePointer lpVtbl, Pointer<Int32> pCategory)>()(ptr, pCategory);

  int setCategory(int newCategory) => _vtable.SetCategory.asFunction<
      int Function(VTablePointer lpVtbl, int newCategory)>()(ptr, newCategory);
}

/// @nodoc
base class INetworkVtbl extends Struct {
  external IDispatchVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl,
              Pointer<Pointer<Utf16>> pszNetworkName)>> GetName;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Utf16> szNetworkNewName)>> SetName;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl,
              Pointer<Pointer<Utf16>> pszDescription)>> GetDescription;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Utf16> szDescription)>>
      SetDescription;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<GUID> pgdGuidNetworkId)>>
      GetNetworkId;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Int32> pNetworkType)>>
      GetDomainType;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl,
                  Pointer<VTablePointer> ppEnumNetworkConnection)>>
      GetNetworkConnections;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl,
                  Pointer<Uint32> pdwLowDateTimeCreated,
                  Pointer<Uint32> pdwHighDateTimeCreated,
                  Pointer<Uint32> pdwLowDateTimeConnected,
                  Pointer<Uint32> pdwHighDateTimeConnected)>>
      GetTimeCreatedAndConnected;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VARIANT_BOOL> pbIsConnected)>>
      get_IsConnectedToInternet;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VARIANT_BOOL> pbIsConnected)>>
      get_IsConnected;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Int32> pConnectivity)>>
      GetConnectivity;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> pCategory)>>
      GetCategory;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Int32 newCategory)>>
      SetCategory;
}