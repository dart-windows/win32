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
const IID_IEnumMoniker = '{00000102-0000-0000-c000-000000000046}';

/// Enumerates the components of a moniker or the monikers in a table of
/// monikers.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/objidl/nn-objidl-ienummoniker>.
///
/// {@category com}
class IEnumMoniker extends IUnknown {
  IEnumMoniker(super.ptr) : _vtable = ptr.value.cast<IEnumMonikerVtbl>().ref;

  final IEnumMonikerVtbl _vtable;

  factory IEnumMoniker.from(IUnknown interface) =>
      IEnumMoniker(interface.toInterface(IID_IEnumMoniker));

  /// Retrieves the specified number of items in the enumeration sequence.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-ienummoniker-next>.
  int next(int celt, Pointer<VTablePointer> rgelt,
          Pointer<Uint32>? pceltFetched) =>
      _vtable.Next.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  int celt,
                  Pointer<VTablePointer> rgelt,
                  Pointer<Uint32> pceltFetched)>()(
          ptr, celt, rgelt, pceltFetched ?? nullptr);

  /// Skips over the specified number of items in the enumeration sequence.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-ienummoniker-skip>.
  int skip(int celt) =>
      _vtable.Skip.asFunction<int Function(VTablePointer lpVtbl, int celt)>()(
          ptr, celt);

  /// Resets the enumeration sequence to the beginning.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-ienummoniker-reset>.
  int reset() =>
      _vtable.Reset.asFunction<int Function(VTablePointer lpVtbl)>()(ptr);

  /// Creates a new enumerator that contains the same enumeration state as the
  /// current one.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-ienummoniker-clone>.
  int clone(Pointer<VTablePointer> ppenum) => _vtable.Clone.asFunction<
      int Function(
          VTablePointer lpVtbl, Pointer<VTablePointer> ppenum)>()(ptr, ppenum);
}

/// @nodoc
base class IEnumMonikerVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 celt,
              Pointer<VTablePointer> rgelt,
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
