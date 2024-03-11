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
const IID_IAppxManifestReader6 = '{34deaca4-d3c0-4e3e-b312-e42625e3807e}';

/// Represents an object model of the package manifest that provides methods to
/// access manifest elements and attributes.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nn-appxpackaging-iappxmanifestreader6>.
///
/// {@category com}
class IAppxManifestReader6 extends IUnknown {
  IAppxManifestReader6(super.ptr)
      : _vtable = ptr.value.cast<IAppxManifestReader6Vtbl>().ref;

  final IAppxManifestReader6Vtbl _vtable;

  factory IAppxManifestReader6.from(IUnknown interface) =>
      IAppxManifestReader6(interface.toInterface(IID_IAppxManifestReader6));

  /// Queries whether an app package is a non-qualified resource package.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxmanifestreader6-getisnonqualifiedresourcepackage>.
  int getIsNonQualifiedResourcePackage(
          Pointer<BOOL> isNonQualifiedResourcePackage) =>
      _vtable.GetIsNonQualifiedResourcePackage.asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<BOOL> isNonQualifiedResourcePackage)>()(
          ptr, isNonQualifiedResourcePackage);
}

/// @nodoc
base class IAppxManifestReader6Vtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl,
                  Pointer<BOOL> isNonQualifiedResourcePackage)>>
      GetIsNonQualifiedResourcePackage;
}
