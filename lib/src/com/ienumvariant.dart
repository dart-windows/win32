// ienumvariant.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../combase.dart';
import '../variant.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IEnumVARIANT = '{00020404-0000-0000-c000-000000000046}';

/// Provides a method for enumerating a collection of variants, including
/// heterogeneous collections of objects and intrinsic types. Callers of
/// this interface do not need to know the specific type (or types) of the
/// elements in the collection.
///
/// {@category com}
class IEnumVARIANT extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IEnumVARIANT(super.ptr)
      : _vtable = ptr.ref.vtable.cast<IEnumVARIANTVtbl>().ref;

  final IEnumVARIANTVtbl _vtable;

  factory IEnumVARIANT.from(IUnknown interface) =>
      IEnumVARIANT(interface.toInterface(IID_IEnumVARIANT));

  int next(int celt, Pointer<VARIANT> rgVar, Pointer<Uint32> pCeltFetched) =>
      _vtable.Next.asFunction<
              int Function(Pointer, int celt, Pointer<VARIANT> rgVar,
                  Pointer<Uint32> pCeltFetched)>()(
          ptr.ref.lpVtbl, celt, rgVar, pCeltFetched);

  int skip(int celt) =>
      _vtable.Skip.asFunction<int Function(Pointer, int celt)>()(
          ptr.ref.lpVtbl, celt);

  int reset() =>
      _vtable.Reset.asFunction<int Function(Pointer)>()(ptr.ref.lpVtbl);

  int clone(Pointer<Pointer<COMObject>> ppEnum) => _vtable.Clone.asFunction<
          int Function(Pointer, Pointer<Pointer<COMObject>> ppEnum)>()(
      ptr.ref.lpVtbl, ppEnum);
}

/// @nodoc
base class IEnumVARIANTVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Uint32 celt, Pointer<VARIANT> rgVar,
              Pointer<Uint32> pCeltFetched)>> Next;
  external Pointer<NativeFunction<Int32 Function(Pointer, Uint32 celt)>> Skip;
  external Pointer<NativeFunction<Int32 Function(Pointer)>> Reset;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<Pointer<COMObject>> ppEnum)>> Clone;
}
