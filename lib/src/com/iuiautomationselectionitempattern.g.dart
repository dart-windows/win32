// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../extensions/iunknown.dart';
import '../types.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IUIAutomationSelectionItemPattern =
    '{a8efa66a-0fda-421a-9194-38021f3578ea}';

/// Provides access to the selectable child items of a container control that
/// supports IUIAutomationSelectionPattern.
///
/// {@category com}
class IUIAutomationSelectionItemPattern extends IUnknown {
  IUIAutomationSelectionItemPattern(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationSelectionItemPatternVtbl>().ref;

  final IUIAutomationSelectionItemPatternVtbl _vtable;

  factory IUIAutomationSelectionItemPattern.from(IUnknown interface) =>
      IUIAutomationSelectionItemPattern(
          interface.toInterface(IID_IUIAutomationSelectionItemPattern));

  int select() => _vtable.Select.asFunction<int Function(VTablePointer)>()(ptr);

  int addToSelection() =>
      _vtable.AddToSelection.asFunction<int Function(VTablePointer)>()(ptr);

  int removeFromSelection() =>
      _vtable.RemoveFromSelection.asFunction<int Function(VTablePointer)>()(
          ptr);

  int get_CurrentIsSelected(Pointer<Int32> retVal) =>
      _vtable.get_CurrentIsSelected
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr, retVal);

  int get_CurrentSelectionContainer(Pointer<VTablePointer> retVal) =>
      _vtable.get_CurrentSelectionContainer.asFunction<
          int Function(
              VTablePointer, Pointer<VTablePointer> retVal)>()(ptr, retVal);

  int get_CachedIsSelected(Pointer<Int32> retVal) =>
      _vtable.get_CachedIsSelected
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr, retVal);

  int get_CachedSelectionContainer(Pointer<VTablePointer> retVal) =>
      _vtable.get_CachedSelectionContainer.asFunction<
          int Function(
              VTablePointer, Pointer<VTablePointer> retVal)>()(ptr, retVal);
}

/// @nodoc
base class IUIAutomationSelectionItemPatternVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<NativeFunction<Int32 Function(VTablePointer)>> Select;
  external Pointer<NativeFunction<Int32 Function(VTablePointer)>>
      AddToSelection;
  external Pointer<NativeFunction<Int32 Function(VTablePointer)>>
      RemoveFromSelection;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CurrentIsSelected;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> retVal)>>
      get_CurrentSelectionContainer;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CachedIsSelected;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> retVal)>>
      get_CachedSelectionContainer;
}
