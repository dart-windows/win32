// inetworkconnection.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../exceptions.dart';
import '../extensions/iunknown.dart';
import '../guid.dart';
import '../macros.dart';
import '../types.dart';
import '../utils.dart';
import 'idispatch.dart';
import 'iunknown.dart';

/// @nodoc
const IID_INetworkConnection = '{dcb00005-570f-4a9b-8d69-199fdba5723b}';

/// The INetworkConnection interface represents a single network connection.
///
/// {@category com}
class INetworkConnection extends IDispatch {
  INetworkConnection(super.ptr)
      : _vtable = ptr.value.cast<INetworkConnectionVtbl>().ref;

  final INetworkConnectionVtbl _vtable;

  factory INetworkConnection.from(IUnknown interface) =>
      INetworkConnection(interface.toInterface(IID_INetworkConnection));

  int getNetwork(
          Pointer<VTablePointer> ppNetwork) =>
      _vtable.GetNetwork.asFunction<
              int Function(VTablePointer, Pointer<VTablePointer> ppNetwork)>()(
          ptr, ppNetwork);

  int get isConnectedToInternet {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = _vtable.get_IsConnectedToInternet.asFunction<
          int Function(
              VTablePointer, Pointer<Int16> pbIsConnected)>()(ptr, retValuePtr);
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
          int Function(
              VTablePointer, Pointer<Int16> pbIsConnected)>()(ptr, retValuePtr);
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
          ptr, pConnectivity);

  int getConnectionId(Pointer<GUID> pgdConnectionId) =>
      _vtable.GetConnectionId.asFunction<
              int Function(VTablePointer, Pointer<GUID> pgdConnectionId)>()(
          ptr, pgdConnectionId);

  int getAdapterId(Pointer<GUID> pgdAdapterId) =>
      _vtable.GetAdapterId.asFunction<
          int Function(
              VTablePointer, Pointer<GUID> pgdAdapterId)>()(ptr, pgdAdapterId);

  int getDomainType(
          Pointer<Int32> pDomainType) =>
      _vtable.GetDomainType.asFunction<
          int Function(
              VTablePointer, Pointer<Int32> pDomainType)>()(ptr, pDomainType);
}

/// @nodoc
base class INetworkConnectionVtbl extends Struct {
  external IDispatchVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> ppNetwork)>>
      GetNetwork;
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
              Int32 Function(VTablePointer, Pointer<GUID> pgdConnectionId)>>
      GetConnectionId;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<GUID> pgdAdapterId)>>
      GetAdapterId;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Int32> pDomainType)>>
      GetDomainType;
}
