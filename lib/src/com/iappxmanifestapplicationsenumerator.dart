// iappxmanifestapplicationsenumerator.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../combase.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IAppxManifestApplicationsEnumerator =
    '{9eb8a55a-f04b-4d0d-808d-686185d4847a}';

/// Enumerates the applications defined in the package manifest.
///
/// {@category com}
class IAppxManifestApplicationsEnumerator extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IAppxManifestApplicationsEnumerator(super.ptr)
      : _vtable =
            ptr.ref.vtable.cast<IAppxManifestApplicationsEnumeratorVtbl>().ref;

  final IAppxManifestApplicationsEnumeratorVtbl _vtable;

  factory IAppxManifestApplicationsEnumerator.from(IUnknown interface) =>
      IAppxManifestApplicationsEnumerator(
          interface.toInterface(IID_IAppxManifestApplicationsEnumerator));

  int getCurrent(Pointer<Pointer<COMObject>> application) =>
      _vtable.GetCurrent.asFunction<
              int Function(Pointer, Pointer<Pointer<COMObject>> application)>()(
          ptr.ref.lpVtbl, application);

  int getHasCurrent(Pointer<Int32> hasCurrent) => _vtable.GetHasCurrent
          .asFunction<int Function(Pointer, Pointer<Int32> hasCurrent)>()(
      ptr.ref.lpVtbl, hasCurrent);

  int moveNext(Pointer<Int32> hasNext) => _vtable.MoveNext.asFunction<
      int Function(Pointer, Pointer<Int32> hasNext)>()(ptr.ref.lpVtbl, hasNext);
}

/// @nodoc
base class IAppxManifestApplicationsEnumeratorVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Pointer<COMObject>> application)>>
      GetCurrent;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> hasCurrent)>>
      GetHasCurrent;
  external Pointer<
      NativeFunction<Int32 Function(Pointer, Pointer<Int32> hasNext)>> MoveNext;
}
