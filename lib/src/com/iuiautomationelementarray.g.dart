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
const IID_IUIAutomationElementArray = '{14314595-b4bc-4055-95f2-58f2e42c9855}';

/// Represents a collection of UI Automation elements.
///
/// {@category com}
class IUIAutomationElementArray extends IUnknown {
  IUIAutomationElementArray(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationElementArrayVtbl>().ref;

  final IUIAutomationElementArrayVtbl _vtable;

  factory IUIAutomationElementArray.from(IUnknown interface) =>
      IUIAutomationElementArray(
          interface.toInterface(IID_IUIAutomationElementArray));

  int get_Length(Pointer<Int32> length) => _vtable.get_Length
          .asFunction<int Function(VTablePointer, Pointer<Int32> length)>()(
      ptr, length);

  int getElement(int index, Pointer<VTablePointer> element) =>
      _vtable.GetElement.asFunction<
          int Function(VTablePointer, int index,
              Pointer<VTablePointer> element)>()(ptr, index, element);
}

/// @nodoc
base class IUIAutomationElementArrayVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> length)>>
      get_Length;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Int32 index, Pointer<VTablePointer> element)>>
      GetElement;
}
