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
const IID_IUIAutomationDropTargetPattern =
    '{69a095f7-eee4-430e-a46b-fb73b1ae39a5}';

/// Provides access to drag-and-drop information exposed by a Microsoft UI
/// Automation provider for an element that can be the drop target of a
/// drag-and-drop operation.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationdroptargetpattern>.
///
/// {@category com}
class IUIAutomationDropTargetPattern extends IUnknown {
  IUIAutomationDropTargetPattern(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationDropTargetPatternVtbl>().ref;

  final IUIAutomationDropTargetPatternVtbl _vtable;

  factory IUIAutomationDropTargetPattern.from(IUnknown interface) =>
      IUIAutomationDropTargetPattern(
          interface.toInterface(IID_IUIAutomationDropTargetPattern));

  /// Retrieves a localized string that describes what happens when the user drops
  /// the grabbed element on this drop target.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationdroptargetpattern-get_currentdroptargeteffect>.
  Pointer<Utf16> get currentDropTargetEffect {
    final retVal = calloc<Pointer<Utf16>>();
    try {
      final hr = _vtable.get_CurrentDropTargetEffect.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<Utf16>> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Retrieves a cached localized string that describes what happens when the
  /// user drops the grabbed element on this drop target.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationdroptargetpattern-get_cacheddroptargeteffect>.
  Pointer<Utf16> get cachedDropTargetEffect {
    final retVal = calloc<Pointer<Utf16>>();
    try {
      final hr = _vtable.get_CachedDropTargetEffect.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<Utf16>> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Retrieves an array of localized strings that enumerate the full set of
  /// effects that can happen when the user drops a grabbed element on this drop
  /// target as part of a drag-and-drop operation.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationdroptargetpattern-get_currentdroptargeteffects>.
  Pointer<SAFEARRAY> get currentDropTargetEffects {
    final retVal = calloc<Pointer<SAFEARRAY>>();
    try {
      final hr = _vtable.get_CurrentDropTargetEffects.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<SAFEARRAY>> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Retrieves a cached array of localized strings that enumerate the full set of
  /// effects that can happen when the user drops a grabbed element on this drop
  /// target as part of a drag-and-drop operation.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationdroptargetpattern-get_cacheddroptargeteffects>.
  Pointer<SAFEARRAY> get cachedDropTargetEffects {
    final retVal = calloc<Pointer<SAFEARRAY>>();
    try {
      final hr = _vtable.get_CachedDropTargetEffects.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<SAFEARRAY>> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }
}

/// @nodoc
base class IUIAutomationDropTargetPatternVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Pointer<Utf16>> retVal)>>
      get_CurrentDropTargetEffect;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Pointer<Utf16>> retVal)>>
      get_CachedDropTargetEffect;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Pointer<SAFEARRAY>> retVal)>>
      get_CurrentDropTargetEffects;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Pointer<SAFEARRAY>> retVal)>>
      get_CachedDropTargetEffects;
}
