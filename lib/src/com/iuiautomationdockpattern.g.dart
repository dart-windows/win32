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
const IID_IUIAutomationDockPattern = '{fde5ef97-1464-48f6-90bf-43d0948e86ec}';

/// Provides access to a control that enables child elements to be arranged
/// horizontally and vertically, relative to each other.
///
/// {@category com}
class IUIAutomationDockPattern extends IUnknown {
  IUIAutomationDockPattern(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationDockPatternVtbl>().ref;

  final IUIAutomationDockPatternVtbl _vtable;

  factory IUIAutomationDockPattern.from(IUnknown interface) =>
      IUIAutomationDockPattern(
          interface.toInterface(IID_IUIAutomationDockPattern));

  int setDockPosition(int dockPos) => _vtable.SetDockPosition.asFunction<
      int Function(VTablePointer, int dockPos)>()(ptr, dockPos);

  int get_CurrentDockPosition(Pointer<Int32> retVal) =>
      _vtable.get_CurrentDockPosition
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr, retVal);

  int get_CachedDockPosition(Pointer<Int32> retVal) =>
      _vtable.get_CachedDockPosition
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr, retVal);
}

/// @nodoc
base class IUIAutomationDockPatternVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<NativeFunction<Int32 Function(VTablePointer, Int32 dockPos)>>
      SetDockPosition;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CurrentDockPosition;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CachedDockPosition;
}
