// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../exceptions.dart';
import '../extensions/iunknown.dart';
import '../structs.g.dart';
import '../types.dart';
import 'iuiautomationtextpattern.g.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IUIAutomationTextPattern2 = '{506a921a-fcc9-409f-b23b-37eb74106872}';

/// Extends the IUIAutomationTextPattern interface.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationtextpattern2>.
///
/// {@category com}
class IUIAutomationTextPattern2 extends IUIAutomationTextPattern {
  IUIAutomationTextPattern2(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationTextPattern2Vtbl>().ref;

  final IUIAutomationTextPattern2Vtbl _vtable;

  /// Creates a new instance of `IUIAutomationTextPattern2` from an existing
  /// [interface].
  ///
  /// This constructor invokes the [queryInterface] method to obtain a reference
  /// to the `IUIAutomationTextPattern2` interface with the provided interface.
  ///
  /// Throws a [WindowsException] if the `queryInterface` call fails.
  factory IUIAutomationTextPattern2.from(IUnknown interface) =>
      IUIAutomationTextPattern2(
          interface.toInterface(IID_IUIAutomationTextPattern2));

  /// Retrieves a text range containing the text that is the target of the
  /// annotation associated with the specified annotation element.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtextpattern2-rangefromannotation>.
  int rangeFromAnnotation(
          VTablePointer annotation, Pointer<VTablePointer> range) =>
      _vtable.RangeFromAnnotation.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer annotation,
              Pointer<VTablePointer> range)>()(ptr, annotation, range);

  /// Retrieves a zero-length text range at the location of the caret that belongs
  /// to the text-based control.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtextpattern2-getcaretrange>.
  int getCaretRange(Pointer<BOOL> isActive, Pointer<VTablePointer> range) =>
      _vtable.GetCaretRange.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<BOOL> isActive,
              Pointer<VTablePointer> range)>()(ptr, isActive, range);
}

/// @nodoc
base class IUIAutomationTextPattern2Vtbl extends Struct {
  external IUIAutomationTextPatternVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer annotation,
              Pointer<VTablePointer> range)>> RangeFromAnnotation;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<BOOL> isActive,
              Pointer<VTablePointer> range)>> GetCaretRange;
}
