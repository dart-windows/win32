// ienumresources.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../combase.dart';
import '../structs.g.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IEnumResources = '{2dd81fe3-a83c-4da9-a330-47249d345ba1}';

/// Exposes resource enumeration methods.
///
/// {@category com}
class IEnumResources extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IEnumResources(super.ptr)
      : _vtable = ptr.ref.vtable.cast<IEnumResourcesVtbl>().ref;

  final IEnumResourcesVtbl _vtable;

  factory IEnumResources.from(IUnknown interface) =>
      IEnumResources(interface.toInterface(IID_IEnumResources));

  int next(int celt, Pointer<SHELL_ITEM_RESOURCE> psir,
          Pointer<Uint32> pceltFetched) =>
      _vtable.Next.asFunction<
              int Function(Pointer, int celt, Pointer<SHELL_ITEM_RESOURCE> psir,
                  Pointer<Uint32> pceltFetched)>()(
          ptr.ref.lpVtbl, celt, psir, pceltFetched);

  int skip(int celt) =>
      _vtable.Skip.asFunction<int Function(Pointer, int celt)>()(
          ptr.ref.lpVtbl, celt);

  int reset() =>
      _vtable.Reset.asFunction<int Function(Pointer)>()(ptr.ref.lpVtbl);

  int clone(Pointer<Pointer<COMObject>> ppenumr) => _vtable.Clone.asFunction<
          int Function(Pointer, Pointer<Pointer<COMObject>> ppenumr)>()(
      ptr.ref.lpVtbl, ppenumr);
}

/// @nodoc
base class IEnumResourcesVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              Uint32 celt,
              Pointer<SHELL_ITEM_RESOURCE> psir,
              Pointer<Uint32> pceltFetched)>> Next;
  external Pointer<NativeFunction<Int32 Function(Pointer, Uint32 celt)>> Skip;
  external Pointer<NativeFunction<Int32 Function(Pointer)>> Reset;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<Pointer<COMObject>> ppenumr)>> Clone;
}
