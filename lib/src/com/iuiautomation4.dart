// iuiautomation4.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../types.dart';
import 'iuiautomation3.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IUIAutomation4 = '{1189c02a-05f8-4319-8e21-e817e3db2860}';

/// Extends the IUIAutomation3 interface to expose additional methods for
/// controlling Microsoft UI Automation functionality.
///
/// {@category com}
class IUIAutomation4 extends IUIAutomation3 {
  IUIAutomation4(super.ptr)
      : _vtable = ptr.value.value.cast<IUIAutomation4Vtbl>().ref;

  final IUIAutomation4Vtbl _vtable;

  factory IUIAutomation4.from(IUnknown interface) =>
      IUIAutomation4(interface.toInterface(IID_IUIAutomation4));

  int addChangesEventHandler(
          Pointer<VTablePointer> element,
          int scope,
          Pointer<Int32> changeTypes,
          int changesCount,
          Pointer<VTablePointer> pCacheRequest,
          Pointer<VTablePointer> handler) =>
      _vtable.AddChangesEventHandler.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<VTablePointer> element,
                  int scope,
                  Pointer<Int32> changeTypes,
                  int changesCount,
                  Pointer<VTablePointer> pCacheRequest,
                  Pointer<VTablePointer> handler)>()(ptr.value, element, scope,
          changeTypes, changesCount, pCacheRequest, handler);

  int removeChangesEventHandler(
          Pointer<VTablePointer> element, Pointer<VTablePointer> handler) =>
      _vtable.RemoveChangesEventHandler.asFunction<
          int Function(VTablePointer, Pointer<VTablePointer> element,
              Pointer<VTablePointer> handler)>()(ptr.value, element, handler);
}

/// @nodoc
base class IUIAutomation4Vtbl extends Struct {
  external IUIAutomation3Vtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<VTablePointer> element,
              Int32 scope,
              Pointer<Int32> changeTypes,
              Int32 changesCount,
              Pointer<VTablePointer> pCacheRequest,
              Pointer<VTablePointer> handler)>> AddChangesEventHandler;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<VTablePointer> element,
              Pointer<VTablePointer> handler)>> RemoveChangesEventHandler;
}
