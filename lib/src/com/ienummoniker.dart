// ienummoniker.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../types.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IEnumMoniker = '{00000102-0000-0000-c000-000000000046}';

/// Enumerates the components of a moniker or the monikers in a table of
/// monikers.
///
/// {@category com}
class IEnumMoniker extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IEnumMoniker(super.ptr)
      : _vtable = ptr.value.value.cast<IEnumMonikerVtbl>().ref;

  final IEnumMonikerVtbl _vtable;

  factory IEnumMoniker.from(IUnknown interface) =>
      IEnumMoniker(interface.toInterface(IID_IEnumMoniker));

  int next(int celt, Pointer<Pointer<VTablePointer>> rgelt,
          Pointer<Uint32> pceltFetched) =>
      _vtable.Next.asFunction<
              int Function(
                  VTablePointer,
                  int celt,
                  Pointer<Pointer<VTablePointer>> rgelt,
                  Pointer<Uint32> pceltFetched)>()(
          ptr.value, celt, rgelt, pceltFetched);

  int skip(int celt) =>
      _vtable.Skip.asFunction<int Function(VTablePointer, int celt)>()(
          ptr.value, celt);

  int reset() =>
      _vtable.Reset.asFunction<int Function(VTablePointer)>()(ptr.value);

  int clone(Pointer<Pointer<VTablePointer>> ppenum) => _vtable.Clone.asFunction<
      int Function(VTablePointer,
          Pointer<Pointer<VTablePointer>> ppenum)>()(ptr.value, ppenum);
}

/// @nodoc
base class IEnumMonikerVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Uint32 celt,
              Pointer<Pointer<VTablePointer>> rgelt,
              Pointer<Uint32> pceltFetched)>> Next;
  external Pointer<NativeFunction<Int32 Function(VTablePointer, Uint32 celt)>>
      Skip;
  external Pointer<NativeFunction<Int32 Function(VTablePointer)>> Reset;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer, Pointer<Pointer<VTablePointer>> ppenum)>> Clone;
}
