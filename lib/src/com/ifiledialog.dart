// ifiledialog.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../guid.dart';
import '../structs.g.dart';
import '../types.dart';
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
  IFileDialog(super.ptr)
      : _vtable = ptr.value.value.cast<IFileDialogVtbl>().ref;

  final IFileDialogVtbl _vtable;

  factory IFileDialog.from(IUnknown interface) =>
      IFileDialog(interface.toInterface(IID_IFileDialog));

  int setFileTypes(int cFileTypes, Pointer<COMDLG_FILTERSPEC> rgFilterSpec) =>
      _vtable.SetFileTypes.asFunction<
              int Function(VTablePointer, int cFileTypes,
                  Pointer<COMDLG_FILTERSPEC> rgFilterSpec)>()(
          ptr.value, cFileTypes, rgFilterSpec);

  int setFileTypeIndex(int iFileType) => _vtable.SetFileTypeIndex.asFunction<
      int Function(VTablePointer, int iFileType)>()(ptr.value, iFileType);

  int getFileTypeIndex(Pointer<Uint32> piFileType) =>
      _vtable.GetFileTypeIndex.asFunction<
              int Function(VTablePointer, Pointer<Uint32> piFileType)>()(
          ptr.value, piFileType);

  int advise(Pointer<VTablePointer> pfde, Pointer<Uint32> pdwCookie) =>
      _vtable.Advise.asFunction<
          int Function(VTablePointer, Pointer<VTablePointer> pfde,
              Pointer<Uint32> pdwCookie)>()(ptr.value, pfde, pdwCookie);

  int unadvise(int dwCookie) =>
      _vtable.Unadvise.asFunction<int Function(VTablePointer, int dwCookie)>()(
          ptr.value, dwCookie);

  int setOptions(int fos) =>
      _vtable.SetOptions.asFunction<int Function(VTablePointer, int fos)>()(
          ptr.value, fos);

  int getOptions(Pointer<Uint32> pfos) => _vtable.GetOptions.asFunction<
      int Function(VTablePointer, Pointer<Uint32> pfos)>()(ptr.value, pfos);

  int setDefaultFolder(Pointer<VTablePointer> psi) =>
      _vtable.SetDefaultFolder.asFunction<
          int Function(
              VTablePointer, Pointer<VTablePointer> psi)>()(ptr.value, psi);

  int setFolder(Pointer<VTablePointer> psi) => _vtable.SetFolder.asFunction<
      int Function(
          VTablePointer, Pointer<VTablePointer> psi)>()(ptr.value, psi);

  int getFolder(Pointer<Pointer<VTablePointer>> ppsi) =>
      _vtable.GetFolder.asFunction<
          int Function(VTablePointer,
              Pointer<Pointer<VTablePointer>> ppsi)>()(ptr.value, ppsi);

  int getCurrentSelection(Pointer<Pointer<VTablePointer>> ppsi) =>
      _vtable.GetCurrentSelection.asFunction<
          int Function(VTablePointer,
              Pointer<Pointer<VTablePointer>> ppsi)>()(ptr.value, ppsi);

  int setFileName(Pointer<Utf16> pszName) => _vtable.SetFileName.asFunction<
      int Function(
          VTablePointer, Pointer<Utf16> pszName)>()(ptr.value, pszName);

  int getFileName(Pointer<Pointer<Utf16>> pszName) =>
      _vtable.GetFileName.asFunction<
              int Function(VTablePointer, Pointer<Pointer<Utf16>> pszName)>()(
          ptr.value, pszName);

  int setTitle(Pointer<Utf16> pszTitle) => _vtable.SetTitle.asFunction<
      int Function(
          VTablePointer, Pointer<Utf16> pszTitle)>()(ptr.value, pszTitle);

  int setOkButtonLabel(Pointer<Utf16> pszText) =>
      _vtable.SetOkButtonLabel.asFunction<
          int Function(
              VTablePointer, Pointer<Utf16> pszText)>()(ptr.value, pszText);

  int setFileNameLabel(Pointer<Utf16> pszLabel) =>
      _vtable.SetFileNameLabel.asFunction<
          int Function(
              VTablePointer, Pointer<Utf16> pszLabel)>()(ptr.value, pszLabel);

  int getResult(Pointer<Pointer<VTablePointer>> ppsi) =>
      _vtable.GetResult.asFunction<
          int Function(VTablePointer,
              Pointer<Pointer<VTablePointer>> ppsi)>()(ptr.value, ppsi);

  int addPlace(
          Pointer<VTablePointer> psi, int fdap) =>
      _vtable.AddPlace.asFunction<
          int Function(VTablePointer, Pointer<VTablePointer> psi,
              int fdap)>()(ptr.value, psi, fdap);

  int setDefaultExtension(Pointer<Utf16> pszDefaultExtension) =>
      _vtable.SetDefaultExtension.asFunction<
              int Function(
                  VTablePointer, Pointer<Utf16> pszDefaultExtension)>()(
          ptr.value, pszDefaultExtension);

  int close(int hr) =>
      _vtable.Close.asFunction<int Function(VTablePointer, int hr)>()(
          ptr.value, hr);

  int setClientGuid(Pointer<GUID> guid) => _vtable.SetClientGuid.asFunction<
      int Function(VTablePointer, Pointer<GUID> guid)>()(ptr.value, guid);

  int clearClientData() =>
      _vtable.ClearClientData.asFunction<int Function(VTablePointer)>()(
          ptr.value);

  int setFilter(Pointer<VTablePointer> pFilter) => _vtable.SetFilter.asFunction<
      int Function(
          VTablePointer, Pointer<VTablePointer> pFilter)>()(ptr.value, pFilter);
}

/// @nodoc
base class IFileDialogVtbl extends Struct {
  external IModalWindowVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Uint32 cFileTypes,
              Pointer<COMDLG_FILTERSPEC> rgFilterSpec)>> SetFileTypes;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Uint32 iFileType)>>
      SetFileTypeIndex;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Uint32> piFileType)>>
      GetFileTypeIndex;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<VTablePointer> pfde,
              Pointer<Uint32> pdwCookie)>> Advise;
  external Pointer<
      NativeFunction<Int32 Function(VTablePointer, Uint32 dwCookie)>> Unadvise;
  external Pointer<NativeFunction<Int32 Function(VTablePointer, Uint32 fos)>>
      SetOptions;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Uint32> pfos)>>
      GetOptions;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> psi)>>
      SetDefaultFolder;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<VTablePointer> psi)>> SetFolder;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer, Pointer<Pointer<VTablePointer>> ppsi)>> GetFolder;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Pointer<VTablePointer>> ppsi)>>
      GetCurrentSelection;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Utf16> pszName)>>
      SetFileName;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Pointer<Utf16>> pszName)>>
      GetFileName;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<Utf16> pszTitle)>> SetTitle;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Utf16> pszText)>>
      SetOkButtonLabel;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Utf16> pszLabel)>>
      SetFileNameLabel;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer, Pointer<Pointer<VTablePointer>> ppsi)>> GetResult;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer, Pointer<VTablePointer> psi, Int32 fdap)>> AddPlace;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Utf16> pszDefaultExtension)>>
      SetDefaultExtension;
  external Pointer<NativeFunction<Int32 Function(VTablePointer, Int32 hr)>>
      Close;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<GUID> guid)>>
      SetClientGuid;
  external Pointer<NativeFunction<Int32 Function(VTablePointer)>>
      ClearClientData;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> pFilter)>>
      SetFilter;
}
