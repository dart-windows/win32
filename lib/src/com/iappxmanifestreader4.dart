// iappxmanifestreader4.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../combase.dart';
import 'iappxmanifestreader3.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IAppxManifestReader4 = '{4579bb7c-741d-4161-b5a1-47bd3b78ad9b}';

/// Represents an object model of the package manifest that provides methods
/// to access manifest elements and attributes.
///
/// {@category com}
class IAppxManifestReader4 extends IAppxManifestReader3 {
  // vtable begins at 15, is 1 entries long.
  IAppxManifestReader4(super.ptr)
      : _vtable = ptr.ref.vtable.cast<IAppxManifestReader4Vtbl>().ref;

  final IAppxManifestReader4Vtbl _vtable;

  factory IAppxManifestReader4.from(IUnknown interface) =>
      IAppxManifestReader4(interface.toInterface(IID_IAppxManifestReader4));

  int getOptionalPackageInfo(Pointer<Pointer<COMObject>> optionalPackageInfo) =>
      _vtable.GetOptionalPackageInfo.asFunction<
              int Function(
                  Pointer, Pointer<Pointer<COMObject>> optionalPackageInfo)>()(
          ptr.ref.lpVtbl, optionalPackageInfo);
}

/// @nodoc
base class IAppxManifestReader4Vtbl extends Struct {
  external IAppxManifestReader3Vtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer, Pointer<Pointer<COMObject>> optionalPackageInfo)>>
      GetOptionalPackageInfo;
}
