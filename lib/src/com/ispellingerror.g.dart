// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../exceptions.dart';
import '../extensions/iunknown.dart';
import '../macros.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
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

  int get startIndex {
    final value = calloc<Uint32>();
    try {
      final hr = _vtable.get_StartIndex.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint32> value)>()(ptr, value);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = value.value;
      return retValue;
    } finally {
      free(value);
    }
  }

  int get length {
    final value = calloc<Uint32>();
    try {
      final hr = _vtable.get_Length.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint32> value)>()(ptr, value);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = value.value;
      return retValue;
    } finally {
      free(value);
    }
  }

  int get correctiveAction {
    final value = calloc<Int32>();
    try {
      final hr = _vtable.get_CorrectiveAction.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(ptr, value);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = value.value;
      return retValue;
    } finally {
      free(value);
    }
  }

  PWSTR get replacement {
    final value = calloc<PWSTR>();
    try {
      final hr = _vtable.get_Replacement.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<PWSTR> value)>()(ptr, value);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = value.value;
      return retValue;
    } finally {
      free(value);
    }
  }
}

/// @nodoc
base class ISpellingErrorVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> value)>>
      get_StartIndex;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> value)>>
      get_Length;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_CorrectiveAction;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<PWSTR> value)>>
      get_Replacement;
}
