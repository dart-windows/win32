// iuiautomation6.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../exceptions.dart';
import '../macros.dart';
import '../types.dart';
import '../utils.dart';
import 'iuiautomation5.dart';
import 'iunknown.dart';

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

  int get connectionRecoveryBehavior {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_ConnectionRecoveryBehavior.asFunction<
              int Function(VTablePointer,
                  Pointer<Int32> connectionRecoveryBehaviorOptions)>()(
          ptr, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set connectionRecoveryBehavior(int value) {
    final hr = _vtable.put_ConnectionRecoveryBehavior.asFunction<
        int Function(VTablePointer,
            int connectionRecoveryBehaviorOptions)>()(ptr, value);
    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get coalesceEvents {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CoalesceEvents.asFunction<
          int Function(VTablePointer,
              Pointer<Int32> coalesceEventsOptions)>()(ptr, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set coalesceEvents(int value) {
    final hr = _vtable.put_CoalesceEvents.asFunction<
        int Function(VTablePointer, int coalesceEventsOptions)>()(ptr, value);
    if (FAILED(hr)) throw WindowsException(hr);
  }

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
