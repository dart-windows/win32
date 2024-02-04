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
const IID_IAppxFilesEnumerator = '{f007eeaf-9831-411c-9847-917cdc62d1fe}';

/// Enumerates the payload files in a package.
///
/// {@category com}
class IAppxFilesEnumerator extends IUnknown {
  IAppxFilesEnumerator(super.ptr)
      : _vtable = ptr.value.cast<IAppxFilesEnumeratorVtbl>().ref;

  final IAppxFilesEnumeratorVtbl _vtable;

  factory IAppxFilesEnumerator.from(IUnknown interface) =>
      IAppxFilesEnumerator(interface.toInterface(IID_IAppxFilesEnumerator));

  int getCurrent(Pointer<VTablePointer> file) => _vtable.GetCurrent.asFunction<
      int Function(
          VTablePointer lpVtbl, Pointer<VTablePointer> file)>()(ptr, file);

  int getHasCurrent(Pointer<Int32> hasCurrent) =>
      _vtable.GetHasCurrent.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<Int32> hasCurrent)>()(
          ptr, hasCurrent);

  int moveNext(Pointer<Int32> hasNext) => _vtable.MoveNext.asFunction<
      int Function(
          VTablePointer lpVtbl, Pointer<Int32> hasNext)>()(ptr, hasNext);
}

/// @nodoc
base class IAppxFilesEnumeratorVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer lpVtbl, Pointer<VTablePointer> file)>> GetCurrent;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer lpVtbl, Pointer<Int32> hasCurrent)>>
      GetHasCurrent;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer lpVtbl, Pointer<Int32> hasNext)>>
      MoveNext;
}
