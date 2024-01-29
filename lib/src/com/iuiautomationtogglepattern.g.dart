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
const IID_IUIAutomationTogglePattern = '{94cf8058-9b8d-4ab9-8bfd-4cd0a33c8c70}';

/// Provides access to a control that can cycle through a set of states, and
/// maintain a state after it is set.
///
/// {@category com}
class IUIAutomationTogglePattern extends IUnknown {
  IUIAutomationTogglePattern(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationTogglePatternVtbl>().ref;

  final IUIAutomationTogglePatternVtbl _vtable;

  factory IUIAutomationTogglePattern.from(IUnknown interface) =>
      IUIAutomationTogglePattern(
          interface.toInterface(IID_IUIAutomationTogglePattern));

  int toggle() => _vtable.Toggle.asFunction<int Function(VTablePointer)>()(ptr);

  int get_CurrentToggleState(Pointer<Int32> retVal) =>
      _vtable.get_CurrentToggleState
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr, retVal);

  int get_CachedToggleState(Pointer<Int32> retVal) =>
      _vtable.get_CachedToggleState
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr, retVal);
}

/// @nodoc
base class IUIAutomationTogglePatternVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<NativeFunction<Int32 Function(VTablePointer)>> Toggle;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CurrentToggleState;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CachedToggleState;
}
