// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../extensions/iunknown.dart';
import '../structs.g.dart';
import '../types.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IUIAutomationDragPattern = '{1dc7b570-1f54-4bad-bcda-d36a722fb7bd}';

/// Provides access to information exposed by a UI Automation provider for an
/// element that can be dragged as part of a drag-and-drop operation.
///
/// {@category com}
class IUIAutomationDragPattern extends IUnknown {
  IUIAutomationDragPattern(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationDragPatternVtbl>().ref;

  final IUIAutomationDragPatternVtbl _vtable;

  factory IUIAutomationDragPattern.from(IUnknown interface) =>
      IUIAutomationDragPattern(
          interface.toInterface(IID_IUIAutomationDragPattern));

  int get_CurrentIsGrabbed(Pointer<Int32> retVal) =>
      _vtable.get_CurrentIsGrabbed
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr, retVal);

  int get_CachedIsGrabbed(Pointer<Int32> retVal) => _vtable.get_CachedIsGrabbed
          .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
      ptr, retVal);

  int get_CurrentDropEffect(Pointer<Pointer<Utf16>> retVal) =>
      _vtable.get_CurrentDropEffect.asFunction<
          int Function(
              VTablePointer, Pointer<Pointer<Utf16>> retVal)>()(ptr, retVal);

  int get_CachedDropEffect(Pointer<Pointer<Utf16>> retVal) =>
      _vtable.get_CachedDropEffect.asFunction<
          int Function(
              VTablePointer, Pointer<Pointer<Utf16>> retVal)>()(ptr, retVal);

  int get_CurrentDropEffects(Pointer<Pointer<SAFEARRAY>> retVal) =>
      _vtable.get_CurrentDropEffects.asFunction<
          int Function(VTablePointer,
              Pointer<Pointer<SAFEARRAY>> retVal)>()(ptr, retVal);

  int get_CachedDropEffects(Pointer<Pointer<SAFEARRAY>> retVal) =>
      _vtable.get_CachedDropEffects.asFunction<
          int Function(VTablePointer,
              Pointer<Pointer<SAFEARRAY>> retVal)>()(ptr, retVal);

  int getCurrentGrabbedItems(Pointer<VTablePointer> retVal) =>
      _vtable.GetCurrentGrabbedItems.asFunction<
          int Function(
              VTablePointer, Pointer<VTablePointer> retVal)>()(ptr, retVal);

  int getCachedGrabbedItems(Pointer<VTablePointer> retVal) =>
      _vtable.GetCachedGrabbedItems.asFunction<
          int Function(
              VTablePointer, Pointer<VTablePointer> retVal)>()(ptr, retVal);
}

/// @nodoc
base class IUIAutomationDragPatternVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CurrentIsGrabbed;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CachedIsGrabbed;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Pointer<Utf16>> retVal)>>
      get_CurrentDropEffect;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Pointer<Utf16>> retVal)>>
      get_CachedDropEffect;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Pointer<SAFEARRAY>> retVal)>>
      get_CurrentDropEffects;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Pointer<SAFEARRAY>> retVal)>>
      get_CachedDropEffects;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> retVal)>>
      GetCurrentGrabbedItems;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> retVal)>>
      GetCachedGrabbedItems;
}
