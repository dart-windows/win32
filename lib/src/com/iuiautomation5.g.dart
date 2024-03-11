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
import 'iuiautomation4.g.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IUIAutomation5 = '{25f700c8-d816-4057-a9dc-3cbdee77e256}';

/// Extends the IUIAutomation4 interface to expose additional methods for
/// controlling Microsoft UI Automation functionality.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomation5>.
///
/// {@category com}
class IUIAutomation5 extends IUIAutomation4 {
  IUIAutomation5(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomation5Vtbl>().ref;

  final IUIAutomation5Vtbl _vtable;

  /// Creates a new instance of `IUIAutomation5` from an existing [interface].
  ///
  /// This constructor invokes the [queryInterface] method to obtain a reference
  /// to the `IUIAutomation5` interface with the provided interface.
  ///
  /// Throws a [WindowsException] if the `queryInterface` call fails.
  factory IUIAutomation5.from(IUnknown interface) =>
      IUIAutomation5(interface.toInterface(IID_IUIAutomation5));

  /// Registers a method that handles notification events.
  ///
  /// **Note:** Before implementing an event handler, you should be familiar with
  /// the threading issues described in Understanding Threading Issues.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation5-addnotificationeventhandler>.
  int addNotificationEventHandler(VTablePointer element, int scope,
          VTablePointer cacheRequest, VTablePointer handler) =>
      _vtable.AddNotificationEventHandler.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  VTablePointer element,
                  int scope,
                  VTablePointer cacheRequest,
                  VTablePointer handler)>()(
          ptr, element, scope, cacheRequest, handler);

  /// Removes a notification event handler.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation5-removenotificationeventhandler>.
  int removeNotificationEventHandler(
          VTablePointer element, VTablePointer handler) =>
      _vtable.RemoveNotificationEventHandler.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer element,
              VTablePointer handler)>()(ptr, element, handler);
}

/// @nodoc
base class IUIAutomation5Vtbl extends Struct {
  external IUIAutomation4Vtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer element,
              Int32 scope,
              VTablePointer cacheRequest,
              VTablePointer handler)>> AddNotificationEventHandler;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer element,
              VTablePointer handler)>> RemoveNotificationEventHandler;
}
