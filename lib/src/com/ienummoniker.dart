// ienummoniker.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../combase.dart';
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
      : _vtable = ptr.ref.vtable.cast<IEnumMonikerVtbl>().ref;

  final IEnumMonikerVtbl _vtable;

  factory IEnumMoniker.from(IUnknown interface) =>
      IEnumMoniker(interface.toInterface(IID_IEnumMoniker));

  int next(int celt, Pointer<Pointer<COMObject>> rgelt,
          Pointer<Uint32> pceltFetched) =>
      _vtable.Next.asFunction<
              int Function(Pointer, int celt, Pointer<Pointer<COMObject>> rgelt,
                  Pointer<Uint32> pceltFetched)>()(
          ptr.ref.lpVtbl, celt, rgelt, pceltFetched);

  int skip(int celt) =>
      _vtable.Skip.asFunction<int Function(Pointer, int celt)>()(
          ptr.ref.lpVtbl, celt);

  int reset() =>
      _vtable.Reset.asFunction<int Function(Pointer)>()(ptr.ref.lpVtbl);

  int clone(Pointer<Pointer<COMObject>> ppenum) => _vtable.Clone.asFunction<
          int Function(Pointer, Pointer<Pointer<COMObject>> ppenum)>()(
      ptr.ref.lpVtbl, ppenum);
}

/// @nodoc
base class IEnumMonikerVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              Uint32 celt,
              Pointer<Pointer<COMObject>> rgelt,
              Pointer<Uint32> pceltFetched)>> Next;
  external Pointer<NativeFunction<Int32 Function(Pointer, Uint32 celt)>> Skip;
  external Pointer<NativeFunction<Int32 Function(Pointer)>> Reset;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<Pointer<COMObject>> ppenum)>> Clone;
}
