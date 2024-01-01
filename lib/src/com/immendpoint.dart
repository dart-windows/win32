// immendpoint.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'iunknown.dart';

/// @nodoc
const IID_IMMEndpoint = '{1be09788-6894-4089-8586-9a2a6c265ac5}';

/// The IMMEndpoint interface represents an audio endpoint device.
///
/// {@category com}
class IMMEndpoint extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IMMEndpoint(super.ptr) : _vtable = ptr.ref.vtable.cast<IMMEndpointVtbl>().ref;

  final IMMEndpointVtbl _vtable;

  factory IMMEndpoint.from(IUnknown interface) =>
      IMMEndpoint(interface.toInterface(IID_IMMEndpoint));

  int getDataFlow(Pointer<Int32> pDataFlow) => _vtable.GetDataFlow.asFunction<
      int Function(
          Pointer, Pointer<Int32> pDataFlow)>()(ptr.ref.lpVtbl, pDataFlow);
}

/// @nodoc
base class IMMEndpointVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> pDataFlow)>>
      GetDataFlow;
}
