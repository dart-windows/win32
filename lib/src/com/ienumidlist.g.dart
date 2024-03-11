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
const IID_IEnumIDList = '{000214f2-0000-0000-c000-000000000046}';

/// Exposes a standard set of methods used to enumerate the pointers to item
/// identifier lists (PIDLs) of the items in a Shell folder.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nn-shobjidl_core-ienumidlist>.
///
/// {@category com}
class IEnumIDList extends IUnknown {
  IEnumIDList(super.ptr) : _vtable = ptr.value.cast<IEnumIDListVtbl>().ref;

  final IEnumIDListVtbl _vtable;

  /// Creates a new instance of `IEnumIDList` from an existing [interface].
  ///
  /// This constructor invokes the [queryInterface] method to obtain a reference
  /// to the `IEnumIDList` interface with the provided interface.
  ///
  /// Throws a [WindowsException] if the `queryInterface` call fails.
  factory IEnumIDList.from(IUnknown interface) =>
      IEnumIDList(interface.toInterface(IID_IEnumIDList));

  /// Retrieves the specified number of item identifiers in the enumeration
  /// sequence and advances the current position by the number of items retrieved.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ienumidlist-next>.
  int next(int celt, Pointer<Pointer<ITEMIDLIST>> rgelt,
          Pointer<Uint32>? pceltFetched) =>
      _vtable.Next.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  int celt,
                  Pointer<Pointer<ITEMIDLIST>> rgelt,
                  Pointer<Uint32> pceltFetched)>()(
          ptr, celt, rgelt, pceltFetched ?? nullptr);

  /// Skips the specified number of elements in the enumeration sequence.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ienumidlist-skip>.
  int skip(int celt) =>
      _vtable.Skip.asFunction<int Function(VTablePointer lpVtbl, int celt)>()(
          ptr, celt);

  /// Returns to the beginning of the enumeration sequence.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ienumidlist-reset>.
  int reset() =>
      _vtable.Reset.asFunction<int Function(VTablePointer lpVtbl)>()(ptr);

  /// Creates a new item enumeration object with the same contents and state as
  /// the current one.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ienumidlist-clone>.
  int clone(Pointer<VTablePointer> ppenum) => _vtable.Clone.asFunction<
      int Function(
          VTablePointer lpVtbl, Pointer<VTablePointer> ppenum)>()(ptr, ppenum);
}

/// @nodoc
base class IEnumIDListVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 celt,
              Pointer<Pointer<ITEMIDLIST>> rgelt,
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
