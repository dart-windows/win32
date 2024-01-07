// ienumspellingerror.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../extensions/iunknown.dart';
import '../types.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IEnumSpellingError = '{803e3bd4-2828-4410-8290-418d1d73c762}';

/// An enumeration of the spelling errors.
///
/// {@category com}
class IEnumSpellingError extends IUnknown {
  IEnumSpellingError(super.ptr)
      : _vtable = ptr.value.cast<IEnumSpellingErrorVtbl>().ref;

  final IEnumSpellingErrorVtbl _vtable;

  factory IEnumSpellingError.from(IUnknown interface) =>
      IEnumSpellingError(interface.toInterface(IID_IEnumSpellingError));

  int next(Pointer<VTablePointer> value) => _vtable.Next.asFunction<
      int Function(VTablePointer, Pointer<VTablePointer> value)>()(ptr, value);
}

/// @nodoc
base class IEnumSpellingErrorVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<VTablePointer> value)>> Next;
}
