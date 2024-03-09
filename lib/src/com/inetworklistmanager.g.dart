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
const IID_INetworkListManager = '{dcb00000-570f-4a9b-8d69-199fdba5723b}';

/// Provides a set of methods to perform network list management functions.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/netlistmgr/nn-netlistmgr-inetworklistmanager>.
///
/// {@category com}
class INetworkListManager extends IDispatch {
  INetworkListManager(super.ptr)
      : _vtable = ptr.value.cast<INetworkListManagerVtbl>().ref;

  final INetworkListManagerVtbl _vtable;

  factory INetworkListManager.from(IUnknown interface) =>
      INetworkListManager(interface.toInterface(IID_INetworkListManager));

  int getNetworks(int flags, Pointer<VTablePointer> ppEnumNetwork) =>
      _vtable.GetNetworks.asFunction<
              int Function(VTablePointer lpVtbl, int flags,
                  Pointer<VTablePointer> ppEnumNetwork)>()(
          ptr, flags, ppEnumNetwork);

  int getNetwork(GUID gdNetworkId, Pointer<VTablePointer> ppNetwork) =>
      _vtable.GetNetwork.asFunction<
          int Function(VTablePointer lpVtbl, GUID gdNetworkId,
              Pointer<VTablePointer> ppNetwork)>()(ptr, gdNetworkId, ppNetwork);

  int getNetworkConnections(Pointer<VTablePointer> ppEnum) =>
      _vtable.GetNetworkConnections.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> ppEnum)>()(ptr, ppEnum);

  int getNetworkConnection(GUID gdNetworkConnectionId,
          Pointer<VTablePointer> ppNetworkConnection) =>
      _vtable.GetNetworkConnection.asFunction<
              int Function(VTablePointer lpVtbl, GUID gdNetworkConnectionId,
                  Pointer<VTablePointer> ppNetworkConnection)>()(
          ptr, gdNetworkConnectionId, ppNetworkConnection);

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

  int setSimulatedProfileInfo(
          Pointer<NLM_SIMULATED_PROFILE_INFO> pSimulatedInfo) =>
      _vtable.SetSimulatedProfileInfo.asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<NLM_SIMULATED_PROFILE_INFO> pSimulatedInfo)>()(
          ptr, pSimulatedInfo);

  int clearSimulatedProfileInfo() => _vtable.ClearSimulatedProfileInfo
      .asFunction<int Function(VTablePointer lpVtbl)>()(ptr);
}

/// @nodoc
base class INetworkListManagerVtbl extends Struct {
  external IDispatchVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 flags,
              Pointer<VTablePointer> ppEnumNetwork)>> GetNetworks;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, GUID gdNetworkId,
              Pointer<VTablePointer> ppNetwork)>> GetNetwork;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> ppEnum)>>
      GetNetworkConnections;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, GUID gdNetworkConnectionId,
                  Pointer<VTablePointer> ppNetworkConnection)>>
      GetNetworkConnection;
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
              HRESULT Function(VTablePointer lpVtbl,
                  Pointer<NLM_SIMULATED_PROFILE_INFO> pSimulatedInfo)>>
      SetSimulatedProfileInfo;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      ClearSimulatedProfileInfo;
}

/// @nodoc
const NetworkListManager = '{dcb00c01-570f-4a9b-8d69-199fdba5723b}';