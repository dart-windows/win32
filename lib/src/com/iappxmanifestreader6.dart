// iappxmanifestreader6.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'iunknown.dart';

/// @nodoc
const IID_IAppxManifestReader6 = '{34deaca4-d3c0-4e3e-b312-e42625e3807e}';

/// Represents an object model of the package manifest that provides methods
/// to access manifest elements and attributes.
///
/// {@category com}
class IAppxManifestReader6 extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IAppxManifestReader6(super.ptr);

  factory IAppxManifestReader6.from(IUnknown interface) =>
      IAppxManifestReader6(interface.toInterface(IID_IAppxManifestReader6));

  int getIsNonQualifiedResourcePackage(
          Pointer<Int32> isNonQualifiedResourcePackage) =>
      ptr.ref.vtable
              .elementAt(3)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer,
                              Pointer<Int32> isNonQualifiedResourcePackage)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer, Pointer<Int32> isNonQualifiedResourcePackage)>()(
          ptr.ref.lpVtbl, isNonQualifiedResourcePackage);
}
