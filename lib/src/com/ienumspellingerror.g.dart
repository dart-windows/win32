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
const IID_IEnumSpellingError = '{803e3bd4-2828-4410-8290-418d1d73c762}';

/// An enumeration of the spelling errors.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/spellcheck/nn-spellcheck-ienumspellingerror>.
///
/// {@category com}
class IEnumSpellingError extends IUnknown {
  IEnumSpellingError(super.ptr)
      : _vtable = ptr.value.cast<IEnumSpellingErrorVtbl>().ref;

  final IEnumSpellingErrorVtbl _vtable;

  /// Creates a new instance of `IEnumSpellingError` from an existing
  /// [interface].
  ///
  /// This constructor invokes the [queryInterface] method to obtain a reference
  /// to the `IEnumSpellingError` interface with the provided interface.
  ///
  /// Throws a [WindowsException] if the `queryInterface` call fails.
  factory IEnumSpellingError.from(IUnknown interface) =>
      IEnumSpellingError(interface.toInterface(IID_IEnumSpellingError));

  /// Gets the next spelling error.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/spellcheck/nf-spellcheck-ienumspellingerror-next>.
  int next(Pointer<VTablePointer> value) => _vtable.Next.asFunction<
      int Function(
          VTablePointer lpVtbl, Pointer<VTablePointer> value)>()(ptr, value);
}

/// @nodoc
base class IEnumSpellingErrorVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<VTablePointer> value)>> Next;
}
