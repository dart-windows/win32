// inetworklistmanager.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../exceptions.dart';
import '../guid.dart';
import '../macros.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import 'idispatch.dart';
import 'iunknown.dart';

/// @nodoc
const IID_INetworkListManager = '{dcb00000-570f-4a9b-8d69-199fdba5723b}';

/// The INetworkListManager interface provides a set of methods to perform
/// network list management functions.
///
/// {@category com}
class INetworkListManager extends IDispatch {
  // vtable begins at 7, is 9 entries long.
  INetworkListManager(super.ptr)
      : _vtable = ptr.value.value.cast<INetworkListManagerVtbl>().ref;

  final INetworkListManagerVtbl _vtable;

  factory INetworkListManager.from(IUnknown interface) =>
      INetworkListManager(interface.toInterface(IID_INetworkListManager));

  int getNetworks(int Flags, Pointer<Pointer<VTablePointer>> ppEnumNetwork) =>
      _vtable.GetNetworks.asFunction<
              int Function(VTablePointer, int Flags,
                  Pointer<Pointer<VTablePointer>> ppEnumNetwork)>()(
          ptr.value, Flags, ppEnumNetwork);

  int getNetwork(GUID gdNetworkId, Pointer<Pointer<VTablePointer>> ppNetwork) =>
      _vtable.GetNetwork.asFunction<
              int Function(VTablePointer, GUID gdNetworkId,
                  Pointer<Pointer<VTablePointer>> ppNetwork)>()(
          ptr.value, gdNetworkId, ppNetwork);

  int getNetworkConnections(Pointer<Pointer<VTablePointer>> ppEnum) =>
      _vtable.GetNetworkConnections.asFunction<
          int Function(VTablePointer,
              Pointer<Pointer<VTablePointer>> ppEnum)>()(ptr.value, ppEnum);

  int getNetworkConnection(GUID gdNetworkConnectionId,
          Pointer<Pointer<VTablePointer>> ppNetworkConnection) =>
      _vtable.GetNetworkConnection.asFunction<
              int Function(VTablePointer, GUID gdNetworkConnectionId,
                  Pointer<Pointer<VTablePointer>> ppNetworkConnection)>()(
          ptr.value, gdNetworkConnectionId, ppNetworkConnection);

  int get isConnectedToInternet {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = _vtable.get_IsConnectedToInternet.asFunction<
              int Function(VTablePointer, Pointer<Int16> pbIsConnected)>()(
          ptr.value, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get isConnected {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = _vtable.get_IsConnected.asFunction<
              int Function(VTablePointer, Pointer<Int16> pbIsConnected)>()(
          ptr.value, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int getConnectivity(Pointer<Int32> pConnectivity) =>
      _vtable.GetConnectivity.asFunction<
              int Function(VTablePointer, Pointer<Int32> pConnectivity)>()(
          ptr.value, pConnectivity);

  int setSimulatedProfileInfo(
          Pointer<NLM_SIMULATED_PROFILE_INFO> pSimulatedInfo) =>
      _vtable.SetSimulatedProfileInfo.asFunction<
              int Function(VTablePointer,
                  Pointer<NLM_SIMULATED_PROFILE_INFO> pSimulatedInfo)>()(
          ptr.value, pSimulatedInfo);

  int clearSimulatedProfileInfo() => _vtable.ClearSimulatedProfileInfo
      .asFunction<int Function(VTablePointer)>()(ptr.value);
}

/// @nodoc
base class INetworkListManagerVtbl extends Struct {
  external IDispatchVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Int32 Flags,
              Pointer<Pointer<VTablePointer>> ppEnumNetwork)>> GetNetworks;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, GUID gdNetworkId,
              Pointer<Pointer<VTablePointer>> ppNetwork)>> GetNetwork;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Pointer<VTablePointer>> ppEnum)>>
      GetNetworkConnections;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, GUID gdNetworkConnectionId,
                  Pointer<Pointer<VTablePointer>> ppNetworkConnection)>>
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
