// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../extensions/iunknown.dart';
import '../guid.dart';
import '../structs.g.dart';
import '../types.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IShellFolder = '{000214e6-0000-0000-c000-000000000046}';

/// Exposed by all Shell namespace folder objects, its methods are used to
/// manage folders.
///
/// {@category com}
class IShellFolder extends IUnknown {
  IShellFolder(super.ptr) : _vtable = ptr.value.cast<IShellFolderVtbl>().ref;

  final IShellFolderVtbl _vtable;

  factory IShellFolder.from(IUnknown interface) =>
      IShellFolder(interface.toInterface(IID_IShellFolder));

  int parseDisplayName(
          int hwnd,
          VTablePointer pbc,
          Pointer<Utf16> pszDisplayName,
          Pointer<Pointer<ITEMIDLIST>> ppidl,
          Pointer<Uint32> pdwAttributes) =>
      _vtable.ParseDisplayName.asFunction<
              int Function(
                  VTablePointer,
                  int hwnd,
                  VTablePointer pbc,
                  Pointer<Utf16> pszDisplayName,
                  Pointer<Uint32> pchEaten,
                  Pointer<Pointer<ITEMIDLIST>> ppidl,
                  Pointer<Uint32> pdwAttributes)>()(
          ptr, hwnd, pbc, pszDisplayName, nullptr, ppidl, pdwAttributes);

  int enumObjects(
          int hwnd, int grfFlags, Pointer<VTablePointer> ppenumIDList) =>
      _vtable.EnumObjects.asFunction<
              int Function(VTablePointer, int hwnd, int grfFlags,
                  Pointer<VTablePointer> ppenumIDList)>()(
          ptr, hwnd, grfFlags, ppenumIDList);

  int bindToObject(Pointer<ITEMIDLIST> pidl, VTablePointer pbc,
          Pointer<GUID> riid, Pointer<Pointer> ppv) =>
      _vtable.BindToObject.asFunction<
          int Function(
              VTablePointer,
              Pointer<ITEMIDLIST> pidl,
              VTablePointer pbc,
              Pointer<GUID> riid,
              Pointer<Pointer> ppv)>()(ptr, pidl, pbc, riid, ppv);

  int bindToStorage(Pointer<ITEMIDLIST> pidl, VTablePointer pbc,
          Pointer<GUID> riid, Pointer<Pointer> ppv) =>
      _vtable.BindToStorage.asFunction<
          int Function(
              VTablePointer,
              Pointer<ITEMIDLIST> pidl,
              VTablePointer pbc,
              Pointer<GUID> riid,
              Pointer<Pointer> ppv)>()(ptr, pidl, pbc, riid, ppv);

  int compareIDs(
          int lParam, Pointer<ITEMIDLIST> pidl1, Pointer<ITEMIDLIST> pidl2) =>
      _vtable.CompareIDs.asFunction<
          int Function(VTablePointer, int lParam, Pointer<ITEMIDLIST> pidl1,
              Pointer<ITEMIDLIST> pidl2)>()(ptr, lParam, pidl1, pidl2);

  int createViewObject(
          int hwndOwner, Pointer<GUID> riid, Pointer<Pointer> ppv) =>
      _vtable.CreateViewObject.asFunction<
          int Function(VTablePointer, int hwndOwner, Pointer<GUID> riid,
              Pointer<Pointer> ppv)>()(ptr, hwndOwner, riid, ppv);

  int getAttributesOf(int cidl, Pointer<Pointer<ITEMIDLIST>> apidl,
          Pointer<Uint32> rgfInOut) =>
      _vtable.GetAttributesOf.asFunction<
          int Function(
              VTablePointer,
              int cidl,
              Pointer<Pointer<ITEMIDLIST>> apidl,
              Pointer<Uint32> rgfInOut)>()(ptr, cidl, apidl, rgfInOut);

  int getUIObjectOf(int hwndOwner, int cidl, Pointer<Pointer<ITEMIDLIST>> apidl,
          Pointer<GUID> riid, Pointer<Pointer> ppv) =>
      _vtable.GetUIObjectOf.asFunction<
              int Function(
                  VTablePointer,
                  int hwndOwner,
                  int cidl,
                  Pointer<Pointer<ITEMIDLIST>> apidl,
                  Pointer<GUID> riid,
                  Pointer<Uint32> rgfReserved,
                  Pointer<Pointer> ppv)>()(
          ptr, hwndOwner, cidl, apidl, riid, nullptr, ppv);

  int getDisplayNameOf(
          Pointer<ITEMIDLIST> pidl, int uFlags, Pointer<STRRET> pName) =>
      _vtable.GetDisplayNameOf.asFunction<
          int Function(VTablePointer, Pointer<ITEMIDLIST> pidl, int uFlags,
              Pointer<STRRET> pName)>()(ptr, pidl, uFlags, pName);

  int setNameOf(int? hwnd, Pointer<ITEMIDLIST> pidl, Pointer<Utf16> pszName,
          int uFlags, Pointer<Pointer<ITEMIDLIST>>? ppidlOut) =>
      _vtable.SetNameOf.asFunction<
              int Function(
                  VTablePointer,
                  int hwnd,
                  Pointer<ITEMIDLIST> pidl,
                  Pointer<Utf16> pszName,
                  int uFlags,
                  Pointer<Pointer<ITEMIDLIST>> ppidlOut)>()(
          ptr, hwnd ?? 0, pidl, pszName, uFlags, ppidlOut ?? nullptr);
}

/// @nodoc
base class IShellFolderVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              IntPtr hwnd,
              VTablePointer pbc,
              Pointer<Utf16> pszDisplayName,
              Pointer<Uint32> pchEaten,
              Pointer<Pointer<ITEMIDLIST>> ppidl,
              Pointer<Uint32> pdwAttributes)>> ParseDisplayName;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, IntPtr hwnd, Uint32 grfFlags,
              Pointer<VTablePointer> ppenumIDList)>> EnumObjects;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<ITEMIDLIST> pidl,
              VTablePointer pbc,
              Pointer<GUID> riid,
              Pointer<Pointer> ppv)>> BindToObject;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<ITEMIDLIST> pidl,
              VTablePointer pbc,
              Pointer<GUID> riid,
              Pointer<Pointer> ppv)>> BindToStorage;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              IntPtr lParam,
              Pointer<ITEMIDLIST> pidl1,
              Pointer<ITEMIDLIST> pidl2)>> CompareIDs;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, IntPtr hwndOwner, Pointer<GUID> riid,
              Pointer<Pointer> ppv)>> CreateViewObject;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Uint32 cidl,
              Pointer<Pointer<ITEMIDLIST>> apidl,
              Pointer<Uint32> rgfInOut)>> GetAttributesOf;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              IntPtr hwndOwner,
              Uint32 cidl,
              Pointer<Pointer<ITEMIDLIST>> apidl,
              Pointer<GUID> riid,
              Pointer<Uint32> rgfReserved,
              Pointer<Pointer> ppv)>> GetUIObjectOf;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<ITEMIDLIST> pidl, Uint32 uFlags,
              Pointer<STRRET> pName)>> GetDisplayNameOf;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              IntPtr hwnd,
              Pointer<ITEMIDLIST> pidl,
              Pointer<Utf16> pszName,
              Uint32 uFlags,
              Pointer<Pointer<ITEMIDLIST>> ppidlOut)>> SetNameOf;
}
