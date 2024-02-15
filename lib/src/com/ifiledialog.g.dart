// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../extensions/iunknown.dart';
import '../guid.dart';
import '../structs.g.dart';
import '../types.dart';
import 'imodalwindow.g.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IFileDialog = '{42f85136-db7e-439c-85f1-e4075d135fc8}';

/// Exposes methods that initialize, show, and get results from the common file
/// dialog.
///
/// {@category com}
class IFileDialog extends IModalWindow {
  IFileDialog(super.ptr) : _vtable = ptr.value.cast<IFileDialogVtbl>().ref;

  final IFileDialogVtbl _vtable;

  factory IFileDialog.from(IUnknown interface) =>
      IFileDialog(interface.toInterface(IID_IFileDialog));

  int setFileTypes(int cFileTypes, Pointer<COMDLG_FILTERSPEC> rgFilterSpec) =>
      _vtable.SetFileTypes.asFunction<
              int Function(VTablePointer lpVtbl, int cFileTypes,
                  Pointer<COMDLG_FILTERSPEC> rgFilterSpec)>()(
          ptr, cFileTypes, rgFilterSpec);

  int setFileTypeIndex(int iFileType) => _vtable.SetFileTypeIndex.asFunction<
      int Function(VTablePointer lpVtbl, int iFileType)>()(ptr, iFileType);

  int getFileTypeIndex(Pointer<Uint32> piFileType) =>
      _vtable.GetFileTypeIndex.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<Uint32> piFileType)>()(
          ptr, piFileType);

  int advise(VTablePointer pfde, Pointer<Uint32> pdwCookie) =>
      _vtable.Advise.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer pfde,
              Pointer<Uint32> pdwCookie)>()(ptr, pfde, pdwCookie);

  int unadvise(int dwCookie) => _vtable.Unadvise.asFunction<
      int Function(VTablePointer lpVtbl, int dwCookie)>()(ptr, dwCookie);

  int setOptions(int fos) => _vtable.SetOptions.asFunction<
      int Function(VTablePointer lpVtbl, int fos)>()(ptr, fos);

  int getOptions(Pointer<Uint32> pfos) => _vtable.GetOptions.asFunction<
      int Function(VTablePointer lpVtbl, Pointer<Uint32> pfos)>()(ptr, pfos);

  int setDefaultFolder(VTablePointer psi) =>
      _vtable.SetDefaultFolder.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer psi)>()(ptr, psi);

  int setFolder(VTablePointer psi) => _vtable.SetFolder.asFunction<
      int Function(VTablePointer lpVtbl, VTablePointer psi)>()(ptr, psi);

  int getFolder(Pointer<VTablePointer> ppsi) => _vtable.GetFolder.asFunction<
      int Function(
          VTablePointer lpVtbl, Pointer<VTablePointer> ppsi)>()(ptr, ppsi);

  int getCurrentSelection(Pointer<VTablePointer> ppsi) =>
      _vtable.GetCurrentSelection.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<VTablePointer> ppsi)>()(ptr, ppsi);

  int setFileName(PWSTR pszName) => _vtable.SetFileName.asFunction<
      int Function(VTablePointer lpVtbl, PWSTR pszName)>()(ptr, pszName);

  int getFileName(Pointer<PWSTR> pszName) => _vtable.GetFileName.asFunction<
      int Function(
          VTablePointer lpVtbl, Pointer<PWSTR> pszName)>()(ptr, pszName);

  int setTitle(PWSTR pszTitle) => _vtable.SetTitle.asFunction<
      int Function(VTablePointer lpVtbl, PWSTR pszTitle)>()(ptr, pszTitle);

  int setOkButtonLabel(PWSTR pszText) => _vtable.SetOkButtonLabel.asFunction<
      int Function(VTablePointer lpVtbl, PWSTR pszText)>()(ptr, pszText);

  int setFileNameLabel(PWSTR pszLabel) => _vtable.SetFileNameLabel.asFunction<
      int Function(VTablePointer lpVtbl, PWSTR pszLabel)>()(ptr, pszLabel);

  int getResult(Pointer<VTablePointer> ppsi) => _vtable.GetResult.asFunction<
      int Function(
          VTablePointer lpVtbl, Pointer<VTablePointer> ppsi)>()(ptr, ppsi);

  int addPlace(VTablePointer psi, int fdap) => _vtable.AddPlace.asFunction<
      int Function(
          VTablePointer lpVtbl, VTablePointer psi, int fdap)>()(ptr, psi, fdap);

  int setDefaultExtension(PWSTR pszDefaultExtension) =>
      _vtable.SetDefaultExtension.asFunction<
              int Function(VTablePointer lpVtbl, PWSTR pszDefaultExtension)>()(
          ptr, pszDefaultExtension);

  int close(int hr) =>
      _vtable.Close.asFunction<int Function(VTablePointer lpVtbl, int hr)>()(
          ptr, hr);

  int setClientGuid(Pointer<GUID> guid) => _vtable.SetClientGuid.asFunction<
      int Function(VTablePointer lpVtbl, Pointer<GUID> guid)>()(ptr, guid);

  int clearClientData() =>
      _vtable.ClearClientData.asFunction<int Function(VTablePointer lpVtbl)>()(
          ptr);

  int setFilter(VTablePointer pFilter) => _vtable.SetFilter.asFunction<
      int Function(
          VTablePointer lpVtbl, VTablePointer pFilter)>()(ptr, pFilter);
}

/// @nodoc
base class IFileDialogVtbl extends Struct {
  external IModalWindowVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 cFileTypes,
              Pointer<COMDLG_FILTERSPEC> rgFilterSpec)>> SetFileTypes;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Uint32 iFileType)>>
      SetFileTypeIndex;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Uint32> piFileType)>>
      GetFileTypeIndex;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer pfde,
              Pointer<Uint32> pdwCookie)>> Advise;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 dwCookie)>> Unadvise;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Uint32 fos)>>
      SetOptions;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> pfos)>>
      GetOptions;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, VTablePointer psi)>>
      SetDefaultFolder;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer psi)>> SetFolder;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<VTablePointer> ppsi)>> GetFolder;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> ppsi)>>
      GetCurrentSelection;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, PWSTR pszName)>>
      SetFileName;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<PWSTR> pszName)>>
      GetFileName;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, PWSTR pszTitle)>> SetTitle;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, PWSTR pszText)>>
      SetOkButtonLabel;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, PWSTR pszLabel)>>
      SetFileNameLabel;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<VTablePointer> ppsi)>> GetResult;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, VTablePointer psi, Int32 fdap)>> AddPlace;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, PWSTR pszDefaultExtension)>>
      SetDefaultExtension;
  external Pointer<
      NativeFunction<HRESULT Function(VTablePointer lpVtbl, HRESULT hr)>> Close;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<GUID> guid)>>
      SetClientGuid;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      ClearClientData;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, VTablePointer pFilter)>>
      SetFilter;
}
