// ishellfolder.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import '../guid.dart';
import '../structs.g.dart';
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
      : _vtable = ptr.ref.vtable.cast<IShellFolderVtbl>().ref;

  final IShellFolderVtbl _vtable;

  factory IShellFolder.from(IUnknown interface) =>
      IShellFolder(interface.toInterface(IID_IShellFolder));

  int parseDisplayName(
          int hwnd,
          Pointer<COMObject> pbc,
          Pointer<Utf16> pszDisplayName,
          Pointer<Uint32> pchEaten,
          Pointer<Pointer<ITEMIDLIST>> ppidl,
          Pointer<Uint32> pdwAttributes) =>
      _vtable.ParseDisplayName.asFunction<
              int Function(
                  Pointer,
                  int hwnd,
                  Pointer<COMObject> pbc,
                  Pointer<Utf16> pszDisplayName,
                  Pointer<Uint32> pchEaten,
                  Pointer<Pointer<ITEMIDLIST>> ppidl,
                  Pointer<Uint32> pdwAttributes)>()(ptr.ref.lpVtbl, hwnd, pbc,
          pszDisplayName, pchEaten, ppidl, pdwAttributes);

  int enumObjects(
          int hwnd, int grfFlags, Pointer<Pointer<COMObject>> ppenumIDList) =>
      _vtable.EnumObjects.asFunction<
              int Function(Pointer, int hwnd, int grfFlags,
                  Pointer<Pointer<COMObject>> ppenumIDList)>()(
          ptr.ref.lpVtbl, hwnd, grfFlags, ppenumIDList);

  int bindToObject(Pointer<ITEMIDLIST> pidl, Pointer<COMObject> pbc,
          Pointer<GUID> riid, Pointer<Pointer> ppv) =>
      _vtable.BindToObject.asFunction<
          int Function(
              Pointer,
              Pointer<ITEMIDLIST> pidl,
              Pointer<COMObject> pbc,
              Pointer<GUID> riid,
              Pointer<Pointer> ppv)>()(ptr.ref.lpVtbl, pidl, pbc, riid, ppv);

  int bindToStorage(Pointer<ITEMIDLIST> pidl, Pointer<COMObject> pbc,
          Pointer<GUID> riid, Pointer<Pointer> ppv) =>
      _vtable.BindToStorage.asFunction<
          int Function(
              Pointer,
              Pointer<ITEMIDLIST> pidl,
              Pointer<COMObject> pbc,
              Pointer<GUID> riid,
              Pointer<Pointer> ppv)>()(ptr.ref.lpVtbl, pidl, pbc, riid, ppv);

  int compareIDs(
          int lParam, Pointer<ITEMIDLIST> pidl1, Pointer<ITEMIDLIST> pidl2) =>
      _vtable.CompareIDs.asFunction<
              int Function(Pointer, int lParam, Pointer<ITEMIDLIST> pidl1,
                  Pointer<ITEMIDLIST> pidl2)>()(
          ptr.ref.lpVtbl, lParam, pidl1, pidl2);

  int createViewObject(
          int hwndOwner, Pointer<GUID> riid, Pointer<Pointer> ppv) =>
      _vtable.CreateViewObject.asFunction<
          int Function(Pointer, int hwndOwner, Pointer<GUID> riid,
              Pointer<Pointer> ppv)>()(ptr.ref.lpVtbl, hwndOwner, riid, ppv);

  int getAttributesOf(int cidl, Pointer<Pointer<ITEMIDLIST>> apidl,
          Pointer<Uint32> rgfInOut) =>
      _vtable.GetAttributesOf.asFunction<
              int Function(
                  Pointer,
                  int cidl,
                  Pointer<Pointer<ITEMIDLIST>> apidl,
                  Pointer<Uint32> rgfInOut)>()(
          ptr.ref.lpVtbl, cidl, apidl, rgfInOut);

  int getUIObjectOf(
          int hwndOwner,
          int cidl,
          Pointer<Pointer<ITEMIDLIST>> apidl,
          Pointer<GUID> riid,
          Pointer<Uint32> rgfReserved,
          Pointer<Pointer> ppv) =>
      _vtable.GetUIObjectOf.asFunction<
              int Function(
                  Pointer,
                  int hwndOwner,
                  int cidl,
                  Pointer<Pointer<ITEMIDLIST>> apidl,
                  Pointer<GUID> riid,
                  Pointer<Uint32> rgfReserved,
                  Pointer<Pointer> ppv)>()(
          ptr.ref.lpVtbl, hwndOwner, cidl, apidl, riid, rgfReserved, ppv);

  int getDisplayNameOf(
          Pointer<ITEMIDLIST> pidl, int uFlags, Pointer<STRRET> pName) =>
      _vtable.GetDisplayNameOf.asFunction<
          int Function(Pointer, Pointer<ITEMIDLIST> pidl, int uFlags,
              Pointer<STRRET> pName)>()(ptr.ref.lpVtbl, pidl, uFlags, pName);

  int setNameOf(int hwnd, Pointer<ITEMIDLIST> pidl, Pointer<Utf16> pszName,
          int uFlags, Pointer<Pointer<ITEMIDLIST>> ppidlOut) =>
      _vtable.SetNameOf.asFunction<
              int Function(
                  Pointer,
                  int hwnd,
                  Pointer<ITEMIDLIST> pidl,
                  Pointer<Utf16> pszName,
                  int uFlags,
                  Pointer<Pointer<ITEMIDLIST>> ppidlOut)>()(
          ptr.ref.lpVtbl, hwnd, pidl, pszName, uFlags, ppidlOut);
}

/// @nodoc
base class IShellFolderVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              IntPtr hwnd,
              Pointer<COMObject> pbc,
              Pointer<Utf16> pszDisplayName,
              Pointer<Uint32> pchEaten,
              Pointer<Pointer<ITEMIDLIST>> ppidl,
              Pointer<Uint32> pdwAttributes)>> ParseDisplayName;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, IntPtr hwnd, Uint32 grfFlags,
              Pointer<Pointer<COMObject>> ppenumIDList)>> EnumObjects;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              Pointer<ITEMIDLIST> pidl,
              Pointer<COMObject> pbc,
              Pointer<GUID> riid,
              Pointer<Pointer> ppv)>> BindToObject;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              Pointer<ITEMIDLIST> pidl,
              Pointer<COMObject> pbc,
              Pointer<GUID> riid,
              Pointer<Pointer> ppv)>> BindToStorage;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, IntPtr lParam, Pointer<ITEMIDLIST> pidl1,
              Pointer<ITEMIDLIST> pidl2)>> CompareIDs;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, IntPtr hwndOwner, Pointer<GUID> riid,
              Pointer<Pointer> ppv)>> CreateViewObject;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              Uint32 cidl,
              Pointer<Pointer<ITEMIDLIST>> apidl,
              Pointer<Uint32> rgfInOut)>> GetAttributesOf;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              IntPtr hwndOwner,
              Uint32 cidl,
              Pointer<Pointer<ITEMIDLIST>> apidl,
              Pointer<GUID> riid,
              Pointer<Uint32> rgfReserved,
              Pointer<Pointer> ppv)>> GetUIObjectOf;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<ITEMIDLIST> pidl, Uint32 uFlags,
              Pointer<STRRET> pName)>> GetDisplayNameOf;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              IntPtr hwnd,
              Pointer<ITEMIDLIST> pidl,
              Pointer<Utf16> pszName,
              Uint32 uFlags,
              Pointer<Pointer<ITEMIDLIST>> ppidlOut)>> SetNameOf;
}
