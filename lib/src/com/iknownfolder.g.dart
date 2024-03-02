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
const IID_IKnownFolder = '{3aa7af7e-9b36-420c-a8e3-f77d4674a488}';

/// Exposes methods that allow an application to retrieve information about a
/// known folder's category, type, GUID, pointer to an item identifier list
/// (PIDL) value, redirection capabilities, and definition.
///
/// It provides a method for the retrieval of a known folder's `IShellItem`
/// object. It also provides methods to get or set the path of the known folder.
///
/// {@category com}
class IKnownFolder extends IUnknown {
  IKnownFolder(super.ptr) : _vtable = ptr.value.cast<IKnownFolderVtbl>().ref;

  final IKnownFolderVtbl _vtable;

  factory IKnownFolder.from(IUnknown interface) =>
      IKnownFolder(interface.toInterface(IID_IKnownFolder));

  int getId(Pointer<GUID> pkfid) => _vtable.GetId.asFunction<
      int Function(VTablePointer lpVtbl, Pointer<GUID> pkfid)>()(ptr, pkfid);

  int getCategory(Pointer<Int32> pCategory) => _vtable.GetCategory.asFunction<
      int Function(
          VTablePointer lpVtbl, Pointer<Int32> pCategory)>()(ptr, pCategory);

  int getShellItem(int dwFlags, Pointer<GUID> riid, Pointer<Pointer> ppv) =>
      _vtable.GetShellItem.asFunction<
          int Function(VTablePointer lpVtbl, int dwFlags, Pointer<GUID> riid,
              Pointer<Pointer> ppv)>()(ptr, dwFlags, riid, ppv);

  int getPath(int dwFlags, Pointer<Pointer<Utf16>> ppszPath) =>
      _vtable.GetPath.asFunction<
          int Function(VTablePointer lpVtbl, int dwFlags,
              Pointer<Pointer<Utf16>> ppszPath)>()(ptr, dwFlags, ppszPath);

  int setPath(int dwFlags, Pointer<Utf16> pszPath) =>
      _vtable.SetPath.asFunction<
          int Function(VTablePointer lpVtbl, int dwFlags,
              Pointer<Utf16> pszPath)>()(ptr, dwFlags, pszPath);

  int getIDList(int dwFlags, Pointer<Pointer<ITEMIDLIST>> ppidl) =>
      _vtable.GetIDList.asFunction<
          int Function(VTablePointer lpVtbl, int dwFlags,
              Pointer<Pointer<ITEMIDLIST>> ppidl)>()(ptr, dwFlags, ppidl);

  int getFolderType(Pointer<GUID> pftid) => _vtable.GetFolderType.asFunction<
      int Function(VTablePointer lpVtbl, Pointer<GUID> pftid)>()(ptr, pftid);

  int getRedirectionCapabilities(Pointer<Uint32> pCapabilities) =>
      _vtable.GetRedirectionCapabilities.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Uint32> pCapabilities)>()(ptr, pCapabilities);

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
