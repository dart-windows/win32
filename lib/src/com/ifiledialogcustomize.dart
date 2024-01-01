// ifiledialogcustomize.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'iunknown.dart';

/// @nodoc
const IID_IFileDialogCustomize = '{e6fdd21a-163f-4975-9c8c-a69f1ba37034}';

/// Exposes methods that allow an application to add controls to a common
/// file dialog.
///
/// {@category com}
class IFileDialogCustomize extends IUnknown {
  // vtable begins at 3, is 27 entries long.
  IFileDialogCustomize(super.ptr)
      : _vtable = ptr.ref.vtable.cast<IFileDialogCustomizeVtbl>().ref;

  final IFileDialogCustomizeVtbl _vtable;

  factory IFileDialogCustomize.from(IUnknown interface) =>
      IFileDialogCustomize(interface.toInterface(IID_IFileDialogCustomize));

  int enableOpenDropDown(int dwIDCtl) => _vtable.EnableOpenDropDown.asFunction<
      int Function(Pointer, int dwIDCtl)>()(ptr.ref.lpVtbl, dwIDCtl);

  int addMenu(int dwIDCtl, Pointer<Utf16> pszLabel) =>
      _vtable.AddMenu.asFunction<
              int Function(Pointer, int dwIDCtl, Pointer<Utf16> pszLabel)>()(
          ptr.ref.lpVtbl, dwIDCtl, pszLabel);

  int addPushButton(int dwIDCtl, Pointer<Utf16> pszLabel) =>
      _vtable.AddPushButton.asFunction<
              int Function(Pointer, int dwIDCtl, Pointer<Utf16> pszLabel)>()(
          ptr.ref.lpVtbl, dwIDCtl, pszLabel);

  int addComboBox(int dwIDCtl) =>
      _vtable.AddComboBox.asFunction<int Function(Pointer, int dwIDCtl)>()(
          ptr.ref.lpVtbl, dwIDCtl);

  int addRadioButtonList(int dwIDCtl) => _vtable.AddRadioButtonList.asFunction<
      int Function(Pointer, int dwIDCtl)>()(ptr.ref.lpVtbl, dwIDCtl);

  int addCheckButton(int dwIDCtl, Pointer<Utf16> pszLabel, int bChecked) =>
      _vtable.AddCheckButton.asFunction<
          int Function(Pointer, int dwIDCtl, Pointer<Utf16> pszLabel,
              int bChecked)>()(ptr.ref.lpVtbl, dwIDCtl, pszLabel, bChecked);

  int addEditBox(int dwIDCtl, Pointer<Utf16> pszText) =>
      _vtable.AddEditBox.asFunction<
              int Function(Pointer, int dwIDCtl, Pointer<Utf16> pszText)>()(
          ptr.ref.lpVtbl, dwIDCtl, pszText);

  int addSeparator(int dwIDCtl) =>
      _vtable.AddSeparator.asFunction<int Function(Pointer, int dwIDCtl)>()(
          ptr.ref.lpVtbl, dwIDCtl);

  int addText(int dwIDCtl, Pointer<Utf16> pszText) =>
      _vtable.AddText.asFunction<
              int Function(Pointer, int dwIDCtl, Pointer<Utf16> pszText)>()(
          ptr.ref.lpVtbl, dwIDCtl, pszText);

  int setControlLabel(int dwIDCtl, Pointer<Utf16> pszLabel) =>
      _vtable.SetControlLabel.asFunction<
              int Function(Pointer, int dwIDCtl, Pointer<Utf16> pszLabel)>()(
          ptr.ref.lpVtbl, dwIDCtl, pszLabel);

  int getControlState(int dwIDCtl, Pointer<Int32> pdwState) =>
      _vtable.GetControlState.asFunction<
              int Function(Pointer, int dwIDCtl, Pointer<Int32> pdwState)>()(
          ptr.ref.lpVtbl, dwIDCtl, pdwState);

