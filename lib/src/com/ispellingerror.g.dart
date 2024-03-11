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
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/spellcheck/nn-spellcheck-ispellingerror>.
///
/// {@category com}
class ISpellingError extends IUnknown {
  ISpellingError(super.ptr)
      : _vtable = ptr.value.cast<ISpellingErrorVtbl>().ref;

  final ISpellingErrorVtbl _vtable;

  factory ISpellingError.from(IUnknown interface) =>
      ISpellingError(interface.toInterface(IID_ISpellingError));

  /// Gets the position in the checked text where the error begins.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/spellcheck/nf-spellcheck-ispellingerror-get_startindex>.
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

  /// Gets the length of the erroneous text.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/spellcheck/nf-spellcheck-ispellingerror-get_length>.
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

  /// Indicates which corrective action should be taken for the spelling error.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/spellcheck/nf-spellcheck-ispellingerror-get_correctiveaction>.
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

  /// Gets the text to use as replacement text when the corrective action is
  /// replace.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/spellcheck/nf-spellcheck-ispellingerror-get_replacement>.
  Pointer<Utf16> get replacement {
    final value = calloc<Pointer<Utf16>>();
    try {
      final hr = _vtable.get_Replacement.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<Utf16>> value)>()(ptr, value);
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
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Pointer<Utf16>> value)>>
      get_Replacement;
}
