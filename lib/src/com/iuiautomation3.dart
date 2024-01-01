// iuiautomation3.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../combase.dart';
import 'iuiautomation2.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IUIAutomation3 = '{73d768da-9b51-4b89-936e-c209290973e7}';

/// Extends the IUIAutomation2 interface to expose additional methods for
/// controlling Microsoft UI Automation functionality.
///
/// {@category com}
class IUIAutomation3 extends IUIAutomation2 {
  // vtable begins at 64, is 2 entries long.
  IUIAutomation3(super.ptr)
      : _vtable = ptr.ref.vtable.cast<IUIAutomation3Vtbl>().ref;

  final IUIAutomation3Vtbl _vtable;

  factory IUIAutomation3.from(IUnknown interface) =>
      IUIAutomation3(interface.toInterface(IID_IUIAutomation3));

  int addTextEditTextChangedEventHandler(
          Pointer<COMObject> element,
          int scope,
          int textEditChangeType,
          Pointer<COMObject> cacheRequest,
          Pointer<COMObject> handler) =>
      _vtable.AddTextEditTextChangedEventHandler.asFunction<
              int Function(
                  Pointer,
                  Pointer<COMObject> element,
                  int scope,
                  int textEditChangeType,
                  Pointer<COMObject> cacheRequest,
                  Pointer<COMObject> handler)>()(ptr.ref.lpVtbl, element, scope,
          textEditChangeType, cacheRequest, handler);

  int removeTextEditTextChangedEventHandler(
          Pointer<COMObject> element, Pointer<COMObject> handler) =>
      _vtable.RemoveTextEditTextChangedEventHandler.asFunction<
          int Function(Pointer, Pointer<COMObject> element,
              Pointer<COMObject> handler)>()(ptr.ref.lpVtbl, element, handler);
}

/// @nodoc
base class IUIAutomation3Vtbl extends Struct {
  external IUIAutomation2Vtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              Pointer<COMObject> element,
              Int32 scope,
              Int32 textEditChangeType,
              Pointer<COMObject> cacheRequest,
              Pointer<COMObject> handler)>> AddTextEditTextChangedEventHandler;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<COMObject> element,
                  Pointer<COMObject> handler)>>
      RemoveTextEditTextChangedEventHandler;
}
