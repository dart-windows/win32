// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../extensions/iunknown.dart';
import '../structs.g.dart';
import '../types.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IEnumIDList = '{000214f2-0000-0000-c000-000000000046}';

/// Exposes a standard set of methods used to enumerate the pointers to item
/// identifier lists (PIDLs) of the items in a Shell folder. When a folder's
/// `IShellFolder::EnumObjects` method is called, it creates an enumeration
/// object and passes a pointer to the object's [IEnumIDList] interface back
/// to the calling application.
///
/// {@category com}
class IEnumIDList extends IUnknown {
  IEnumIDList(super.ptr) : _vtable = ptr.value.cast<IEnumIDListVtbl>().ref;

  final IEnumIDListVtbl _vtable;

  factory IEnumIDList.from(IUnknown interface) =>
      IEnumIDList(interface.toInterface(IID_IEnumIDList));

  int next(int celt, Pointer<Pointer<ITEMIDLIST>> rgelt,
          Pointer<Uint32> pceltFetched) =>
      _vtable.Next.asFunction<
          int Function(
              VTablePointer,
              int celt,
              Pointer<Pointer<ITEMIDLIST>> rgelt,
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
base class IEnumIDListVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Uint32 celt,
              Pointer<Pointer<ITEMIDLIST>> rgelt,
              Pointer<Uint32> pceltFetched)>> Next;
  external Pointer<NativeFunction<Int32 Function(VTablePointer, Uint32 celt)>>
      Skip;
  external Pointer<NativeFunction<Int32 Function(VTablePointer)>> Reset;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<VTablePointer> ppenum)>> Clone;
}
