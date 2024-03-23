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
const IID_IUIAutomationDockPattern = '{fde5ef97-1464-48f6-90bf-43d0948e86ec}';

/// Provides access to a control that enables child elements to be arranged
/// horizontally and vertically, relative to each other.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationdockpattern>.
///
/// {@category com}
class IUIAutomationDockPattern extends IUnknown {
  IUIAutomationDockPattern(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationDockPatternVtbl>().ref;

  final IUIAutomationDockPatternVtbl _vtable;

  /// Creates a new instance of `IUIAutomationDockPattern` from an existing
  /// [interface].
  ///
  /// This constructor invokes the [queryInterface] method to obtain a reference
  /// to the `IUIAutomationDockPattern` interface with the provided interface.
  ///
  /// Throws a [WindowsException] if the `queryInterface` call fails.
  factory IUIAutomationDockPattern.from(IUnknown interface) =>
      IUIAutomationDockPattern(
          interface.toInterface(IID_IUIAutomationDockPattern));

  /// Sets the dock position of this element.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationdockpattern-setdockposition>.
  int setDockPosition(int dockPos) => _vtable.SetDockPosition.asFunction<
      int Function(VTablePointer lpVtbl, int dockPos)>()(ptr, dockPos);

  /// Retrieves the dock position of this element within its docking container.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationdockpattern-get_currentdockposition>.
  int get currentDockPosition {
    final retVal = calloc<Int32>();
    try {
      final hr = _vtable.get_CurrentDockPosition.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Retrieves the cached dock position of this element within its docking
  /// container.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationdockpattern-get_cacheddockposition>.
  int get cachedDockPosition {
    final retVal = calloc<Int32>();
    try {
      final hr = _vtable.get_CachedDockPosition.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }
}

/// @nodoc
base class IUIAutomationDockPatternVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Int32 dockPos)>>
      SetDockPosition;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> retVal)>>
      get_CurrentDockPosition;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> retVal)>>
      get_CachedDockPosition;
}