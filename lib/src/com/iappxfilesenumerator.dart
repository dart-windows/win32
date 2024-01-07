// iappxfilesenumerator.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../types.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IAppxFilesEnumerator = '{f007eeaf-9831-411c-9847-917cdc62d1fe}';

/// Enumerates the payload files in a package.
///
/// {@category com}
class IAppxFilesEnumerator extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IAppxFilesEnumerator(super.ptr)
      : _vtable = ptr.value.value.cast<IAppxFilesEnumeratorVtbl>().ref;

  final IAppxFilesEnumeratorVtbl _vtable;

  factory IAppxFilesEnumerator.from(IUnknown interface) =>
      IAppxFilesEnumerator(interface.toInterface(IID_IAppxFilesEnumerator));

  int getCurrent(Pointer<Pointer<VTablePointer>> file) =>
      _vtable.GetCurrent.asFunction<
          int Function(VTablePointer,
              Pointer<Pointer<VTablePointer>> file)>()(ptr.value, file);

  int getHasCurrent(Pointer<Int32> hasCurrent) => _vtable.GetHasCurrent
          .asFunction<int Function(VTablePointer, Pointer<Int32> hasCurrent)>()(
      ptr.value, hasCurrent);

  int moveNext(Pointer<Int32> hasNext) => _vtable.MoveNext.asFunction<
      int Function(
          VTablePointer, Pointer<Int32> hasNext)>()(ptr.value, hasNext);
}

/// @nodoc
base class IAppxFilesEnumeratorVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer, Pointer<Pointer<VTablePointer>> file)>> GetCurrent;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Int32> hasCurrent)>>
      GetHasCurrent;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> hasNext)>>
      MoveNext;
}
