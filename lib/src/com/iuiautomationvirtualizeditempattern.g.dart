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
const IID_IUIAutomationVirtualizedItemPattern =
    '{6ba3d7a6-04cf-4f11-8793-a8d1cde9969f}';

/// Represents a virtualized item, which is an item that is represented by a
/// placeholder automation element in the Microsoft UI Automation tree.
///
/// {@category com}
class IUIAutomationVirtualizedItemPattern extends IUnknown {
  IUIAutomationVirtualizedItemPattern(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationVirtualizedItemPatternVtbl>().ref;

  final IUIAutomationVirtualizedItemPatternVtbl _vtable;

  factory IUIAutomationVirtualizedItemPattern.from(IUnknown interface) =>
      IUIAutomationVirtualizedItemPattern(
          interface.toInterface(IID_IUIAutomationVirtualizedItemPattern));

  int realize() =>
      _vtable.Realize.asFunction<int Function(VTablePointer)>()(ptr);
}

/// @nodoc
base class IUIAutomationVirtualizedItemPatternVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<NativeFunction<Int32 Function(VTablePointer)>> Realize;
}
