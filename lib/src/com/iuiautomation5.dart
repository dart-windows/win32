// iuiautomation5.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../combase.dart';
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
      : _vtable = ptr.ref.vtable.cast<IUIAutomation5Vtbl>().ref;

  final IUIAutomation5Vtbl _vtable;

  factory IUIAutomation5.from(IUnknown interface) =>
      IUIAutomation5(interface.toInterface(IID_IUIAutomation5));

  int addNotificationEventHandler(Pointer<COMObject> element, int scope,
          Pointer<COMObject> cacheRequest, Pointer<COMObject> handler) =>
      _vtable.AddNotificationEventHandler.asFunction<
              int Function(
                  Pointer,
                  Pointer<COMObject> element,
                  int scope,
                  Pointer<COMObject> cacheRequest,
                  Pointer<COMObject> handler)>()(
          ptr.ref.lpVtbl, element, scope, cacheRequest, handler);

  int removeNotificationEventHandler(
          Pointer<COMObject> element, Pointer<COMObject> handler) =>
      _vtable.RemoveNotificationEventHandler.asFunction<
          int Function(Pointer, Pointer<COMObject> element,
              Pointer<COMObject> handler)>()(ptr.ref.lpVtbl, element, handler);
}

/// @nodoc
base class IUIAutomation5Vtbl extends Struct {
  external IUIAutomation4Vtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              Pointer<COMObject> element,
              Int32 scope,
              Pointer<COMObject> cacheRequest,
              Pointer<COMObject> handler)>> AddNotificationEventHandler;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<COMObject> element,
              Pointer<COMObject> handler)>> RemoveNotificationEventHandler;
}
