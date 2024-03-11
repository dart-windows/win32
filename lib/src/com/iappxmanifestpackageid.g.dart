// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../exceptions.dart';
import '../extensions/iunknown.dart';
import '../structs.g.dart';
import '../types.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IAppxManifestPackageId = '{283ce2d7-7153-4a91-9649-7a0f7240945f}';

/// Provides access to the package identity.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nn-appxpackaging-iappxmanifestpackageid>.
///
/// {@category com}
class IAppxManifestPackageId extends IUnknown {
  IAppxManifestPackageId(super.ptr)
      : _vtable = ptr.value.cast<IAppxManifestPackageIdVtbl>().ref;

  final IAppxManifestPackageIdVtbl _vtable;

  /// Creates a new instance of `IAppxManifestPackageId` from an existing
  /// [interface].
  ///
  /// This constructor invokes the [queryInterface] method to obtain a reference
  /// to the `IAppxManifestPackageId` interface with the provided interface.
  ///
  /// Throws a [WindowsException] if the `queryInterface` call fails.
  factory IAppxManifestPackageId.from(IUnknown interface) =>
      IAppxManifestPackageId(interface.toInterface(IID_IAppxManifestPackageId));

  /// Gets the name of the package as defined in the manifest.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxmanifestpackageid-getname>.
  int getName(Pointer<Pointer<Utf16>> name) => _vtable.GetName.asFunction<
      int Function(
          VTablePointer lpVtbl, Pointer<Pointer<Utf16>> name)>()(ptr, name);

  /// Gets the processor architecture as defined in the manifest.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxmanifestpackageid-getarchitecture>.
  int getArchitecture(Pointer<Int32> architecture) =>
      _vtable.GetArchitecture.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Int32> architecture)>()(ptr, architecture);

  /// Gets the name of the package publisher as defined in the manifest.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxmanifestpackageid-getpublisher>.
  int getPublisher(Pointer<Pointer<Utf16>> publisher) =>
      _vtable.GetPublisher.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<Utf16>> publisher)>()(ptr, publisher);

  /// Gets the version of the package as defined in the manifest.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxmanifestpackageid-getversion>.
  int getVersion(Pointer<Uint64> packageVersion) =>
      _vtable.GetVersion.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Uint64> packageVersion)>()(ptr, packageVersion);

  /// Gets the package resource identifier as defined in the manifest.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxmanifestpackageid-getresourceid>.
  int getResourceId(Pointer<Pointer<Utf16>> resourceId) =>
      _vtable.GetResourceId.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<Utf16>> resourceId)>()(ptr, resourceId);

  /// Compares the specified publisher with the publisher defined in the manifest.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxmanifestpackageid-comparepublisher>.
  int comparePublisher(Pointer<Utf16> other, Pointer<BOOL> isSame) =>
      _vtable.ComparePublisher.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<Utf16> other,
              Pointer<BOOL> isSame)>()(ptr, other, isSame);

  /// Gets the package full name.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxmanifestpackageid-getpackagefullname>.
  int getPackageFullName(Pointer<Pointer<Utf16>> packageFullName) =>
      _vtable.GetPackageFullName.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<Utf16>> packageFullName)>()(ptr, packageFullName);

  /// Gets the package family name.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxmanifestpackageid-getpackagefamilyname>.
  int getPackageFamilyName(Pointer<Pointer<Utf16>> packageFamilyName) =>
      _vtable.GetPackageFamilyName.asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<Pointer<Utf16>> packageFamilyName)>()(
          ptr, packageFamilyName);
}

/// @nodoc
base class IAppxManifestPackageIdVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Pointer<Utf16>> name)>> GetName;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Int32> architecture)>>
      GetArchitecture;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Pointer<Utf16>> publisher)>>
      GetPublisher;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Uint64> packageVersion)>>
      GetVersion;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Pointer<Utf16>> resourceId)>>
      GetResourceId;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<Utf16> other,
              Pointer<BOOL> isSame)>> ComparePublisher;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl,
              Pointer<Pointer<Utf16>> packageFullName)>> GetPackageFullName;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl,
              Pointer<Pointer<Utf16>> packageFamilyName)>> GetPackageFamilyName;
}
