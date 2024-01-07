// iappxmanifestpackagedependency.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../types.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IAppxManifestPackageDependency =
    '{e4946b59-733e-43f0-a724-3bde4c1285a0}';

/// Describes the dependency of one package on another package.
///
/// {@category com}
class IAppxManifestPackageDependency extends IUnknown {
  IAppxManifestPackageDependency(super.ptr)
      : _vtable = ptr.value.cast<IAppxManifestPackageDependencyVtbl>().ref;

  final IAppxManifestPackageDependencyVtbl _vtable;

  factory IAppxManifestPackageDependency.from(IUnknown interface) =>
      IAppxManifestPackageDependency(
          interface.toInterface(IID_IAppxManifestPackageDependency));

  int getName(Pointer<Pointer<Utf16>> name) => _vtable.GetName.asFunction<
      int Function(VTablePointer, Pointer<Pointer<Utf16>> name)>()(ptr, name);

  int getPublisher(Pointer<Pointer<Utf16>> publisher) =>
      _vtable.GetPublisher.asFunction<
              int Function(VTablePointer, Pointer<Pointer<Utf16>> publisher)>()(
          ptr, publisher);

  int getMinVersion(
          Pointer<Uint64> minVersion) =>
      _vtable.GetMinVersion.asFunction<
          int Function(
              VTablePointer, Pointer<Uint64> minVersion)>()(ptr, minVersion);
}

/// @nodoc
base class IAppxManifestPackageDependencyVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<Pointer<Utf16>> name)>> GetName;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Pointer<Utf16>> publisher)>>
      GetPublisher;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Uint64> minVersion)>>
      GetMinVersion;
}