  int setControlState(int dwIDCtl, int dwState) => _vtable.SetControlState
          .asFunction<int Function(Pointer, int dwIDCtl, int dwState)>()(
      ptr.ref.lpVtbl, dwIDCtl, dwState);

  int getEditBoxText(int dwIDCtl, Pointer<Pointer<Uint16>> ppszText) =>
      _vtable.GetEditBoxText.asFunction<
              int Function(
                  Pointer, int dwIDCtl, Pointer<Pointer<Uint16>> ppszText)>()(
          ptr.ref.lpVtbl, dwIDCtl, ppszText);

  int setEditBoxText(int dwIDCtl, Pointer<Utf16> pszText) =>
      _vtable.SetEditBoxText.asFunction<
              int Function(Pointer, int dwIDCtl, Pointer<Utf16> pszText)>()(
          ptr.ref.lpVtbl, dwIDCtl, pszText);

  int getCheckButtonState(int dwIDCtl, Pointer<Int32> pbChecked) =>
      _vtable.GetCheckButtonState.asFunction<
              int Function(Pointer, int dwIDCtl, Pointer<Int32> pbChecked)>()(
          ptr.ref.lpVtbl, dwIDCtl, pbChecked);

  int setCheckButtonState(int dwIDCtl, int bChecked) =>
      _vtable.SetCheckButtonState.asFunction<
              int Function(Pointer, int dwIDCtl, int bChecked)>()(
          ptr.ref.lpVtbl, dwIDCtl, bChecked);

  int addControlItem(int dwIDCtl, int dwIDItem, Pointer<Utf16> pszLabel) =>
      _vtable.AddControlItem.asFunction<
              int Function(Pointer, int dwIDCtl, int dwIDItem,
                  Pointer<Utf16> pszLabel)>()(
          ptr.ref.lpVtbl, dwIDCtl, dwIDItem, pszLabel);

  int removeControlItem(int dwIDCtl, int dwIDItem) => _vtable.RemoveControlItem
          .asFunction<int Function(Pointer, int dwIDCtl, int dwIDItem)>()(
      ptr.ref.lpVtbl, dwIDCtl, dwIDItem);

  int removeAllControlItems(int dwIDCtl) =>
      _vtable.RemoveAllControlItems.asFunction<
          int Function(Pointer, int dwIDCtl)>()(ptr.ref.lpVtbl, dwIDCtl);

  int getControlItemState(int dwIDCtl, int dwIDItem, Pointer<Int32> pdwState) =>
      _vtable.GetControlItemState.asFunction<
              int Function(Pointer, int dwIDCtl, int dwIDItem,
                  Pointer<Int32> pdwState)>()(
          ptr.ref.lpVtbl, dwIDCtl, dwIDItem, pdwState);

  int setControlItemState(int dwIDCtl, int dwIDItem, int dwState) =>
      _vtable.SetControlItemState.asFunction<
              int Function(Pointer, int dwIDCtl, int dwIDItem, int dwState)>()(
          ptr.ref.lpVtbl, dwIDCtl, dwIDItem, dwState);

  int getSelectedControlItem(int dwIDCtl, Pointer<Uint32> pdwIDItem) =>
      _vtable.GetSelectedControlItem.asFunction<
              int Function(Pointer, int dwIDCtl, Pointer<Uint32> pdwIDItem)>()(
          ptr.ref.lpVtbl, dwIDCtl, pdwIDItem);

  int setSelectedControlItem(int dwIDCtl, int dwIDItem) =>
      _vtable.SetSelectedControlItem.asFunction<
              int Function(Pointer, int dwIDCtl, int dwIDItem)>()(
          ptr.ref.lpVtbl, dwIDCtl, dwIDItem);

  int startVisualGroup(int dwIDCtl, Pointer<Utf16> pszLabel) =>
      _vtable.StartVisualGroup.asFunction<
              int Function(Pointer, int dwIDCtl, Pointer<Utf16> pszLabel)>()(
          ptr.ref.lpVtbl, dwIDCtl, pszLabel);

