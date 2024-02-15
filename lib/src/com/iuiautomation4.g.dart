// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../extensions/iunknown.dart';
import '../structs.g.dart';
import '../types.dart';
import 'iuiautomation3.g.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IUIAutomation4 = '{1189c02a-05f8-4319-8e21-e817e3db2860}';

/// Extends the IUIAutomation3 interface to expose additional methods for
/// controlling Microsoft UI Automation functionality.
///
/// {@category com}
class IUIAutomation4 extends IUIAutomation3 {
  IUIAutomation4(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomation4Vtbl>().ref;

  final IUIAutomation4Vtbl _vtable;

  factory IUIAutomation4.from(IUnknown interface) =>
      IUIAutomation4(interface.toInterface(IID_IUIAutomation4));

  int addChangesEventHandler(
          VTablePointer element,
          int scope,
          Pointer<Int32> changeTypes,
          int changesCount,
          VTablePointer pCacheRequest,
          VTablePointer handler) =>
      _vtable.AddChangesEventHandler.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  VTablePointer element,
                  int scope,
                  Pointer<Int32> changeTypes,
                  int changesCount,
                  VTablePointer pCacheRequest,
                  VTablePointer handler)>()(ptr, element, scope, changeTypes,
          changesCount, pCacheRequest, handler);

  int removeChangesEventHandler(VTablePointer element, VTablePointer handler) =>
      _vtable.RemoveChangesEventHandler.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer element,
              VTablePointer handler)>()(ptr, element, handler);
}

/// @nodoc
base class IUIAutomation4Vtbl extends Struct {
  external IUIAutomation3Vtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer element,
              Int32 scope,
              Pointer<Int32> changeTypes,
              Int32 changesCount,
              VTablePointer pCacheRequest,
              VTablePointer handler)>> AddChangesEventHandler;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer element,
              VTablePointer handler)>> RemoveChangesEventHandler;
}
