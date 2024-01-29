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
const IID_IUIAutomationWindowPattern = '{0faef453-9208-43ef-bbb2-3b485177864f}';

/// Provides access to the fundamental functionality of a window.
///
/// {@category com}
class IUIAutomationWindowPattern extends IUnknown {
  IUIAutomationWindowPattern(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationWindowPatternVtbl>().ref;

  final IUIAutomationWindowPatternVtbl _vtable;

  factory IUIAutomationWindowPattern.from(IUnknown interface) =>
      IUIAutomationWindowPattern(
          interface.toInterface(IID_IUIAutomationWindowPattern));

  int close() => _vtable.Close.asFunction<int Function(VTablePointer)>()(ptr);

  int waitForInputIdle(int milliseconds, Pointer<Int32> success) =>
      _vtable.WaitForInputIdle.asFunction<
          int Function(VTablePointer, int milliseconds,
              Pointer<Int32> success)>()(ptr, milliseconds, success);

  int setWindowVisualState(int state) => _vtable.SetWindowVisualState
      .asFunction<int Function(VTablePointer, int state)>()(ptr, state);

  int get_CurrentCanMaximize(Pointer<Int32> retVal) =>
      _vtable.get_CurrentCanMaximize
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr, retVal);

  int get_CurrentCanMinimize(Pointer<Int32> retVal) =>
      _vtable.get_CurrentCanMinimize
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr, retVal);

  int get_CurrentIsModal(Pointer<Int32> retVal) => _vtable.get_CurrentIsModal
          .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
      ptr, retVal);

  int get_CurrentIsTopmost(Pointer<Int32> retVal) =>
      _vtable.get_CurrentIsTopmost
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr, retVal);

  int get_CurrentWindowVisualState(Pointer<Int32> retVal) =>
      _vtable.get_CurrentWindowVisualState
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr, retVal);

  int get_CurrentWindowInteractionState(Pointer<Int32> retVal) =>
      _vtable.get_CurrentWindowInteractionState
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr, retVal);

  int get_CachedCanMaximize(Pointer<Int32> retVal) =>
      _vtable.get_CachedCanMaximize
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr, retVal);

  int get_CachedCanMinimize(Pointer<Int32> retVal) =>
      _vtable.get_CachedCanMinimize
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr, retVal);

  int get_CachedIsModal(Pointer<Int32> retVal) => _vtable.get_CachedIsModal
          .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
      ptr, retVal);

  int get_CachedIsTopmost(Pointer<Int32> retVal) => _vtable.get_CachedIsTopmost
          .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
      ptr, retVal);

  int get_CachedWindowVisualState(Pointer<Int32> retVal) =>
      _vtable.get_CachedWindowVisualState
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr, retVal);

  int get_CachedWindowInteractionState(Pointer<Int32> retVal) =>
      _vtable.get_CachedWindowInteractionState
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr, retVal);
}

/// @nodoc
base class IUIAutomationWindowPatternVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<NativeFunction<Int32 Function(VTablePointer)>> Close;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Int32 milliseconds, Pointer<Int32> success)>>
      WaitForInputIdle;
  external Pointer<NativeFunction<Int32 Function(VTablePointer, Int32 state)>>
      SetWindowVisualState;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CurrentCanMaximize;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CurrentCanMinimize;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CurrentIsModal;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CurrentIsTopmost;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CurrentWindowVisualState;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CurrentWindowInteractionState;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CachedCanMaximize;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CachedCanMinimize;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CachedIsModal;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CachedIsTopmost;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CachedWindowVisualState;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CachedWindowInteractionState;
}
