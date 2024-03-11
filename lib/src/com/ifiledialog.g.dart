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
import 'imodalwindow.g.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IFileDialog = '{42f85136-db7e-439c-85f1-e4075d135fc8}';

/// Exposes methods that initialize, show, and get results from the common file
/// dialog.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nn-shobjidl_core-ifiledialog>.
///
/// {@category com}
class IFileDialog extends IModalWindow {
  IFileDialog(super.ptr) : _vtable = ptr.value.cast<IFileDialogVtbl>().ref;

  final IFileDialogVtbl _vtable;

  /// Creates a new instance of `IFileDialog` from an existing [interface].
  ///
  /// This constructor invokes the [queryInterface] method to obtain a reference
  /// to the `IFileDialog` interface with the provided interface.
  ///
  /// Throws a [WindowsException] if the `queryInterface` call fails.
  factory IFileDialog.from(IUnknown interface) =>
      IFileDialog(interface.toInterface(IID_IFileDialog));

  /// Sets the file types that the dialog can open or save.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialog-setfiletypes>.
  int setFileTypes(int cFileTypes, Pointer<COMDLG_FILTERSPEC> rgFilterSpec) =>
      _vtable.SetFileTypes.asFunction<
              int Function(VTablePointer lpVtbl, int cFileTypes,
                  Pointer<COMDLG_FILTERSPEC> rgFilterSpec)>()(
          ptr, cFileTypes, rgFilterSpec);

  /// Sets the file type that appears as selected in the dialog.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialog-setfiletypeindex>.
  int setFileTypeIndex(int iFileType) => _vtable.SetFileTypeIndex.asFunction<
      int Function(VTablePointer lpVtbl, int iFileType)>()(ptr, iFileType);

