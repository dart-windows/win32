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
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IUIAutomationTextRangeArray =
    '{ce4ae76a-e717-4c98-81ea-47371d028eb6}';

/// Represents a collection of IUIAutomationTextRange objects.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationtextrangearray>.
///
/// {@category com}
class IUIAutomationTextRangeArray extends IUnknown {
  IUIAutomationTextRangeArray(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationTextRangeArrayVtbl>().ref;

  final IUIAutomationTextRangeArrayVtbl _vtable;

  /// Creates a new instance of `IUIAutomationTextRangeArray` from an existing
  /// [interface].
  ///
  /// This constructor invokes the [queryInterface] method to obtain a reference
  /// to the `IUIAutomationTextRangeArray` interface with the provided
  /// interface.
  ///
  /// Throws a [WindowsException] if the `queryInterface` call fails.
  factory IUIAutomationTextRangeArray.from(IUnknown interface) =>
      IUIAutomationTextRangeArray(
          interface.toInterface(IID_IUIAutomationTextRangeArray));

  /// Retrieves the number of text ranges in the collection.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtextrangearray-get_length>.
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

  /// Retrieves a text range from the collection.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtextrangearray-getelement>.
  int getElement(int index, Pointer<VTablePointer> element) =>
      _vtable.GetElement.asFunction<
          int Function(VTablePointer lpVtbl, int index,
              Pointer<VTablePointer> element)>()(ptr, index, element);
}

/// @nodoc
base class IUIAutomationTextRangeArrayVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> length)>>
      get_Length;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 index,
              Pointer<VTablePointer> element)>> GetElement;
}
