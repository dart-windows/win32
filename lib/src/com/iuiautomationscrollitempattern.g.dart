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
const IID_IUIAutomationScrollItemPattern =
    '{b488300f-d015-4f19-9c29-bb595e3645ef}';

/// Exposes a method that enables an item in a scrollable view to be placed in a
/// visible portion of the view.
///
/// {@category com}
class IUIAutomationScrollItemPattern extends IUnknown {
  IUIAutomationScrollItemPattern(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationScrollItemPatternVtbl>().ref;

  final IUIAutomationScrollItemPatternVtbl _vtable;

  factory IUIAutomationScrollItemPattern.from(IUnknown interface) =>
      IUIAutomationScrollItemPattern(
          interface.toInterface(IID_IUIAutomationScrollItemPattern));

  int scrollIntoView() =>
      _vtable.ScrollIntoView.asFunction<int Function(VTablePointer)>()(ptr);
}

/// @nodoc
base class IUIAutomationScrollItemPatternVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<NativeFunction<Int32 Function(VTablePointer)>>
      ScrollIntoView;
}
