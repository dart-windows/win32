// inetworklistmanager.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import '../exceptions.dart';
import '../guid.dart';
import '../macros.dart';
import '../structs.g.dart';
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
      : _vtable = ptr.ref.vtable.cast<INetworkListManagerVtbl>().ref;

  final INetworkListManagerVtbl _vtable;

  factory INetworkListManager.from(IUnknown interface) =>
      INetworkListManager(interface.toInterface(IID_INetworkListManager));

  int getNetworks(int Flags, Pointer<Pointer<COMObject>> ppEnumNetwork) =>
      _vtable.GetNetworks.asFunction<
              int Function(Pointer, int Flags,
                  Pointer<Pointer<COMObject>> ppEnumNetwork)>()(
          ptr.ref.lpVtbl, Flags, ppEnumNetwork);

  int getNetwork(GUID gdNetworkId, Pointer<Pointer<COMObject>> ppNetwork) =>
      _vtable.GetNetwork.asFunction<
              int Function(Pointer, GUID gdNetworkId,
                  Pointer<Pointer<COMObject>> ppNetwork)>()(
          ptr.ref.lpVtbl, gdNetworkId, ppNetwork);

  int getNetworkConnections(Pointer<Pointer<COMObject>> ppEnum) =>
      _vtable.GetNetworkConnections.asFunction<
              int Function(Pointer, Pointer<Pointer<COMObject>> ppEnum)>()(
          ptr.ref.lpVtbl, ppEnum);

  int getNetworkConnection(GUID gdNetworkConnectionId,
          Pointer<Pointer<COMObject>> ppNetworkConnection) =>
      _vtable.GetNetworkConnection.asFunction<
              int Function(Pointer, GUID gdNetworkConnectionId,
                  Pointer<Pointer<COMObject>> ppNetworkConnection)>()(
          ptr.ref.lpVtbl, gdNetworkConnectionId, ppNetworkConnection);

  int get isConnectedToInternet {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = _vtable.get_IsConnectedToInternet.asFunction<
              int Function(Pointer, Pointer<Int16> pbIsConnected)>()(
          ptr.ref.lpVtbl, retValuePtr);
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
              int Function(Pointer, Pointer<Int16> pbIsConnected)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int getConnectivity(Pointer<Int32> pConnectivity) => _vtable.GetConnectivity
          .asFunction<int Function(Pointer, Pointer<Int32> pConnectivity)>()(
      ptr.ref.lpVtbl, pConnectivity);

  int setSimulatedProfileInfo(
          Pointer<NLM_SIMULATED_PROFILE_INFO> pSimulatedInfo) =>
      _vtable.SetSimulatedProfileInfo.asFunction<
              int Function(Pointer,
                  Pointer<NLM_SIMULATED_PROFILE_INFO> pSimulatedInfo)>()(
          ptr.ref.lpVtbl, pSimulatedInfo);

  int clearSimulatedProfileInfo() =>
      _vtable.ClearSimulatedProfileInfo.asFunction<int Function(Pointer)>()(
          ptr.ref.lpVtbl);
}

/// @nodoc
base class INetworkListManagerVtbl extends Struct {
  external IDispatchVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Int32 Flags,
              Pointer<Pointer<COMObject>> ppEnumNetwork)>> GetNetworks;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, GUID gdNetworkId,
              Pointer<Pointer<COMObject>> ppNetwork)>> GetNetwork;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Pointer<COMObject>> ppEnum)>>
      GetNetworkConnections;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, GUID gdNetworkConnectionId,
                  Pointer<Pointer<COMObject>> ppNetworkConnection)>>
      GetNetworkConnection;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int16> pbIsConnected)>>
      get_IsConnectedToInternet;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int16> pbIsConnected)>>
      get_IsConnected;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> pConnectivity)>>
      GetConnectivity;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer, Pointer<NLM_SIMULATED_PROFILE_INFO> pSimulatedInfo)>>
      SetSimulatedProfileInfo;
  external Pointer<NativeFunction<Int32 Function(Pointer)>>
      ClearSimulatedProfileInfo;
}

/// @nodoc
const CLSID_NetworkListManager = '{dcb00c01-570f-4a9b-8d69-199fdba5723b}';

/// {@category com}
class NetworkListManager extends INetworkListManager {
  NetworkListManager(super.ptr);

  factory NetworkListManager.createInstance() =>
      NetworkListManager(COMObject.createFromID(
          CLSID_NetworkListManager, IID_INetworkListManager));
}
