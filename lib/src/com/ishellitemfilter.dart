// ishellitemfilter.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../types.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IShellItemFilter = '{2659b475-eeb8-48b7-8f07-b378810f48cf}';

/// Exposed by a client to specify how to filter the enumeration of a Shell
/// item by a server application.
///
/// {@category com}
class IShellItemFilter extends IUnknown {
  IShellItemFilter(super.ptr)
      : _vtable = ptr.value.value.cast<IShellItemFilterVtbl>().ref;

  final IShellItemFilterVtbl _vtable;

  factory IShellItemFilter.from(IUnknown interface) =>
      IShellItemFilter(interface.toInterface(IID_IShellItemFilter));

  int includeItem(Pointer<VTablePointer> psi) => _vtable.IncludeItem.asFunction<
      int Function(
          VTablePointer, Pointer<VTablePointer> psi)>()(ptr.value, psi);

  int getEnumFlagsForItem(
          Pointer<VTablePointer> psi, Pointer<Uint32> pgrfFlags) =>
      _vtable.GetEnumFlagsForItem.asFunction<
          int Function(VTablePointer, Pointer<VTablePointer> psi,
              Pointer<Uint32> pgrfFlags)>()(ptr.value, psi, pgrfFlags);
}

/// @nodoc
base class IShellItemFilterVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> psi)>>
      IncludeItem;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<VTablePointer> psi,
              Pointer<Uint32> pgrfFlags)>> GetEnumFlagsForItem;
}