  int endVisualGroup() =>
      _vtable.EndVisualGroup.asFunction<int Function(Pointer)>()(
          ptr.ref.lpVtbl);

  int makeProminent(int dwIDCtl) =>
      _vtable.MakeProminent.asFunction<int Function(Pointer, int dwIDCtl)>()(
          ptr.ref.lpVtbl, dwIDCtl);

  int setControlItemText(int dwIDCtl, int dwIDItem, Pointer<Utf16> pszLabel) =>
      _vtable.SetControlItemText.asFunction<
              int Function(Pointer, int dwIDCtl, int dwIDItem,
                  Pointer<Utf16> pszLabel)>()(
          ptr.ref.lpVtbl, dwIDCtl, dwIDItem, pszLabel);
}

/// @nodoc
base class IFileDialogCustomizeVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<NativeFunction<Int32 Function(Pointer, Uint32 dwIDCtl)>>
      EnableOpenDropDown;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Uint32 dwIDCtl, Pointer<Utf16> pszLabel)>>
      AddMenu;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Uint32 dwIDCtl, Pointer<Utf16> pszLabel)>>
      AddPushButton;
  external Pointer<NativeFunction<Int32 Function(Pointer, Uint32 dwIDCtl)>>
      AddComboBox;
  external Pointer<NativeFunction<Int32 Function(Pointer, Uint32 dwIDCtl)>>
      AddRadioButtonList;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Uint32 dwIDCtl, Pointer<Utf16> pszLabel,
              Int32 bChecked)>> AddCheckButton;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Uint32 dwIDCtl, Pointer<Utf16> pszText)>>
      AddEditBox;
  external Pointer<NativeFunction<Int32 Function(Pointer, Uint32 dwIDCtl)>>
      AddSeparator;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Uint32 dwIDCtl, Pointer<Utf16> pszText)>>
      AddText;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Uint32 dwIDCtl, Pointer<Utf16> pszLabel)>>
      SetControlLabel;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Uint32 dwIDCtl, Pointer<Int32> pdwState)>>
      GetControlState;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Uint32 dwIDCtl, Int32 dwState)>>
      SetControlState;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer, Uint32 dwIDCtl, Pointer<Pointer<Uint16>> ppszText)>>
      GetEditBoxText;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Uint32 dwIDCtl, Pointer<Utf16> pszText)>>
      SetEditBoxText;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer, Uint32 dwIDCtl, Pointer<Int32> pbChecked)>>
      GetCheckButtonState;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Uint32 dwIDCtl, Int32 bChecked)>>
      SetCheckButtonState;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Uint32 dwIDCtl, Uint32 dwIDItem,
              Pointer<Utf16> pszLabel)>> AddControlItem;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Uint32 dwIDCtl, Uint32 dwIDItem)>>
      RemoveControlItem;
  external Pointer<NativeFunction<Int32 Function(Pointer, Uint32 dwIDCtl)>>
      RemoveAllControlItems;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Uint32 dwIDCtl, Uint32 dwIDItem,
              Pointer<Int32> pdwState)>> GetControlItemState;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer, Uint32 dwIDCtl, Uint32 dwIDItem, Int32 dwState)>>
      SetControlItemState;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer, Uint32 dwIDCtl, Pointer<Uint32> pdwIDItem)>>
      GetSelectedControlItem;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Uint32 dwIDCtl, Uint32 dwIDItem)>>
      SetSelectedControlItem;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Uint32 dwIDCtl, Pointer<Utf16> pszLabel)>>
      StartVisualGroup;
  external Pointer<NativeFunction<Int32 Function(Pointer)>> EndVisualGroup;
  external Pointer<NativeFunction<Int32 Function(Pointer, Uint32 dwIDCtl)>>
      MakeProminent;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Uint32 dwIDCtl, Uint32 dwIDItem,
              Pointer<Utf16> pszLabel)>> SetControlItemText;
}
