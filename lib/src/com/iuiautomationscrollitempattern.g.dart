// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../exceptions.dart';
import '../extensions/iunknown.dart';
import '../structs.g.dart';
import '../types.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IUIAutomationScrollItemPattern =
    '{b488300f-d015-4f19-9c29-bb595e3645ef}';

/// Exposes a method that enables an item in a scrollable view to be placed in a
/// visible portion of the view.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationscrollitempattern>.
///
/// {@category com}
class IUIAutomationScrollItemPattern extends IUnknown {
  IUIAutomationScrollItemPattern(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationScrollItemPatternVtbl>().ref;

  final IUIAutomationScrollItemPatternVtbl _vtable;

  /// Creates a new instance of `IUIAutomationScrollItemPattern` from an
  /// existing [interface].
  ///
  /// This constructor invokes the [queryInterface] method to obtain a reference
  /// to the `IUIAutomationScrollItemPattern` interface with the provided
  /// interface.
  ///
  /// Throws a [WindowsException] if the `queryInterface` call fails.
  factory IUIAutomationScrollItemPattern.from(IUnknown interface) =>
      IUIAutomationScrollItemPattern(
          interface.toInterface(IID_IUIAutomationScrollItemPattern));

  /// Scrolls the content area of a container object to display the UI Automation
  /// element within the visible region (viewport) of the container.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationscrollitempattern-scrollintoview>.
  int scrollIntoView() =>
      _vtable.ScrollIntoView.asFunction<int Function(VTablePointer lpVtbl)>()(
          ptr);
}

/// @nodoc
base class IUIAutomationScrollItemPatternVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      ScrollIntoView;
}
