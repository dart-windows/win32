// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../exceptions.dart';
import '../extensions/iunknown.dart';
import '../structs.g.dart';
import '../types.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IShellLink = '{000214f9-0000-0000-c000-000000000046}';

/// Exposes methods that create, modify, and resolve Shell links.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nn-shobjidl_core-ishelllinkw>.
///
/// {@category com}
class IShellLink extends IUnknown {
  IShellLink(super.ptr) : _vtable = ptr.value.cast<IShellLinkVtbl>().ref;

  final IShellLinkVtbl _vtable;

  /// Creates a new instance of `IShellLink` from an existing [interface].
  ///
  /// This constructor invokes the [queryInterface] method to obtain a reference
  /// to the `IShellLink` interface with the provided interface.
  ///
  /// Throws a [WindowsException] if the `queryInterface` call fails.
  factory IShellLink.from(IUnknown interface) =>
      IShellLink(interface.toInterface(IID_IShellLink));

  /// Gets the path and file name of the target of a Shell link object.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishelllinkw-getpath>.
  int getPath(Pointer<Utf16> pszFile, int cch, Pointer<WIN32_FIND_DATA> pfd,
          int fFlags) =>
      _vtable.GetPath.asFunction<
          int Function(
              VTablePointer lpVtbl,
              Pointer<Utf16> pszFile,
              int cch,
              Pointer<WIN32_FIND_DATA> pfd,
              int fFlags)>()(ptr, pszFile, cch, pfd, fFlags);

