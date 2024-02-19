// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../exceptions.dart';
import '../extensions/iunknown.dart';
import '../macros.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
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

  int select(int flagsSelect) => _vtable.Select.asFunction<
      int Function(VTablePointer lpVtbl, int flagsSelect)>()(ptr, flagsSelect);

  int doDefaultAction() =>
      _vtable.DoDefaultAction.asFunction<int Function(VTablePointer lpVtbl)>()(
          ptr);

  int setValue(Pointer<Utf16> szValue) => _vtable.SetValue.asFunction<
      int Function(
          VTablePointer lpVtbl, Pointer<Utf16> szValue)>()(ptr, szValue);

  int get currentChildId {
    final pRetVal = calloc<Int32>();
    try {
      final hr = _vtable.get_CurrentChildId.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> pRetVal)>()(ptr, pRetVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = pRetVal.value;
      return retValue;
    } finally {
      free(pRetVal);
    }
  }

  Pointer<Utf16> get currentName {
    final pszName = calloc<Pointer<Utf16>>();
    try {
      final hr = _vtable.get_CurrentName.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<Utf16>> pszName)>()(ptr, pszName);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = pszName.value;
      return retValue;
    } finally {
      free(pszName);
    }
  }

  Pointer<Utf16> get currentValue {
    final pszValue = calloc<Pointer<Utf16>>();
    try {
      final hr = _vtable.get_CurrentValue.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<Utf16>> pszValue)>()(ptr, pszValue);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = pszValue.value;
      return retValue;
    } finally {
      free(pszValue);
    }
  }

  Pointer<Utf16> get currentDescription {
    final pszDescription = calloc<Pointer<Utf16>>();
    try {
      final hr = _vtable.get_CurrentDescription.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<Utf16>> pszDescription)>()(ptr, pszDescription);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = pszDescription.value;
      return retValue;
    } finally {
      free(pszDescription);
    }
  }

  int get currentRole {
    final pdwRole = calloc<Uint32>();
    try {
      final hr = _vtable.get_CurrentRole.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint32> pdwRole)>()(ptr, pdwRole);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = pdwRole.value;
      return retValue;
    } finally {
      free(pdwRole);
    }
  }

  int get currentState {
    final pdwState = calloc<Uint32>();
    try {
      final hr = _vtable.get_CurrentState.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint32> pdwState)>()(ptr, pdwState);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = pdwState.value;
      return retValue;
    } finally {
      free(pdwState);
    }
  }

  Pointer<Utf16> get currentHelp {
    final pszHelp = calloc<Pointer<Utf16>>();
    try {
      final hr = _vtable.get_CurrentHelp.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<Utf16>> pszHelp)>()(ptr, pszHelp);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = pszHelp.value;
      return retValue;
    } finally {
      free(pszHelp);
    }
  }

  Pointer<Utf16> get currentKeyboardShortcut {
    final pszKeyboardShortcut = calloc<Pointer<Utf16>>();
    try {
      final hr = _vtable.get_CurrentKeyboardShortcut.asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<Pointer<Utf16>> pszKeyboardShortcut)>()(
          ptr, pszKeyboardShortcut);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = pszKeyboardShortcut.value;
      return retValue;
    } finally {
      free(pszKeyboardShortcut);
    }
  }

  int getCurrentSelection(Pointer<VTablePointer> pvarSelectedChildren) =>
      _vtable.GetCurrentSelection.asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<VTablePointer> pvarSelectedChildren)>()(
          ptr, pvarSelectedChildren);

  Pointer<Utf16> get currentDefaultAction {
    final pszDefaultAction = calloc<Pointer<Utf16>>();
    try {
      final hr = _vtable.get_CurrentDefaultAction.asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<Pointer<Utf16>> pszDefaultAction)>()(
          ptr, pszDefaultAction);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = pszDefaultAction.value;
      return retValue;
    } finally {
      free(pszDefaultAction);
    }
  }

  int get cachedChildId {
    final pRetVal = calloc<Int32>();
    try {
      final hr = _vtable.get_CachedChildId.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> pRetVal)>()(ptr, pRetVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = pRetVal.value;
      return retValue;
    } finally {
      free(pRetVal);
    }
  }

  Pointer<Utf16> get cachedName {
    final pszName = calloc<Pointer<Utf16>>();
    try {
      final hr = _vtable.get_CachedName.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<Utf16>> pszName)>()(ptr, pszName);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = pszName.value;
      return retValue;
    } finally {
      free(pszName);
    }
  }

  Pointer<Utf16> get cachedValue {
    final pszValue = calloc<Pointer<Utf16>>();
    try {
      final hr = _vtable.get_CachedValue.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<Utf16>> pszValue)>()(ptr, pszValue);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = pszValue.value;
      return retValue;
    } finally {
      free(pszValue);
    }
  }

  Pointer<Utf16> get cachedDescription {
    final pszDescription = calloc<Pointer<Utf16>>();
    try {
      final hr = _vtable.get_CachedDescription.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<Utf16>> pszDescription)>()(ptr, pszDescription);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = pszDescription.value;
      return retValue;
    } finally {
      free(pszDescription);
    }
  }

  int get cachedRole {
    final pdwRole = calloc<Uint32>();
    try {
      final hr = _vtable.get_CachedRole.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint32> pdwRole)>()(ptr, pdwRole);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = pdwRole.value;
      return retValue;
    } finally {
      free(pdwRole);
    }
  }

  int get cachedState {
    final pdwState = calloc<Uint32>();
    try {
      final hr = _vtable.get_CachedState.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint32> pdwState)>()(ptr, pdwState);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = pdwState.value;
      return retValue;
    } finally {
      free(pdwState);
    }
  }

  Pointer<Utf16> get cachedHelp {
    final pszHelp = calloc<Pointer<Utf16>>();
    try {
      final hr = _vtable.get_CachedHelp.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<Utf16>> pszHelp)>()(ptr, pszHelp);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = pszHelp.value;
      return retValue;
    } finally {
      free(pszHelp);
    }
  }

  Pointer<Utf16> get cachedKeyboardShortcut {
    final pszKeyboardShortcut = calloc<Pointer<Utf16>>();
    try {
      final hr = _vtable.get_CachedKeyboardShortcut.asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<Pointer<Utf16>> pszKeyboardShortcut)>()(
          ptr, pszKeyboardShortcut);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = pszKeyboardShortcut.value;
      return retValue;
    } finally {
      free(pszKeyboardShortcut);
    }
  }

  int getCachedSelection(Pointer<VTablePointer> pvarSelectedChildren) =>
      _vtable.GetCachedSelection.asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<VTablePointer> pvarSelectedChildren)>()(
          ptr, pvarSelectedChildren);

  Pointer<Utf16> get cachedDefaultAction {
    final pszDefaultAction = calloc<Pointer<Utf16>>();
    try {
      final hr = _vtable.get_CachedDefaultAction.asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<Pointer<Utf16>> pszDefaultAction)>()(
          ptr, pszDefaultAction);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = pszDefaultAction.value;
      return retValue;
    } finally {
      free(pszDefaultAction);
    }
  }

  int getIAccessible(Pointer<VTablePointer> ppAccessible) =>
      _vtable.GetIAccessible.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> ppAccessible)>()(ptr, ppAccessible);
}

