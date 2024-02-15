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
const IID_IAppxManifestOSPackageDependency =
    '{154995ee-54a6-4f14-ac97-d8cf0519644b}';

/// {@category com}
class IAppxManifestOSPackageDependency extends IUnknown {
  IAppxManifestOSPackageDependency(super.ptr)
      : _vtable = ptr.value.cast<IAppxManifestOSPackageDependencyVtbl>().ref;

  final IAppxManifestOSPackageDependencyVtbl _vtable;

  factory IAppxManifestOSPackageDependency.from(IUnknown interface) =>
      IAppxManifestOSPackageDependency(
          interface.toInterface(IID_IAppxManifestOSPackageDependency));

  int getName(Pointer<PWSTR> name) => _vtable.GetName.asFunction<
      int Function(VTablePointer lpVtbl, Pointer<PWSTR> name)>()(ptr, name);

  int getVersion(Pointer<Uint64> version) => _vtable.GetVersion.asFunction<
      int Function(
          VTablePointer lpVtbl, Pointer<Uint64> version)>()(ptr, version);
}

/// @nodoc
base class IAppxManifestOSPackageDependencyVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<PWSTR> name)>> GetName;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint64> version)>>
      GetVersion;
}
