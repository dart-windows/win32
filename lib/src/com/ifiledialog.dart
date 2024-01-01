// ifiledialog.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import '../guid.dart';
import '../structs.g.dart';
import 'imodalwindow.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IFileDialog = '{42f85136-db7e-439c-85f1-e4075d135fc8}';

/// Exposes methods that initialize, show, and get results from the common
/// file dialog.
///
/// {@category com}
class IFileDialog extends IModalWindow {
  // vtable begins at 4, is 23 entries long.
  IFileDialog(super.ptr) : _vtable = ptr.ref.vtable.cast<IFileDialogVtbl>().ref;

  final IFileDialogVtbl _vtable;

  factory IFileDialog.from(IUnknown interface) =>
      IFileDialog(interface.toInterface(IID_IFileDialog));

  int setFileTypes(int cFileTypes, Pointer<COMDLG_FILTERSPEC> rgFilterSpec) =>
      _vtable.SetFileTypes.asFunction<
              int Function(Pointer, int cFileTypes,
                  Pointer<COMDLG_FILTERSPEC> rgFilterSpec)>()(
          ptr.ref.lpVtbl, cFileTypes, rgFilterSpec);

  int setFileTypeIndex(int iFileType) => _vtable.SetFileTypeIndex.asFunction<
      int Function(Pointer, int iFileType)>()(ptr.ref.lpVtbl, iFileType);

  int getFileTypeIndex(Pointer<Uint32> piFileType) => _vtable.GetFileTypeIndex
          .asFunction<int Function(Pointer, Pointer<Uint32> piFileType)>()(
      ptr.ref.lpVtbl, piFileType);

  int advise(Pointer<COMObject> pfde, Pointer<Uint32> pdwCookie) =>
      _vtable.Advise.asFunction<
          int Function(Pointer, Pointer<COMObject> pfde,
              Pointer<Uint32> pdwCookie)>()(ptr.ref.lpVtbl, pfde, pdwCookie);

  int unadvise(int dwCookie) =>
      _vtable.Unadvise.asFunction<int Function(Pointer, int dwCookie)>()(
          ptr.ref.lpVtbl, dwCookie);

  int setOptions(int fos) =>
      _vtable.SetOptions.asFunction<int Function(Pointer, int fos)>()(
          ptr.ref.lpVtbl, fos);

  int getOptions(Pointer<Uint32> pfos) => _vtable.GetOptions.asFunction<
      int Function(Pointer, Pointer<Uint32> pfos)>()(ptr.ref.lpVtbl, pfos);

  int setDefaultFolder(Pointer<COMObject> psi) =>
      _vtable.SetDefaultFolder.asFunction<
          int Function(Pointer, Pointer<COMObject> psi)>()(ptr.ref.lpVtbl, psi);

  int setFolder(Pointer<COMObject> psi) => _vtable.SetFolder.asFunction<
      int Function(Pointer, Pointer<COMObject> psi)>()(ptr.ref.lpVtbl, psi);

  int getFolder(Pointer<Pointer<COMObject>> ppsi) =>
      _vtable.GetFolder.asFunction<
              int Function(Pointer, Pointer<Pointer<COMObject>> ppsi)>()(
          ptr.ref.lpVtbl, ppsi);

  int getCurrentSelection(Pointer<Pointer<COMObject>> ppsi) =>
      _vtable.GetCurrentSelection.asFunction<
              int Function(Pointer, Pointer<Pointer<COMObject>> ppsi)>()(
          ptr.ref.lpVtbl, ppsi);

  int setFileName(Pointer<Utf16> pszName) => _vtable.SetFileName.asFunction<
      int Function(Pointer, Pointer<Utf16> pszName)>()(ptr.ref.lpVtbl, pszName);

  int getFileName(Pointer<Pointer<Utf16>> pszName) => _vtable.GetFileName
          .asFunction<int Function(Pointer, Pointer<Pointer<Utf16>> pszName)>()(
      ptr.ref.lpVtbl, pszName);

  int setTitle(Pointer<Utf16> pszTitle) => _vtable.SetTitle.asFunction<
      int Function(
          Pointer, Pointer<Utf16> pszTitle)>()(ptr.ref.lpVtbl, pszTitle);

