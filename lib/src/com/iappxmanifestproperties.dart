// iappxmanifestproperties.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'iunknown.dart';

/// @nodoc
const IID_IAppxManifestProperties = '{03faf64d-f26f-4b2c-aaf7-8fe7789b8bca}';

/// Provides read-only access to the properties section of a package
/// manifest.
///
/// {@category com}
class IAppxManifestProperties extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IAppxManifestProperties(super.ptr);

  factory IAppxManifestProperties.from(IUnknown interface) =>
      IAppxManifestProperties(
          interface.toInterface(IID_IAppxManifestProperties));

  int getBoolValue(Pointer<Utf16> name, Pointer<Int32> value) => ptr.ref.vtable
      .elementAt(3)
      .cast<
          Pointer<
              NativeFunction<
                  Int32 Function(
                      Pointer, Pointer<Utf16> name, Pointer<Int32> value)>>>()
      .value
      .asFunction<
          int Function(Pointer, Pointer<Utf16> name,
              Pointer<Int32> value)>()(ptr.ref.lpVtbl, name, value);

  int getStringValue(Pointer<Utf16> name, Pointer<Pointer<Utf16>> value) => ptr
      .ref.vtable
      .elementAt(4)
      .cast<
          Pointer<
              NativeFunction<
                  Int32 Function(Pointer, Pointer<Utf16> name,
                      Pointer<Pointer<Utf16>> value)>>>()
      .value
      .asFunction<
          int Function(Pointer, Pointer<Utf16> name,
              Pointer<Pointer<Utf16>> value)>()(ptr.ref.lpVtbl, name, value);
}
