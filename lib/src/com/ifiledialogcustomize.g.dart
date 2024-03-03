// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../extensions/iunknown.dart';
import '../structs.g.dart';
import '../types.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IFileDialogCustomize = '{e6fdd21a-163f-4975-9c8c-a69f1ba37034}';

/// Exposes methods that allow an application to add controls to a common file
/// dialog.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nn-shobjidl_core-ifiledialogcustomize>.
///
/// {@category com}
class IFileDialogCustomize extends IUnknown {
  IFileDialogCustomize(super.ptr)
      : _vtable = ptr.value.cast<IFileDialogCustomizeVtbl>().ref;

  final IFileDialogCustomizeVtbl _vtable;

  factory IFileDialogCustomize.from(IUnknown interface) =>
      IFileDialogCustomize(interface.toInterface(IID_IFileDialogCustomize));

  int enableOpenDropDown(int dwIDCtl) => _vtable.EnableOpenDropDown.asFunction<
      int Function(VTablePointer lpVtbl, int dwIDCtl)>()(ptr, dwIDCtl);

  int addMenu(int dwIDCtl, Pointer<Utf16> pszLabel) =>
      _vtable.AddMenu.asFunction<
          int Function(VTablePointer lpVtbl, int dwIDCtl,
              Pointer<Utf16> pszLabel)>()(ptr, dwIDCtl, pszLabel);

  int addPushButton(int dwIDCtl, Pointer<Utf16> pszLabel) =>
      _vtable.AddPushButton.asFunction<
          int Function(VTablePointer lpVtbl, int dwIDCtl,
              Pointer<Utf16> pszLabel)>()(ptr, dwIDCtl, pszLabel);

  int addComboBox(int dwIDCtl) => _vtable.AddComboBox.asFunction<
      int Function(VTablePointer lpVtbl, int dwIDCtl)>()(ptr, dwIDCtl);

  int addRadioButtonList(int dwIDCtl) => _vtable.AddRadioButtonList.asFunction<
      int Function(VTablePointer lpVtbl, int dwIDCtl)>()(ptr, dwIDCtl);

  int addCheckButton(int dwIDCtl, Pointer<Utf16> pszLabel, int bChecked) =>
      _vtable.AddCheckButton.asFunction<
          int Function(
              VTablePointer lpVtbl,
              int dwIDCtl,
              Pointer<Utf16> pszLabel,
              int bChecked)>()(ptr, dwIDCtl, pszLabel, bChecked);

  int addEditBox(int dwIDCtl, Pointer<Utf16> pszText) =>
      _vtable.AddEditBox.asFunction<
          int Function(VTablePointer lpVtbl, int dwIDCtl,
              Pointer<Utf16> pszText)>()(ptr, dwIDCtl, pszText);

  int addSeparator(int dwIDCtl) => _vtable.AddSeparator.asFunction<
      int Function(VTablePointer lpVtbl, int dwIDCtl)>()(ptr, dwIDCtl);

  int addText(int dwIDCtl, Pointer<Utf16> pszText) =>
      _vtable.AddText.asFunction<
          int Function(VTablePointer lpVtbl, int dwIDCtl,
              Pointer<Utf16> pszText)>()(ptr, dwIDCtl, pszText);

  int setControlLabel(int dwIDCtl, Pointer<Utf16> pszLabel) =>
      _vtable.SetControlLabel.asFunction<
          int Function(VTablePointer lpVtbl, int dwIDCtl,
              Pointer<Utf16> pszLabel)>()(ptr, dwIDCtl, pszLabel);

  int getControlState(int dwIDCtl, Pointer<Int32> pdwState) =>
      _vtable.GetControlState.asFunction<
          int Function(VTablePointer lpVtbl, int dwIDCtl,
              Pointer<Int32> pdwState)>()(ptr, dwIDCtl, pdwState);

  int setControlState(int dwIDCtl, int dwState) =>
      _vtable.SetControlState.asFunction<
              int Function(VTablePointer lpVtbl, int dwIDCtl, int dwState)>()(
          ptr, dwIDCtl, dwState);

  int getEditBoxText(int dwIDCtl, Pointer<Pointer<Uint16>> ppszText) =>
      _vtable.GetEditBoxText.asFunction<
          int Function(VTablePointer lpVtbl, int dwIDCtl,
              Pointer<Pointer<Uint16>> ppszText)>()(ptr, dwIDCtl, ppszText);

  int setEditBoxText(int dwIDCtl, Pointer<Utf16> pszText) =>
      _vtable.SetEditBoxText.asFunction<
          int Function(VTablePointer lpVtbl, int dwIDCtl,
              Pointer<Utf16> pszText)>()(ptr, dwIDCtl, pszText);

  int getCheckButtonState(int dwIDCtl, Pointer<BOOL> pbChecked) =>
      _vtable.GetCheckButtonState.asFunction<
          int Function(VTablePointer lpVtbl, int dwIDCtl,
              Pointer<BOOL> pbChecked)>()(ptr, dwIDCtl, pbChecked);

  int setCheckButtonState(int dwIDCtl, int bChecked) =>
      _vtable.SetCheckButtonState.asFunction<
              int Function(VTablePointer lpVtbl, int dwIDCtl, int bChecked)>()(
          ptr, dwIDCtl, bChecked);

  int addControlItem(int dwIDCtl, int dwIDItem, Pointer<Utf16> pszLabel) =>
      _vtable.AddControlItem.asFunction<
          int Function(VTablePointer lpVtbl, int dwIDCtl, int dwIDItem,
              Pointer<Utf16> pszLabel)>()(ptr, dwIDCtl, dwIDItem, pszLabel);

