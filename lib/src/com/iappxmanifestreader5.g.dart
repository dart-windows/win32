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
const IID_IAppxManifestReader5 = '{8d7ae132-a690-4c00-b75a-6aae1feaac80}';

/// Represents an object model of the package manifest that provides methods to
/// access manifest elements and attributes.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nn-appxpackaging-iappxmanifestreader5>.
///
/// {@category com}
class IAppxManifestReader5 extends IUnknown {
  IAppxManifestReader5(super.ptr)
      : _vtable = ptr.value.cast<IAppxManifestReader5Vtbl>().ref;

  final IAppxManifestReader5Vtbl _vtable;

  factory IAppxManifestReader5.from(IUnknown interface) =>
      IAppxManifestReader5(interface.toInterface(IID_IAppxManifestReader5));

  int getMainPackageDependencies(
          Pointer<VTablePointer> mainPackageDependencies) =>
      _vtable.GetMainPackageDependencies.asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<VTablePointer> mainPackageDependencies)>()(
          ptr, mainPackageDependencies);
}

/// @nodoc
base class IAppxManifestReader5Vtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl,
                  Pointer<VTablePointer> mainPackageDependencies)>>
      GetMainPackageDependencies;
}
