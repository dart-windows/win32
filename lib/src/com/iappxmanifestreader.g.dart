// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../extensions/iunknown.dart';
import '../structs.g.dart';
import '../types.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IAppxManifestReader = '{4e1bd148-55a0-4480-a3d1-15544710637c}';

/// Represents an object model of the package manifest that provides methods to
/// access manifest elements and attributes.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nn-appxpackaging-iappxmanifestreader>.
///
/// {@category com}
class IAppxManifestReader extends IUnknown {
  IAppxManifestReader(super.ptr)
      : _vtable = ptr.value.cast<IAppxManifestReaderVtbl>().ref;

  final IAppxManifestReaderVtbl _vtable;

  factory IAppxManifestReader.from(IUnknown interface) =>
      IAppxManifestReader(interface.toInterface(IID_IAppxManifestReader));

  /// Gets the package identifier defined in the manifest.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxmanifestreader-getpackageid>.
  int getPackageId(Pointer<VTablePointer> packageId) =>
      _vtable.GetPackageId.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> packageId)>()(ptr, packageId);

  /// Gets the properties of the package as defined in the manifest.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxmanifestreader-getproperties>.
  int getProperties(Pointer<VTablePointer> packageProperties) =>
      _vtable.GetProperties.asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<VTablePointer> packageProperties)>()(
          ptr, packageProperties);

  /// Gets an enumerator that iterates through dependencies defined in the
  /// manifest.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxmanifestreader-getpackagedependencies>.
  int getPackageDependencies(Pointer<VTablePointer> dependencies) =>
      _vtable.GetPackageDependencies.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> dependencies)>()(ptr, dependencies);

  /// Gets the list of capabilities requested by the package.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxmanifestreader-getcapabilities>.
  int getCapabilities(Pointer<Int32> capabilities) =>
      _vtable.GetCapabilities.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Int32> capabilities)>()(ptr, capabilities);

  /// Gets an enumerator that iterates through the resources defined in the
  /// manifest.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxmanifestreader-getresources>.
  int getResources(Pointer<VTablePointer> resources) =>
      _vtable.GetResources.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> resources)>()(ptr, resources);

  /// Gets an enumerator that iterates through the device capabilities defined in
  /// the manifest.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxmanifestreader-getdevicecapabilities>.
  int getDeviceCapabilities(Pointer<VTablePointer> deviceCapabilities) =>
      _vtable.GetDeviceCapabilities.asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<VTablePointer> deviceCapabilities)>()(
          ptr, deviceCapabilities);

  /// Gets the specified prerequisite as defined in the package manifest.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxmanifestreader-getprerequisite>.
  int getPrerequisite(Pointer<Utf16> name, Pointer<Uint64> value) =>
      _vtable.GetPrerequisite.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<Utf16> name,
              Pointer<Uint64> value)>()(ptr, name, value);

  /// Gets an enumerator that iterates through the applications defined in the
  /// manifest.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxmanifestreader-getapplications>.
  int getApplications(Pointer<VTablePointer> applications) =>
      _vtable.GetApplications.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> applications)>()(ptr, applications);

  /// Gets the raw XML parsed and read by the manifest reader.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxmanifestreader-getstream>.
  int getStream(Pointer<VTablePointer> manifestStream) =>
      _vtable.GetStream.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> manifestStream)>()(ptr, manifestStream);
}

/// @nodoc
base class IAppxManifestReaderVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> packageId)>>
      GetPackageId;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> packageProperties)>> GetProperties;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> dependencies)>>
      GetPackageDependencies;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Int32> capabilities)>>
      GetCapabilities;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> resources)>>
      GetResources;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl,
                  Pointer<VTablePointer> deviceCapabilities)>>
      GetDeviceCapabilities;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<Utf16> name,
              Pointer<Uint64> value)>> GetPrerequisite;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> applications)>>
      GetApplications;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> manifestStream)>>
      GetStream;
}
