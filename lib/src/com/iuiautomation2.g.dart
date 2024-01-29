// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../extensions/iunknown.dart';
import '../types.dart';
import '../utils.dart';
import 'iuiautomation.g.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IUIAutomation2 = '{34723aff-0c9d-49d0-9896-7ab52df8cd8a}';

/// Extends the IUIAutomation interface to expose additional methods for
/// controlling Microsoft UI Automation functionality.
///
/// {@category com}
class IUIAutomation2 extends IUIAutomation {
  IUIAutomation2(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomation2Vtbl>().ref;

  final IUIAutomation2Vtbl _vtable;

  factory IUIAutomation2.from(IUnknown interface) =>
      IUIAutomation2(interface.toInterface(IID_IUIAutomation2));

  int get_AutoSetFocus(Pointer<Int32> autoSetFocus) =>
      _vtable.get_AutoSetFocus.asFunction<
          int Function(
              VTablePointer, Pointer<Int32> autoSetFocus)>()(ptr, autoSetFocus);

  int put_AutoSetFocus(int autoSetFocus) => _vtable.put_AutoSetFocus
          .asFunction<int Function(VTablePointer, int autoSetFocus)>()(
      ptr, autoSetFocus);

  int get_ConnectionTimeout(Pointer<Uint32> timeout) => _vtable
          .get_ConnectionTimeout
          .asFunction<int Function(VTablePointer, Pointer<Uint32> timeout)>()(
      ptr, timeout);

  int put_ConnectionTimeout(int timeout) => _vtable.put_ConnectionTimeout
      .asFunction<int Function(VTablePointer, int timeout)>()(ptr, timeout);

  int get_TransactionTimeout(Pointer<Uint32> timeout) => _vtable
          .get_TransactionTimeout
          .asFunction<int Function(VTablePointer, Pointer<Uint32> timeout)>()(
      ptr, timeout);

  int put_TransactionTimeout(int timeout) => _vtable.put_TransactionTimeout
      .asFunction<int Function(VTablePointer, int timeout)>()(ptr, timeout);
}

/// @nodoc
base class IUIAutomation2Vtbl extends Struct {
  external IUIAutomationVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Int32> autoSetFocus)>>
      get_AutoSetFocus;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Int32 autoSetFocus)>>
      put_AutoSetFocus;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Uint32> timeout)>>
      get_ConnectionTimeout;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Uint32 timeout)>>
      put_ConnectionTimeout;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Uint32> timeout)>>
      get_TransactionTimeout;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Uint32 timeout)>>
      put_TransactionTimeout;
}

/// @nodoc
const CLSID_CUIAutomation8 = '{e22ad333-b25f-460c-83d0-0581107395c9}';

/// {@category com}
class CUIAutomation8 extends IUIAutomation2 {
  CUIAutomation8(super.ptr);

  factory CUIAutomation8.createInstance() =>
      CUIAutomation8(createCOMObject(CLSID_CUIAutomation8, IID_IUIAutomation2));
}
