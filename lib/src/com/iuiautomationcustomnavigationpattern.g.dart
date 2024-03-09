// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../extensions/iunknown.dart';
import '../structs.g.dart';
import '../types.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IUIAutomationCustomNavigationPattern =
    '{01ea217a-1766-47ed-a6cc-acf492854b1f}';

/// Exposes a method to support access by a Microsoft UI Automation client to
/// controls that support a custom navigation order.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationcustomnavigationpattern>.
///
/// {@category com}
class IUIAutomationCustomNavigationPattern extends IUnknown {
  IUIAutomationCustomNavigationPattern(super.ptr)
      : _vtable =
            ptr.value.cast<IUIAutomationCustomNavigationPatternVtbl>().ref;

  final IUIAutomationCustomNavigationPatternVtbl _vtable;

  factory IUIAutomationCustomNavigationPattern.from(IUnknown interface) =>
      IUIAutomationCustomNavigationPattern(
          interface.toInterface(IID_IUIAutomationCustomNavigationPattern));

  int navigate(int direction, Pointer<VTablePointer> pRetVal) =>
      _vtable.Navigate.asFunction<
          int Function(VTablePointer lpVtbl, int direction,
              Pointer<VTablePointer> pRetVal)>()(ptr, direction, pRetVal);
}

/// @nodoc
base class IUIAutomationCustomNavigationPatternVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 direction,
              Pointer<VTablePointer> pRetVal)>> Navigate;
}