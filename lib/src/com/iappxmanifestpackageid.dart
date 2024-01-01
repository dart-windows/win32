// iappxmanifestpackageid.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'iunknown.dart';

/// @nodoc
const IID_IAppxManifestPackageId = '{283ce2d7-7153-4a91-9649-7a0f7240945f}';

/// Provides access to the package identity.
///
/// {@category com}
class IAppxManifestPackageId extends IUnknown {
  // vtable begins at 3, is 8 entries long.
  IAppxManifestPackageId(super.ptr)
      : _vtable = ptr.ref.vtable.cast<IAppxManifestPackageIdVtbl>().ref;

  final IAppxManifestPackageIdVtbl _vtable;

  factory IAppxManifestPackageId.from(IUnknown interface) =>
      IAppxManifestPackageId(interface.toInterface(IID_IAppxManifestPackageId));

  int getName(Pointer<Pointer<Utf16>> name) => _vtable.GetName.asFunction<
      int Function(
          Pointer, Pointer<Pointer<Utf16>> name)>()(ptr.ref.lpVtbl, name);

  int getArchitecture(Pointer<Int32> architecture) => _vtable.GetArchitecture
          .asFunction<int Function(Pointer, Pointer<Int32> architecture)>()(
      ptr.ref.lpVtbl, architecture);

  int getPublisher(Pointer<Pointer<Utf16>> publisher) =>
      _vtable.GetPublisher.asFunction<
              int Function(Pointer, Pointer<Pointer<Utf16>> publisher)>()(
          ptr.ref.lpVtbl, publisher);

  int getVersion(Pointer<Uint64> packageVersion) => _vtable.GetVersion
          .asFunction<int Function(Pointer, Pointer<Uint64> packageVersion)>()(
      ptr.ref.lpVtbl, packageVersion);

  int getResourceId(Pointer<Pointer<Utf16>> resourceId) =>
      _vtable.GetResourceId.asFunction<
              int Function(Pointer, Pointer<Pointer<Utf16>> resourceId)>()(
          ptr.ref.lpVtbl, resourceId);

  int comparePublisher(Pointer<Utf16> other, Pointer<Int32> isSame) =>
      _vtable.ComparePublisher.asFunction<
          int Function(Pointer, Pointer<Utf16> other,
              Pointer<Int32> isSame)>()(ptr.ref.lpVtbl, other, isSame);

  int getPackageFullName(Pointer<Pointer<Utf16>> packageFullName) =>
      _vtable.GetPackageFullName.asFunction<
              int Function(Pointer, Pointer<Pointer<Utf16>> packageFullName)>()(
          ptr.ref.lpVtbl, packageFullName);

  int getPackageFamilyName(Pointer<Pointer<Utf16>> packageFamilyName) =>
      _vtable.GetPackageFamilyName.asFunction<
              int Function(
                  Pointer, Pointer<Pointer<Utf16>> packageFamilyName)>()(
          ptr.ref.lpVtbl, packageFamilyName);
}

/// @nodoc
base class IAppxManifestPackageIdVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Pointer<Utf16>> name)>>
      GetName;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> architecture)>>
      GetArchitecture;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Pointer<Utf16>> publisher)>>
      GetPublisher;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<Uint64> packageVersion)>> GetVersion;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Pointer<Utf16>> resourceId)>>
      GetResourceId;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer, Pointer<Utf16> other, Pointer<Int32> isSame)>>
      ComparePublisher;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Pointer<Utf16>> packageFullName)>>
      GetPackageFullName;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer, Pointer<Pointer<Utf16>> packageFamilyName)>>
      GetPackageFamilyName;
}
