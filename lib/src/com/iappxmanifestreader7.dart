// iappxmanifestreader7.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../combase.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IAppxManifestReader7 = '{8efe6f27-0ce0-4988-b32d-738eb63db3b7}';

/// Represents an object model of the package manifest that provides methods
/// to access manifest elements and attributes.
///
/// {@category com}
class IAppxManifestReader7 extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IAppxManifestReader7(super.ptr)
      : _vtable = ptr.ref.vtable.cast<IAppxManifestReader7Vtbl>().ref;

  final IAppxManifestReader7Vtbl _vtable;

  factory IAppxManifestReader7.from(IUnknown interface) =>
      IAppxManifestReader7(interface.toInterface(IID_IAppxManifestReader7));

  int getDriverDependencies(Pointer<Pointer<COMObject>> driverDependencies) =>
      _vtable.GetDriverDependencies.asFunction<
              int Function(
                  Pointer, Pointer<Pointer<COMObject>> driverDependencies)>()(
          ptr.ref.lpVtbl, driverDependencies);

  int getOSPackageDependencies(
          Pointer<Pointer<COMObject>> osPackageDependencies) =>
      _vtable.GetOSPackageDependencies.asFunction<
              int Function(Pointer,
                  Pointer<Pointer<COMObject>> osPackageDependencies)>()(
          ptr.ref.lpVtbl, osPackageDependencies);

  int getHostRuntimeDependencies(
          Pointer<Pointer<COMObject>> hostRuntimeDependencies) =>
      _vtable.GetHostRuntimeDependencies.asFunction<
              int Function(Pointer,
                  Pointer<Pointer<COMObject>> hostRuntimeDependencies)>()(
          ptr.ref.lpVtbl, hostRuntimeDependencies);
}

/// @nodoc
base class IAppxManifestReader7Vtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer, Pointer<Pointer<COMObject>> driverDependencies)>>
      GetDriverDependencies;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer, Pointer<Pointer<COMObject>> osPackageDependencies)>>
      GetOSPackageDependencies;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer,
                  Pointer<Pointer<COMObject>> hostRuntimeDependencies)>>
      GetHostRuntimeDependencies;
}
