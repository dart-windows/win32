// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../exceptions.dart';
import '../extensions/iunknown.dart';
import '../structs.g.dart';
import '../types.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_INetworkListManagerEvents = '{dcb00001-570f-4a9b-8d69-199fdba5723b}';

/// INetworkListManagerEvents is a message sink interface that a client
/// implements to get overall machine state related events.
///
/// Applications that are interested on higher-level events, for example
/// internet connectivity, implement this interface.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/netlistmgr/nn-netlistmgr-inetworklistmanagerevents>.
///
/// {@category com}
class INetworkListManagerEvents extends IUnknown {
  INetworkListManagerEvents(super.ptr)
      : _vtable = ptr.value.cast<INetworkListManagerEventsVtbl>().ref;

  final INetworkListManagerEventsVtbl _vtable;

  /// Creates a new instance of `INetworkListManagerEvents` from an existing
  /// [interface].
  ///
  /// This constructor invokes the [queryInterface] method to obtain a reference
  /// to the `INetworkListManagerEvents` interface with the provided interface.
  ///
  /// Throws a [WindowsException] if the `queryInterface` call fails.
  factory INetworkListManagerEvents.from(IUnknown interface) =>
      INetworkListManagerEvents(
          interface.toInterface(IID_INetworkListManagerEvents));

  /// Called when network connectivity related changes occur.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/netlistmgr/nf-netlistmgr-inetworklistmanagerevents-connectivitychanged>.
  int connectivityChanged(int newConnectivity) =>
      _vtable.ConnectivityChanged.asFunction<
              int Function(VTablePointer lpVtbl, int newConnectivity)>()(
          ptr, newConnectivity);
}

/// @nodoc
base class INetworkListManagerEventsVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Int32 newConnectivity)>>
      ConnectivityChanged;
}