// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../exceptions.dart';
import '../extensions/iunknown.dart';
import '../guid.dart';
import '../structs.g.dart';
import '../types.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IShellItemArray = '{b63ea76d-1f85-456f-a19c-48159efa858b}';

/// Exposes methods that create and manipulate Shell item arrays.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nn-shobjidl_core-ishellitemarray>.
///
/// {@category com}
class IShellItemArray extends IUnknown {
  IShellItemArray(super.ptr)
      : _vtable = ptr.value.cast<IShellItemArrayVtbl>().ref;

  final IShellItemArrayVtbl _vtable;

  /// Creates a new instance of `IShellItemArray` from an existing [interface].
  ///
  /// This constructor invokes the [queryInterface] method to obtain a reference
  /// to the `IShellItemArray` interface with the provided interface.
  ///
  /// Throws a [WindowsException] if the `queryInterface` call fails.
  factory IShellItemArray.from(IUnknown interface) =>
      IShellItemArray(interface.toInterface(IID_IShellItemArray));

  /// Binds to an object by means of the specified handler.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishellitemarray-bindtohandler>.
  int bindToHandler(VTablePointer pbc, Pointer<GUID> bhid, Pointer<GUID> riid,
          Pointer<Pointer> ppvOut) =>
      _vtable.BindToHandler.asFunction<
          int Function(
              VTablePointer lpVtbl,
              VTablePointer pbc,
              Pointer<GUID> bhid,
              Pointer<GUID> riid,
              Pointer<Pointer> ppvOut)>()(ptr, pbc, bhid, riid, ppvOut);

  /// Gets a property store.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishellitemarray-getpropertystore>.
  int getPropertyStore(int flags, Pointer<GUID> riid, Pointer<Pointer> ppv) =>
      _vtable.GetPropertyStore.asFunction<
          int Function(VTablePointer lpVtbl, int flags, Pointer<GUID> riid,
              Pointer<Pointer> ppv)>()(ptr, flags, riid, ppv);

  /// Gets a property description list for the items in the shell item array.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishellitemarray-getpropertydescriptionlist>.
  int getPropertyDescriptionList(Pointer<PROPERTYKEY> keyType,
          Pointer<GUID> riid, Pointer<Pointer> ppv) =>
      _vtable.GetPropertyDescriptionList.asFunction<
          int Function(
              VTablePointer lpVtbl,
              Pointer<PROPERTYKEY> keyType,
              Pointer<GUID> riid,
              Pointer<Pointer> ppv)>()(ptr, keyType, riid, ppv);

  /// Gets the attributes of the set of items contained in an IShellItemArray.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishellitemarray-getattributes>.
  int getAttributes(
          int attribFlags, int sfgaoMask, Pointer<Uint32> psfgaoAttribs) =>
      _vtable.GetAttributes.asFunction<
              int Function(VTablePointer lpVtbl, int attribFlags, int sfgaoMask,
                  Pointer<Uint32> psfgaoAttribs)>()(
          ptr, attribFlags, sfgaoMask, psfgaoAttribs);

  /// Gets the number of items in the given IShellItem array.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishellitemarray-getcount>.
  int getCount(Pointer<Uint32> pdwNumItems) => _vtable.GetCount.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<Uint32> pdwNumItems)>()(
      ptr, pdwNumItems);

  /// Gets the item at the given index in the IShellItemArray.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishellitemarray-getitemat>.
  int getItemAt(int dwIndex, Pointer<VTablePointer> ppsi) =>
      _vtable.GetItemAt.asFunction<
          int Function(VTablePointer lpVtbl, int dwIndex,
              Pointer<VTablePointer> ppsi)>()(ptr, dwIndex, ppsi);

  /// Gets an enumerator of the items in the array.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishellitemarray-enumitems>.
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
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer pbc,
              Pointer<GUID> bhid,
              Pointer<GUID> riid,
              Pointer<Pointer> ppvOut)>> BindToHandler;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 flags,
              Pointer<GUID> riid, Pointer<Pointer> ppv)>> GetPropertyStore;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Pointer<PROPERTYKEY> keyType,
              Pointer<GUID> riid,
              Pointer<Pointer> ppv)>> GetPropertyDescriptionList;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 attribFlags,
              Uint32 sfgaoMask, Pointer<Uint32> psfgaoAttribs)>> GetAttributes;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Uint32> pdwNumItems)>> GetCount;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 dwIndex,
              Pointer<VTablePointer> ppsi)>> GetItemAt;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> ppenumShellItems)>> EnumItems;
}
