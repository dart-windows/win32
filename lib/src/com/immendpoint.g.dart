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
const IID_IMMEndpoint = '{1be09788-6894-4089-8586-9a2a6c265ac5}';

/// The IMMEndpoint interface represents an audio endpoint device.
///
/// {@category com}
class IMMEndpoint extends IUnknown {
  IMMEndpoint(super.ptr) : _vtable = ptr.value.cast<IMMEndpointVtbl>().ref;

  final IMMEndpointVtbl _vtable;

  factory IMMEndpoint.from(IUnknown interface) =>
      IMMEndpoint(interface.toInterface(IID_IMMEndpoint));

  int getDataFlow(Pointer<Int32> pDataFlow) => _vtable.GetDataFlow.asFunction<
      int Function(VTablePointer, Pointer<Int32> pDataFlow)>()(ptr, pDataFlow);
}

/// @nodoc
base class IMMEndpointVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<Int32> pDataFlow)>> GetDataFlow;
}
