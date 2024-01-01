// ienumstring.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IEnumString = '{00000101-0000-0000-c000-000000000046}';

/// Enumerate strings. `LPWSTR` is the type that indicates a pointer to a
/// zero-terminated string of wide, or Unicode, characters.
///
/// {@category com}
class IEnumString extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IEnumString(super.ptr) : _vtable = ptr.ref.vtable.cast<IEnumStringVtbl>().ref;

  final IEnumStringVtbl _vtable;

  factory IEnumString.from(IUnknown interface) =>
      IEnumString(interface.toInterface(IID_IEnumString));

  int next(int celt, Pointer<Pointer<Utf16>> rgelt,
          Pointer<Uint32> pceltFetched) =>
      _vtable.Next.asFunction<
              int Function(Pointer, int celt, Pointer<Pointer<Utf16>> rgelt,
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
base class IEnumStringVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Uint32 celt, Pointer<Pointer<Utf16>> rgelt,
              Pointer<Uint32> pceltFetched)>> Next;
  external Pointer<NativeFunction<Int32 Function(Pointer, Uint32 celt)>> Skip;
  external Pointer<NativeFunction<Int32 Function(Pointer)>> Reset;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<Pointer<COMObject>> ppenum)>> Clone;
}
