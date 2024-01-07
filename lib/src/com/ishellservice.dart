// ishellservice.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../types.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IShellService = '{5836fb00-8187-11cf-a12b-00aa004ae837}';

/// IShellService Exposes one method that declares ownership when a service
/// component implementing a certain interface is shared among multiple
/// clients, such as Windows Internet Explorer and Windows Explorer.
///
/// {@category com}
class IShellService extends IUnknown {
  IShellService(super.ptr)
      : _vtable = ptr.value.value.cast<IShellServiceVtbl>().ref;

  final IShellServiceVtbl _vtable;

  factory IShellService.from(IUnknown interface) =>
      IShellService(interface.toInterface(IID_IShellService));

  int setOwner(Pointer<VTablePointer> punkOwner) => _vtable.SetOwner.asFunction<
          int Function(VTablePointer, Pointer<VTablePointer> punkOwner)>()(
      ptr.value, punkOwner);
}

/// @nodoc
base class IShellServiceVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> punkOwner)>>
      SetOwner;
}
