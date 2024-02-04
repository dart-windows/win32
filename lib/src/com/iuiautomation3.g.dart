// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../extensions/iunknown.dart';
import '../types.dart';
import 'iuiautomation2.g.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IUIAutomation3 = '{73d768da-9b51-4b89-936e-c209290973e7}';

/// Extends the IUIAutomation2 interface to expose additional methods for
/// controlling Microsoft UI Automation functionality.
///
/// {@category com}
class IUIAutomation3 extends IUIAutomation2 {
  IUIAutomation3(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomation3Vtbl>().ref;

  final IUIAutomation3Vtbl _vtable;

  factory IUIAutomation3.from(IUnknown interface) =>
      IUIAutomation3(interface.toInterface(IID_IUIAutomation3));

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
          Int32 Function(
              VTablePointer lpVtbl,
              VTablePointer element,
              Int32 scope,
              Int32 textEditChangeType,
              VTablePointer cacheRequest,
              VTablePointer handler)>> AddTextEditTextChangedEventHandler;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer lpVtbl, VTablePointer element,
              VTablePointer handler)>> RemoveTextEditTextChangedEventHandler;
}
