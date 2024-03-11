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
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationlegacyiaccessiblepattern>.
///
/// {@category com}
class IUIAutomationLegacyIAccessiblePattern extends IUnknown {
  IUIAutomationLegacyIAccessiblePattern(super.ptr)
      : _vtable =
            ptr.value.cast<IUIAutomationLegacyIAccessiblePatternVtbl>().ref;

  final IUIAutomationLegacyIAccessiblePatternVtbl _vtable;

  /// Creates a new instance of `IUIAutomationLegacyIAccessiblePattern` from an
  /// existing [interface].
  ///
  /// This constructor invokes the [queryInterface] method to obtain a reference
  /// to the `IUIAutomationLegacyIAccessiblePattern` interface with the provided
  /// interface.
  ///
  /// Throws a [WindowsException] if the `queryInterface` call fails.
  factory IUIAutomationLegacyIAccessiblePattern.from(IUnknown interface) =>
      IUIAutomationLegacyIAccessiblePattern(
          interface.toInterface(IID_IUIAutomationLegacyIAccessiblePattern));

  /// Performs a Microsoft Active Accessibility selection.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationlegacyiaccessiblepattern-select>.
  int select(int flagsSelect) => _vtable.Select.asFunction<
      int Function(VTablePointer lpVtbl, int flagsSelect)>()(ptr, flagsSelect);

  /// Performs the Microsoft Active Accessibility default action for the element.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationlegacyiaccessiblepattern-dodefaultaction>.
  int doDefaultAction() =>
      _vtable.DoDefaultAction.asFunction<int Function(VTablePointer lpVtbl)>()(
          ptr);

  /// Sets the Microsoft Active Accessibility value property for the element.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationlegacyiaccessiblepattern-setvalue>.
  int setValue(Pointer<Utf16> szValue) => _vtable.SetValue.asFunction<
      int Function(
          VTablePointer lpVtbl, Pointer<Utf16> szValue)>()(ptr, szValue);

  /// Retrieves the Microsoft Active Accessibility child identifier for the
  /// element.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationlegacyiaccessiblepattern-get_currentchildid>.
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

  /// Retrieves the Microsoft Active Accessibility name property of the element.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationlegacyiaccessiblepattern-get_currentname>.
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

  /// Retrieves the Microsoft Active Accessibility value property.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationlegacyiaccessiblepattern-get_currentvalue>.
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

  /// Retrieves the Microsoft Active Accessibility description of the element.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationlegacyiaccessiblepattern-get_currentdescription>.
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

  /// Retrieves the Microsoft Active Accessibility role identifier of the element.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationlegacyiaccessiblepattern-get_currentrole>.
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

  /// Retrieves the Microsoft Active Accessibility state identifier for the
  /// element.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationlegacyiaccessiblepattern-get_currentstate>.
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

  /// Retrieves the Microsoft Active Accessibility help string for the element.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationlegacyiaccessiblepattern-get_currenthelp>.
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

  /// Retrieves the Microsoft Active Accessibility keyboard shortcut property for
  /// the element.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationlegacyiaccessiblepattern-get_currentkeyboardshortcut>.
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

  /// Retrieves the Microsoft Active Accessibility property that identifies the
  /// selected children of this element.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationlegacyiaccessiblepattern-getcurrentselection>.
  int getCurrentSelection(Pointer<VTablePointer> pvarSelectedChildren) =>
      _vtable.GetCurrentSelection.asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<VTablePointer> pvarSelectedChildren)>()(
          ptr, pvarSelectedChildren);

  /// Retrieves the Microsoft Active Accessibility current default action for the
  /// element.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationlegacyiaccessiblepattern-get_currentdefaultaction>.
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

  /// Retrieves the cached Microsoft Active Accessibility child identifier for the
  /// element.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationlegacyiaccessiblepattern-get_cachedchildid>.
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

  /// Retrieves the cached Microsoft Active Accessibility name property of the
  /// element.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationlegacyiaccessiblepattern-get_cachedname>.
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

  /// Retrieves the cached Microsoft Active Accessibility value property.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationlegacyiaccessiblepattern-get_cachedvalue>.
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

  /// Retrieves the cached Microsoft Active Accessibility description of the
  /// element.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationlegacyiaccessiblepattern-get_cacheddescription>.
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

  /// Retrieves the cached Microsoft Active Accessibility role of the element.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationlegacyiaccessiblepattern-get_cachedrole>.
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

  /// Retrieves the cached Microsoft Active Accessibility state identifier for the
  /// element.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationlegacyiaccessiblepattern-get_cachedstate>.
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

  /// Retrieves the cached Microsoft Active Accessibility help string for the
  /// element.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationlegacyiaccessiblepattern-get_cachedhelp>.
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

  /// Retrieves the cached Microsoft Active Accessibility keyboard shortcut
  /// property for the element.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationlegacyiaccessiblepattern-get_cachedkeyboardshortcut>.
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

  /// Retrieves the cached Microsoft Active Accessibility property that identifies
  /// the selected children of this element.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationlegacyiaccessiblepattern-getcachedselection>.
  int getCachedSelection(Pointer<VTablePointer> pvarSelectedChildren) =>
      _vtable.GetCachedSelection.asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<VTablePointer> pvarSelectedChildren)>()(
          ptr, pvarSelectedChildren);

  /// Retrieves the Microsoft Active Accessibility cached default action for the
  /// element.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationlegacyiaccessiblepattern-get_cacheddefaultaction>.
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

  /// Retrieves an IAccessible object that corresponds to the Microsoft UI
  /// Automation element.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationlegacyiaccessiblepattern-getiaccessible>.
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
