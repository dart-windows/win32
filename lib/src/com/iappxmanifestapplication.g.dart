// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../exceptions.dart';
import '../extensions/iunknown.dart';
import '../structs.g.dart';
import '../types.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IAppxManifestApplication = '{5da89bf4-3773-46be-b650-7e744863b7e8}';

/// Provides access to attribute values of the application.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nn-appxpackaging-iappxmanifestapplication>.
///
/// {@category com}
class IAppxManifestApplication extends IUnknown {
  IAppxManifestApplication(super.ptr)
      : _vtable = ptr.value.cast<IAppxManifestApplicationVtbl>().ref;

  final IAppxManifestApplicationVtbl _vtable;

  /// Creates a new instance of `IAppxManifestApplication` from an existing
  /// [interface].
  ///
  /// This constructor invokes the [queryInterface] method to obtain a reference
  /// to the `IAppxManifestApplication` interface with the provided interface.
  ///
  /// Throws a [WindowsException] if the `queryInterface` call fails.
  factory IAppxManifestApplication.from(IUnknown interface) =>
      IAppxManifestApplication(
          interface.toInterface(IID_IAppxManifestApplication));

  /// Gets the value of a string element in the application metadata section of
  /// the manifest.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxmanifestapplication-getstringvalue>.
  int getStringValue(Pointer<Utf16> name, Pointer<Pointer<Utf16>> value) =>
      _vtable.GetStringValue.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<Utf16> name,
              Pointer<Pointer<Utf16>> value)>()(ptr, name, value);

  /// Gets the application user model identifier.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxmanifestapplication-getappusermodelid>.
  int getAppUserModelId(Pointer<Pointer<Utf16>> appUserModelId) =>
      _vtable.GetAppUserModelId.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<Utf16>> appUserModelId)>()(ptr, appUserModelId);
}

/// @nodoc
base class IAppxManifestApplicationVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<Utf16> name,
              Pointer<Pointer<Utf16>> value)>> GetStringValue;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl,
              Pointer<Pointer<Utf16>> appUserModelId)>> GetAppUserModelId;
}
