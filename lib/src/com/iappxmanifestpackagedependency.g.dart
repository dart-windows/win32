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
const IID_IAppxManifestPackageDependency =
    '{e4946b59-733e-43f0-a724-3bde4c1285a0}';

/// Describes the dependency of one package on another package.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nn-appxpackaging-iappxmanifestpackagedependency>.
///
/// {@category com}
class IAppxManifestPackageDependency extends IUnknown {
  IAppxManifestPackageDependency(super.ptr)
      : _vtable = ptr.value.cast<IAppxManifestPackageDependencyVtbl>().ref;

  final IAppxManifestPackageDependencyVtbl _vtable;

  /// Creates a new instance of `IAppxManifestPackageDependency` from an
  /// existing [interface].
  ///
  /// This constructor invokes the [queryInterface] method to obtain a reference
  /// to the `IAppxManifestPackageDependency` interface with the provided
  /// interface.
  ///
  /// Throws a [WindowsException] if the `queryInterface` call fails.
  factory IAppxManifestPackageDependency.from(IUnknown interface) =>
      IAppxManifestPackageDependency(
          interface.toInterface(IID_IAppxManifestPackageDependency));

  /// Gets the name of the package on which the current package has a dependency.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxmanifestpackagedependency-getname>.
  int getName(Pointer<Pointer<Utf16>> name) => _vtable.GetName.asFunction<
      int Function(
          VTablePointer lpVtbl, Pointer<Pointer<Utf16>> name)>()(ptr, name);

  /// Gets the name of the publisher that produced the package on which the
  /// current package depends.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxmanifestpackagedependency-getpublisher>.
  int getPublisher(Pointer<Pointer<Utf16>> publisher) =>
      _vtable.GetPublisher.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<Utf16>> publisher)>()(ptr, publisher);

  /// Gets the minimum version of the package on which the current package has a
  /// dependency.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxmanifestpackagedependency-getminversion>.
  int getMinVersion(
          Pointer<Uint64> minVersion) =>
      _vtable.GetMinVersion.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<Uint64> minVersion)>()(
          ptr, minVersion);
}

/// @nodoc
base class IAppxManifestPackageDependencyVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Pointer<Utf16>> name)>> GetName;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Pointer<Utf16>> publisher)>>
      GetPublisher;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Uint64> minVersion)>> GetMinVersion;
}
