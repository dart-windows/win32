// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../extensions/iunknown.dart';
import '../guid.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import 'idispatch.g.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_INetworkListManager = '{dcb00000-570f-4a9b-8d69-199fdba5723b}';

/// The INetworkListManager interface provides a set of methods to perform
/// network list management functions.
///
/// {@category com}
class INetworkListManager extends IDispatch {
  INetworkListManager(super.ptr)
      : _vtable = ptr.value.cast<INetworkListManagerVtbl>().ref;

  final INetworkListManagerVtbl _vtable;

  factory INetworkListManager.from(IUnknown interface) =>
      INetworkListManager(interface.toInterface(IID_INetworkListManager));

  int getNetworks(int Flags, Pointer<VTablePointer> ppEnumNetwork) =>
      _vtable.GetNetworks.asFunction<
              int Function(VTablePointer, int Flags,
                  Pointer<VTablePointer> ppEnumNetwork)>()(
          ptr, Flags, ppEnumNetwork);

  int getNetwork(GUID gdNetworkId, Pointer<VTablePointer> ppNetwork) =>
      _vtable.GetNetwork.asFunction<
          int Function(VTablePointer, GUID gdNetworkId,
              Pointer<VTablePointer> ppNetwork)>()(ptr, gdNetworkId, ppNetwork);

  int getNetworkConnections(Pointer<VTablePointer> ppEnum) =>
      _vtable.GetNetworkConnections.asFunction<
          int Function(
              VTablePointer, Pointer<VTablePointer> ppEnum)>()(ptr, ppEnum);

  int getNetworkConnection(GUID gdNetworkConnectionId,
          Pointer<VTablePointer> ppNetworkConnection) =>
      _vtable.GetNetworkConnection.asFunction<
              int Function(VTablePointer, GUID gdNetworkConnectionId,
                  Pointer<VTablePointer> ppNetworkConnection)>()(
          ptr, gdNetworkConnectionId, ppNetworkConnection);

  int get_IsConnectedToInternet(Pointer<Int16> pbIsConnected) =>
      _vtable.get_IsConnectedToInternet.asFunction<
              int Function(VTablePointer, Pointer<Int16> pbIsConnected)>()(
          ptr, pbIsConnected);

  int get_IsConnected(Pointer<Int16> pbIsConnected) =>
      _vtable.get_IsConnected.asFunction<
              int Function(VTablePointer, Pointer<Int16> pbIsConnected)>()(
          ptr, pbIsConnected);

  int getConnectivity(Pointer<Int32> pConnectivity) =>
      _vtable.GetConnectivity.asFunction<
              int Function(VTablePointer, Pointer<Int32> pConnectivity)>()(
          ptr, pConnectivity);

  int setSimulatedProfileInfo(
          Pointer<NLM_SIMULATED_PROFILE_INFO> pSimulatedInfo) =>
      _vtable.SetSimulatedProfileInfo.asFunction<
              int Function(VTablePointer,
                  Pointer<NLM_SIMULATED_PROFILE_INFO> pSimulatedInfo)>()(
          ptr, pSimulatedInfo);

  int clearSimulatedProfileInfo() => _vtable.ClearSimulatedProfileInfo
      .asFunction<int Function(VTablePointer)>()(ptr);
}

/// @nodoc
base class INetworkListManagerVtbl extends Struct {
  external IDispatchVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Int32 Flags,
              Pointer<VTablePointer> ppEnumNetwork)>> GetNetworks;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, GUID gdNetworkId,
              Pointer<VTablePointer> ppNetwork)>> GetNetwork;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> ppEnum)>>
      GetNetworkConnections;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, GUID gdNetworkConnectionId,
                  Pointer<VTablePointer> ppNetworkConnection)>>
      GetNetworkConnection;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Int16> pbIsConnected)>>
      get_IsConnectedToInternet;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Int16> pbIsConnected)>>
      get_IsConnected;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Int32> pConnectivity)>>
      GetConnectivity;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer,
                  Pointer<NLM_SIMULATED_PROFILE_INFO> pSimulatedInfo)>>
      SetSimulatedProfileInfo;
  external Pointer<NativeFunction<Int32 Function(VTablePointer)>>
      ClearSimulatedProfileInfo;
}

/// @nodoc
const CLSID_NetworkListManager = '{dcb00c01-570f-4a9b-8d69-199fdba5723b}';

/// {@category com}
class NetworkListManager extends INetworkListManager {
  NetworkListManager(super.ptr);

  factory NetworkListManager.createInstance() => NetworkListManager(
      createCOMObject(CLSID_NetworkListManager, IID_INetworkListManager));
}
