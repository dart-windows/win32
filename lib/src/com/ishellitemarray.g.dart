// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../extensions/iunknown.dart';
import '../guid.dart';
import '../structs.g.dart';
import '../types.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IShellItemArray = '{b63ea76d-1f85-456f-a19c-48159efa858b}';

/// Exposes methods that create and manipulate Shell item arrays.
///
/// {@category com}
class IShellItemArray extends IUnknown {
  IShellItemArray(super.ptr)
      : _vtable = ptr.value.cast<IShellItemArrayVtbl>().ref;

  final IShellItemArrayVtbl _vtable;

  factory IShellItemArray.from(IUnknown interface) =>
      IShellItemArray(interface.toInterface(IID_IShellItemArray));

  int bindToHandler(VTablePointer pbc, Pointer<GUID> bhid, Pointer<GUID> riid,
          Pointer<Pointer> ppvOut) =>
      _vtable.BindToHandler.asFunction<
          int Function(
              VTablePointer lpVtbl,
              VTablePointer pbc,
              Pointer<GUID> bhid,
              Pointer<GUID> riid,
              Pointer<Pointer> ppvOut)>()(ptr, pbc, bhid, riid, ppvOut);

  int getPropertyStore(int flags, Pointer<GUID> riid, Pointer<Pointer> ppv) =>
      _vtable.GetPropertyStore.asFunction<
          int Function(VTablePointer lpVtbl, int flags, Pointer<GUID> riid,
              Pointer<Pointer> ppv)>()(ptr, flags, riid, ppv);

  int getPropertyDescriptionList(Pointer<PROPERTYKEY> keyType,
          Pointer<GUID> riid, Pointer<Pointer> ppv) =>
      _vtable.GetPropertyDescriptionList.asFunction<
          int Function(
              VTablePointer lpVtbl,
              Pointer<PROPERTYKEY> keyType,
              Pointer<GUID> riid,
              Pointer<Pointer> ppv)>()(ptr, keyType, riid, ppv);

  int getAttributes(
          int attribFlags, int sfgaoMask, Pointer<Uint32> psfgaoAttribs) =>
      _vtable.GetAttributes.asFunction<
              int Function(VTablePointer lpVtbl, int attribFlags, int sfgaoMask,
                  Pointer<Uint32> psfgaoAttribs)>()(
          ptr, attribFlags, sfgaoMask, psfgaoAttribs);

  int getCount(Pointer<Uint32> pdwNumItems) => _vtable.GetCount.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<Uint32> pdwNumItems)>()(
      ptr, pdwNumItems);

  int getItemAt(int dwIndex, Pointer<VTablePointer> ppsi) =>
      _vtable.GetItemAt.asFunction<
          int Function(VTablePointer lpVtbl, int dwIndex,
              Pointer<VTablePointer> ppsi)>()(ptr, dwIndex, ppsi);

  int enumItems(Pointer<VTablePointer> ppenumShellItems) =>
      _vtable.EnumItems.asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<VTablePointer> ppenumShellItems)>()(
          ptr, ppenumShellItems);
}

/// @nodoc
base class IShellItemArrayVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer lpVtbl,
              VTablePointer pbc,
              Pointer<GUID> bhid,
              Pointer<GUID> riid,
              Pointer<Pointer> ppvOut)>> BindToHandler;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer lpVtbl, Int32 flags, Pointer<GUID> riid,
              Pointer<Pointer> ppv)>> GetPropertyStore;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer lpVtbl,
              Pointer<PROPERTYKEY> keyType,
              Pointer<GUID> riid,
              Pointer<Pointer> ppv)>> GetPropertyDescriptionList;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer lpVtbl, Int32 attribFlags,
              Uint32 sfgaoMask, Pointer<Uint32> psfgaoAttribs)>> GetAttributes;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer lpVtbl, Pointer<Uint32> pdwNumItems)>> GetCount;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer lpVtbl, Uint32 dwIndex,
              Pointer<VTablePointer> ppsi)>> GetItemAt;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> ppenumShellItems)>> EnumItems;
}
