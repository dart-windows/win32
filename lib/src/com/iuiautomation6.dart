// iuiautomation6.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import '../exceptions.dart';
import '../macros.dart';
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
  // vtable begins at 70, is 9 entries long.
  IUIAutomation6(super.ptr)
      : _vtable = ptr.ref.vtable.cast<IUIAutomation6Vtbl>().ref;

  final IUIAutomation6Vtbl _vtable;

  factory IUIAutomation6.from(IUnknown interface) =>
      IUIAutomation6(interface.toInterface(IID_IUIAutomation6));

  int createEventHandlerGroup(Pointer<Pointer<COMObject>> handlerGroup) =>
      _vtable.CreateEventHandlerGroup.asFunction<
              int Function(
                  Pointer, Pointer<Pointer<COMObject>> handlerGroup)>()(
          ptr.ref.lpVtbl, handlerGroup);

  int addEventHandlerGroup(
          Pointer<COMObject> element, Pointer<COMObject> handlerGroup) =>
      _vtable.AddEventHandlerGroup.asFunction<
              int Function(Pointer, Pointer<COMObject> element,
                  Pointer<COMObject> handlerGroup)>()(
          ptr.ref.lpVtbl, element, handlerGroup);

  int removeEventHandlerGroup(
          Pointer<COMObject> element, Pointer<COMObject> handlerGroup) =>
      _vtable.RemoveEventHandlerGroup.asFunction<
              int Function(Pointer, Pointer<COMObject> element,
                  Pointer<COMObject> handlerGroup)>()(
          ptr.ref.lpVtbl, element, handlerGroup);

  int get connectionRecoveryBehavior {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_ConnectionRecoveryBehavior.asFunction<
              int Function(
                  Pointer, Pointer<Int32> connectionRecoveryBehaviorOptions)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set connectionRecoveryBehavior(int value) {
    final hr = _vtable.put_ConnectionRecoveryBehavior.asFunction<
            int Function(Pointer, int connectionRecoveryBehaviorOptions)>()(
        ptr.ref.lpVtbl, value);
    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get coalesceEvents {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CoalesceEvents.asFunction<
              int Function(Pointer, Pointer<Int32> coalesceEventsOptions)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set coalesceEvents(int value) {
    final hr = _vtable.put_CoalesceEvents
            .asFunction<int Function(Pointer, int coalesceEventsOptions)>()(
        ptr.ref.lpVtbl, value);
    if (FAILED(hr)) throw WindowsException(hr);
  }

  int addActiveTextPositionChangedEventHandler(
          Pointer<COMObject> element,
          int scope,
          Pointer<COMObject> cacheRequest,
          Pointer<COMObject> handler) =>
      _vtable.AddActiveTextPositionChangedEventHandler.asFunction<
              int Function(
                  Pointer,
                  Pointer<COMObject> element,
                  int scope,
                  Pointer<COMObject> cacheRequest,
                  Pointer<COMObject> handler)>()(
          ptr.ref.lpVtbl, element, scope, cacheRequest, handler);

  int removeActiveTextPositionChangedEventHandler(
          Pointer<COMObject> element, Pointer<COMObject> handler) =>
      _vtable.RemoveActiveTextPositionChangedEventHandler.asFunction<
          int Function(Pointer, Pointer<COMObject> element,
              Pointer<COMObject> handler)>()(ptr.ref.lpVtbl, element, handler);
}

/// @nodoc
base class IUIAutomation6Vtbl extends Struct {
  external IUIAutomation5Vtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer, Pointer<Pointer<COMObject>> handlerGroup)>>
      CreateEventHandlerGroup;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<COMObject> element,
              Pointer<COMObject> handlerGroup)>> AddEventHandlerGroup;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<COMObject> element,
              Pointer<COMObject> handlerGroup)>> RemoveEventHandlerGroup;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer, Pointer<Int32> connectionRecoveryBehaviorOptions)>>
      get_ConnectionRecoveryBehavior;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Int32 connectionRecoveryBehaviorOptions)>>
      put_ConnectionRecoveryBehavior;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Int32> coalesceEventsOptions)>>
      get_CoalesceEvents;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Int32 coalesceEventsOptions)>>
      put_CoalesceEvents;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<COMObject> element, Int32 scope,
                  Pointer<COMObject> cacheRequest, Pointer<COMObject> handler)>>
      AddActiveTextPositionChangedEventHandler;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<COMObject> element,
                  Pointer<COMObject> handler)>>
      RemoveActiveTextPositionChangedEventHandler;
}
