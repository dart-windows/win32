// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../extensions/iunknown.dart';
import '../types.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_ISpellingError = '{b7c82d61-fbe8-4b47-9b27-6c0d2e0de0a3}';

/// Provides information about a spelling error.
///
/// {@category com}
class ISpellingError extends IUnknown {
  ISpellingError(super.ptr)
      : _vtable = ptr.value.cast<ISpellingErrorVtbl>().ref;

  final ISpellingErrorVtbl _vtable;

  factory ISpellingError.from(IUnknown interface) =>
      ISpellingError(interface.toInterface(IID_ISpellingError));

  int get_StartIndex(Pointer<Uint32> value) => _vtable.get_StartIndex
          .asFunction<int Function(VTablePointer, Pointer<Uint32> value)>()(
      ptr, value);

  int get_Length(Pointer<Uint32> value) => _vtable.get_Length
          .asFunction<int Function(VTablePointer, Pointer<Uint32> value)>()(
      ptr, value);

  int get_CorrectiveAction(Pointer<Int32> value) => _vtable.get_CorrectiveAction
          .asFunction<int Function(VTablePointer, Pointer<Int32> value)>()(
      ptr, value);

  int get_Replacement(Pointer<Pointer<Utf16>> value) =>
      _vtable.get_Replacement.asFunction<
          int Function(
              VTablePointer, Pointer<Pointer<Utf16>> value)>()(ptr, value);
}

/// @nodoc
base class ISpellingErrorVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Uint32> value)>>
      get_StartIndex;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Uint32> value)>>
      get_Length;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> value)>>
      get_CorrectiveAction;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Pointer<Utf16>> value)>>
      get_Replacement;
}
