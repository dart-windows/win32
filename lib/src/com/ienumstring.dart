// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../extensions/iunknown.dart';
import '../types.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IEnumString = '{00000101-0000-0000-c000-000000000046}';

/// Enumerate strings. `LPWSTR` is the type that indicates a pointer to a
/// zero-terminated string of wide, or Unicode, characters.
///
/// {@category com}
class IEnumString extends IUnknown {
  IEnumString(super.ptr) : _vtable = ptr.value.cast<IEnumStringVtbl>().ref;

  final IEnumStringVtbl _vtable;

  factory IEnumString.from(IUnknown interface) =>
      IEnumString(interface.toInterface(IID_IEnumString));

  int next(int celt, Pointer<Pointer<Utf16>> rgelt,
          Pointer<Uint32> pceltFetched) =>
      _vtable.Next.asFunction<
          int Function(VTablePointer, int celt, Pointer<Pointer<Utf16>> rgelt,
              Pointer<Uint32> pceltFetched)>()(ptr, celt, rgelt, pceltFetched);

  int skip(int celt) =>
      _vtable.Skip.asFunction<int Function(VTablePointer, int celt)>()(
          ptr, celt);

  int reset() => _vtable.Reset.asFunction<int Function(VTablePointer)>()(ptr);

  int clone(Pointer<VTablePointer> ppenum) => _vtable.Clone.asFunction<
      int Function(
          VTablePointer, Pointer<VTablePointer> ppenum)>()(ptr, ppenum);
}

/// @nodoc
base class IEnumStringVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Uint32 celt,
              Pointer<Pointer<Utf16>> rgelt,
              Pointer<Uint32> pceltFetched)>> Next;
  external Pointer<NativeFunction<Int32 Function(VTablePointer, Uint32 celt)>>
      Skip;
  external Pointer<NativeFunction<Int32 Function(VTablePointer)>> Reset;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<VTablePointer> ppenum)>> Clone;
}