/// @nodoc
base class IUIAutomationLegacyIAccessiblePatternVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 flagsSelect)>> Select;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      DoDefaultAction;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Utf16> szValue)>>
      SetValue;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> pRetVal)>>
      get_CurrentChildId;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Pointer<Utf16>> pszName)>>
      get_CurrentName;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Pointer<Utf16>> pszValue)>>
      get_CurrentValue;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl,
              Pointer<Pointer<Utf16>> pszDescription)>> get_CurrentDescription;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> pdwRole)>>
      get_CurrentRole;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> pdwState)>>
      get_CurrentState;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Pointer<Utf16>> pszHelp)>>
      get_CurrentHelp;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl,
                  Pointer<Pointer<Utf16>> pszKeyboardShortcut)>>
      get_CurrentKeyboardShortcut;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl,
                  Pointer<VTablePointer> pvarSelectedChildren)>>
      GetCurrentSelection;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl,
                  Pointer<Pointer<Utf16>> pszDefaultAction)>>
      get_CurrentDefaultAction;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> pRetVal)>>
      get_CachedChildId;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Pointer<Utf16>> pszName)>>
      get_CachedName;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Pointer<Utf16>> pszValue)>>
      get_CachedValue;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl,
              Pointer<Pointer<Utf16>> pszDescription)>> get_CachedDescription;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> pdwRole)>>
      get_CachedRole;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> pdwState)>>
      get_CachedState;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Pointer<Utf16>> pszHelp)>>
      get_CachedHelp;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl,
                  Pointer<Pointer<Utf16>> pszKeyboardShortcut)>>
      get_CachedKeyboardShortcut;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> pvarSelectedChildren)>> GetCachedSelection;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl,
                  Pointer<Pointer<Utf16>> pszDefaultAction)>>
      get_CachedDefaultAction;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> ppAccessible)>>
      GetIAccessible;
}
