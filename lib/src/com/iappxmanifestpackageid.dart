// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../extensions/iunknown.dart';
import '../types.dart';
import 'iunknown.dart';

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

  int getName(Pointer<Pointer<Utf16>> name) => _vtable.GetName.asFunction<
      int Function(VTablePointer, Pointer<Pointer<Utf16>> name)>()(ptr, name);

  int getArchitecture(Pointer<Int32> architecture) =>
      _vtable.GetArchitecture.asFunction<
          int Function(
              VTablePointer, Pointer<Int32> architecture)>()(ptr, architecture);

  int getPublisher(Pointer<Pointer<Utf16>> publisher) =>
      _vtable.GetPublisher.asFunction<
              int Function(VTablePointer, Pointer<Pointer<Utf16>> publisher)>()(
          ptr, publisher);

  int getVersion(Pointer<Uint64> packageVersion) =>
      _vtable.GetVersion.asFunction<
              int Function(VTablePointer, Pointer<Uint64> packageVersion)>()(
          ptr, packageVersion);

  int getResourceId(Pointer<Pointer<Utf16>> resourceId) =>
      _vtable.GetResourceId.asFunction<
          int Function(VTablePointer,
              Pointer<Pointer<Utf16>> resourceId)>()(ptr, resourceId);

  int comparePublisher(Pointer<Utf16> other, Pointer<Int32> isSame) =>
      _vtable.ComparePublisher.asFunction<
          int Function(VTablePointer, Pointer<Utf16> other,
              Pointer<Int32> isSame)>()(ptr, other, isSame);

  int getPackageFullName(Pointer<Pointer<Utf16>> packageFullName) =>
      _vtable.GetPackageFullName.asFunction<
          int Function(VTablePointer,
              Pointer<Pointer<Utf16>> packageFullName)>()(ptr, packageFullName);

  int getPackageFamilyName(Pointer<Pointer<Utf16>> packageFamilyName) =>
      _vtable.GetPackageFamilyName.asFunction<
              int Function(
                  VTablePointer, Pointer<Pointer<Utf16>> packageFamilyName)>()(
          ptr, packageFamilyName);
}

/// @nodoc
base class IAppxManifestPackageIdVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<Pointer<Utf16>> name)>> GetName;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Int32> architecture)>>
      GetArchitecture;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Pointer<Utf16>> publisher)>>
      GetPublisher;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Uint64> packageVersion)>>
      GetVersion;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Pointer<Utf16>> resourceId)>>
      GetResourceId;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Utf16> other, Pointer<Int32> isSame)>>
      ComparePublisher;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Pointer<Utf16>> packageFullName)>>
      GetPackageFullName;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Pointer<Utf16>> packageFamilyName)>>
      GetPackageFamilyName;
}
