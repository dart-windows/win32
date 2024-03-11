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

  /// Enables a drop-down list on the Open or Save button in the dialog.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialogcustomize-enableopendropdown>.
  int enableOpenDropDown(int dwIDCtl) => _vtable.EnableOpenDropDown.asFunction<
      int Function(VTablePointer lpVtbl, int dwIDCtl)>()(ptr, dwIDCtl);

  /// Adds a menu to the dialog.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialogcustomize-addmenu>.
  int addMenu(int dwIDCtl, Pointer<Utf16> pszLabel) =>
      _vtable.AddMenu.asFunction<
          int Function(VTablePointer lpVtbl, int dwIDCtl,
              Pointer<Utf16> pszLabel)>()(ptr, dwIDCtl, pszLabel);

  /// Adds a button to the dialog.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialogcustomize-addpushbutton>.
  int addPushButton(int dwIDCtl, Pointer<Utf16> pszLabel) =>
      _vtable.AddPushButton.asFunction<
          int Function(VTablePointer lpVtbl, int dwIDCtl,
              Pointer<Utf16> pszLabel)>()(ptr, dwIDCtl, pszLabel);

  /// Adds a combo box to the dialog.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialogcustomize-addcombobox>.
  int addComboBox(int dwIDCtl) => _vtable.AddComboBox.asFunction<
      int Function(VTablePointer lpVtbl, int dwIDCtl)>()(ptr, dwIDCtl);

  /// Adds an option button (also known as radio button) group to the dialog.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialogcustomize-addradiobuttonlist>.
  int addRadioButtonList(int dwIDCtl) => _vtable.AddRadioButtonList.asFunction<
      int Function(VTablePointer lpVtbl, int dwIDCtl)>()(ptr, dwIDCtl);

  /// Adds a check button (check box) to the dialog.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialogcustomize-addcheckbutton>.
  int addCheckButton(int dwIDCtl, Pointer<Utf16> pszLabel, int bChecked) =>
      _vtable.AddCheckButton.asFunction<
          int Function(
              VTablePointer lpVtbl,
              int dwIDCtl,
              Pointer<Utf16> pszLabel,
              int bChecked)>()(ptr, dwIDCtl, pszLabel, bChecked);

  /// Adds an edit box control to the dialog.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialogcustomize-addeditbox>.
  int addEditBox(int dwIDCtl, Pointer<Utf16> pszText) =>
      _vtable.AddEditBox.asFunction<
          int Function(VTablePointer lpVtbl, int dwIDCtl,
              Pointer<Utf16> pszText)>()(ptr, dwIDCtl, pszText);

  /// Adds a separator to the dialog, allowing a visual separation of controls.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialogcustomize-addseparator>.
  int addSeparator(int dwIDCtl) => _vtable.AddSeparator.asFunction<
      int Function(VTablePointer lpVtbl, int dwIDCtl)>()(ptr, dwIDCtl);

  /// Adds text content to the dialog.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialogcustomize-addtext>.
  int addText(int dwIDCtl, Pointer<Utf16> pszText) =>
      _vtable.AddText.asFunction<
          int Function(VTablePointer lpVtbl, int dwIDCtl,
              Pointer<Utf16> pszText)>()(ptr, dwIDCtl, pszText);

  /// Sets the text associated with a control, such as button text or an edit box
  /// label.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialogcustomize-setcontrollabel>.
  int setControlLabel(int dwIDCtl, Pointer<Utf16> pszLabel) =>
      _vtable.SetControlLabel.asFunction<
          int Function(VTablePointer lpVtbl, int dwIDCtl,
              Pointer<Utf16> pszLabel)>()(ptr, dwIDCtl, pszLabel);

  /// Gets the current visibility and enabled states of a given control.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialogcustomize-getcontrolstate>.
  int getControlState(int dwIDCtl, Pointer<Int32> pdwState) =>
      _vtable.GetControlState.asFunction<
          int Function(VTablePointer lpVtbl, int dwIDCtl,
              Pointer<Int32> pdwState)>()(ptr, dwIDCtl, pdwState);

  /// Sets the current visibility and enabled states of a given control.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialogcustomize-setcontrolstate>.
  int setControlState(int dwIDCtl, int dwState) =>
      _vtable.SetControlState.asFunction<
              int Function(VTablePointer lpVtbl, int dwIDCtl, int dwState)>()(
          ptr, dwIDCtl, dwState);

  /// Gets the current text in an edit box control.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialogcustomize-geteditboxtext>.
  int getEditBoxText(int dwIDCtl, Pointer<Pointer<Uint16>> ppszText) =>
      _vtable.GetEditBoxText.asFunction<
          int Function(VTablePointer lpVtbl, int dwIDCtl,
              Pointer<Pointer<Uint16>> ppszText)>()(ptr, dwIDCtl, ppszText);

  /// Sets the text in an edit box control found in the dialog.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialogcustomize-seteditboxtext>.
  int setEditBoxText(int dwIDCtl, Pointer<Utf16> pszText) =>
      _vtable.SetEditBoxText.asFunction<
          int Function(VTablePointer lpVtbl, int dwIDCtl,
              Pointer<Utf16> pszText)>()(ptr, dwIDCtl, pszText);

  /// Gets the current state of a check button (check box) in the dialog.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialogcustomize-getcheckbuttonstate>.
  int getCheckButtonState(int dwIDCtl, Pointer<BOOL> pbChecked) =>
      _vtable.GetCheckButtonState.asFunction<
          int Function(VTablePointer lpVtbl, int dwIDCtl,
              Pointer<BOOL> pbChecked)>()(ptr, dwIDCtl, pbChecked);

  /// Sets the state of a check button (check box) in the dialog.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialogcustomize-setcheckbuttonstate>.
  int setCheckButtonState(int dwIDCtl, int bChecked) =>
      _vtable.SetCheckButtonState.asFunction<
              int Function(VTablePointer lpVtbl, int dwIDCtl, int bChecked)>()(
          ptr, dwIDCtl, bChecked);

  /// Adds an item to a container control in the dialog.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialogcustomize-addcontrolitem>.
  int addControlItem(int dwIDCtl, int dwIDItem, Pointer<Utf16> pszLabel) =>
      _vtable.AddControlItem.asFunction<
          int Function(VTablePointer lpVtbl, int dwIDCtl, int dwIDItem,
              Pointer<Utf16> pszLabel)>()(ptr, dwIDCtl, dwIDItem, pszLabel);

  /// Removes an item from a container control in the dialog.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialogcustomize-removecontrolitem>.
  int removeControlItem(int dwIDCtl, int dwIDItem) =>
      _vtable.RemoveControlItem.asFunction<
              int Function(VTablePointer lpVtbl, int dwIDCtl, int dwIDItem)>()(
          ptr, dwIDCtl, dwIDItem);

  /// Not implemented.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialogcustomize-removeallcontrolitems>.
  int removeAllControlItems(int dwIDCtl) =>
      _vtable.RemoveAllControlItems.asFunction<
          int Function(VTablePointer lpVtbl, int dwIDCtl)>()(ptr, dwIDCtl);

  /// Gets the current state of an item in a container control found in the
  /// dialog.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialogcustomize-getcontrolitemstate>.
  int getControlItemState(int dwIDCtl, int dwIDItem, Pointer<Int32> pdwState) =>
      _vtable.GetControlItemState.asFunction<
          int Function(VTablePointer lpVtbl, int dwIDCtl, int dwIDItem,
              Pointer<Int32> pdwState)>()(ptr, dwIDCtl, dwIDItem, pdwState);

  /// Sets the current state of an item in a container control found in the
  /// dialog.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialogcustomize-setcontrolitemstate>.
  int setControlItemState(int dwIDCtl, int dwIDItem, int dwState) =>
      _vtable.SetControlItemState.asFunction<
          int Function(VTablePointer lpVtbl, int dwIDCtl, int dwIDItem,
              int dwState)>()(ptr, dwIDCtl, dwIDItem, dwState);

  /// Gets a particular item from specified container controls in the dialog.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialogcustomize-getselectedcontrolitem>.
  int getSelectedControlItem(int dwIDCtl, Pointer<Uint32> pdwIDItem) =>
      _vtable.GetSelectedControlItem.asFunction<
          int Function(VTablePointer lpVtbl, int dwIDCtl,
              Pointer<Uint32> pdwIDItem)>()(ptr, dwIDCtl, pdwIDItem);

  /// Sets the selected state of a particular item in an option button group or a
  /// combo box found in the dialog.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialogcustomize-setselectedcontrolitem>.
  int setSelectedControlItem(int dwIDCtl, int dwIDItem) =>
      _vtable.SetSelectedControlItem.asFunction<
              int Function(VTablePointer lpVtbl, int dwIDCtl, int dwIDItem)>()(
          ptr, dwIDCtl, dwIDItem);

  /// Declares a visual group in the dialog.
  ///
  /// Subsequent calls to any `add` method add those elements to this group.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialogcustomize-startvisualgroup>.
  int startVisualGroup(int dwIDCtl, Pointer<Utf16> pszLabel) =>
      _vtable.StartVisualGroup.asFunction<
          int Function(VTablePointer lpVtbl, int dwIDCtl,
              Pointer<Utf16> pszLabel)>()(ptr, dwIDCtl, pszLabel);

  /// Stops the addition of elements to a visual group in the dialog.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialogcustomize-endvisualgroup>.
  int endVisualGroup() =>
      _vtable.EndVisualGroup.asFunction<int Function(VTablePointer lpVtbl)>()(
          ptr);

  /// Places a control in the dialog so that it stands out compared to other added
  /// controls.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialogcustomize-makeprominent>.
  int makeProminent(int dwIDCtl) => _vtable.MakeProminent.asFunction<
      int Function(VTablePointer lpVtbl, int dwIDCtl)>()(ptr, dwIDCtl);

  /// Sets the text of a control item.
  ///
  /// For example, the text that accompanies a radio button or an item in a menu.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifiledialogcustomize-setcontrolitemtext>.
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
