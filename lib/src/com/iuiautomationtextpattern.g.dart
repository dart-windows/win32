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
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationtextpattern>.
///
/// {@category com}
class IUIAutomationTextPattern extends IUnknown {
  IUIAutomationTextPattern(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationTextPatternVtbl>().ref;

  final IUIAutomationTextPatternVtbl _vtable;

  /// Creates a new instance of `IUIAutomationTextPattern` from an existing
  /// [interface].
  ///
  /// This constructor invokes the [queryInterface] method to obtain a reference
  /// to the `IUIAutomationTextPattern` interface with the provided interface.
  ///
  /// Throws a [WindowsException] if the `queryInterface` call fails.
  factory IUIAutomationTextPattern.from(IUnknown interface) =>
      IUIAutomationTextPattern(
          interface.toInterface(IID_IUIAutomationTextPattern));

  /// Retrieves the degenerate (empty) text range nearest to the specified screen
  /// coordinates.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtextpattern-rangefrompoint>.
  int rangeFromPoint(POINT pt, Pointer<VTablePointer> range) =>
      _vtable.RangeFromPoint.asFunction<
          int Function(VTablePointer lpVtbl, POINT pt,
              Pointer<VTablePointer> range)>()(ptr, pt, range);

  /// Retrieves a text range enclosing a child element such as an image,
  /// hyperlink, Microsoft Excel spreadsheet, or other embedded object.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtextpattern-rangefromchild>.
  int rangeFromChild(VTablePointer child, Pointer<VTablePointer> range) =>
      _vtable.RangeFromChild.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer child,
              Pointer<VTablePointer> range)>()(ptr, child, range);

  /// Retrieves a collection of text ranges that represents the currently selected
  /// text in a text-based control.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtextpattern-getselection>.
  int getSelection(Pointer<VTablePointer> ranges) =>
      _vtable.GetSelection.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> ranges)>()(ptr, ranges);

  /// Retrieves an array of disjoint text ranges from a text-based control where
  /// each text range represents a contiguous span of visible text.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtextpattern-getvisibleranges>.
  int getVisibleRanges(Pointer<VTablePointer> ranges) =>
      _vtable.GetVisibleRanges.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> ranges)>()(ptr, ranges);

  /// Retrieves a text range that encloses the main text of a document.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtextpattern-get_documentrange>.
  VTablePointer get documentRange {
    final range = calloc<VTablePointer>();
    try {
      final hr = _vtable.get_DocumentRange.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> range)>()(ptr, range);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = range.value;
      return retValue;
    } finally {
      free(range);
    }
  }

  /// Retrieves a value that specifies the type of text selection that is
  /// supported by the control.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtextpattern-get_supportedtextselection>.
  int get supportedTextSelection {
    final supportedTextSelection = calloc<Int32>();
    try {
      final hr = _vtable.get_SupportedTextSelection.asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<Int32> supportedTextSelection)>()(
          ptr, supportedTextSelection);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = supportedTextSelection.value;
      return retValue;
    } finally {
      free(supportedTextSelection);
    }
  }
}

/// @nodoc
base class IUIAutomationTextPatternVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, POINT pt,
              Pointer<VTablePointer> range)>> RangeFromPoint;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer child,
              Pointer<VTablePointer> range)>> RangeFromChild;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> ranges)>>
      GetSelection;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> ranges)>>
      GetVisibleRanges;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> range)>>
      get_DocumentRange;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Int32> supportedTextSelection)>>
      get_SupportedTextSelection;
}
