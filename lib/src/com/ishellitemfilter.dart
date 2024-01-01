// ishellitemfilter.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../combase.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IShellItemFilter = '{2659b475-eeb8-48b7-8f07-b378810f48cf}';

/// Exposed by a client to specify how to filter the enumeration of a Shell
/// item by a server application.
///
/// {@category com}
class IShellItemFilter extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IShellItemFilter(super.ptr)
      : _vtable = ptr.ref.vtable.cast<IShellItemFilterVtbl>().ref;

  final IShellItemFilterVtbl _vtable;

  factory IShellItemFilter.from(IUnknown interface) =>
      IShellItemFilter(interface.toInterface(IID_IShellItemFilter));

  int includeItem(Pointer<COMObject> psi) => _vtable.IncludeItem.asFunction<
      int Function(Pointer, Pointer<COMObject> psi)>()(ptr.ref.lpVtbl, psi);

  int getEnumFlagsForItem(Pointer<COMObject> psi, Pointer<Uint32> pgrfFlags) =>
      _vtable.GetEnumFlagsForItem.asFunction<
          int Function(Pointer, Pointer<COMObject> psi,
              Pointer<Uint32> pgrfFlags)>()(ptr.ref.lpVtbl, psi, pgrfFlags);
}

/// @nodoc
base class IShellItemFilterVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<COMObject> psi)>>
      IncludeItem;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer, Pointer<COMObject> psi, Pointer<Uint32> pgrfFlags)>>
      GetEnumFlagsForItem;
}
