// iappxfilesenumerator.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../combase.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IAppxFilesEnumerator = '{f007eeaf-9831-411c-9847-917cdc62d1fe}';

/// Enumerates the payload files in a package.
///
/// {@category com}
class IAppxFilesEnumerator extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IAppxFilesEnumerator(super.ptr)
      : _vtable = ptr.ref.vtable.cast<IAppxFilesEnumeratorVtbl>().ref;

  final IAppxFilesEnumeratorVtbl _vtable;

  factory IAppxFilesEnumerator.from(IUnknown interface) =>
      IAppxFilesEnumerator(interface.toInterface(IID_IAppxFilesEnumerator));

  int getCurrent(
          Pointer<Pointer<COMObject>> file) =>
      _vtable.GetCurrent.asFunction<
              int Function(Pointer, Pointer<Pointer<COMObject>> file)>()(
          ptr.ref.lpVtbl, file);

  int getHasCurrent(Pointer<Int32> hasCurrent) => _vtable.GetHasCurrent
          .asFunction<int Function(Pointer, Pointer<Int32> hasCurrent)>()(
      ptr.ref.lpVtbl, hasCurrent);

  int moveNext(Pointer<Int32> hasNext) => _vtable.MoveNext.asFunction<
      int Function(Pointer, Pointer<Int32> hasNext)>()(ptr.ref.lpVtbl, hasNext);
}

/// @nodoc
base class IAppxFilesEnumeratorVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Pointer<COMObject>> file)>>
      GetCurrent;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> hasCurrent)>>
      GetHasCurrent;
  external Pointer<
      NativeFunction<Int32 Function(Pointer, Pointer<Int32> hasNext)>> MoveNext;
}