  int setOkButtonLabel(Pointer<Utf16> pszText) =>
      _vtable.SetOkButtonLabel.asFunction<
          int Function(
              Pointer, Pointer<Utf16> pszText)>()(ptr.ref.lpVtbl, pszText);

  int setFileNameLabel(Pointer<Utf16> pszLabel) =>
      _vtable.SetFileNameLabel.asFunction<
          int Function(
              Pointer, Pointer<Utf16> pszLabel)>()(ptr.ref.lpVtbl, pszLabel);

  int getResult(Pointer<Pointer<COMObject>> ppsi) =>
      _vtable.GetResult.asFunction<
              int Function(Pointer, Pointer<Pointer<COMObject>> ppsi)>()(
          ptr.ref.lpVtbl, ppsi);

  int addPlace(Pointer<COMObject> psi, int fdap) => _vtable.AddPlace.asFunction<
          int Function(Pointer, Pointer<COMObject> psi, int fdap)>()(
      ptr.ref.lpVtbl, psi, fdap);

  int setDefaultExtension(Pointer<Utf16> pszDefaultExtension) =>
      _vtable.SetDefaultExtension.asFunction<
              int Function(Pointer, Pointer<Utf16> pszDefaultExtension)>()(
          ptr.ref.lpVtbl, pszDefaultExtension);

  int close(int hr) =>
      _vtable.Close.asFunction<int Function(Pointer, int hr)>()(
          ptr.ref.lpVtbl, hr);

  int setClientGuid(Pointer<GUID> guid) => _vtable.SetClientGuid.asFunction<
      int Function(Pointer, Pointer<GUID> guid)>()(ptr.ref.lpVtbl, guid);

  int clearClientData() =>
      _vtable.ClearClientData.asFunction<int Function(Pointer)>()(
          ptr.ref.lpVtbl);

  int setFilter(Pointer<COMObject> pFilter) => _vtable.SetFilter.asFunction<
      int Function(
          Pointer, Pointer<COMObject> pFilter)>()(ptr.ref.lpVtbl, pFilter);
}

/// @nodoc
base class IFileDialogVtbl extends Struct {
  external IModalWindowVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Uint32 cFileTypes,
              Pointer<COMDLG_FILTERSPEC> rgFilterSpec)>> SetFileTypes;
  external Pointer<NativeFunction<Int32 Function(Pointer, Uint32 iFileType)>>
      SetFileTypeIndex;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Uint32> piFileType)>>
      GetFileTypeIndex;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer, Pointer<COMObject> pfde, Pointer<Uint32> pdwCookie)>>
      Advise;
  external Pointer<NativeFunction<Int32 Function(Pointer, Uint32 dwCookie)>>
      Unadvise;
  external Pointer<NativeFunction<Int32 Function(Pointer, Uint32 fos)>>
      SetOptions;
  external Pointer<
      NativeFunction<Int32 Function(Pointer, Pointer<Uint32> pfos)>> GetOptions;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<COMObject> psi)>>
      SetDefaultFolder;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<COMObject> psi)>>
      SetFolder;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<Pointer<COMObject>> ppsi)>> GetFolder;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Pointer<COMObject>> ppsi)>>
      GetCurrentSelection;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Utf16> pszName)>>
      SetFileName;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Pointer<Utf16>> pszName)>>
      GetFileName;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Utf16> pszTitle)>>
      SetTitle;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Utf16> pszText)>>
      SetOkButtonLabel;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Utf16> pszLabel)>>
      SetFileNameLabel;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<Pointer<COMObject>> ppsi)>> GetResult;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<COMObject> psi, Int32 fdap)>>
      AddPlace;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Utf16> pszDefaultExtension)>>
      SetDefaultExtension;
  external Pointer<NativeFunction<Int32 Function(Pointer, Int32 hr)>> Close;
  external Pointer<NativeFunction<Int32 Function(Pointer, Pointer<GUID> guid)>>
      SetClientGuid;
  external Pointer<NativeFunction<Int32 Function(Pointer)>> ClearClientData;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<COMObject> pFilter)>>
      SetFilter;
}
