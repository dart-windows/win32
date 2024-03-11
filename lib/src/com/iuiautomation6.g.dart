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
import 'iuiautomation5.g.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IUIAutomation6 = '{aae072da-29e3-413d-87a7-192dbf81ed10}';

/// Extends the IUIAutomation5 interface to expose additional methods for
/// controlling Microsoft UI Automation functionality.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomation6>.
///
/// {@category com}
class IUIAutomation6 extends IUIAutomation5 {
  IUIAutomation6(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomation6Vtbl>().ref;

  final IUIAutomation6Vtbl _vtable;

  factory IUIAutomation6.from(IUnknown interface) =>
      IUIAutomation6(interface.toInterface(IID_IUIAutomation6));

  /// Registers one or more event listeners in a single method call.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation6-createeventhandlergroup>.
  int createEventHandlerGroup(Pointer<VTablePointer> handlerGroup) =>
      _vtable.CreateEventHandlerGroup.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> handlerGroup)>()(ptr, handlerGroup);

  /// Registers a collection of event handler methods specified with the
  /// CreateEventHandlerGroup.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation6-addeventhandlergroup>.
  int addEventHandlerGroup(VTablePointer element, VTablePointer handlerGroup) =>
      _vtable.AddEventHandlerGroup.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer element,
              VTablePointer handlerGroup)>()(ptr, element, handlerGroup);

  /// Asynchronously removes the specified UI Automation event handler group.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation6-removeeventhandlergroup>.
  int removeEventHandlerGroup(
          VTablePointer element, VTablePointer handlerGroup) =>
      _vtable.RemoveEventHandlerGroup.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer element,
              VTablePointer handlerGroup)>()(ptr, element, handlerGroup);

  /// Indicates whether an accessible technology client adjusts provider request
  /// timeouts when the provider is non-responsive.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation6-get_connectionrecoverybehavior>.
  int get connectionRecoveryBehavior {
    final connectionRecoveryBehaviorOptions = calloc<Int32>();
    try {
      final hr = _vtable.get_ConnectionRecoveryBehavior.asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<Int32> connectionRecoveryBehaviorOptions)>()(
          ptr, connectionRecoveryBehaviorOptions);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = connectionRecoveryBehaviorOptions.value;
      return retValue;
    } finally {
      free(connectionRecoveryBehaviorOptions);
    }
  }

  set connectionRecoveryBehavior(int connectionRecoveryBehaviorOptions) {
    final hr = _vtable.put_ConnectionRecoveryBehavior.asFunction<
            int Function(
                VTablePointer lpVtbl, int connectionRecoveryBehaviorOptions)>()(
        ptr, connectionRecoveryBehaviorOptions);
    if (FAILED(hr)) throw WindowsException(hr);
  }

  /// Gets or sets whether an accessible technology client receives all events, or
  /// a subset where duplicate events are detected and filtered.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation6-get_coalesceevents>.
  int get coalesceEvents {
    final coalesceEventsOptions = calloc<Int32>();
    try {
      final hr = _vtable.get_CoalesceEvents.asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<Int32> coalesceEventsOptions)>()(
          ptr, coalesceEventsOptions);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = coalesceEventsOptions.value;
      return retValue;
    } finally {
      free(coalesceEventsOptions);
    }
  }

  set coalesceEvents(int coalesceEventsOptions) {
    final hr = _vtable.put_CoalesceEvents.asFunction<
            int Function(VTablePointer lpVtbl, int coalesceEventsOptions)>()(
        ptr, coalesceEventsOptions);
    if (FAILED(hr)) throw WindowsException(hr);
  }

  /// Registers a method that handles when the active text position changes.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation6-addactivetextpositionchangedeventhandler>.
  int addActiveTextPositionChangedEventHandler(VTablePointer element, int scope,
          VTablePointer cacheRequest, VTablePointer handler) =>
      _vtable.AddActiveTextPositionChangedEventHandler.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  VTablePointer element,
                  int scope,
                  VTablePointer cacheRequest,
                  VTablePointer handler)>()(
          ptr, element, scope, cacheRequest, handler);

  /// Removes an active text position changed event handler.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation6-removeactivetextpositionchangedeventhandler>.
  int removeActiveTextPositionChangedEventHandler(
          VTablePointer element, VTablePointer handler) =>
      _vtable.RemoveActiveTextPositionChangedEventHandler.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer element,
              VTablePointer handler)>()(ptr, element, handler);
}

/// @nodoc
base class IUIAutomation6Vtbl extends Struct {
  external IUIAutomation5Vtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> handlerGroup)>>
      CreateEventHandlerGroup;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer element,
              VTablePointer handlerGroup)>> AddEventHandlerGroup;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer element,
              VTablePointer handlerGroup)>> RemoveEventHandlerGroup;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl,
                  Pointer<Int32> connectionRecoveryBehaviorOptions)>>
      get_ConnectionRecoveryBehavior;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl,
                  Int32 connectionRecoveryBehaviorOptions)>>
      put_ConnectionRecoveryBehavior;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Int32> coalesceEventsOptions)>>
      get_CoalesceEvents;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Int32 coalesceEventsOptions)>>
      put_CoalesceEvents;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer element,
              Int32 scope,
              VTablePointer cacheRequest,
              VTablePointer handler)>> AddActiveTextPositionChangedEventHandler;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, VTablePointer element,
                  VTablePointer handler)>>
      RemoveActiveTextPositionChangedEventHandler;
}
