// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../extensions/iunknown.dart';
import '../types.dart';
import 'iuiautomationelement.g.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IUIAutomationElement2 = '{6749c683-f70d-4487-a698-5f79d55290d6}';

/// Extends the IUIAutomationElement interface.
///
/// {@category com}
class IUIAutomationElement2 extends IUIAutomationElement {
  IUIAutomationElement2(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationElement2Vtbl>().ref;

  final IUIAutomationElement2Vtbl _vtable;

  factory IUIAutomationElement2.from(IUnknown interface) =>
      IUIAutomationElement2(interface.toInterface(IID_IUIAutomationElement2));

  int get_CurrentOptimizeForVisualContent(Pointer<Int32> retVal) =>
      _vtable.get_CurrentOptimizeForVisualContent
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr, retVal);

  int get_CachedOptimizeForVisualContent(Pointer<Int32> retVal) =>
      _vtable.get_CachedOptimizeForVisualContent
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr, retVal);

  int get_CurrentLiveSetting(Pointer<Int32> retVal) =>
      _vtable.get_CurrentLiveSetting
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr, retVal);

  int get_CachedLiveSetting(Pointer<Int32> retVal) =>
      _vtable.get_CachedLiveSetting
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr, retVal);

  int get_CurrentFlowsFrom(Pointer<VTablePointer> retVal) =>
      _vtable.get_CurrentFlowsFrom.asFunction<
          int Function(
              VTablePointer, Pointer<VTablePointer> retVal)>()(ptr, retVal);

  int get_CachedFlowsFrom(Pointer<VTablePointer> retVal) =>
      _vtable.get_CachedFlowsFrom.asFunction<
          int Function(
              VTablePointer, Pointer<VTablePointer> retVal)>()(ptr, retVal);
}

/// @nodoc
base class IUIAutomationElement2Vtbl extends Struct {
  external IUIAutomationElementVtbl baseVtbl;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CurrentOptimizeForVisualContent;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CachedOptimizeForVisualContent;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CurrentLiveSetting;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CachedLiveSetting;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> retVal)>>
      get_CurrentFlowsFrom;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> retVal)>>
      get_CachedFlowsFrom;
}
