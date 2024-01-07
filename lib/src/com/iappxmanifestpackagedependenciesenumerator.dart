// iappxmanifestpackagedependenciesenumerator.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../types.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IAppxManifestPackageDependenciesEnumerator =
    '{b43bbcf9-65a6-42dd-bac0-8c6741e7f5a4}';

/// Enumerates the package dependencies defined in the package manifest.
///
/// {@category com}
class IAppxManifestPackageDependenciesEnumerator extends IUnknown {
  IAppxManifestPackageDependenciesEnumerator(super.ptr)
      : _vtable = ptr.value
            .cast<IAppxManifestPackageDependenciesEnumeratorVtbl>()
            .ref;

  final IAppxManifestPackageDependenciesEnumeratorVtbl _vtable;

  factory IAppxManifestPackageDependenciesEnumerator.from(IUnknown interface) =>
      IAppxManifestPackageDependenciesEnumerator(interface
          .toInterface(IID_IAppxManifestPackageDependenciesEnumerator));

  int getCurrent(Pointer<VTablePointer> dependency) =>
      _vtable.GetCurrent.asFunction<
              int Function(VTablePointer, Pointer<VTablePointer> dependency)>()(
          ptr, dependency);

  int getHasCurrent(Pointer<Int32> hasCurrent) =>
      _vtable.GetHasCurrent.asFunction<
          int Function(
              VTablePointer, Pointer<Int32> hasCurrent)>()(ptr, hasCurrent);

  int moveNext(Pointer<Int32> hasNext) => _vtable.MoveNext.asFunction<
      int Function(VTablePointer, Pointer<Int32> hasNext)>()(ptr, hasNext);
}

/// @nodoc
base class IAppxManifestPackageDependenciesEnumeratorVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> dependency)>>
      GetCurrent;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Int32> hasCurrent)>>
      GetHasCurrent;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> hasNext)>>
      MoveNext;
}
