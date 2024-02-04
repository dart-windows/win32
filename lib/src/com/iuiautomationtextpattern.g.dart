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
const IID_IUIAutomationTextPattern = '{32eba289-3583-42c9-9c59-3b6d9a1e9b6a}';

/// Provides access to a control that contains text.
///
/// {@category com}
class IUIAutomationTextPattern extends IUnknown {
  IUIAutomationTextPattern(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationTextPatternVtbl>().ref;

  final IUIAutomationTextPatternVtbl _vtable;

  factory IUIAutomationTextPattern.from(IUnknown interface) =>
      IUIAutomationTextPattern(
          interface.toInterface(IID_IUIAutomationTextPattern));

  int rangeFromPoint(POINT pt, Pointer<VTablePointer> range) =>
      _vtable.RangeFromPoint.asFunction<
          int Function(VTablePointer lpVtbl, POINT pt,
              Pointer<VTablePointer> range)>()(ptr, pt, range);

  int rangeFromChild(VTablePointer child, Pointer<VTablePointer> range) =>
      _vtable.RangeFromChild.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer child,
              Pointer<VTablePointer> range)>()(ptr, child, range);

  int getSelection(Pointer<VTablePointer> ranges) =>
      _vtable.GetSelection.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> ranges)>()(ptr, ranges);

  int getVisibleRanges(Pointer<VTablePointer> ranges) =>
      _vtable.GetVisibleRanges.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> ranges)>()(ptr, ranges);

  VTablePointer get documentRange {
    final retValuePtr = calloc<VTablePointer>();

    try {
      final hr = _vtable.get_DocumentRange.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> range)>()(ptr, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get supportedTextSelection {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_SupportedTextSelection.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Int32> supportedTextSelection)>()(ptr, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}

/// @nodoc
base class IUIAutomationTextPatternVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer lpVtbl, POINT pt,
              Pointer<VTablePointer> range)>> RangeFromPoint;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer lpVtbl, VTablePointer child,
              Pointer<VTablePointer> range)>> RangeFromChild;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> ranges)>>
      GetSelection;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> ranges)>>
      GetVisibleRanges;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> range)>>
      get_DocumentRange;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer lpVtbl, Pointer<Int32> supportedTextSelection)>>
      get_SupportedTextSelection;
}
