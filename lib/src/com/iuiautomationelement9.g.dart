// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../extensions/iunknown.dart';
import '../types.dart';
import 'iuiautomationelement8.g.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IUIAutomationElement9 = '{39325fac-039d-440e-a3a3-5eb81a5cecc3}';

/// Extends the IUIAutomationElement8 interface.
///
/// {@category com}
class IUIAutomationElement9 extends IUIAutomationElement8 {
  IUIAutomationElement9(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationElement9Vtbl>().ref;

  final IUIAutomationElement9Vtbl _vtable;

  factory IUIAutomationElement9.from(IUnknown interface) =>
      IUIAutomationElement9(interface.toInterface(IID_IUIAutomationElement9));

  int get_CurrentIsDialog(Pointer<Int32> retVal) => _vtable.get_CurrentIsDialog
          .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
      ptr, retVal);

  int get_CachedIsDialog(Pointer<Int32> retVal) => _vtable.get_CachedIsDialog
          .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
      ptr, retVal);
}

/// @nodoc
base class IUIAutomationElement9Vtbl extends Struct {
  external IUIAutomationElement8Vtbl baseVtbl;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CurrentIsDialog;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CachedIsDialog;
}
