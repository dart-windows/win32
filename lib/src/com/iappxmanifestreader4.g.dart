// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../exceptions.dart';
import '../extensions/iunknown.dart';
import '../structs.g.dart';
import '../types.dart';
import 'iappxmanifestreader3.g.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IAppxManifestReader4 = '{4579bb7c-741d-4161-b5a1-47bd3b78ad9b}';

/// Represents an object model of the package manifest that provides methods to
/// access manifest elements and attributes.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/previous-versions/mt796948(v=vs.85)>.
///
/// {@category com}
class IAppxManifestReader4 extends IAppxManifestReader3 {
  IAppxManifestReader4(super.ptr)
      : _vtable = ptr.value.cast<IAppxManifestReader4Vtbl>().ref;

  final IAppxManifestReader4Vtbl _vtable;

  /// Creates a new instance of `IAppxManifestReader4` from an existing
  /// [interface].
  ///
  /// This constructor invokes the [queryInterface] method to obtain a reference
  /// to the `IAppxManifestReader4` interface with the provided interface.
  ///
  /// Throws a [WindowsException] if the `queryInterface` call fails.
  factory IAppxManifestReader4.from(IUnknown interface) =>
      IAppxManifestReader4(interface.toInterface(IID_IAppxManifestReader4));

  int getOptionalPackageInfo(Pointer<VTablePointer> optionalPackageInfo) =>
      _vtable.GetOptionalPackageInfo.asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<VTablePointer> optionalPackageInfo)>()(
          ptr, optionalPackageInfo);
}

/// @nodoc
base class IAppxManifestReader4Vtbl extends Struct {
  external IAppxManifestReader3Vtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl,
                  Pointer<VTablePointer> optionalPackageInfo)>>
      GetOptionalPackageInfo;
}
