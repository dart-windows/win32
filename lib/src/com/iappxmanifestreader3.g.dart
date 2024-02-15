// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../extensions/iunknown.dart';
import '../structs.g.dart';
import '../types.dart';
import 'iappxmanifestreader2.g.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IAppxManifestReader3 = '{c43825ab-69b7-400a-9709-cc37f5a72d24}';

/// Represents an object model of the package manifest that provides methods to
/// access manifest elements and attributes.
///
/// {@category com}
class IAppxManifestReader3 extends IAppxManifestReader2 {
  IAppxManifestReader3(super.ptr)
      : _vtable = ptr.value.cast<IAppxManifestReader3Vtbl>().ref;

  final IAppxManifestReader3Vtbl _vtable;

  factory IAppxManifestReader3.from(IUnknown interface) =>
      IAppxManifestReader3(interface.toInterface(IID_IAppxManifestReader3));

  int getCapabilitiesByCapabilityClass(
          int capabilityClass, Pointer<VTablePointer> capabilities) =>
      _vtable.GetCapabilitiesByCapabilityClass.asFunction<
              int Function(VTablePointer lpVtbl, int capabilityClass,
                  Pointer<VTablePointer> capabilities)>()(
          ptr, capabilityClass, capabilities);

  int getTargetDeviceFamilies(Pointer<VTablePointer> targetDeviceFamilies) =>
      _vtable.GetTargetDeviceFamilies.asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<VTablePointer> targetDeviceFamilies)>()(
          ptr, targetDeviceFamilies);
}

/// @nodoc
base class IAppxManifestReader3Vtbl extends Struct {
  external IAppxManifestReader2Vtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Int32 capabilityClass,
                  Pointer<VTablePointer> capabilities)>>
      GetCapabilitiesByCapabilityClass;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl,
                  Pointer<VTablePointer> targetDeviceFamilies)>>
      GetTargetDeviceFamilies;
}
