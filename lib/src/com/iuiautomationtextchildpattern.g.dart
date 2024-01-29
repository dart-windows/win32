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
const IID_IUIAutomationTextChildPattern =
    '{6552b038-ae05-40c8-abfd-aa08352aab86}';

/// Provides access a text-based control (or an object embedded in text) that is
/// a child or descendant of another text-based control.
///
/// {@category com}
class IUIAutomationTextChildPattern extends IUnknown {
  IUIAutomationTextChildPattern(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationTextChildPatternVtbl>().ref;

  final IUIAutomationTextChildPatternVtbl _vtable;

  factory IUIAutomationTextChildPattern.from(IUnknown interface) =>
      IUIAutomationTextChildPattern(
          interface.toInterface(IID_IUIAutomationTextChildPattern));

  int get_TextContainer(Pointer<VTablePointer> container) =>
      _vtable.get_TextContainer.asFunction<
              int Function(VTablePointer, Pointer<VTablePointer> container)>()(
          ptr, container);

  int get_TextRange(Pointer<VTablePointer> range) =>
      _vtable.get_TextRange.asFunction<
          int Function(
              VTablePointer, Pointer<VTablePointer> range)>()(ptr, range);
}

/// @nodoc
base class IUIAutomationTextChildPatternVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> container)>>
      get_TextContainer;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> range)>>
      get_TextRange;
}
