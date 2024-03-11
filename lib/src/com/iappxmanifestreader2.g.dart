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
import 'iappxmanifestreader.g.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IAppxManifestReader2 = '{d06f67bc-b31d-4eba-a8af-638e73e77b4d}';

/// Represents an object model of the package manifest that provides methods to
/// access manifest elements and attributes.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nn-appxpackaging-iappxmanifestreader2>.
///
/// {@category com}
class IAppxManifestReader2 extends IAppxManifestReader {
  IAppxManifestReader2(super.ptr)
      : _vtable = ptr.value.cast<IAppxManifestReader2Vtbl>().ref;

  final IAppxManifestReader2Vtbl _vtable;

  /// Creates a new instance of `IAppxManifestReader2` from an existing
  /// [interface].
  ///
  /// This constructor invokes the [queryInterface] method to obtain a reference
  /// to the `IAppxManifestReader2` interface with the provided interface.
  ///
  /// Throws a [WindowsException] if the `queryInterface` call fails.
  factory IAppxManifestReader2.from(IUnknown interface) =>
      IAppxManifestReader2(interface.toInterface(IID_IAppxManifestReader2));

  /// Gets an enumerator that iterates through the qualified resources that are
  /// defined in the manifest.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxmanifestreader2-getqualifiedresources>.
  int getQualifiedResources(Pointer<VTablePointer> resources) =>
      _vtable.GetQualifiedResources.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> resources)>()(ptr, resources);
}

/// @nodoc
base class IAppxManifestReader2Vtbl extends Struct {
  external IAppxManifestReaderVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> resources)>>
      GetQualifiedResources;
}
