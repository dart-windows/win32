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
const IID_IUIAutomationTextChildPattern =
    '{6552b038-ae05-40c8-abfd-aa08352aab86}';

/// Provides access a text-based control (or an object embedded in text) that is
/// a child or descendant of another text-based control.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationtextchildpattern>.
///
/// {@category com}
class IUIAutomationTextChildPattern extends IUnknown {
  IUIAutomationTextChildPattern(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationTextChildPatternVtbl>().ref;

  final IUIAutomationTextChildPatternVtbl _vtable;

  /// Creates a new instance of `IUIAutomationTextChildPattern` from an existing
  /// [interface].
  ///
  /// This constructor invokes the [queryInterface] method to obtain a reference
  /// to the `IUIAutomationTextChildPattern` interface with the provided
  /// interface.
  ///
  /// Throws a [WindowsException] if the `queryInterface` call fails.
  factory IUIAutomationTextChildPattern.from(IUnknown interface) =>
      IUIAutomationTextChildPattern(
          interface.toInterface(IID_IUIAutomationTextChildPattern));

  /// Retrieves this element's nearest ancestor element that supports the Text
  /// control pattern.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtextchildpattern-get_textcontainer>.
  VTablePointer get textContainer {
    final container = calloc<VTablePointer>();
    try {
      final hr = _vtable.get_TextContainer.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> container)>()(ptr, container);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = container.value;
      return retValue;
    } finally {
      free(container);
    }
  }

  /// Retrieves a text range that encloses this child element.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtextchildpattern-get_textrange>.
  VTablePointer get textRange {
    final range = calloc<VTablePointer>();
    try {
      final hr = _vtable.get_TextRange.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> range)>()(ptr, range);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = range.value;
      return retValue;
    } finally {
      free(range);
    }
  }
}

/// @nodoc
base class IUIAutomationTextChildPatternVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> container)>>
      get_TextContainer;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> range)>>
      get_TextRange;
}
