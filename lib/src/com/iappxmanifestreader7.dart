// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../extensions/iunknown.dart';
import '../types.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IAppxManifestReader7 = '{8efe6f27-0ce0-4988-b32d-738eb63db3b7}';

/// Represents an object model of the package manifest that provides methods to
/// access manifest elements and attributes.
///
/// {@category com}
class IAppxManifestReader7 extends IUnknown {
  IAppxManifestReader7(super.ptr)
      : _vtable = ptr.value.cast<IAppxManifestReader7Vtbl>().ref;

  final IAppxManifestReader7Vtbl _vtable;

  factory IAppxManifestReader7.from(IUnknown interface) =>
      IAppxManifestReader7(interface.toInterface(IID_IAppxManifestReader7));

  int getDriverDependencies(Pointer<VTablePointer> driverDependencies) =>
      _vtable.GetDriverDependencies.asFunction<
              int Function(
                  VTablePointer, Pointer<VTablePointer> driverDependencies)>()(
          ptr, driverDependencies);

  int getOSPackageDependencies(Pointer<VTablePointer> osPackageDependencies) =>
      _vtable.GetOSPackageDependencies.asFunction<
              int Function(VTablePointer,
                  Pointer<VTablePointer> osPackageDependencies)>()(
          ptr, osPackageDependencies);

  int getHostRuntimeDependencies(
          Pointer<VTablePointer> hostRuntimeDependencies) =>
      _vtable.GetHostRuntimeDependencies.asFunction<
              int Function(VTablePointer,
                  Pointer<VTablePointer> hostRuntimeDependencies)>()(
          ptr, hostRuntimeDependencies);
}

/// @nodoc
base class IAppxManifestReader7Vtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<VTablePointer> driverDependencies)>>
      GetDriverDependencies;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<VTablePointer> osPackageDependencies)>>
      GetOSPackageDependencies;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer,
                  Pointer<VTablePointer> hostRuntimeDependencies)>>
      GetHostRuntimeDependencies;
}
