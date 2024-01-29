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
const IID_IUIAutomationExpandCollapsePattern =
    '{619be086-1f4e-4ee4-bafa-210128738730}';

/// Provides access to a control that can visually expand to display content,
/// and collapse to hide content.
///
/// {@category com}
class IUIAutomationExpandCollapsePattern extends IUnknown {
  IUIAutomationExpandCollapsePattern(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationExpandCollapsePatternVtbl>().ref;

  final IUIAutomationExpandCollapsePatternVtbl _vtable;

  factory IUIAutomationExpandCollapsePattern.from(IUnknown interface) =>
      IUIAutomationExpandCollapsePattern(
          interface.toInterface(IID_IUIAutomationExpandCollapsePattern));

  int expand() => _vtable.Expand.asFunction<int Function(VTablePointer)>()(ptr);

  int collapse() =>
      _vtable.Collapse.asFunction<int Function(VTablePointer)>()(ptr);

  int get_CurrentExpandCollapseState(Pointer<Int32> retVal) =>
      _vtable.get_CurrentExpandCollapseState
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr, retVal);

  int get_CachedExpandCollapseState(Pointer<Int32> retVal) =>
      _vtable.get_CachedExpandCollapseState
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr, retVal);
}

/// @nodoc
base class IUIAutomationExpandCollapsePatternVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<NativeFunction<Int32 Function(VTablePointer)>> Expand;
  external Pointer<NativeFunction<Int32 Function(VTablePointer)>> Collapse;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CurrentExpandCollapseState;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CachedExpandCollapseState;
}
