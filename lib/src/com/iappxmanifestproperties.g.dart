// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../extensions/iunknown.dart';
import '../structs.g.dart';
import '../types.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IAppxManifestProperties = '{03faf64d-f26f-4b2c-aaf7-8fe7789b8bca}';

/// Provides read-only access to the properties section of a package manifest.
///
/// {@category com}
class IAppxManifestProperties extends IUnknown {
  IAppxManifestProperties(super.ptr)
      : _vtable = ptr.value.cast<IAppxManifestPropertiesVtbl>().ref;

  final IAppxManifestPropertiesVtbl _vtable;

  factory IAppxManifestProperties.from(IUnknown interface) =>
      IAppxManifestProperties(
          interface.toInterface(IID_IAppxManifestProperties));

  int getBoolValue(Pointer<Utf16> name, Pointer<BOOL> value) =>
      _vtable.GetBoolValue.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<Utf16> name,
              Pointer<BOOL> value)>()(ptr, name, value);

  int getStringValue(Pointer<Utf16> name, Pointer<Pointer<Utf16>> value) =>
      _vtable.GetStringValue.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<Utf16> name,
              Pointer<Pointer<Utf16>> value)>()(ptr, name, value);
}

/// @nodoc
base class IAppxManifestPropertiesVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<Utf16> name,
              Pointer<BOOL> value)>> GetBoolValue;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<Utf16> name,
              Pointer<Pointer<Utf16>> value)>> GetStringValue;
}
