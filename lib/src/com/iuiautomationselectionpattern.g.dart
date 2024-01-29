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
const IID_IUIAutomationSelectionPattern =
    '{5ed5202e-b2ac-47a6-b638-4b0bf140d78e}';

/// Provides access to a control that contains selectable child items. The
/// children of this element support IUIAutomationSelectionItemPattern.
///
/// {@category com}
class IUIAutomationSelectionPattern extends IUnknown {
  IUIAutomationSelectionPattern(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationSelectionPatternVtbl>().ref;

  final IUIAutomationSelectionPatternVtbl _vtable;

  factory IUIAutomationSelectionPattern.from(IUnknown interface) =>
      IUIAutomationSelectionPattern(
          interface.toInterface(IID_IUIAutomationSelectionPattern));

  int getCurrentSelection(Pointer<VTablePointer> retVal) =>
      _vtable.GetCurrentSelection.asFunction<
          int Function(
              VTablePointer, Pointer<VTablePointer> retVal)>()(ptr, retVal);

  int get_CurrentCanSelectMultiple(Pointer<Int32> retVal) =>
      _vtable.get_CurrentCanSelectMultiple
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr, retVal);

  int get_CurrentIsSelectionRequired(Pointer<Int32> retVal) =>
      _vtable.get_CurrentIsSelectionRequired
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr, retVal);

  int getCachedSelection(Pointer<VTablePointer> retVal) =>
      _vtable.GetCachedSelection.asFunction<
          int Function(
              VTablePointer, Pointer<VTablePointer> retVal)>()(ptr, retVal);

  int get_CachedCanSelectMultiple(Pointer<Int32> retVal) =>
      _vtable.get_CachedCanSelectMultiple
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr, retVal);

  int get_CachedIsSelectionRequired(Pointer<Int32> retVal) =>
      _vtable.get_CachedIsSelectionRequired
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr, retVal);
}

/// @nodoc
base class IUIAutomationSelectionPatternVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> retVal)>>
      GetCurrentSelection;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CurrentCanSelectMultiple;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CurrentIsSelectionRequired;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> retVal)>>
      GetCachedSelection;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CachedCanSelectMultiple;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CachedIsSelectionRequired;
}