  /// Gets the currently selected file type.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialog-getfiletypeindex>.
  int getFileTypeIndex(Pointer<Uint32> piFileType) =>
      _vtable.GetFileTypeIndex.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<Uint32> piFileType)>()(
          ptr, piFileType);

  /// Assigns an event handler that listens for events coming from the dialog.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialog-advise>.
  int advise(VTablePointer pfde, Pointer<Uint32> pdwCookie) =>
      _vtable.Advise.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer pfde,
              Pointer<Uint32> pdwCookie)>()(ptr, pfde, pdwCookie);

  /// Removes an event handler that was attached through the `IFileDialog.advise`
  /// method.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialog-unadvise>.
  int unadvise(int dwCookie) => _vtable.Unadvise.asFunction<
      int Function(VTablePointer lpVtbl, int dwCookie)>()(ptr, dwCookie);

  /// Sets flags to control the behavior of the dialog.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialog-setoptions>.
  int setOptions(int fos) => _vtable.SetOptions.asFunction<
      int Function(VTablePointer lpVtbl, int fos)>()(ptr, fos);

  /// Gets the current flags that are set to control dialog behavior.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialog-getoptions>.
  int getOptions(Pointer<Uint32> pfos) => _vtable.GetOptions.asFunction<
      int Function(VTablePointer lpVtbl, Pointer<Uint32> pfos)>()(ptr, pfos);

  /// Sets the folder used as a default if there is not a recently used folder
  /// value available.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialog-setdefaultfolder>.
  int setDefaultFolder(VTablePointer psi) =>
      _vtable.SetDefaultFolder.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer psi)>()(ptr, psi);

  /// Sets a folder that is always selected when the dialog is opened, regardless
  /// of previous user action.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialog-setfolder>.
  int setFolder(VTablePointer psi) => _vtable.SetFolder.asFunction<
      int Function(VTablePointer lpVtbl, VTablePointer psi)>()(ptr, psi);

  /// Gets either the folder currently selected in the dialog, or, if the dialog
  /// is not currently displayed, the folder that is to be selected when the
  /// dialog is opened.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialog-getfolder>.
  int getFolder(Pointer<VTablePointer> ppsi) => _vtable.GetFolder.asFunction<
      int Function(
          VTablePointer lpVtbl, Pointer<VTablePointer> ppsi)>()(ptr, ppsi);

  /// Gets the user's current selection in the dialog.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialog-getcurrentselection>.
  int getCurrentSelection(Pointer<VTablePointer> ppsi) =>
      _vtable.GetCurrentSelection.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<VTablePointer> ppsi)>()(ptr, ppsi);

  /// Sets the file name that appears in the File name edit box when that dialog
  /// box is opened.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialog-setfilename>.
  int setFileName(Pointer<Utf16> pszName) => _vtable.SetFileName.asFunction<
      int Function(
          VTablePointer lpVtbl, Pointer<Utf16> pszName)>()(ptr, pszName);

  /// Retrieves the text currently entered in the dialog's File name edit box.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialog-getfilename>.
  int getFileName(Pointer<Pointer<Utf16>> pszName) =>
      _vtable.GetFileName.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<Utf16>> pszName)>()(ptr, pszName);

  /// Sets the title of the dialog.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialog-settitle>.
  int setTitle(Pointer<Utf16> pszTitle) => _vtable.SetTitle.asFunction<
      int Function(
          VTablePointer lpVtbl, Pointer<Utf16> pszTitle)>()(ptr, pszTitle);

  /// Sets the text of the Open or Save button.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialog-setokbuttonlabel>.
  int setOkButtonLabel(Pointer<Utf16> pszText) =>
      _vtable.SetOkButtonLabel.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Utf16> pszText)>()(ptr, pszText);

  /// Sets the text of the label next to the file name edit box.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialog-setfilenamelabel>.
  int setFileNameLabel(Pointer<Utf16> pszLabel) =>
      _vtable.SetFileNameLabel.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Utf16> pszLabel)>()(ptr, pszLabel);

  /// Gets the choice that the user made in the dialog.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialog-getresult>.
  int getResult(Pointer<VTablePointer> ppsi) => _vtable.GetResult.asFunction<
      int Function(
          VTablePointer lpVtbl, Pointer<VTablePointer> ppsi)>()(ptr, ppsi);

  /// Adds a folder to the list of places available for the user to open or save
  /// items.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialog-addplace>.
  int addPlace(VTablePointer psi, int fdap) => _vtable.AddPlace.asFunction<
      int Function(
          VTablePointer lpVtbl, VTablePointer psi, int fdap)>()(ptr, psi, fdap);

  /// Sets the default extension to be added to file names.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialog-setdefaultextension>.
  int setDefaultExtension(Pointer<Utf16> pszDefaultExtension) =>
      _vtable.SetDefaultExtension.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Utf16> pszDefaultExtension)>()(ptr, pszDefaultExtension);

  /// Closes the dialog.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialog-close>.
  int close(int hr) =>
      _vtable.Close.asFunction<int Function(VTablePointer lpVtbl, int hr)>()(
          ptr, hr);

  /// Enables a calling application to associate a GUID with a dialog's persisted
  /// state.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialog-setclientguid>.
  int setClientGuid(Pointer<GUID> guid) => _vtable.SetClientGuid.asFunction<
      int Function(VTablePointer lpVtbl, Pointer<GUID> guid)>()(ptr, guid);

  /// Instructs the dialog to clear all persisted state information.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialog-clearclientdata>.
  int clearClientData() =>
      _vtable.ClearClientData.asFunction<int Function(VTablePointer lpVtbl)>()(
          ptr);

  /// SetFilter is no longer available for use as of Windows 7.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialog-setfilter>.
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
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Utf16> pszName)>>
      SetFileName;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Pointer<Utf16>> pszName)>>
      GetFileName;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Utf16> pszTitle)>>
      SetTitle;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Utf16> pszText)>>
      SetOkButtonLabel;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Utf16> pszLabel)>>
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
                  VTablePointer lpVtbl, Pointer<Utf16> pszDefaultExtension)>>
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
