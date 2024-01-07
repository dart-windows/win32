// iappxmanifestapplicationsenumerator.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../types.dart';
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
            ptr.value.value.cast<IAppxManifestApplicationsEnumeratorVtbl>().ref;

  final IAppxManifestApplicationsEnumeratorVtbl _vtable;

  factory IAppxManifestApplicationsEnumerator.from(IUnknown interface) =>
      IAppxManifestApplicationsEnumerator(
          interface.toInterface(IID_IAppxManifestApplicationsEnumerator));

  int getCurrent(Pointer<Pointer<VTablePointer>> application) =>
      _vtable.GetCurrent.asFunction<
              int Function(VTablePointer,
                  Pointer<Pointer<VTablePointer>> application)>()(
          ptr.value, application);

  int getHasCurrent(Pointer<Int32> hasCurrent) => _vtable.GetHasCurrent
          .asFunction<int Function(VTablePointer, Pointer<Int32> hasCurrent)>()(
      ptr.value, hasCurrent);

  int moveNext(Pointer<Int32> hasNext) => _vtable.MoveNext.asFunction<
      int Function(
          VTablePointer, Pointer<Int32> hasNext)>()(ptr.value, hasNext);
}

/// @nodoc
base class IAppxManifestApplicationsEnumeratorVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Pointer<VTablePointer>> application)>>
      GetCurrent;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Int32> hasCurrent)>>
      GetHasCurrent;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> hasNext)>>
      MoveNext;
}
