// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../extensions/iunknown.dart';
import '../guid.dart';
import '../types.dart';
import 'idispatch.g.dart';
import 'iunknown.g.dart';

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
