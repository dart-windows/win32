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
import '../utils.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IKnownFolderManager = '{8be2d872-86aa-4d47-b776-32cca40c7018}';

/// Exposes methods that create, enumerate or manage existing known folders.
///
/// {@category com}
class IKnownFolderManager extends IUnknown {
  IKnownFolderManager(super.ptr)
      : _vtable = ptr.value.cast<IKnownFolderManagerVtbl>().ref;

  final IKnownFolderManagerVtbl _vtable;

  factory IKnownFolderManager.from(IUnknown interface) =>
      IKnownFolderManager(interface.toInterface(IID_IKnownFolderManager));

  int folderIdFromCsidl(int nCsidl, Pointer<GUID> pfid) =>
      _vtable.FolderIdFromCsidl.asFunction<
              int Function(VTablePointer, int nCsidl, Pointer<GUID> pfid)>()(
          ptr, nCsidl, pfid);

  int folderIdToCsidl(Pointer<GUID> rfid, Pointer<Int32> pnCsidl) =>
      _vtable.FolderIdToCsidl.asFunction<
          int Function(VTablePointer, Pointer<GUID> rfid,
              Pointer<Int32> pnCsidl)>()(ptr, rfid, pnCsidl);

  int getFolderIds(Pointer<Pointer<GUID>> ppKFId, Pointer<Uint32> pCount) =>
      _vtable.GetFolderIds.asFunction<
          int Function(VTablePointer, Pointer<Pointer<GUID>> ppKFId,
              Pointer<Uint32> pCount)>()(ptr, ppKFId, pCount);

  int getFolder(Pointer<GUID> rfid, Pointer<VTablePointer> ppkf) =>
      _vtable.GetFolder.asFunction<
          int Function(VTablePointer, Pointer<GUID> rfid,
              Pointer<VTablePointer> ppkf)>()(ptr, rfid, ppkf);

  int getFolderByName(
          Pointer<Utf16> pszCanonicalName, Pointer<VTablePointer> ppkf) =>
      _vtable.GetFolderByName.asFunction<
          int Function(VTablePointer, Pointer<Utf16> pszCanonicalName,
              Pointer<VTablePointer> ppkf)>()(ptr, pszCanonicalName, ppkf);

  int registerFolder(
          Pointer<GUID> rfid, Pointer<KNOWNFOLDER_DEFINITION> pKFD) =>
      _vtable.RegisterFolder.asFunction<
          int Function(VTablePointer, Pointer<GUID> rfid,
              Pointer<KNOWNFOLDER_DEFINITION> pKFD)>()(ptr, rfid, pKFD);

  int unregisterFolder(Pointer<GUID> rfid) => _vtable.UnregisterFolder
      .asFunction<int Function(VTablePointer, Pointer<GUID> rfid)>()(ptr, rfid);

  int findFolderFromPath(
          Pointer<Utf16> pszPath, int mode, Pointer<VTablePointer> ppkf) =>
      _vtable.FindFolderFromPath.asFunction<
          int Function(VTablePointer, Pointer<Utf16> pszPath, int mode,
              Pointer<VTablePointer> ppkf)>()(ptr, pszPath, mode, ppkf);

  int findFolderFromIDList(
          Pointer<ITEMIDLIST> pidl, Pointer<VTablePointer> ppkf) =>
      _vtable.FindFolderFromIDList.asFunction<
          int Function(VTablePointer, Pointer<ITEMIDLIST> pidl,
              Pointer<VTablePointer> ppkf)>()(ptr, pidl, ppkf);

  int redirect(
          Pointer<GUID> rfid,
          int hwnd,
          int flags,
          Pointer<Utf16> pszTargetPath,
          int cFolders,
          Pointer<GUID> pExclusion,
          Pointer<Pointer<Utf16>> ppszError) =>
      _vtable.Redirect.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<GUID> rfid,
                  int hwnd,
                  int flags,
                  Pointer<Utf16> pszTargetPath,
                  int cFolders,
                  Pointer<GUID> pExclusion,
                  Pointer<Pointer<Utf16>> ppszError)>()(ptr, rfid, hwnd, flags,
          pszTargetPath, cFolders, pExclusion, ppszError);
}

/// @nodoc
base class IKnownFolderManagerVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Int32 nCsidl, Pointer<GUID> pfid)>>
      FolderIdFromCsidl;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<GUID> rfid, Pointer<Int32> pnCsidl)>>
      FolderIdToCsidl;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<Pointer<GUID>> ppKFId,
              Pointer<Uint32> pCount)>> GetFolderIds;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<GUID> rfid,
              Pointer<VTablePointer> ppkf)>> GetFolder;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<Utf16> pszCanonicalName,
              Pointer<VTablePointer> ppkf)>> GetFolderByName;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<GUID> rfid,
              Pointer<KNOWNFOLDER_DEFINITION> pKFD)>> RegisterFolder;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<GUID> rfid)>>
      UnregisterFolder;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<Utf16> pszPath, Int32 mode,
              Pointer<VTablePointer> ppkf)>> FindFolderFromPath;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<ITEMIDLIST> pidl,
              Pointer<VTablePointer> ppkf)>> FindFolderFromIDList;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<GUID> rfid,
              IntPtr hwnd,
              Uint32 flags,
              Pointer<Utf16> pszTargetPath,
              Uint32 cFolders,
              Pointer<GUID> pExclusion,
              Pointer<Pointer<Utf16>> ppszError)>> Redirect;
}

/// @nodoc
const CLSID_KnownFolderManager = '{4df0c730-df9d-4ae3-9153-aa6b82e9795a}';

/// {@category com}
class KnownFolderManager extends IKnownFolderManager {
  KnownFolderManager(super.ptr);

  factory KnownFolderManager.createInstance() => KnownFolderManager(
      createCOMObject(CLSID_KnownFolderManager, IID_IKnownFolderManager));
}
