// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../extensions/iunknown.dart';
import '../types.dart';
import 'iuiautomationtextrange.g.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IUIAutomationTextRange2 = '{bb9b40e0-5e04-46bd-9be0-4b601b9afad4}';

/// Extends the IUIAutomationTextRange interface to enable Microsoft UI
/// Automation clients to programmatically invoke context menus.
///
/// {@category com}
class IUIAutomationTextRange2 extends IUIAutomationTextRange {
  IUIAutomationTextRange2(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationTextRange2Vtbl>().ref;

  final IUIAutomationTextRange2Vtbl _vtable;

  factory IUIAutomationTextRange2.from(IUnknown interface) =>
      IUIAutomationTextRange2(
          interface.toInterface(IID_IUIAutomationTextRange2));

  int showContextMenu() =>
      _vtable.ShowContextMenu.asFunction<int Function(VTablePointer)>()(ptr);
}

/// @nodoc
base class IUIAutomationTextRange2Vtbl extends Struct {
  external IUIAutomationTextRangeVtbl baseVtbl;
  external Pointer<NativeFunction<Int32 Function(VTablePointer)>>
      ShowContextMenu;
}