// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../extensions/iunknown.dart';
import '../structs.g.dart';
import '../types.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IShellLink = '{000214f9-0000-0000-c000-000000000046}';

/// Exposes methods that create, modify, and resolve Shell links.
///
/// {@category com}
class IShellLink extends IUnknown {
  IShellLink(super.ptr) : _vtable = ptr.value.cast<IShellLinkVtbl>().ref;

  final IShellLinkVtbl _vtable;

  factory IShellLink.from(IUnknown interface) =>
      IShellLink(interface.toInterface(IID_IShellLink));

  int getPath(
          PWSTR pszFile, int cch, Pointer<WIN32_FIND_DATA> pfd, int fFlags) =>
      _vtable.GetPath.asFunction<
          int Function(
              VTablePointer lpVtbl,
              PWSTR pszFile,
              int cch,
              Pointer<WIN32_FIND_DATA> pfd,
              int fFlags)>()(ptr, pszFile, cch, pfd, fFlags);

  int getIDList(
          Pointer<Pointer<ITEMIDLIST>> ppidl) =>
      _vtable.GetIDList.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<ITEMIDLIST>> ppidl)>()(ptr, ppidl);

  int setIDList(Pointer<ITEMIDLIST> pidl) => _vtable.SetIDList.asFunction<
      int Function(
          VTablePointer lpVtbl, Pointer<ITEMIDLIST> pidl)>()(ptr, pidl);

  int getDescription(PWSTR pszName, int cch) =>
      _vtable.GetDescription.asFunction<
              int Function(VTablePointer lpVtbl, PWSTR pszName, int cch)>()(
          ptr, pszName, cch);

  int setDescription(PWSTR pszName) => _vtable.SetDescription.asFunction<
      int Function(VTablePointer lpVtbl, PWSTR pszName)>()(ptr, pszName);

  int getWorkingDirectory(PWSTR pszDir, int cch) =>
      _vtable.GetWorkingDirectory.asFunction<
          int Function(
              VTablePointer lpVtbl, PWSTR pszDir, int cch)>()(ptr, pszDir, cch);

  int setWorkingDirectory(PWSTR pszDir) =>
      _vtable.SetWorkingDirectory.asFunction<
          int Function(VTablePointer lpVtbl, PWSTR pszDir)>()(ptr, pszDir);

  int getArguments(PWSTR pszArgs, int cch) => _vtable.GetArguments.asFunction<
      int Function(
          VTablePointer lpVtbl, PWSTR pszArgs, int cch)>()(ptr, pszArgs, cch);

  int setArguments(PWSTR pszArgs) => _vtable.SetArguments.asFunction<
      int Function(VTablePointer lpVtbl, PWSTR pszArgs)>()(ptr, pszArgs);

  int getHotkey(Pointer<Uint16> pwHotkey) => _vtable.GetHotkey.asFunction<
      int Function(
          VTablePointer lpVtbl, Pointer<Uint16> pwHotkey)>()(ptr, pwHotkey);

  int setHotkey(int wHotkey) => _vtable.SetHotkey.asFunction<
      int Function(VTablePointer lpVtbl, int wHotkey)>()(ptr, wHotkey);

  int getShowCmd(Pointer<Int32> piShowCmd) => _vtable.GetShowCmd.asFunction<
      int Function(
          VTablePointer lpVtbl, Pointer<Int32> piShowCmd)>()(ptr, piShowCmd);

  int setShowCmd(int iShowCmd) => _vtable.SetShowCmd.asFunction<
      int Function(VTablePointer lpVtbl, int iShowCmd)>()(ptr, iShowCmd);

  int getIconLocation(PWSTR pszIconPath, int cch, Pointer<Int32> piIcon) =>
      _vtable.GetIconLocation.asFunction<
          int Function(VTablePointer lpVtbl, PWSTR pszIconPath, int cch,
              Pointer<Int32> piIcon)>()(ptr, pszIconPath, cch, piIcon);

  int setIconLocation(PWSTR pszIconPath, int iIcon) =>
      _vtable.SetIconLocation.asFunction<
          int Function(VTablePointer lpVtbl, PWSTR pszIconPath,
              int iIcon)>()(ptr, pszIconPath, iIcon);

  int setRelativePath(PWSTR pszPathRel) => _vtable.SetRelativePath.asFunction<
      int Function(VTablePointer lpVtbl, PWSTR pszPathRel,
          int dwReserved)>()(ptr, pszPathRel, 0);

  int resolve(int hwnd, int fFlags) => _vtable.Resolve.asFunction<
      int Function(
          VTablePointer lpVtbl, int hwnd, int fFlags)>()(ptr, hwnd, fFlags);

  int setPath(PWSTR pszFile) => _vtable.SetPath.asFunction<
      int Function(VTablePointer lpVtbl, PWSTR pszFile)>()(ptr, pszFile);
}

/// @nodoc
base class IShellLinkVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, PWSTR pszFile, Int32 cch,
              Pointer<WIN32_FIND_DATA> pfd, Uint32 fFlags)>> GetPath;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Pointer<ITEMIDLIST>> ppidl)>>
      GetIDList;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<ITEMIDLIST> pidl)>>
      SetIDList;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, PWSTR pszName, Int32 cch)>>
      GetDescription;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, PWSTR pszName)>>
      SetDescription;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, PWSTR pszDir, Int32 cch)>>
      GetWorkingDirectory;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, PWSTR pszDir)>>
      SetWorkingDirectory;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, PWSTR pszArgs, Int32 cch)>>
      GetArguments;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, PWSTR pszArgs)>>
      SetArguments;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint16> pwHotkey)>>
      GetHotkey;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint16 wHotkey)>> SetHotkey;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> piShowCmd)>>
      GetShowCmd;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 iShowCmd)>> SetShowCmd;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, PWSTR pszIconPath, Int32 cch,
              Pointer<Int32> piIcon)>> GetIconLocation;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, PWSTR pszIconPath, Int32 iIcon)>>
      SetIconLocation;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, PWSTR pszPathRel, Uint32 dwReserved)>>
      SetRelativePath;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, HWND hwnd, Uint32 fFlags)>>
      Resolve;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, PWSTR pszFile)>>
      SetPath;
}

/// @nodoc
const ShellLink = '{00021401-0000-0000-c000-000000000046}';