  int removeControlItem(int dwIDCtl, int dwIDItem) =>
      _vtable.RemoveControlItem.asFunction<
              int Function(VTablePointer lpVtbl, int dwIDCtl, int dwIDItem)>()(
          ptr, dwIDCtl, dwIDItem);

  int removeAllControlItems(int dwIDCtl) =>
      _vtable.RemoveAllControlItems.asFunction<
          int Function(VTablePointer lpVtbl, int dwIDCtl)>()(ptr, dwIDCtl);

  int getControlItemState(int dwIDCtl, int dwIDItem, Pointer<Int32> pdwState) =>
      _vtable.GetControlItemState.asFunction<
          int Function(VTablePointer lpVtbl, int dwIDCtl, int dwIDItem,
              Pointer<Int32> pdwState)>()(ptr, dwIDCtl, dwIDItem, pdwState);

  int setControlItemState(int dwIDCtl, int dwIDItem, int dwState) =>
      _vtable.SetControlItemState.asFunction<
          int Function(VTablePointer lpVtbl, int dwIDCtl, int dwIDItem,
              int dwState)>()(ptr, dwIDCtl, dwIDItem, dwState);

  int getSelectedControlItem(int dwIDCtl, Pointer<Uint32> pdwIDItem) =>
      _vtable.GetSelectedControlItem.asFunction<
          int Function(VTablePointer lpVtbl, int dwIDCtl,
              Pointer<Uint32> pdwIDItem)>()(ptr, dwIDCtl, pdwIDItem);

  int setSelectedControlItem(int dwIDCtl, int dwIDItem) =>
      _vtable.SetSelectedControlItem.asFunction<
              int Function(VTablePointer lpVtbl, int dwIDCtl, int dwIDItem)>()(
          ptr, dwIDCtl, dwIDItem);

  int startVisualGroup(int dwIDCtl, Pointer<Utf16> pszLabel) =>
      _vtable.StartVisualGroup.asFunction<
          int Function(VTablePointer lpVtbl, int dwIDCtl,
              Pointer<Utf16> pszLabel)>()(ptr, dwIDCtl, pszLabel);

  int endVisualGroup() =>
      _vtable.EndVisualGroup.asFunction<int Function(VTablePointer lpVtbl)>()(
          ptr);

  int makeProminent(int dwIDCtl) => _vtable.MakeProminent.asFunction<
      int Function(VTablePointer lpVtbl, int dwIDCtl)>()(ptr, dwIDCtl);

  int setControlItemText(int dwIDCtl, int dwIDItem, Pointer<Utf16> pszLabel) =>
      _vtable.SetControlItemText.asFunction<
          int Function(VTablePointer lpVtbl, int dwIDCtl, int dwIDItem,
              Pointer<Utf16> pszLabel)>()(ptr, dwIDCtl, dwIDItem, pszLabel);
}

/// @nodoc
base class IFileDialogCustomizeVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Uint32 dwIDCtl)>>
      EnableOpenDropDown;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 dwIDCtl,
              Pointer<Utf16> pszLabel)>> AddMenu;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 dwIDCtl,
              Pointer<Utf16> pszLabel)>> AddPushButton;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 dwIDCtl)>> AddComboBox;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Uint32 dwIDCtl)>>
      AddRadioButtonList;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 dwIDCtl,
              Pointer<Utf16> pszLabel, BOOL bChecked)>> AddCheckButton;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 dwIDCtl,
              Pointer<Utf16> pszText)>> AddEditBox;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 dwIDCtl)>> AddSeparator;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 dwIDCtl,
              Pointer<Utf16> pszText)>> AddText;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 dwIDCtl,
              Pointer<Utf16> pszLabel)>> SetControlLabel;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 dwIDCtl,
              Pointer<Int32> pdwState)>> GetControlState;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Uint32 dwIDCtl, Int32 dwState)>>
      SetControlState;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 dwIDCtl,
              Pointer<Pointer<Uint16>> ppszText)>> GetEditBoxText;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 dwIDCtl,
              Pointer<Utf16> pszText)>> SetEditBoxText;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 dwIDCtl,
              Pointer<BOOL> pbChecked)>> GetCheckButtonState;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Uint32 dwIDCtl, BOOL bChecked)>>
      SetCheckButtonState;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 dwIDCtl,
              Uint32 dwIDItem, Pointer<Utf16> pszLabel)>> AddControlItem;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Uint32 dwIDCtl, Uint32 dwIDItem)>>
      RemoveControlItem;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Uint32 dwIDCtl)>>
      RemoveAllControlItems;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 dwIDCtl,
              Uint32 dwIDItem, Pointer<Int32> pdwState)>> GetControlItemState;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 dwIDCtl,
              Uint32 dwIDItem, Int32 dwState)>> SetControlItemState;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 dwIDCtl,
              Pointer<Uint32> pdwIDItem)>> GetSelectedControlItem;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Uint32 dwIDCtl, Uint32 dwIDItem)>>
      SetSelectedControlItem;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 dwIDCtl,
              Pointer<Utf16> pszLabel)>> StartVisualGroup;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      EndVisualGroup;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Uint32 dwIDCtl)>>
      MakeProminent;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 dwIDCtl,
              Uint32 dwIDItem, Pointer<Utf16> pszLabel)>> SetControlItemText;
}
