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
import 'iuiautomation2.g.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IUIAutomation3 = '{73d768da-9b51-4b89-936e-c209290973e7}';

/// Extends the IUIAutomation2 interface to expose additional methods for
/// controlling Microsoft UI Automation functionality.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomation3>.
///
/// {@category com}
class IUIAutomation3 extends IUIAutomation2 {
  IUIAutomation3(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomation3Vtbl>().ref;

  final IUIAutomation3Vtbl _vtable;

  /// Creates a new instance of `IUIAutomation3` from an existing [interface].
  ///
  /// This constructor invokes the [queryInterface] method to obtain a reference
  /// to the `IUIAutomation3` interface with the provided interface.
  ///
  /// Throws a [WindowsException] if the `queryInterface` call fails.
  factory IUIAutomation3.from(IUnknown interface) =>
      IUIAutomation3(interface.toInterface(IID_IUIAutomation3));

  /// Registers a method that handles programmatic text-edit events.
  ///
  /// **Note:** Before implementing an event handler, you should be familiar with
  /// the threading issues described in Understanding Threading Issues.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation3-addtextedittextchangedeventhandler>.
  int addTextEditTextChangedEventHandler(
          VTablePointer element,
          int scope,
          int textEditChangeType,
          VTablePointer cacheRequest,
          VTablePointer handler) =>
      _vtable.AddTextEditTextChangedEventHandler.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  VTablePointer element,
                  int scope,
                  int textEditChangeType,
                  VTablePointer cacheRequest,
                  VTablePointer handler)>()(
          ptr, element, scope, textEditChangeType, cacheRequest, handler);

  /// Removes a programmatic text-edit event handler.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation3-removetextedittextchangedeventhandler>.
  int removeTextEditTextChangedEventHandler(
          VTablePointer element, VTablePointer handler) =>
      _vtable.RemoveTextEditTextChangedEventHandler.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer element,
              VTablePointer handler)>()(ptr, element, handler);
}

/// @nodoc
base class IUIAutomation3Vtbl extends Struct {
  external IUIAutomation2Vtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer element,
              Int32 scope,
              Int32 textEditChangeType,
              VTablePointer cacheRequest,
              VTablePointer handler)>> AddTextEditTextChangedEventHandler;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer element,
              VTablePointer handler)>> RemoveTextEditTextChangedEventHandler;
}