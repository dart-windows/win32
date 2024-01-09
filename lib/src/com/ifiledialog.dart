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
import 'imodalwindow.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IFileDialog = '{42f85136-db7e-439c-85f1-e4075d135fc8}';

/// Exposes methods that initialize, show, and get results from the common
/// file dialog.
///
/// {@category com}
class IFileDialog extends IModalWindow {
  IFileDialog(super.ptr) : _vtable = ptr.value.cast<IFileDialogVtbl>().ref;

  final IFileDialogVtbl _vtable;

  factory IFileDialog.from(IUnknown interface) =>
      IFileDialog(interface.toInterface(IID_IFileDialog));

  int setFileTypes(int cFileTypes, Pointer<COMDLG_FILTERSPEC> rgFilterSpec) =>
      _vtable.SetFileTypes.asFunction<
              int Function(VTablePointer, int cFileTypes,
                  Pointer<COMDLG_FILTERSPEC> rgFilterSpec)>()(
          ptr, cFileTypes, rgFilterSpec);

  int setFileTypeIndex(int iFileType) => _vtable.SetFileTypeIndex.asFunction<
      int Function(VTablePointer, int iFileType)>()(ptr, iFileType);

  int getFileTypeIndex(Pointer<Uint32> piFileType) =>
      _vtable.GetFileTypeIndex.asFunction<
          int Function(
              VTablePointer, Pointer<Uint32> piFileType)>()(ptr, piFileType);

  int advise(VTablePointer pfde, Pointer<Uint32> pdwCookie) =>
      _vtable.Advise.asFunction<
          int Function(VTablePointer, VTablePointer pfde,
              Pointer<Uint32> pdwCookie)>()(ptr, pfde, pdwCookie);

  int unadvise(int dwCookie) =>
      _vtable.Unadvise.asFunction<int Function(VTablePointer, int dwCookie)>()(
          ptr, dwCookie);

  int setOptions(int fos) =>
      _vtable.SetOptions.asFunction<int Function(VTablePointer, int fos)>()(
          ptr, fos);

  int getOptions(Pointer<Uint32> pfos) => _vtable.GetOptions.asFunction<
      int Function(VTablePointer, Pointer<Uint32> pfos)>()(ptr, pfos);

  int setDefaultFolder(VTablePointer psi) => _vtable.SetDefaultFolder
      .asFunction<int Function(VTablePointer, VTablePointer psi)>()(ptr, psi);

  int setFolder(VTablePointer psi) => _vtable.SetFolder.asFunction<
      int Function(VTablePointer, VTablePointer psi)>()(ptr, psi);

  int getFolder(Pointer<VTablePointer> ppsi) => _vtable.GetFolder.asFunction<
      int Function(VTablePointer, Pointer<VTablePointer> ppsi)>()(ptr, ppsi);

  int getCurrentSelection(Pointer<VTablePointer> ppsi) =>
      _vtable.GetCurrentSelection.asFunction<
          int Function(
              VTablePointer, Pointer<VTablePointer> ppsi)>()(ptr, ppsi);

  int setFileName(Pointer<Utf16> pszName) => _vtable.SetFileName.asFunction<
      int Function(VTablePointer, Pointer<Utf16> pszName)>()(ptr, pszName);

  int getFileName(Pointer<Pointer<Utf16>> pszName) =>
      _vtable.GetFileName.asFunction<
          int Function(
              VTablePointer, Pointer<Pointer<Utf16>> pszName)>()(ptr, pszName);

  int setTitle(Pointer<Utf16> pszTitle) => _vtable.SetTitle.asFunction<
      int Function(VTablePointer, Pointer<Utf16> pszTitle)>()(ptr, pszTitle);

  int setOkButtonLabel(Pointer<Utf16> pszText) =>
      _vtable.SetOkButtonLabel.asFunction<
          int Function(VTablePointer, Pointer<Utf16> pszText)>()(ptr, pszText);

  int setFileNameLabel(Pointer<Utf16> pszLabel) =>
      _vtable.SetFileNameLabel.asFunction<
          int Function(
              VTablePointer, Pointer<Utf16> pszLabel)>()(ptr, pszLabel);

  int getResult(Pointer<VTablePointer> ppsi) => _vtable.GetResult.asFunction<
      int Function(VTablePointer, Pointer<VTablePointer> ppsi)>()(ptr, ppsi);

  int addPlace(VTablePointer psi, int fdap) => _vtable.AddPlace.asFunction<
      int Function(
          VTablePointer, VTablePointer psi, int fdap)>()(ptr, psi, fdap);

  int setDefaultExtension(Pointer<Utf16> pszDefaultExtension) =>
      _vtable.SetDefaultExtension.asFunction<
          int Function(VTablePointer,
              Pointer<Utf16> pszDefaultExtension)>()(ptr, pszDefaultExtension);

  int close(int hr) =>
      _vtable.Close.asFunction<int Function(VTablePointer, int hr)>()(ptr, hr);

  int setClientGuid(Pointer<GUID> guid) => _vtable.SetClientGuid.asFunction<
      int Function(VTablePointer, Pointer<GUID> guid)>()(ptr, guid);

  int clearClientData() =>
      _vtable.ClearClientData.asFunction<int Function(VTablePointer)>()(ptr);

  int setFilter(VTablePointer pFilter) => _vtable.SetFilter.asFunction<
      int Function(VTablePointer, VTablePointer pFilter)>()(ptr, pFilter);
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
          Int32 Function(VTablePointer, VTablePointer pfde,
              Pointer<Uint32> pdwCookie)>> Advise;
  external Pointer<
      NativeFunction<Int32 Function(VTablePointer, Uint32 dwCookie)>> Unadvise;
  external Pointer<NativeFunction<Int32 Function(VTablePointer, Uint32 fos)>>
      SetOptions;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Uint32> pfos)>>
      GetOptions;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, VTablePointer psi)>>
      SetDefaultFolder;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, VTablePointer psi)>>
      SetFolder;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> ppsi)>>
      GetFolder;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> ppsi)>>
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
              Int32 Function(VTablePointer, Pointer<VTablePointer> ppsi)>>
      GetResult;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, VTablePointer psi, Int32 fdap)>>
      AddPlace;
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
          NativeFunction<Int32 Function(VTablePointer, VTablePointer pFilter)>>
      SetFilter;
}
