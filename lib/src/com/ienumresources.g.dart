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
const IID_IEnumResources = '{2dd81fe3-a83c-4da9-a330-47249d345ba1}';

/// Exposes resource enumeration methods.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nn-shobjidl_core-ienumresources>.
///
/// {@category com}
class IEnumResources extends IUnknown {
  IEnumResources(super.ptr)
      : _vtable = ptr.value.cast<IEnumResourcesVtbl>().ref;

  final IEnumResourcesVtbl _vtable;

  /// Creates a new instance of `IEnumResources` from an existing [interface].
  ///
  /// This constructor invokes the [queryInterface] method to obtain a reference
  /// to the `IEnumResources` interface with the provided interface.
  ///
  /// Throws a [WindowsException] if the `queryInterface` call fails.
  factory IEnumResources.from(IUnknown interface) =>
      IEnumResources(interface.toInterface(IID_IEnumResources));

  /// Gets the next SHELL_ITEM_RESOURCE structure.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ienumresources-next>.
  int next(int celt, Pointer<SHELL_ITEM_RESOURCE> psir,
          Pointer<Uint32> pceltFetched) =>
      _vtable.Next.asFunction<
          int Function(
              VTablePointer lpVtbl,
              int celt,
              Pointer<SHELL_ITEM_RESOURCE> psir,
              Pointer<Uint32> pceltFetched)>()(ptr, celt, psir, pceltFetched);

  /// Skips a specified number of resources.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ienumresources-skip>.
  int skip(int celt) =>
      _vtable.Skip.asFunction<int Function(VTablePointer lpVtbl, int celt)>()(
          ptr, celt);

  /// Resets the enumeration index to 0.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ienumresources-reset>.
  int reset() =>
      _vtable.Reset.asFunction<int Function(VTablePointer lpVtbl)>()(ptr);

  /// Clones a resource enumerator.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ienumresources-clone>.
  int clone(Pointer<VTablePointer> ppenumr) => _vtable.Clone.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<VTablePointer> ppenumr)>()(
      ptr, ppenumr);
}

/// @nodoc
base class IEnumResourcesVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 celt,
              Pointer<SHELL_ITEM_RESOURCE> psir,
              Pointer<Uint32> pceltFetched)>> Next;
  external Pointer<
      NativeFunction<HRESULT Function(VTablePointer lpVtbl, Uint32 celt)>> Skip;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      Reset;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<VTablePointer> ppenumr)>> Clone;
}
