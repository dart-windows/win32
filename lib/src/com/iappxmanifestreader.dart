// iappxmanifestreader.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
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
      : _vtable = ptr.ref.vtable.cast<IAppxManifestReaderVtbl>().ref;

  final IAppxManifestReaderVtbl _vtable;

  factory IAppxManifestReader.from(IUnknown interface) =>
      IAppxManifestReader(interface.toInterface(IID_IAppxManifestReader));

  int getPackageId(Pointer<Pointer<COMObject>> packageId) =>
      _vtable.GetPackageId.asFunction<
              int Function(Pointer, Pointer<Pointer<COMObject>> packageId)>()(
          ptr.ref.lpVtbl, packageId);

  int getProperties(Pointer<Pointer<COMObject>> packageProperties) =>
      _vtable.GetProperties.asFunction<
              int Function(
                  Pointer, Pointer<Pointer<COMObject>> packageProperties)>()(
          ptr.ref.lpVtbl, packageProperties);

  int getPackageDependencies(Pointer<Pointer<COMObject>> dependencies) =>
      _vtable.GetPackageDependencies.asFunction<
              int Function(
                  Pointer, Pointer<Pointer<COMObject>> dependencies)>()(
          ptr.ref.lpVtbl, dependencies);

  int getCapabilities(Pointer<Int32> capabilities) => _vtable.GetCapabilities
          .asFunction<int Function(Pointer, Pointer<Int32> capabilities)>()(
      ptr.ref.lpVtbl, capabilities);

  int getResources(Pointer<Pointer<COMObject>> resources) =>
      _vtable.GetResources.asFunction<
              int Function(Pointer, Pointer<Pointer<COMObject>> resources)>()(
          ptr.ref.lpVtbl, resources);

  int getDeviceCapabilities(Pointer<Pointer<COMObject>> deviceCapabilities) =>
      _vtable.GetDeviceCapabilities.asFunction<
              int Function(
                  Pointer, Pointer<Pointer<COMObject>> deviceCapabilities)>()(
          ptr.ref.lpVtbl, deviceCapabilities);

  int getPrerequisite(Pointer<Utf16> name, Pointer<Uint64> value) =>
      _vtable.GetPrerequisite.asFunction<
          int Function(Pointer, Pointer<Utf16> name,
              Pointer<Uint64> value)>()(ptr.ref.lpVtbl, name, value);

  int getApplications(Pointer<Pointer<COMObject>> applications) =>
      _vtable.GetApplications.asFunction<
              int Function(
                  Pointer, Pointer<Pointer<COMObject>> applications)>()(
          ptr.ref.lpVtbl, applications);

  int getStream(Pointer<Pointer<COMObject>> manifestStream) =>
      _vtable.GetStream.asFunction<
              int Function(
                  Pointer, Pointer<Pointer<COMObject>> manifestStream)>()(
          ptr.ref.lpVtbl, manifestStream);
}

/// @nodoc
base class IAppxManifestReaderVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Pointer<COMObject>> packageId)>>
      GetPackageId;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer, Pointer<Pointer<COMObject>> packageProperties)>>
      GetProperties;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer, Pointer<Pointer<COMObject>> dependencies)>>
      GetPackageDependencies;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> capabilities)>>
      GetCapabilities;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Pointer<COMObject>> resources)>>
      GetResources;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer, Pointer<Pointer<COMObject>> deviceCapabilities)>>
      GetDeviceCapabilities;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer, Pointer<Utf16> name, Pointer<Uint64> value)>>
      GetPrerequisite;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer, Pointer<Pointer<COMObject>> applications)>>
      GetApplications;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer, Pointer<Pointer<COMObject>> manifestStream)>> GetStream;
}
