// iappxmanifestreader.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../types.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IAppxManifestReader = '{4e1bd148-55a0-4480-a3d1-15544710637c}';

/// Represents an object model of the package manifest that provides methods
/// to access manifest elements and attributes.
///
/// {@category com}
class IAppxManifestReader extends IUnknown {
  // vtable begins at 3, is 9 entries long.
  IAppxManifestReader(super.ptr)
      : _vtable = ptr.value.value.cast<IAppxManifestReaderVtbl>().ref;

  final IAppxManifestReaderVtbl _vtable;

  factory IAppxManifestReader.from(IUnknown interface) =>
      IAppxManifestReader(interface.toInterface(IID_IAppxManifestReader));

  int getPackageId(Pointer<Pointer<VTablePointer>> packageId) =>
      _vtable.GetPackageId.asFunction<
              int Function(
                  VTablePointer, Pointer<Pointer<VTablePointer>> packageId)>()(
          ptr.value, packageId);

  int getProperties(Pointer<Pointer<VTablePointer>> packageProperties) =>
      _vtable.GetProperties.asFunction<
              int Function(VTablePointer,
                  Pointer<Pointer<VTablePointer>> packageProperties)>()(
          ptr.value, packageProperties);

  int getPackageDependencies(Pointer<Pointer<VTablePointer>> dependencies) =>
      _vtable.GetPackageDependencies.asFunction<
              int Function(VTablePointer,
                  Pointer<Pointer<VTablePointer>> dependencies)>()(
          ptr.value, dependencies);

  int getCapabilities(Pointer<Int32> capabilities) =>
      _vtable.GetCapabilities.asFunction<
              int Function(VTablePointer, Pointer<Int32> capabilities)>()(
          ptr.value, capabilities);

  int getResources(Pointer<Pointer<VTablePointer>> resources) =>
      _vtable.GetResources.asFunction<
              int Function(
                  VTablePointer, Pointer<Pointer<VTablePointer>> resources)>()(
          ptr.value, resources);

  int getDeviceCapabilities(
          Pointer<Pointer<VTablePointer>> deviceCapabilities) =>
      _vtable.GetDeviceCapabilities.asFunction<
              int Function(VTablePointer,
                  Pointer<Pointer<VTablePointer>> deviceCapabilities)>()(
          ptr.value, deviceCapabilities);

  int getPrerequisite(Pointer<Utf16> name, Pointer<Uint64> value) =>
      _vtable.GetPrerequisite.asFunction<
          int Function(VTablePointer, Pointer<Utf16> name,
              Pointer<Uint64> value)>()(ptr.value, name, value);

  int getApplications(Pointer<Pointer<VTablePointer>> applications) =>
      _vtable.GetApplications.asFunction<
              int Function(VTablePointer,
                  Pointer<Pointer<VTablePointer>> applications)>()(
          ptr.value, applications);

  int getStream(Pointer<Pointer<VTablePointer>> manifestStream) =>
      _vtable.GetStream.asFunction<
              int Function(VTablePointer,
                  Pointer<Pointer<VTablePointer>> manifestStream)>()(
          ptr.value, manifestStream);
}

/// @nodoc
base class IAppxManifestReaderVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Pointer<VTablePointer>> packageId)>>
      GetPackageId;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer,
                  Pointer<Pointer<VTablePointer>> packageProperties)>>
      GetProperties;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Pointer<VTablePointer>> dependencies)>>
      GetPackageDependencies;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Int32> capabilities)>>
      GetCapabilities;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Pointer<VTablePointer>> resources)>>
      GetResources;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer,
                  Pointer<Pointer<VTablePointer>> deviceCapabilities)>>
      GetDeviceCapabilities;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Utf16> name, Pointer<Uint64> value)>>
      GetPrerequisite;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Pointer<VTablePointer>> applications)>>
      GetApplications;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer,
              Pointer<Pointer<VTablePointer>> manifestStream)>> GetStream;
}
