// ienumspellingerror.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../combase.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IEnumSpellingError = '{803e3bd4-2828-4410-8290-418d1d73c762}';

/// An enumeration of the spelling errors.
///
/// {@category com}
class IEnumSpellingError extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IEnumSpellingError(super.ptr)
      : _vtable = ptr.ref.vtable.cast<IEnumSpellingErrorVtbl>().ref;

  final IEnumSpellingErrorVtbl _vtable;

  factory IEnumSpellingError.from(IUnknown interface) =>
      IEnumSpellingError(interface.toInterface(IID_IEnumSpellingError));

  int next(Pointer<Pointer<COMObject>> value) => _vtable.Next.asFunction<
      int Function(
          Pointer, Pointer<Pointer<COMObject>> value)>()(ptr.ref.lpVtbl, value);
}

/// @nodoc
base class IEnumSpellingErrorVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<Pointer<COMObject>> value)>> Next;
}
