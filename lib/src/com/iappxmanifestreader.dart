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
const IID_IAppxManifestReader = '{4e1bd148-55a0-4480-a3d1-15544710637c}';

/// Represents an object model of the package manifest that provides methods
/// to access manifest elements and attributes.
///
/// {@category com}
class IAppxManifestReader extends IUnknown {
  IAppxManifestReader(super.ptr)
      : _vtable = ptr.value.cast<IAppxManifestReaderVtbl>().ref;

  final IAppxManifestReaderVtbl _vtable;

  factory IAppxManifestReader.from(IUnknown interface) =>
      IAppxManifestReader(interface.toInterface(IID_IAppxManifestReader));

  int getPackageId(Pointer<VTablePointer> packageId) =>
      _vtable.GetPackageId.asFunction<
              int Function(VTablePointer, Pointer<VTablePointer> packageId)>()(
          ptr, packageId);

  int getProperties(Pointer<VTablePointer> packageProperties) =>
      _vtable.GetProperties.asFunction<
              int Function(
                  VTablePointer, Pointer<VTablePointer> packageProperties)>()(
          ptr, packageProperties);

  int getPackageDependencies(Pointer<VTablePointer> dependencies) =>
      _vtable.GetPackageDependencies.asFunction<
          int Function(VTablePointer,
              Pointer<VTablePointer> dependencies)>()(ptr, dependencies);

  int getCapabilities(Pointer<Int32> capabilities) =>
      _vtable.GetCapabilities.asFunction<
          int Function(
              VTablePointer, Pointer<Int32> capabilities)>()(ptr, capabilities);

  int getResources(Pointer<VTablePointer> resources) =>
      _vtable.GetResources.asFunction<
              int Function(VTablePointer, Pointer<VTablePointer> resources)>()(
          ptr, resources);

  int getDeviceCapabilities(Pointer<VTablePointer> deviceCapabilities) =>
      _vtable.GetDeviceCapabilities.asFunction<
              int Function(
                  VTablePointer, Pointer<VTablePointer> deviceCapabilities)>()(
          ptr, deviceCapabilities);

  int getPrerequisite(Pointer<Utf16> name, Pointer<Uint64> value) =>
      _vtable.GetPrerequisite.asFunction<
          int Function(VTablePointer, Pointer<Utf16> name,
              Pointer<Uint64> value)>()(ptr, name, value);

  int getApplications(Pointer<VTablePointer> applications) =>
      _vtable.GetApplications.asFunction<
          int Function(VTablePointer,
              Pointer<VTablePointer> applications)>()(ptr, applications);

  int getStream(Pointer<VTablePointer> manifestStream) =>
      _vtable.GetStream.asFunction<
          int Function(VTablePointer,
              Pointer<VTablePointer> manifestStream)>()(ptr, manifestStream);
}

/// @nodoc
base class IAppxManifestReaderVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> packageId)>>
      GetPackageId;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<VTablePointer> packageProperties)>>
      GetProperties;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<VTablePointer> dependencies)>>
      GetPackageDependencies;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Int32> capabilities)>>
      GetCapabilities;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> resources)>>
      GetResources;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<VTablePointer> deviceCapabilities)>>
      GetDeviceCapabilities;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Utf16> name, Pointer<Uint64> value)>>
      GetPrerequisite;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<VTablePointer> applications)>>
      GetApplications;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer, Pointer<VTablePointer> manifestStream)>> GetStream;
}
