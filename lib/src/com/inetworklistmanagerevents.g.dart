// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../extensions/iunknown.dart';
import '../types.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_INetworkListManagerEvents = '{dcb00001-570f-4a9b-8d69-199fdba5723b}';

/// INetworkListManagerEvents is a message sink interface that a client
/// implements to get overall machine state related events. Applications that
/// are interested on higher-level events, for example internet connectivity,
/// implement this interface.
///
/// {@category com}
class INetworkListManagerEvents extends IUnknown {
  INetworkListManagerEvents(super.ptr)
      : _vtable = ptr.value.cast<INetworkListManagerEventsVtbl>().ref;

  final INetworkListManagerEventsVtbl _vtable;

  factory INetworkListManagerEvents.from(IUnknown interface) =>
      INetworkListManagerEvents(
          interface.toInterface(IID_INetworkListManagerEvents));

  int connectivityChanged(int newConnectivity) =>
      _vtable.ConnectivityChanged.asFunction<
          int Function(
              VTablePointer, int newConnectivity)>()(ptr, newConnectivity);
}

/// @nodoc
base class INetworkListManagerEventsVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Int32 newConnectivity)>>
      ConnectivityChanged;
}
