// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../extensions/iunknown.dart';
import '../types.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IAppxManifestApplicationsEnumerator =
    '{9eb8a55a-f04b-4d0d-808d-686185d4847a}';

/// Enumerates the applications defined in the package manifest.
///
/// {@category com}
class IAppxManifestApplicationsEnumerator extends IUnknown {
  IAppxManifestApplicationsEnumerator(super.ptr)
      : _vtable = ptr.value.cast<IAppxManifestApplicationsEnumeratorVtbl>().ref;

  final IAppxManifestApplicationsEnumeratorVtbl _vtable;

  factory IAppxManifestApplicationsEnumerator.from(IUnknown interface) =>
      IAppxManifestApplicationsEnumerator(
          interface.toInterface(IID_IAppxManifestApplicationsEnumerator));

  int getCurrent(Pointer<VTablePointer> application) =>
      _vtable.GetCurrent.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> application)>()(ptr, application);

  int getHasCurrent(Pointer<Int32> hasCurrent) =>
      _vtable.GetHasCurrent.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<Int32> hasCurrent)>()(
          ptr, hasCurrent);

  int moveNext(Pointer<Int32> hasNext) => _vtable.MoveNext.asFunction<
      int Function(
          VTablePointer lpVtbl, Pointer<Int32> hasNext)>()(ptr, hasNext);
}

/// @nodoc
base class IAppxManifestApplicationsEnumeratorVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> application)>>
      GetCurrent;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer lpVtbl, Pointer<Int32> hasCurrent)>>
      GetHasCurrent;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer lpVtbl, Pointer<Int32> hasNext)>>
      MoveNext;
}
