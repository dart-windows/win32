// ishellfolder.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../guid.dart';
import '../structs.g.dart';
import '../types.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IShellFolder = '{000214e6-0000-0000-c000-000000000046}';

/// Exposed by all Shell namespace folder objects, its methods are used to
/// manage folders.
///
/// {@category com}
class IShellFolder extends IUnknown {
  // vtable begins at 3, is 10 entries long.
  IShellFolder(super.ptr)
      : _vtable = ptr.value.value.cast<IShellFolderVtbl>().ref;

  final IShellFolderVtbl _vtable;

  factory IShellFolder.from(IUnknown interface) =>
      IShellFolder(interface.toInterface(IID_IShellFolder));

  int parseDisplayName(
          int hwnd,
          Pointer<VTablePointer> pbc,
          Pointer<Utf16> pszDisplayName,
          Pointer<Uint32> pchEaten,
          Pointer<Pointer<ITEMIDLIST>> ppidl,
          Pointer<Uint32> pdwAttributes) =>
      _vtable.ParseDisplayName.asFunction<
              int Function(
                  VTablePointer,
                  int hwnd,
                  Pointer<VTablePointer> pbc,
                  Pointer<Utf16> pszDisplayName,
                  Pointer<Uint32> pchEaten,
                  Pointer<Pointer<ITEMIDLIST>> ppidl,
                  Pointer<Uint32> pdwAttributes)>()(
          ptr.value, hwnd, pbc, pszDisplayName, pchEaten, ppidl, pdwAttributes);

  int enumObjects(int hwnd, int grfFlags,
          Pointer<Pointer<VTablePointer>> ppenumIDList) =>
      _vtable.EnumObjects.asFunction<
              int Function(VTablePointer, int hwnd, int grfFlags,
                  Pointer<Pointer<VTablePointer>> ppenumIDList)>()(
          ptr.value, hwnd, grfFlags, ppenumIDList);

  int bindToObject(Pointer<ITEMIDLIST> pidl, Pointer<VTablePointer> pbc,
          Pointer<GUID> riid, Pointer<Pointer> ppv) =>
      _vtable.BindToObject.asFunction<
          int Function(
              VTablePointer,
              Pointer<ITEMIDLIST> pidl,
              Pointer<VTablePointer> pbc,
              Pointer<GUID> riid,
              Pointer<Pointer> ppv)>()(ptr.value, pidl, pbc, riid, ppv);

  int bindToStorage(Pointer<ITEMIDLIST> pidl, Pointer<VTablePointer> pbc,
          Pointer<GUID> riid, Pointer<Pointer> ppv) =>
      _vtable.BindToStorage.asFunction<
          int Function(
              VTablePointer,
              Pointer<ITEMIDLIST> pidl,
              Pointer<VTablePointer> pbc,
              Pointer<GUID> riid,
              Pointer<Pointer> ppv)>()(ptr.value, pidl, pbc, riid, ppv);

  int compareIDs(
          int lParam, Pointer<ITEMIDLIST> pidl1, Pointer<ITEMIDLIST> pidl2) =>
      _vtable.CompareIDs.asFunction<
          int Function(VTablePointer, int lParam, Pointer<ITEMIDLIST> pidl1,
              Pointer<ITEMIDLIST> pidl2)>()(ptr.value, lParam, pidl1, pidl2);

  int createViewObject(
          int hwndOwner, Pointer<GUID> riid, Pointer<Pointer> ppv) =>
      _vtable.CreateViewObject.asFunction<
          int Function(VTablePointer, int hwndOwner, Pointer<GUID> riid,
              Pointer<Pointer> ppv)>()(ptr.value, hwndOwner, riid, ppv);

  int getAttributesOf(int cidl, Pointer<Pointer<ITEMIDLIST>> apidl,
          Pointer<Uint32> rgfInOut) =>
      _vtable.GetAttributesOf.asFunction<
          int Function(
              VTablePointer,
              int cidl,
              Pointer<Pointer<ITEMIDLIST>> apidl,
              Pointer<Uint32> rgfInOut)>()(ptr.value, cidl, apidl, rgfInOut);

  int getUIObjectOf(
          int hwndOwner,
          int cidl,
          Pointer<Pointer<ITEMIDLIST>> apidl,
          Pointer<GUID> riid,
          Pointer<Uint32> rgfReserved,
          Pointer<Pointer> ppv) =>
      _vtable.GetUIObjectOf.asFunction<
              int Function(
                  VTablePointer,
                  int hwndOwner,
                  int cidl,
                  Pointer<Pointer<ITEMIDLIST>> apidl,
                  Pointer<GUID> riid,
                  Pointer<Uint32> rgfReserved,
                  Pointer<Pointer> ppv)>()(
          ptr.value, hwndOwner, cidl, apidl, riid, rgfReserved, ppv);

  int getDisplayNameOf(
          Pointer<ITEMIDLIST> pidl, int uFlags, Pointer<STRRET> pName) =>
      _vtable.GetDisplayNameOf.asFunction<
          int Function(VTablePointer, Pointer<ITEMIDLIST> pidl, int uFlags,
              Pointer<STRRET> pName)>()(ptr.value, pidl, uFlags, pName);

  int setNameOf(int hwnd, Pointer<ITEMIDLIST> pidl, Pointer<Utf16> pszName,
          int uFlags, Pointer<Pointer<ITEMIDLIST>> ppidlOut) =>
      _vtable.SetNameOf.asFunction<
              int Function(
                  VTablePointer,
                  int hwnd,
                  Pointer<ITEMIDLIST> pidl,
                  Pointer<Utf16> pszName,
                  int uFlags,
                  Pointer<Pointer<ITEMIDLIST>> ppidlOut)>()(
          ptr.value, hwnd, pidl, pszName, uFlags, ppidlOut);
}

/// @nodoc
base class IShellFolderVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              IntPtr hwnd,
              Pointer<VTablePointer> pbc,
              Pointer<Utf16> pszDisplayName,
              Pointer<Uint32> pchEaten,
              Pointer<Pointer<ITEMIDLIST>> ppidl,
              Pointer<Uint32> pdwAttributes)>> ParseDisplayName;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, IntPtr hwnd, Uint32 grfFlags,
              Pointer<Pointer<VTablePointer>> ppenumIDList)>> EnumObjects;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<ITEMIDLIST> pidl,
              Pointer<VTablePointer> pbc,
              Pointer<GUID> riid,
              Pointer<Pointer> ppv)>> BindToObject;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<ITEMIDLIST> pidl,
              Pointer<VTablePointer> pbc,
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
