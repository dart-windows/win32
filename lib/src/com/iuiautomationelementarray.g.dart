// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../exceptions.dart';
import '../extensions/iunknown.dart';
import '../macros.dart';
import '../types.dart';
import '../utils.dart';
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

  int get length {
    final length = calloc<Int32>();
    try {
      final hr = _vtable.get_Length.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> length)>()(ptr, length);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = length.value;
      return retValue;
    } finally {
      free(length);
    }
  }

  int getElement(int index, Pointer<VTablePointer> element) =>
      _vtable.GetElement.asFunction<
          int Function(VTablePointer lpVtbl, int index,
              Pointer<VTablePointer> element)>()(ptr, index, element);
}

/// @nodoc
base class IUIAutomationElementArrayVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer lpVtbl, Pointer<Int32> length)>>
      get_Length;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer lpVtbl, Int32 index,
              Pointer<VTablePointer> element)>> GetElement;
}