  /// Gets the list of item identifiers for the target of a Shell link object.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishelllinkw-getidlist>.
  int getIDList(
          Pointer<Pointer<ITEMIDLIST>> ppidl) =>
      _vtable.GetIDList.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<ITEMIDLIST>> ppidl)>()(ptr, ppidl);

  /// Sets the pointer to an item identifier list (PIDL) for a Shell link object.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishelllinkw-setidlist>.
  int setIDList(Pointer<ITEMIDLIST> pidl) => _vtable.SetIDList.asFunction<
      int Function(
          VTablePointer lpVtbl, Pointer<ITEMIDLIST> pidl)>()(ptr, pidl);

  /// Gets the description string for a Shell link object.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishelllinkw-getdescription>.
  int getDescription(Pointer<Utf16> pszName, int cch) =>
      _vtable.GetDescription.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<Utf16> pszName,
              int cch)>()(ptr, pszName, cch);

  /// Sets the description for a Shell link object.
  ///
  /// The description can be any application-defined string.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishelllinkw-setdescription>.
  int setDescription(Pointer<Utf16> pszName) =>
      _vtable.SetDescription.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Utf16> pszName)>()(ptr, pszName);

  /// Gets the name of the working directory for a Shell link object.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishelllinkw-getworkingdirectory>.
  int getWorkingDirectory(Pointer<Utf16> pszDir, int cch) =>
      _vtable.GetWorkingDirectory.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<Utf16> pszDir,
              int cch)>()(ptr, pszDir, cch);

  /// Sets the name of the working directory for a Shell link object.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishelllinkw-setworkingdirectory>.
  int setWorkingDirectory(Pointer<Utf16> pszDir) =>
      _vtable.SetWorkingDirectory.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Utf16> pszDir)>()(ptr, pszDir);

  /// Gets the command-line arguments associated with a Shell link object.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishelllinkw-getarguments>.
  int getArguments(Pointer<Utf16> pszArgs, int cch) =>
      _vtable.GetArguments.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<Utf16> pszArgs,
              int cch)>()(ptr, pszArgs, cch);

  /// Sets the command-line arguments for a Shell link object.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishelllinkw-setarguments>.
  int setArguments(Pointer<Utf16> pszArgs) => _vtable.SetArguments.asFunction<
      int Function(
          VTablePointer lpVtbl, Pointer<Utf16> pszArgs)>()(ptr, pszArgs);

  /// Gets the keyboard shortcut (hot key) for a Shell link object.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishelllinkw-gethotkey>.
  int getHotkey(Pointer<Uint16> pwHotkey) => _vtable.GetHotkey.asFunction<
      int Function(
          VTablePointer lpVtbl, Pointer<Uint16> pwHotkey)>()(ptr, pwHotkey);

  /// Sets a keyboard shortcut (hot key) for a Shell link object.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishelllinkw-sethotkey>.
  int setHotkey(int wHotkey) => _vtable.SetHotkey.asFunction<
      int Function(VTablePointer lpVtbl, int wHotkey)>()(ptr, wHotkey);

  /// Gets the show command for a Shell link object.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishelllinkw-getshowcmd>.
  int getShowCmd(Pointer<Int32> piShowCmd) => _vtable.GetShowCmd.asFunction<
      int Function(
          VTablePointer lpVtbl, Pointer<Int32> piShowCmd)>()(ptr, piShowCmd);

  /// Sets the show command for a Shell link object.
  ///
  /// The show command sets the initial show state of the window.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishelllinkw-setshowcmd>.
  int setShowCmd(int iShowCmd) => _vtable.SetShowCmd.asFunction<
      int Function(VTablePointer lpVtbl, int iShowCmd)>()(ptr, iShowCmd);

  /// Gets the location (path and index) of the icon for a Shell link object.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishelllinkw-geticonlocation>.
  int getIconLocation(
          Pointer<Utf16> pszIconPath, int cch, Pointer<Int32> piIcon) =>
      _vtable.GetIconLocation.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<Utf16> pszIconPath,
              int cch, Pointer<Int32> piIcon)>()(ptr, pszIconPath, cch, piIcon);

  /// Sets the location (path and index) of the icon for a Shell link object.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishelllinkw-seticonlocation>.
  int setIconLocation(Pointer<Utf16> pszIconPath, int iIcon) =>
      _vtable.SetIconLocation.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<Utf16> pszIconPath,
              int iIcon)>()(ptr, pszIconPath, iIcon);

  /// Sets the relative path to the Shell link object.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishelllinkw-setrelativepath>.
  int setRelativePath(Pointer<Utf16> pszPathRel) =>
      _vtable.SetRelativePath.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<Utf16> pszPathRel,
              int dwReserved)>()(ptr, pszPathRel, 0);

  /// Attempts to find the target of a Shell link, even if it has been moved or
  /// renamed.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishelllinkw-resolve>.
  int resolve(int hwnd, int fFlags) => _vtable.Resolve.asFunction<
      int Function(
          VTablePointer lpVtbl, int hwnd, int fFlags)>()(ptr, hwnd, fFlags);

  /// Sets the path and file name for the target of a Shell link object.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishelllinkw-setpath>.
  int setPath(Pointer<Utf16> pszFile) => _vtable.SetPath.asFunction<
      int Function(
          VTablePointer lpVtbl, Pointer<Utf16> pszFile)>()(ptr, pszFile);
}

/// @nodoc
base class IShellLinkVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<Utf16> pszFile,
              Int32 cch, Pointer<WIN32_FIND_DATA> pfd, Uint32 fFlags)>> GetPath;
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
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Utf16> pszName, Int32 cch)>>
      GetDescription;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Utf16> pszName)>>
      SetDescription;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Utf16> pszDir, Int32 cch)>>
      GetWorkingDirectory;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Utf16> pszDir)>>
      SetWorkingDirectory;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Utf16> pszArgs, Int32 cch)>>
      GetArguments;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Utf16> pszArgs)>>
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
          HRESULT Function(VTablePointer lpVtbl, Pointer<Utf16> pszIconPath,
              Int32 cch, Pointer<Int32> piIcon)>> GetIconLocation;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<Utf16> pszIconPath,
              Int32 iIcon)>> SetIconLocation;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<Utf16> pszPathRel,
              Uint32 dwReserved)>> SetRelativePath;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, HWND hwnd, Uint32 fFlags)>>
      Resolve;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Utf16> pszFile)>>
      SetPath;
}

/// @nodoc
const ShellLink = '{00021401-0000-0000-c000-000000000046}';
