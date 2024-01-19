// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../extensions/iunknown.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
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

  int getPath(Pointer<Utf16> pszFile, int cch, Pointer<WIN32_FIND_DATA> pfd,
          int fFlags) =>
      _vtable.GetPath.asFunction<
          int Function(
              VTablePointer,
              Pointer<Utf16> pszFile,
              int cch,
              Pointer<WIN32_FIND_DATA> pfd,
              int fFlags)>()(ptr, pszFile, cch, pfd, fFlags);

  int getIDList(
          Pointer<Pointer<ITEMIDLIST>> ppidl) =>
      _vtable.GetIDList.asFunction<
          int Function(
              VTablePointer, Pointer<Pointer<ITEMIDLIST>> ppidl)>()(ptr, ppidl);

  int setIDList(Pointer<ITEMIDLIST> pidl) => _vtable.SetIDList.asFunction<
      int Function(VTablePointer, Pointer<ITEMIDLIST> pidl)>()(ptr, pidl);

  int getDescription(Pointer<Utf16> pszName, int cch) =>
      _vtable.GetDescription.asFunction<
              int Function(VTablePointer, Pointer<Utf16> pszName, int cch)>()(
          ptr, pszName, cch);

  int setDescription(Pointer<Utf16> pszName) =>
      _vtable.SetDescription.asFunction<
          int Function(VTablePointer, Pointer<Utf16> pszName)>()(ptr, pszName);

  int getWorkingDirectory(Pointer<Utf16> pszDir, int cch) =>
      _vtable.GetWorkingDirectory.asFunction<
              int Function(VTablePointer, Pointer<Utf16> pszDir, int cch)>()(
          ptr, pszDir, cch);

  int setWorkingDirectory(Pointer<Utf16> pszDir) =>
      _vtable.SetWorkingDirectory.asFunction<
          int Function(VTablePointer, Pointer<Utf16> pszDir)>()(ptr, pszDir);

  int getArguments(Pointer<Utf16> pszArgs, int cch) =>
      _vtable.GetArguments.asFunction<
              int Function(VTablePointer, Pointer<Utf16> pszArgs, int cch)>()(
          ptr, pszArgs, cch);

  int setArguments(Pointer<Utf16> pszArgs) => _vtable.SetArguments.asFunction<
      int Function(VTablePointer, Pointer<Utf16> pszArgs)>()(ptr, pszArgs);

  int getHotkey(Pointer<Uint16> pwHotkey) => _vtable.GetHotkey.asFunction<
      int Function(VTablePointer, Pointer<Uint16> pwHotkey)>()(ptr, pwHotkey);

  int setHotkey(int wHotkey) =>
      _vtable.SetHotkey.asFunction<int Function(VTablePointer, int wHotkey)>()(
          ptr, wHotkey);

  int getShowCmd(Pointer<Int32> piShowCmd) => _vtable.GetShowCmd.asFunction<
      int Function(VTablePointer, Pointer<Int32> piShowCmd)>()(ptr, piShowCmd);

  int setShowCmd(int iShowCmd) => _vtable.SetShowCmd.asFunction<
      int Function(VTablePointer, int iShowCmd)>()(ptr, iShowCmd);

  int getIconLocation(
          Pointer<Utf16> pszIconPath, int cch, Pointer<Int32> piIcon) =>
      _vtable.GetIconLocation.asFunction<
          int Function(VTablePointer, Pointer<Utf16> pszIconPath, int cch,
              Pointer<Int32> piIcon)>()(ptr, pszIconPath, cch, piIcon);

  int setIconLocation(Pointer<Utf16> pszIconPath, int iIcon) =>
      _vtable.SetIconLocation.asFunction<
          int Function(VTablePointer, Pointer<Utf16> pszIconPath,
              int iIcon)>()(ptr, pszIconPath, iIcon);

  int setRelativePath(Pointer<Utf16> pszPathRel, int dwReserved) =>
      _vtable.SetRelativePath.asFunction<
          int Function(VTablePointer, Pointer<Utf16> pszPathRel,
              int dwReserved)>()(ptr, pszPathRel, dwReserved);

  int resolve(int hwnd, int fFlags) => _vtable.Resolve.asFunction<
      int Function(VTablePointer, int hwnd, int fFlags)>()(ptr, hwnd, fFlags);

  int setPath(Pointer<Utf16> pszFile) => _vtable.SetPath.asFunction<
      int Function(VTablePointer, Pointer<Utf16> pszFile)>()(ptr, pszFile);
}

/// @nodoc
base class IShellLinkVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<Utf16> pszFile, Int32 cch,
              Pointer<WIN32_FIND_DATA> pfd, Uint32 fFlags)>> GetPath;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer, Pointer<Pointer<ITEMIDLIST>> ppidl)>> GetIDList;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<ITEMIDLIST> pidl)>> SetIDList;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Utf16> pszName, Int32 cch)>>
      GetDescription;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Utf16> pszName)>>
      SetDescription;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Utf16> pszDir, Int32 cch)>>
      GetWorkingDirectory;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Utf16> pszDir)>>
      SetWorkingDirectory;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Utf16> pszArgs, Int32 cch)>>
      GetArguments;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Utf16> pszArgs)>>
      SetArguments;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<Uint16> pwHotkey)>> GetHotkey;
  external Pointer<
      NativeFunction<Int32 Function(VTablePointer, Uint16 wHotkey)>> SetHotkey;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<Int32> piShowCmd)>> GetShowCmd;
  external Pointer<
      NativeFunction<Int32 Function(VTablePointer, Int32 iShowCmd)>> SetShowCmd;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<Utf16> pszIconPath, Int32 cch,
              Pointer<Int32> piIcon)>> GetIconLocation;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Utf16> pszIconPath, Int32 iIcon)>>
      SetIconLocation;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Utf16> pszPathRel, Uint32 dwReserved)>>
      SetRelativePath;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, IntPtr hwnd, Uint32 fFlags)>> Resolve;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Utf16> pszFile)>>
      SetPath;
}

/// @nodoc
const CLSID_ShellLink = '{00021401-0000-0000-c000-000000000046}';

/// {@category com}
class ShellLink extends IShellLink {
  ShellLink(super.ptr);

  factory ShellLink.createInstance() =>
      ShellLink(createCOMObject(CLSID_ShellLink, IID_IShellLink));
}