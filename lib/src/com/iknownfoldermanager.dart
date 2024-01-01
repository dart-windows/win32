// iknownfoldermanager.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import '../guid.dart';
import '../structs.g.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IKnownFolderManager = '{8be2d872-86aa-4d47-b776-32cca40c7018}';

/// Exposes methods that create, enumerate or manage existing known folders.
///
/// {@category com}
class IKnownFolderManager extends IUnknown {
  // vtable begins at 3, is 10 entries long.
  IKnownFolderManager(super.ptr)
      : _vtable = ptr.ref.vtable.cast<IKnownFolderManagerVtbl>().ref;

  final IKnownFolderManagerVtbl _vtable;

  factory IKnownFolderManager.from(IUnknown interface) =>
      IKnownFolderManager(interface.toInterface(IID_IKnownFolderManager));

  int folderIdFromCsidl(int nCsidl, Pointer<GUID> pfid) =>
      _vtable.FolderIdFromCsidl.asFunction<
              int Function(Pointer, int nCsidl, Pointer<GUID> pfid)>()(
          ptr.ref.lpVtbl, nCsidl, pfid);

  int folderIdToCsidl(Pointer<GUID> rfid, Pointer<Int32> pnCsidl) =>
      _vtable.FolderIdToCsidl.asFunction<
          int Function(Pointer, Pointer<GUID> rfid,
              Pointer<Int32> pnCsidl)>()(ptr.ref.lpVtbl, rfid, pnCsidl);

  int getFolderIds(Pointer<Pointer<GUID>> ppKFId, Pointer<Uint32> pCount) =>
      _vtable.GetFolderIds.asFunction<
          int Function(Pointer, Pointer<Pointer<GUID>> ppKFId,
              Pointer<Uint32> pCount)>()(ptr.ref.lpVtbl, ppKFId, pCount);

  int getFolder(Pointer<GUID> rfid, Pointer<Pointer<COMObject>> ppkf) =>
      _vtable.GetFolder.asFunction<
          int Function(Pointer, Pointer<GUID> rfid,
              Pointer<Pointer<COMObject>> ppkf)>()(ptr.ref.lpVtbl, rfid, ppkf);

  int getFolderByName(
          Pointer<Utf16> pszCanonicalName, Pointer<Pointer<COMObject>> ppkf) =>
      _vtable.GetFolderByName.asFunction<
              int Function(Pointer, Pointer<Utf16> pszCanonicalName,
                  Pointer<Pointer<COMObject>> ppkf)>()(
          ptr.ref.lpVtbl, pszCanonicalName, ppkf);

  int registerFolder(
          Pointer<GUID> rfid, Pointer<KNOWNFOLDER_DEFINITION> pKFD) =>
      _vtable.RegisterFolder.asFunction<
              int Function(Pointer, Pointer<GUID> rfid,
                  Pointer<KNOWNFOLDER_DEFINITION> pKFD)>()(
          ptr.ref.lpVtbl, rfid, pKFD);

  int unregisterFolder(Pointer<GUID> rfid) =>
      _vtable.UnregisterFolder.asFunction<
          int Function(Pointer, Pointer<GUID> rfid)>()(ptr.ref.lpVtbl, rfid);

  int findFolderFromPath(
          Pointer<Utf16> pszPath, int mode, Pointer<Pointer<COMObject>> ppkf) =>
      _vtable.FindFolderFromPath.asFunction<
              int Function(Pointer, Pointer<Utf16> pszPath, int mode,
                  Pointer<Pointer<COMObject>> ppkf)>()(
          ptr.ref.lpVtbl, pszPath, mode, ppkf);

  int findFolderFromIDList(
          Pointer<ITEMIDLIST> pidl, Pointer<Pointer<COMObject>> ppkf) =>
      _vtable.FindFolderFromIDList.asFunction<
          int Function(Pointer, Pointer<ITEMIDLIST> pidl,
              Pointer<Pointer<COMObject>> ppkf)>()(ptr.ref.lpVtbl, pidl, ppkf);

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
                  Pointer,
                  Pointer<GUID> rfid,
                  int hwnd,
                  int flags,
                  Pointer<Utf16> pszTargetPath,
                  int cFolders,
                  Pointer<GUID> pExclusion,
                  Pointer<Pointer<Utf16>> ppszError)>()(ptr.ref.lpVtbl, rfid,
          hwnd, flags, pszTargetPath, cFolders, pExclusion, ppszError);
}

/// @nodoc
base class IKnownFolderManagerVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Int32 nCsidl, Pointer<GUID> pfid)>>
      FolderIdFromCsidl;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer, Pointer<GUID> rfid, Pointer<Int32> pnCsidl)>>
      FolderIdToCsidl;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<Pointer<GUID>> ppKFId,
              Pointer<Uint32> pCount)>> GetFolderIds;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<GUID> rfid,
              Pointer<Pointer<COMObject>> ppkf)>> GetFolder;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<Utf16> pszCanonicalName,
              Pointer<Pointer<COMObject>> ppkf)>> GetFolderByName;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<GUID> rfid,
              Pointer<KNOWNFOLDER_DEFINITION> pKFD)>> RegisterFolder;
  external Pointer<NativeFunction<Int32 Function(Pointer, Pointer<GUID> rfid)>>
      UnregisterFolder;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<Utf16> pszPath, Int32 mode,
              Pointer<Pointer<COMObject>> ppkf)>> FindFolderFromPath;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<ITEMIDLIST> pidl,
              Pointer<Pointer<COMObject>> ppkf)>> FindFolderFromIDList;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
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

  factory KnownFolderManager.createInstance() =>
      KnownFolderManager(COMObject.createFromID(
          CLSID_KnownFolderManager, IID_IKnownFolderManager));
}
