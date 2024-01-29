// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../extensions/iunknown.dart';
import '../types.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IUIAutomationLegacyIAccessiblePattern =
    '{828055ad-355b-4435-86d5-3b51c14a9b1b}';

/// Exposes methods and properties that enable Microsoft UI Automation clients
/// to retrieve UI information from Microsoft Active Accessibility (MSAA)
/// servers.
///
/// {@category com}
class IUIAutomationLegacyIAccessiblePattern extends IUnknown {
  IUIAutomationLegacyIAccessiblePattern(super.ptr)
      : _vtable =
            ptr.value.cast<IUIAutomationLegacyIAccessiblePatternVtbl>().ref;

  final IUIAutomationLegacyIAccessiblePatternVtbl _vtable;

  factory IUIAutomationLegacyIAccessiblePattern.from(IUnknown interface) =>
      IUIAutomationLegacyIAccessiblePattern(
          interface.toInterface(IID_IUIAutomationLegacyIAccessiblePattern));

  int select(int flagsSelect) =>
      _vtable.Select.asFunction<int Function(VTablePointer, int flagsSelect)>()(
          ptr, flagsSelect);

  int doDefaultAction() =>
      _vtable.DoDefaultAction.asFunction<int Function(VTablePointer)>()(ptr);

  int setValue(Pointer<Utf16> szValue) => _vtable.SetValue.asFunction<
      int Function(VTablePointer, Pointer<Utf16> szValue)>()(ptr, szValue);

  int get_CurrentChildId(Pointer<Int32> pRetVal) => _vtable.get_CurrentChildId
          .asFunction<int Function(VTablePointer, Pointer<Int32> pRetVal)>()(
      ptr, pRetVal);

  int get_CurrentName(Pointer<Pointer<Utf16>> pszName) =>
      _vtable.get_CurrentName.asFunction<
          int Function(
              VTablePointer, Pointer<Pointer<Utf16>> pszName)>()(ptr, pszName);

  int get_CurrentValue(Pointer<Pointer<Utf16>> pszValue) =>
      _vtable.get_CurrentValue.asFunction<
              int Function(VTablePointer, Pointer<Pointer<Utf16>> pszValue)>()(
          ptr, pszValue);

  int get_CurrentDescription(Pointer<Pointer<Utf16>> pszDescription) =>
      _vtable.get_CurrentDescription.asFunction<
          int Function(VTablePointer,
              Pointer<Pointer<Utf16>> pszDescription)>()(ptr, pszDescription);

  int get_CurrentRole(Pointer<Uint32> pdwRole) => _vtable.get_CurrentRole
          .asFunction<int Function(VTablePointer, Pointer<Uint32> pdwRole)>()(
      ptr, pdwRole);

  int get_CurrentState(Pointer<Uint32> pdwState) => _vtable.get_CurrentState
          .asFunction<int Function(VTablePointer, Pointer<Uint32> pdwState)>()(
      ptr, pdwState);

  int get_CurrentHelp(Pointer<Pointer<Utf16>> pszHelp) =>
      _vtable.get_CurrentHelp.asFunction<
          int Function(
              VTablePointer, Pointer<Pointer<Utf16>> pszHelp)>()(ptr, pszHelp);

  int get_CurrentKeyboardShortcut(
          Pointer<Pointer<Utf16>> pszKeyboardShortcut) =>
      _vtable.get_CurrentKeyboardShortcut.asFunction<
              int Function(VTablePointer,
                  Pointer<Pointer<Utf16>> pszKeyboardShortcut)>()(
          ptr, pszKeyboardShortcut);

  int getCurrentSelection(Pointer<VTablePointer> pvarSelectedChildren) =>
      _vtable.GetCurrentSelection.asFunction<
              int Function(VTablePointer,
                  Pointer<VTablePointer> pvarSelectedChildren)>()(
          ptr, pvarSelectedChildren);

  int get_CurrentDefaultAction(Pointer<Pointer<Utf16>> pszDefaultAction) =>
      _vtable.get_CurrentDefaultAction.asFunction<
              int Function(
                  VTablePointer, Pointer<Pointer<Utf16>> pszDefaultAction)>()(
          ptr, pszDefaultAction);

  int get_CachedChildId(Pointer<Int32> pRetVal) => _vtable.get_CachedChildId
          .asFunction<int Function(VTablePointer, Pointer<Int32> pRetVal)>()(
      ptr, pRetVal);

