// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../exceptions.dart';
import '../extensions/iunknown.dart';
import '../guid.dart';
import '../structs.g.dart';
import '../types.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IKnownFolder = '{3aa7af7e-9b36-420c-a8e3-f77d4674a488}';

/// Exposes methods that allow an application to retrieve information about a
/// known folder's category, type, GUID, pointer to an item identifier list
/// (PIDL) value, redirection capabilities, and definition.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nn-shobjidl_core-iknownfolder>.
///
/// {@category com}
class IKnownFolder extends IUnknown {
  IKnownFolder(super.ptr) : _vtable = ptr.value.cast<IKnownFolderVtbl>().ref;

  final IKnownFolderVtbl _vtable;

  /// Creates a new instance of `IKnownFolder` from an existing [interface].
  ///
  /// This constructor invokes the [queryInterface] method to obtain a reference
  /// to the `IKnownFolder` interface with the provided interface.
  ///
  /// Throws a [WindowsException] if the `queryInterface` call fails.
  factory IKnownFolder.from(IUnknown interface) =>
      IKnownFolder(interface.toInterface(IID_IKnownFolder));

  /// Gets the ID of the selected folder.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-iknownfolder-getid>.
  int getId(Pointer<GUID> pkfid) => _vtable.GetId.asFunction<
      int Function(VTablePointer lpVtbl, Pointer<GUID> pkfid)>()(ptr, pkfid);

  /// Retrieves the category—virtual, fixed, common, or per-user—of the selected
  /// folder.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-iknownfolder-getcategory>.
  int getCategory(Pointer<Int32> pCategory) => _vtable.GetCategory.asFunction<
      int Function(
          VTablePointer lpVtbl, Pointer<Int32> pCategory)>()(ptr, pCategory);

  /// Retrieves the location of a known folder in the Shell namespace in the form
  /// of a Shell item (IShellItem or derived interface).
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-iknownfolder-getshellitem>.
  int getShellItem(int dwFlags, Pointer<GUID> riid, Pointer<Pointer> ppv) =>
      _vtable.GetShellItem.asFunction<
          int Function(VTablePointer lpVtbl, int dwFlags, Pointer<GUID> riid,
              Pointer<Pointer> ppv)>()(ptr, dwFlags, riid, ppv);

  /// Retrieves the path of a known folder as a string.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-iknownfolder-getpath>.
  int getPath(int dwFlags, Pointer<Pointer<Utf16>> ppszPath) =>
      _vtable.GetPath.asFunction<
          int Function(VTablePointer lpVtbl, int dwFlags,
              Pointer<Pointer<Utf16>> ppszPath)>()(ptr, dwFlags, ppszPath);

  /// Assigns a new path to a known folder.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-iknownfolder-setpath>.
  int setPath(int dwFlags, Pointer<Utf16> pszPath) =>
      _vtable.SetPath.asFunction<
          int Function(VTablePointer lpVtbl, int dwFlags,
              Pointer<Utf16> pszPath)>()(ptr, dwFlags, pszPath);

  /// Gets the location of the Shell namespace folder in the IDList (ITEMIDLIST)
  /// form.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-iknownfolder-getidlist>.
  int getIDList(int dwFlags, Pointer<Pointer<ITEMIDLIST>> ppidl) =>
      _vtable.GetIDList.asFunction<
          int Function(VTablePointer lpVtbl, int dwFlags,
              Pointer<Pointer<ITEMIDLIST>> ppidl)>()(ptr, dwFlags, ppidl);

  /// Retrieves the folder type.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-iknownfolder-getfoldertype>.
  int getFolderType(Pointer<GUID> pftid) => _vtable.GetFolderType.asFunction<
      int Function(VTablePointer lpVtbl, Pointer<GUID> pftid)>()(ptr, pftid);

  /// Gets a value that states whether the known folder can have its path set to a
  /// new value or what specific restrictions or prohibitions are placed on that
  /// redirection.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-iknownfolder-getredirectioncapabilities>.
  int getRedirectionCapabilities(Pointer<Uint32> pCapabilities) =>
      _vtable.GetRedirectionCapabilities.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Uint32> pCapabilities)>()(ptr, pCapabilities);

  /// Retrieves a structure that contains the defining elements of a known folder,
  /// which includes the folder's category, name, path, description, tooltip,
  /// icon, and other properties.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-iknownfolder-getfolderdefinition>.
  int getFolderDefinition(Pointer<KNOWNFOLDER_DEFINITION> pKFD) =>
      _vtable.GetFolderDefinition.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<KNOWNFOLDER_DEFINITION> pKFD)>()(ptr, pKFD);
}

/// @nodoc
base class IKnownFolderVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<GUID> pkfid)>> GetId;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> pCategory)>>
      GetCategory;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 dwFlags,
              Pointer<GUID> riid, Pointer<Pointer> ppv)>> GetShellItem;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 dwFlags,
              Pointer<Pointer<Utf16>> ppszPath)>> GetPath;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 dwFlags,
              Pointer<Utf16> pszPath)>> SetPath;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 dwFlags,
              Pointer<Pointer<ITEMIDLIST>> ppidl)>> GetIDList;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<GUID> pftid)>>
      GetFolderType;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Uint32> pCapabilities)>>
      GetRedirectionCapabilities;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<KNOWNFOLDER_DEFINITION> pKFD)>>
      GetFolderDefinition;
}
