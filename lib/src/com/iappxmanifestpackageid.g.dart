// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../extensions/iunknown.dart';
import '../structs.g.dart';
import '../types.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IAppxManifestPackageId = '{283ce2d7-7153-4a91-9649-7a0f7240945f}';

/// Provides access to the package identity.
///
/// {@category com}
class IAppxManifestPackageId extends IUnknown {
  IAppxManifestPackageId(super.ptr)
      : _vtable = ptr.value.cast<IAppxManifestPackageIdVtbl>().ref;

  final IAppxManifestPackageIdVtbl _vtable;

  factory IAppxManifestPackageId.from(IUnknown interface) =>
      IAppxManifestPackageId(interface.toInterface(IID_IAppxManifestPackageId));

  int getName(Pointer<PWSTR> name) => _vtable.GetName.asFunction<
      int Function(VTablePointer lpVtbl, Pointer<PWSTR> name)>()(ptr, name);

  int getArchitecture(Pointer<Int32> architecture) =>
      _vtable.GetArchitecture.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Int32> architecture)>()(ptr, architecture);

  int getPublisher(Pointer<PWSTR> publisher) => _vtable.GetPublisher.asFunction<
      int Function(
          VTablePointer lpVtbl, Pointer<PWSTR> publisher)>()(ptr, publisher);

  int getVersion(Pointer<Uint64> packageVersion) =>
      _vtable.GetVersion.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Uint64> packageVersion)>()(ptr, packageVersion);

  int getResourceId(Pointer<PWSTR> resourceId) =>
      _vtable.GetResourceId.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<PWSTR> resourceId)>()(
          ptr, resourceId);

  int comparePublisher(PWSTR other, Pointer<BOOL> isSame) =>
      _vtable.ComparePublisher.asFunction<
          int Function(VTablePointer lpVtbl, PWSTR other,
              Pointer<BOOL> isSame)>()(ptr, other, isSame);

  int getPackageFullName(Pointer<PWSTR> packageFullName) =>
      _vtable.GetPackageFullName.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<PWSTR> packageFullName)>()(ptr, packageFullName);

  int getPackageFamilyName(Pointer<PWSTR> packageFamilyName) =>
      _vtable.GetPackageFamilyName.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<PWSTR> packageFamilyName)>()(ptr, packageFamilyName);
}

/// @nodoc
base class IAppxManifestPackageIdVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<PWSTR> name)>> GetName;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Int32> architecture)>>
      GetArchitecture;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<PWSTR> publisher)>>
      GetPublisher;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Uint64> packageVersion)>>
      GetVersion;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<PWSTR> resourceId)>> GetResourceId;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, PWSTR other, Pointer<BOOL> isSame)>>
      ComparePublisher;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<PWSTR> packageFullName)>>
      GetPackageFullName;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<PWSTR> packageFamilyName)>>
      GetPackageFamilyName;
}
