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
const IID_IAppxManifestPackageDependenciesEnumerator =
    '{b43bbcf9-65a6-42dd-bac0-8c6741e7f5a4}';

/// Enumerates the package dependencies defined in the package manifest.
///
/// {@category com}
class IAppxManifestPackageDependenciesEnumerator extends IUnknown {
  IAppxManifestPackageDependenciesEnumerator(super.ptr)
      : _vtable = ptr.value
            .cast<IAppxManifestPackageDependenciesEnumeratorVtbl>()
            .ref;

  final IAppxManifestPackageDependenciesEnumeratorVtbl _vtable;

  factory IAppxManifestPackageDependenciesEnumerator.from(IUnknown interface) =>
      IAppxManifestPackageDependenciesEnumerator(interface
          .toInterface(IID_IAppxManifestPackageDependenciesEnumerator));

  int getCurrent(Pointer<VTablePointer> dependency) =>
      _vtable.GetCurrent.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> dependency)>()(ptr, dependency);

  int getHasCurrent(Pointer<BOOL> hasCurrent) =>
      _vtable.GetHasCurrent.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<BOOL> hasCurrent)>()(
          ptr, hasCurrent);

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
