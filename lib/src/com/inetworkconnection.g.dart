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
const IID_INetworkConnection = '{dcb00005-570f-4a9b-8d69-199fdba5723b}';

/// Represents a single network connection.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/netlistmgr/nn-netlistmgr-inetworkconnection>.
///
/// {@category com}
class INetworkConnection extends IDispatch {
  INetworkConnection(super.ptr)
      : _vtable = ptr.value.cast<INetworkConnectionVtbl>().ref;

  final INetworkConnectionVtbl _vtable;

  /// Creates a new instance of `INetworkConnection` from an existing
  /// [interface].
  ///
  /// This constructor invokes the [queryInterface] method to obtain a reference
  /// to the `INetworkConnection` interface with the provided interface.
  ///
  /// Throws a [WindowsException] if the `queryInterface` call fails.
  factory INetworkConnection.from(IUnknown interface) =>
      INetworkConnection(interface.toInterface(IID_INetworkConnection));

  /// Returns the network associated with the connection.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/netlistmgr/nf-netlistmgr-inetworkconnection-getnetwork>.
  int getNetwork(
          Pointer<VTablePointer> ppNetwork) =>
      _vtable.GetNetwork.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> ppNetwork)>()(ptr, ppNetwork);

  /// Specifies if the associated network connection has internet connectivity.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/netlistmgr/nf-netlistmgr-inetworkconnection-get_isconnectedtointernet>.
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

  /// Specifies if the associated network connection has network connectivity.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/netlistmgr/nf-netlistmgr-inetworkconnection-get_isconnected>.
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

  /// Returns the connectivity state of the network connection.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/netlistmgr/nf-netlistmgr-inetworkconnection-getconnectivity>.
  int getConnectivity(Pointer<Int32> pConnectivity) =>
      _vtable.GetConnectivity.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Int32> pConnectivity)>()(ptr, pConnectivity);

  /// Returns the Connection ID associated with this network connection.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/netlistmgr/nf-netlistmgr-inetworkconnection-getconnectionid>.
  int getConnectionId(Pointer<GUID> pgdConnectionId) =>
      _vtable.GetConnectionId.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<GUID> pgdConnectionId)>()(ptr, pgdConnectionId);

  /// Returns the ID of the network adapter used by this connection.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/netlistmgr/nf-netlistmgr-inetworkconnection-getadapterid>.
  int getAdapterId(Pointer<GUID> pgdAdapterId) =>
      _vtable.GetAdapterId.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<GUID> pgdAdapterId)>()(
          ptr, pgdAdapterId);

  /// Returns the domain type of the network connection.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/netlistmgr/nf-netlistmgr-inetworkconnection-getdomaintype>.
  int getDomainType(
          Pointer<Int32> pDomainType) =>
      _vtable.GetDomainType.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<Int32> pDomainType)>()(
          ptr, pDomainType);
}

/// @nodoc
base class INetworkConnectionVtbl extends Struct {
  external IDispatchVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> ppNetwork)>>
      GetNetwork;
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
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<GUID> pgdConnectionId)>>
      GetConnectionId;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<GUID> pgdAdapterId)>> GetAdapterId;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Int32> pDomainType)>> GetDomainType;
}
