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
const IID_IEnumVARIANT = '{00020404-0000-0000-c000-000000000046}';

/// Provides a method for enumerating a collection of variants, including
/// heterogeneous collections of objects and intrinsic types.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/oaidl/nn-oaidl-ienumvariant>.
///
/// {@category com}
class IEnumVARIANT extends IUnknown {
  IEnumVARIANT(super.ptr) : _vtable = ptr.value.cast<IEnumVARIANTVtbl>().ref;

  final IEnumVARIANTVtbl _vtable;

  /// Creates a new instance of `IEnumVARIANT` from an existing [interface].
  ///
  /// This constructor invokes the [queryInterface] method to obtain a reference
  /// to the `IEnumVARIANT` interface with the provided interface.
  ///
  /// Throws a [WindowsException] if the `queryInterface` call fails.
  factory IEnumVARIANT.from(IUnknown interface) =>
      IEnumVARIANT(interface.toInterface(IID_IEnumVARIANT));

  /// Retrieves the specified items in the enumeration sequence.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/oaidl/nf-oaidl-ienumvariant-next>.
  int next(int celt, Pointer<VARIANT> rgVar, Pointer<Uint32> pCeltFetched) =>
      _vtable.Next.asFunction<
          int Function(VTablePointer lpVtbl, int celt, Pointer<VARIANT> rgVar,
              Pointer<Uint32> pCeltFetched)>()(ptr, celt, rgVar, pCeltFetched);

  /// Attempts to skip over the next celt elements in the enumeration sequence.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/oaidl/nf-oaidl-ienumvariant-skip>.
  int skip(int celt) =>
      _vtable.Skip.asFunction<int Function(VTablePointer lpVtbl, int celt)>()(
          ptr, celt);

  /// Resets the enumeration sequence to the beginning.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/oaidl/nf-oaidl-ienumvariant-reset>.
  int reset() =>
      _vtable.Reset.asFunction<int Function(VTablePointer lpVtbl)>()(ptr);

  /// Creates a copy of the current state of enumeration.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/oaidl/nf-oaidl-ienumvariant-clone>.
  int clone(Pointer<VTablePointer> ppEnum) => _vtable.Clone.asFunction<
      int Function(
          VTablePointer lpVtbl, Pointer<VTablePointer> ppEnum)>()(ptr, ppEnum);
}

/// @nodoc
base class IEnumVARIANTVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 celt,
              Pointer<VARIANT> rgVar, Pointer<Uint32> pCeltFetched)>> Next;
  external Pointer<
      NativeFunction<HRESULT Function(VTablePointer lpVtbl, Uint32 celt)>> Skip;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      Reset;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<VTablePointer> ppEnum)>> Clone;
}