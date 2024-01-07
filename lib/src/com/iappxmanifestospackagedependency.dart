// iappxmanifestospackagedependency.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../types.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IAppxManifestOSPackageDependency =
    '{154995ee-54a6-4f14-ac97-d8cf0519644b}';

/// {@category com}
class IAppxManifestOSPackageDependency extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IAppxManifestOSPackageDependency(super.ptr)
      : _vtable =
            ptr.value.value.cast<IAppxManifestOSPackageDependencyVtbl>().ref;

  final IAppxManifestOSPackageDependencyVtbl _vtable;

  factory IAppxManifestOSPackageDependency.from(IUnknown interface) =>
      IAppxManifestOSPackageDependency(
          interface.toInterface(IID_IAppxManifestOSPackageDependency));

  int getName(Pointer<Pointer<Utf16>> name) => _vtable.GetName.asFunction<
      int Function(
          VTablePointer, Pointer<Pointer<Utf16>> name)>()(ptr.value, name);

  int getVersion(Pointer<Uint64> version) => _vtable.GetVersion.asFunction<
      int Function(
          VTablePointer, Pointer<Uint64> version)>()(ptr.value, version);
}

/// @nodoc
base class IAppxManifestOSPackageDependencyVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<Pointer<Utf16>> name)>> GetName;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<Uint64> version)>> GetVersion;
}
