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
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nn-shobjidl_core-ishellfolder>.
///
/// {@category com}
class IShellFolder extends IUnknown {
  IShellFolder(super.ptr) : _vtable = ptr.value.cast<IShellFolderVtbl>().ref;

  final IShellFolderVtbl _vtable;

  factory IShellFolder.from(IUnknown interface) =>
      IShellFolder(interface.toInterface(IID_IShellFolder));

  /// Translates the display name of a file object or a folder into an item
  /// identifier list.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishellfolder-parsedisplayname>.
  int parseDisplayName(
          int hwnd,
          VTablePointer pbc,
          Pointer<Utf16> pszDisplayName,
          Pointer<Pointer<ITEMIDLIST>> ppidl,
          Pointer<Uint32> pdwAttributes) =>
      _vtable.ParseDisplayName.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  int hwnd,
                  VTablePointer pbc,
                  Pointer<Utf16> pszDisplayName,
                  Pointer<Uint32> pchEaten,
                  Pointer<Pointer<ITEMIDLIST>> ppidl,
                  Pointer<Uint32> pdwAttributes)>()(
          ptr, hwnd, pbc, pszDisplayName, nullptr, ppidl, pdwAttributes);

  /// Enables a client to determine the contents of a folder by creating an item
  /// identifier enumeration object and returning its IEnumIDList interface.
  ///
  /// The methods supported by that interface can then be used to enumerate the
  /// folder's contents.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishellfolder-enumobjects>.
  int enumObjects(
          int hwnd, int grfFlags, Pointer<VTablePointer> ppenumIDList) =>
      _vtable.EnumObjects.asFunction<
              int Function(VTablePointer lpVtbl, int hwnd, int grfFlags,
                  Pointer<VTablePointer> ppenumIDList)>()(
          ptr, hwnd, grfFlags, ppenumIDList);

  /// Retrieves a handler, typically the Shell folder object that implements
  /// IShellFolder for a particular item.
  ///
  /// Optional parameters that control the construction of the handler are passed
  /// in the bind context.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishellfolder-bindtoobject>.
  int bindToObject(Pointer<ITEMIDLIST> pidl, VTablePointer pbc,
          Pointer<GUID> riid, Pointer<Pointer> ppv) =>
      _vtable.BindToObject.asFunction<
          int Function(
              VTablePointer lpVtbl,
              Pointer<ITEMIDLIST> pidl,
              VTablePointer pbc,
              Pointer<GUID> riid,
              Pointer<Pointer> ppv)>()(ptr, pidl, pbc, riid, ppv);

  /// Requests a pointer to an object's storage interface.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishellfolder-bindtostorage>.
  int bindToStorage(Pointer<ITEMIDLIST> pidl, VTablePointer pbc,
          Pointer<GUID> riid, Pointer<Pointer> ppv) =>
      _vtable.BindToStorage.asFunction<
          int Function(
              VTablePointer lpVtbl,
              Pointer<ITEMIDLIST> pidl,
              VTablePointer pbc,
              Pointer<GUID> riid,
              Pointer<Pointer> ppv)>()(ptr, pidl, pbc, riid, ppv);

  /// Determines the relative order of two file objects or folders, given their
  /// item identifier lists.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishellfolder-compareids>.
  int compareIDs(
          int lParam, Pointer<ITEMIDLIST> pidl1, Pointer<ITEMIDLIST> pidl2) =>
      _vtable.CompareIDs.asFunction<
          int Function(
              VTablePointer lpVtbl,
              int lParam,
              Pointer<ITEMIDLIST> pidl1,
              Pointer<ITEMIDLIST> pidl2)>()(ptr, lParam, pidl1, pidl2);

  /// Requests an object that can be used to obtain information from or interact
  /// with a folder object.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishellfolder-createviewobject>.
  int createViewObject(
          int hwndOwner, Pointer<GUID> riid, Pointer<Pointer> ppv) =>
      _vtable.CreateViewObject.asFunction<
          int Function(VTablePointer lpVtbl, int hwndOwner, Pointer<GUID> riid,
              Pointer<Pointer> ppv)>()(ptr, hwndOwner, riid, ppv);

  /// Gets the attributes of one or more file or folder objects contained in the
  /// object represented by IShellFolder.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishellfolder-getattributesof>.
  int getAttributesOf(int cidl, Pointer<Pointer<ITEMIDLIST>> apidl,
          Pointer<Uint32> rgfInOut) =>
      _vtable.GetAttributesOf.asFunction<
          int Function(
              VTablePointer lpVtbl,
              int cidl,
              Pointer<Pointer<ITEMIDLIST>> apidl,
              Pointer<Uint32> rgfInOut)>()(ptr, cidl, apidl, rgfInOut);

  /// Gets an object that can be used to carry out actions on the specified file
  /// objects or folders.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishellfolder-getuiobjectof>.
  int getUIObjectOf(int hwndOwner, int cidl, Pointer<Pointer<ITEMIDLIST>> apidl,
          Pointer<GUID> riid, Pointer<Pointer> ppv) =>
      _vtable.GetUIObjectOf.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  int hwndOwner,
                  int cidl,
                  Pointer<Pointer<ITEMIDLIST>> apidl,
                  Pointer<GUID> riid,
                  Pointer<Uint32> rgfReserved,
                  Pointer<Pointer> ppv)>()(
          ptr, hwndOwner, cidl, apidl, riid, nullptr, ppv);

  /// Retrieves the display name for the specified file object or subfolder.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishellfolder-getdisplaynameof>.
  int getDisplayNameOf(
          Pointer<ITEMIDLIST> pidl, int uFlags, Pointer<STRRET> pName) =>
      _vtable.GetDisplayNameOf.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<ITEMIDLIST> pidl,
              int uFlags, Pointer<STRRET> pName)>()(ptr, pidl, uFlags, pName);

  /// Sets the display name of a file object or subfolder, changing the item
  /// identifier in the process.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishellfolder-setnameof>.
  int setNameOf(int? hwnd, Pointer<ITEMIDLIST> pidl, Pointer<Utf16> pszName,
          int uFlags, Pointer<Pointer<ITEMIDLIST>>? ppidlOut) =>
      _vtable.SetNameOf.asFunction<
              int Function(
                  VTablePointer lpVtbl,
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
          HRESULT Function(
              VTablePointer lpVtbl,
              HWND hwnd,
              VTablePointer pbc,
              Pointer<Utf16> pszDisplayName,
              Pointer<Uint32> pchEaten,
              Pointer<Pointer<ITEMIDLIST>> ppidl,
              Pointer<Uint32> pdwAttributes)>> ParseDisplayName;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, HWND hwnd, Uint32 grfFlags,
              Pointer<VTablePointer> ppenumIDList)>> EnumObjects;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Pointer<ITEMIDLIST> pidl,
              VTablePointer pbc,
              Pointer<GUID> riid,
              Pointer<Pointer> ppv)>> BindToObject;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Pointer<ITEMIDLIST> pidl,
              VTablePointer pbc,
              Pointer<GUID> riid,
              Pointer<Pointer> ppv)>> BindToStorage;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              LPARAM lParam,
              Pointer<ITEMIDLIST> pidl1,
              Pointer<ITEMIDLIST> pidl2)>> CompareIDs;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, HWND hwndOwner,
              Pointer<GUID> riid, Pointer<Pointer> ppv)>> CreateViewObject;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 cidl,
              Pointer<Pointer<ITEMIDLIST>> apidl,
              Pointer<Uint32> rgfInOut)>> GetAttributesOf;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              HWND hwndOwner,
              Uint32 cidl,
              Pointer<Pointer<ITEMIDLIST>> apidl,
              Pointer<GUID> riid,
              Pointer<Uint32> rgfReserved,
              Pointer<Pointer> ppv)>> GetUIObjectOf;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<ITEMIDLIST> pidl,
              Uint32 uFlags, Pointer<STRRET> pName)>> GetDisplayNameOf;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              HWND hwnd,
              Pointer<ITEMIDLIST> pidl,
              Pointer<Utf16> pszName,
              Uint32 uFlags,
              Pointer<Pointer<ITEMIDLIST>> ppidlOut)>> SetNameOf;
}
