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
import 'iunknown.g.dart';

/// @nodoc
const IID_IAppxManifestPackageDependenciesEnumerator =
    '{b43bbcf9-65a6-42dd-bac0-8c6741e7f5a4}';

/// Enumerates the package dependencies defined in the package manifest.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nn-appxpackaging-iappxmanifestpackagedependenciesenumerator>.
///
/// {@category com}
class IAppxManifestPackageDependenciesEnumerator extends IUnknown {
  IAppxManifestPackageDependenciesEnumerator(super.ptr)
      : _vtable = ptr.value
            .cast<IAppxManifestPackageDependenciesEnumeratorVtbl>()
            .ref;

  final IAppxManifestPackageDependenciesEnumeratorVtbl _vtable;

  /// Creates a new instance of `IAppxManifestPackageDependenciesEnumerator`
  /// from an existing [interface].
  ///
  /// This constructor invokes the [queryInterface] method to obtain a reference
  /// to the `IAppxManifestPackageDependenciesEnumerator` interface with the
  /// provided interface.
  ///
  /// Throws a [WindowsException] if the `queryInterface` call fails.
  factory IAppxManifestPackageDependenciesEnumerator.from(IUnknown interface) =>
      IAppxManifestPackageDependenciesEnumerator(interface
          .toInterface(IID_IAppxManifestPackageDependenciesEnumerator));

  /// Gets the dependency package at the current position of the enumerator.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxmanifestpackagedependenciesenumerator-getcurrent>.
  int getCurrent(Pointer<VTablePointer> dependency) =>
      _vtable.GetCurrent.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> dependency)>()(ptr, dependency);

  /// Determines whether there is a package dependency at the current position of
  /// the enumerator.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxmanifestpackagedependenciesenumerator-gethascurrent>.
  int getHasCurrent(Pointer<BOOL> hasCurrent) =>
      _vtable.GetHasCurrent.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<BOOL> hasCurrent)>()(
          ptr, hasCurrent);

  /// Advances the position of the enumerator to the next package dependency.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxmanifestpackagedependenciesenumerator-movenext>.
  int moveNext(Pointer<BOOL> hasNext) => _vtable.MoveNext.asFunction<
      int Function(
          VTablePointer lpVtbl, Pointer<BOOL> hasNext)>()(ptr, hasNext);
}

/// @nodoc
base class IAppxManifestPackageDependenciesEnumeratorVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> dependency)>>
      GetCurrent;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<BOOL> hasCurrent)>>
      GetHasCurrent;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<BOOL> hasNext)>>
      MoveNext;
}
