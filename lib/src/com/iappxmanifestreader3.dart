// iappxmanifestreader3.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../types.dart';
import 'iappxmanifestreader2.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IAppxManifestReader3 = '{c43825ab-69b7-400a-9709-cc37f5a72d24}';

/// Represents an object model of the package manifest that provides methods
/// to access manifest elements and attributes.
///
/// {@category com}
class IAppxManifestReader3 extends IAppxManifestReader2 {
  // vtable begins at 13, is 2 entries long.
  IAppxManifestReader3(super.ptr)
      : _vtable = ptr.value.value.cast<IAppxManifestReader3Vtbl>().ref;

  final IAppxManifestReader3Vtbl _vtable;

  factory IAppxManifestReader3.from(IUnknown interface) =>
      IAppxManifestReader3(interface.toInterface(IID_IAppxManifestReader3));

  int getCapabilitiesByCapabilityClass(
          int capabilityClass, Pointer<Pointer<VTablePointer>> capabilities) =>
      _vtable.GetCapabilitiesByCapabilityClass.asFunction<
              int Function(VTablePointer, int capabilityClass,
                  Pointer<Pointer<VTablePointer>> capabilities)>()(
          ptr.value, capabilityClass, capabilities);

  int getTargetDeviceFamilies(
          Pointer<Pointer<VTablePointer>> targetDeviceFamilies) =>
      _vtable.GetTargetDeviceFamilies.asFunction<
              int Function(VTablePointer,
                  Pointer<Pointer<VTablePointer>> targetDeviceFamilies)>()(
          ptr.value, targetDeviceFamilies);
}

/// @nodoc
base class IAppxManifestReader3Vtbl extends Struct {
  external IAppxManifestReader2Vtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Int32 capabilityClass,
                  Pointer<Pointer<VTablePointer>> capabilities)>>
      GetCapabilitiesByCapabilityClass;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer,
                  Pointer<Pointer<VTablePointer>> targetDeviceFamilies)>>
      GetTargetDeviceFamilies;
}
