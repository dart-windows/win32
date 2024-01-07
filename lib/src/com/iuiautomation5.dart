// iuiautomation5.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../types.dart';
import 'iuiautomation4.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IUIAutomation5 = '{25f700c8-d816-4057-a9dc-3cbdee77e256}';

/// Extends the IUIAutomation4 interface to expose additional methods for
/// controlling Microsoft UI Automation functionality.
///
/// {@category com}
class IUIAutomation5 extends IUIAutomation4 {
  // vtable begins at 68, is 2 entries long.
  IUIAutomation5(super.ptr)
      : _vtable = ptr.value.value.cast<IUIAutomation5Vtbl>().ref;

  final IUIAutomation5Vtbl _vtable;

  factory IUIAutomation5.from(IUnknown interface) =>
      IUIAutomation5(interface.toInterface(IID_IUIAutomation5));

  int addNotificationEventHandler(
          Pointer<VTablePointer> element,
          int scope,
          Pointer<VTablePointer> cacheRequest,
          Pointer<VTablePointer> handler) =>
      _vtable.AddNotificationEventHandler.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<VTablePointer> element,
                  int scope,
                  Pointer<VTablePointer> cacheRequest,
                  Pointer<VTablePointer> handler)>()(
          ptr.value, element, scope, cacheRequest, handler);

  int removeNotificationEventHandler(
          Pointer<VTablePointer> element, Pointer<VTablePointer> handler) =>
      _vtable.RemoveNotificationEventHandler.asFunction<
          int Function(VTablePointer, Pointer<VTablePointer> element,
              Pointer<VTablePointer> handler)>()(ptr.value, element, handler);
}

/// @nodoc
base class IUIAutomation5Vtbl extends Struct {
  external IUIAutomation4Vtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<VTablePointer> element,
              Int32 scope,
              Pointer<VTablePointer> cacheRequest,
              Pointer<VTablePointer> handler)>> AddNotificationEventHandler;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<VTablePointer> element,
              Pointer<VTablePointer> handler)>> RemoveNotificationEventHandler;
}
