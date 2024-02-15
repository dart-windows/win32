// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../extensions/iunknown.dart';
import '../structs.g.dart';
import '../types.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IAppxManifestApplication = '{5da89bf4-3773-46be-b650-7e744863b7e8}';

/// Provides access to attribute values of the application.
///
/// {@category com}
class IAppxManifestApplication extends IUnknown {
  IAppxManifestApplication(super.ptr)
      : _vtable = ptr.value.cast<IAppxManifestApplicationVtbl>().ref;

  final IAppxManifestApplicationVtbl _vtable;

  factory IAppxManifestApplication.from(IUnknown interface) =>
      IAppxManifestApplication(
          interface.toInterface(IID_IAppxManifestApplication));

  int getStringValue(PWSTR name, Pointer<PWSTR> value) =>
      _vtable.GetStringValue.asFunction<
          int Function(VTablePointer lpVtbl, PWSTR name,
              Pointer<PWSTR> value)>()(ptr, name, value);

  int getAppUserModelId(Pointer<PWSTR> appUserModelId) =>
      _vtable.GetAppUserModelId.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<PWSTR> appUserModelId)>()(ptr, appUserModelId);
}

/// @nodoc
base class IAppxManifestApplicationVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, PWSTR name, Pointer<PWSTR> value)>>
      GetStringValue;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<PWSTR> appUserModelId)>>
      GetAppUserModelId;
}
