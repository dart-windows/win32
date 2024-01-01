// iappxmanifestapplication.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'iunknown.dart';

/// @nodoc
const IID_IAppxManifestApplication = '{5da89bf4-3773-46be-b650-7e744863b7e8}';

/// Provides access to attribute values of the application.
///
/// {@category com}
class IAppxManifestApplication extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IAppxManifestApplication(super.ptr)
      : _vtable = ptr.ref.vtable.cast<IAppxManifestApplicationVtbl>().ref;

  final IAppxManifestApplicationVtbl _vtable;

  factory IAppxManifestApplication.from(IUnknown interface) =>
      IAppxManifestApplication(
          interface.toInterface(IID_IAppxManifestApplication));

  int getStringValue(Pointer<Utf16> name, Pointer<Pointer<Utf16>> value) =>
      _vtable.GetStringValue.asFunction<
          int Function(Pointer, Pointer<Utf16> name,
              Pointer<Pointer<Utf16>> value)>()(ptr.ref.lpVtbl, name, value);

  int getAppUserModelId(Pointer<Pointer<Utf16>> appUserModelId) =>
      _vtable.GetAppUserModelId.asFunction<
              int Function(Pointer, Pointer<Pointer<Utf16>> appUserModelId)>()(
          ptr.ref.lpVtbl, appUserModelId);
}

/// @nodoc
base class IAppxManifestApplicationVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer, Pointer<Utf16> name, Pointer<Pointer<Utf16>> value)>>
      GetStringValue;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Pointer<Utf16>> appUserModelId)>>
      GetAppUserModelId;
}
