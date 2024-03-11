// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../exceptions.dart';
import '../extensions/iunknown.dart';
import '../structs.g.dart';
import '../types.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IEnumString = '{00000101-0000-0000-c000-000000000046}';

/// Enumerates strings.
///
/// LPWSTR is the type that indicates a pointer to a zero-terminated string of
/// wide, or Unicode, characters.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/objidlbase/nn-objidlbase-ienumstring>.
///
/// {@category com}
class IEnumString extends IUnknown {
  IEnumString(super.ptr) : _vtable = ptr.value.cast<IEnumStringVtbl>().ref;

  final IEnumStringVtbl _vtable;

  /// Creates a new instance of `IEnumString` from an existing [interface].
  ///
  /// This constructor invokes the [queryInterface] method to obtain a reference
  /// to the `IEnumString` interface with the provided interface.
  ///
  /// Throws a [WindowsException] if the `queryInterface` call fails.
  factory IEnumString.from(IUnknown interface) =>
      IEnumString(interface.toInterface(IID_IEnumString));

  /// Retrieves the specified number of items in the enumeration sequence.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/objidlbase/nf-objidlbase-ienumstring-next>.
  int next(int celt, Pointer<Pointer<Utf16>> rgelt,
          Pointer<Uint32>? pceltFetched) =>
      _vtable.Next.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  int celt,
                  Pointer<Pointer<Utf16>> rgelt,
                  Pointer<Uint32> pceltFetched)>()(
          ptr, celt, rgelt, pceltFetched ?? nullptr);

  /// Skips over the specified number of items in the enumeration sequence.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/objidlbase/nf-objidlbase-ienumstring-skip>.
  int skip(int celt) =>
      _vtable.Skip.asFunction<int Function(VTablePointer lpVtbl, int celt)>()(
          ptr, celt);

  /// Resets the enumeration sequence to the beginning.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/objidlbase/nf-objidlbase-ienumstring-reset>.
  int reset() =>
      _vtable.Reset.asFunction<int Function(VTablePointer lpVtbl)>()(ptr);

  /// Creates a new enumerator that contains the same enumeration state as the
  /// current one.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/objidlbase/nf-objidlbase-ienumstring-clone>.
  int clone(Pointer<VTablePointer> ppenum) => _vtable.Clone.asFunction<
      int Function(
          VTablePointer lpVtbl, Pointer<VTablePointer> ppenum)>()(ptr, ppenum);
}

/// @nodoc
base class IEnumStringVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 celt,
              Pointer<Pointer<Utf16>> rgelt,
              Pointer<Uint32> pceltFetched)>> Next;
  external Pointer<
      NativeFunction<HRESULT Function(VTablePointer lpVtbl, Uint32 celt)>> Skip;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      Reset;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<VTablePointer> ppenum)>> Clone;
}