  int get_CachedName(Pointer<Pointer<Utf16>> pszName) =>
      _vtable.get_CachedName.asFunction<
          int Function(
              VTablePointer, Pointer<Pointer<Utf16>> pszName)>()(ptr, pszName);

  int get_CachedValue(Pointer<Pointer<Utf16>> pszValue) =>
      _vtable.get_CachedValue.asFunction<
              int Function(VTablePointer, Pointer<Pointer<Utf16>> pszValue)>()(
          ptr, pszValue);

  int get_CachedDescription(Pointer<Pointer<Utf16>> pszDescription) =>
      _vtable.get_CachedDescription.asFunction<
          int Function(VTablePointer,
              Pointer<Pointer<Utf16>> pszDescription)>()(ptr, pszDescription);

  int get_CachedRole(Pointer<Uint32> pdwRole) => _vtable.get_CachedRole
          .asFunction<int Function(VTablePointer, Pointer<Uint32> pdwRole)>()(
      ptr, pdwRole);

  int get_CachedState(Pointer<Uint32> pdwState) => _vtable.get_CachedState
          .asFunction<int Function(VTablePointer, Pointer<Uint32> pdwState)>()(
      ptr, pdwState);

  int get_CachedHelp(Pointer<Pointer<Utf16>> pszHelp) =>
      _vtable.get_CachedHelp.asFunction<
          int Function(
              VTablePointer, Pointer<Pointer<Utf16>> pszHelp)>()(ptr, pszHelp);

  int get_CachedKeyboardShortcut(Pointer<Pointer<Utf16>> pszKeyboardShortcut) =>
      _vtable.get_CachedKeyboardShortcut.asFunction<
              int Function(VTablePointer,
                  Pointer<Pointer<Utf16>> pszKeyboardShortcut)>()(
          ptr, pszKeyboardShortcut);

  int getCachedSelection(Pointer<VTablePointer> pvarSelectedChildren) =>
      _vtable.GetCachedSelection.asFunction<
              int Function(VTablePointer,
                  Pointer<VTablePointer> pvarSelectedChildren)>()(
          ptr, pvarSelectedChildren);

  int get_CachedDefaultAction(Pointer<Pointer<Utf16>> pszDefaultAction) =>
      _vtable.get_CachedDefaultAction.asFunction<
              int Function(
                  VTablePointer, Pointer<Pointer<Utf16>> pszDefaultAction)>()(
          ptr, pszDefaultAction);

  int getIAccessible(Pointer<VTablePointer> ppAccessible) =>
      _vtable.GetIAccessible.asFunction<
          int Function(VTablePointer,
              Pointer<VTablePointer> ppAccessible)>()(ptr, ppAccessible);
}

/// @nodoc
base class IUIAutomationLegacyIAccessiblePatternVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<Int32 Function(VTablePointer, Int32 flagsSelect)>> Select;
  external Pointer<NativeFunction<Int32 Function(VTablePointer)>>
      DoDefaultAction;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Utf16> szValue)>>
      SetValue;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> pRetVal)>>
      get_CurrentChildId;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Pointer<Utf16>> pszName)>>
      get_CurrentName;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Pointer<Utf16>> pszValue)>>
      get_CurrentValue;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Pointer<Utf16>> pszDescription)>>
      get_CurrentDescription;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Uint32> pdwRole)>>
      get_CurrentRole;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Uint32> pdwState)>>
      get_CurrentState;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Pointer<Utf16>> pszHelp)>>
      get_CurrentHelp;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Pointer<Utf16>> pszKeyboardShortcut)>>
      get_CurrentKeyboardShortcut;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<VTablePointer> pvarSelectedChildren)>>
      GetCurrentSelection;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Pointer<Utf16>> pszDefaultAction)>>
      get_CurrentDefaultAction;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> pRetVal)>>
      get_CachedChildId;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Pointer<Utf16>> pszName)>>
      get_CachedName;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Pointer<Utf16>> pszValue)>>
      get_CachedValue;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Pointer<Utf16>> pszDescription)>>
      get_CachedDescription;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Uint32> pdwRole)>>
      get_CachedRole;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Uint32> pdwState)>>
      get_CachedState;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Pointer<Utf16>> pszHelp)>>
      get_CachedHelp;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Pointer<Utf16>> pszKeyboardShortcut)>>
      get_CachedKeyboardShortcut;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<VTablePointer> pvarSelectedChildren)>>
      GetCachedSelection;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Pointer<Utf16>> pszDefaultAction)>>
      get_CachedDefaultAction;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<VTablePointer> ppAccessible)>>
      GetIAccessible;
}
