// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../extensions/iunknown.dart';
import '../types.dart';
import 'iuiautomation5.g.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IUIAutomation6 = '{aae072da-29e3-413d-87a7-192dbf81ed10}';

/// Extends the IUIAutomation5 interface to expose additional methods for
/// controlling Microsoft UI Automation functionality.
///
/// {@category com}
class IUIAutomation6 extends IUIAutomation5 {
  IUIAutomation6(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomation6Vtbl>().ref;

  final IUIAutomation6Vtbl _vtable;

  factory IUIAutomation6.from(IUnknown interface) =>
      IUIAutomation6(interface.toInterface(IID_IUIAutomation6));

  int createEventHandlerGroup(Pointer<VTablePointer> handlerGroup) =>
      _vtable.CreateEventHandlerGroup.asFunction<
          int Function(VTablePointer,
              Pointer<VTablePointer> handlerGroup)>()(ptr, handlerGroup);

  int addEventHandlerGroup(VTablePointer element, VTablePointer handlerGroup) =>
      _vtable.AddEventHandlerGroup.asFunction<
          int Function(VTablePointer, VTablePointer element,
              VTablePointer handlerGroup)>()(ptr, element, handlerGroup);

  int removeEventHandlerGroup(
          VTablePointer element, VTablePointer handlerGroup) =>
      _vtable.RemoveEventHandlerGroup.asFunction<
          int Function(VTablePointer, VTablePointer element,
              VTablePointer handlerGroup)>()(ptr, element, handlerGroup);

  int get_ConnectionRecoveryBehavior(
          Pointer<Int32> connectionRecoveryBehaviorOptions) =>
      _vtable.get_ConnectionRecoveryBehavior.asFunction<
              int Function(VTablePointer,
                  Pointer<Int32> connectionRecoveryBehaviorOptions)>()(
          ptr, connectionRecoveryBehaviorOptions);

  int put_ConnectionRecoveryBehavior(int connectionRecoveryBehaviorOptions) =>
      _vtable.put_ConnectionRecoveryBehavior.asFunction<
              int Function(
                  VTablePointer, int connectionRecoveryBehaviorOptions)>()(
          ptr, connectionRecoveryBehaviorOptions);

  int get_CoalesceEvents(Pointer<Int32> coalesceEventsOptions) =>
      _vtable.get_CoalesceEvents.asFunction<
              int Function(
                  VTablePointer, Pointer<Int32> coalesceEventsOptions)>()(
          ptr, coalesceEventsOptions);

  int put_CoalesceEvents(int coalesceEventsOptions) => _vtable
          .put_CoalesceEvents
          .asFunction<int Function(VTablePointer, int coalesceEventsOptions)>()(
      ptr, coalesceEventsOptions);

  int addActiveTextPositionChangedEventHandler(VTablePointer element, int scope,
          VTablePointer cacheRequest, VTablePointer handler) =>
      _vtable.AddActiveTextPositionChangedEventHandler.asFunction<
              int Function(VTablePointer, VTablePointer element, int scope,
                  VTablePointer cacheRequest, VTablePointer handler)>()(
          ptr, element, scope, cacheRequest, handler);

  int removeActiveTextPositionChangedEventHandler(
          VTablePointer element, VTablePointer handler) =>
      _vtable.RemoveActiveTextPositionChangedEventHandler.asFunction<
          int Function(VTablePointer, VTablePointer element,
              VTablePointer handler)>()(ptr, element, handler);
}

/// @nodoc
base class IUIAutomation6Vtbl extends Struct {
  external IUIAutomation5Vtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<VTablePointer> handlerGroup)>>
      CreateEventHandlerGroup;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, VTablePointer element,
              VTablePointer handlerGroup)>> AddEventHandlerGroup;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, VTablePointer element,
              VTablePointer handlerGroup)>> RemoveEventHandlerGroup;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer,
                  Pointer<Int32> connectionRecoveryBehaviorOptions)>>
      get_ConnectionRecoveryBehavior;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Int32 connectionRecoveryBehaviorOptions)>>
      put_ConnectionRecoveryBehavior;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Int32> coalesceEventsOptions)>>
      get_CoalesceEvents;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Int32 coalesceEventsOptions)>>
      put_CoalesceEvents;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              VTablePointer element,
              Int32 scope,
              VTablePointer cacheRequest,
              VTablePointer handler)>> AddActiveTextPositionChangedEventHandler;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, VTablePointer element, VTablePointer handler)>>
      RemoveActiveTextPositionChangedEventHandler;
}
