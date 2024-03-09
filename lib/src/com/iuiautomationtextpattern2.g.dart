// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

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

  factory IUIAutomationTextPattern2.from(IUnknown interface) =>
      IUIAutomationTextPattern2(
          interface.toInterface(IID_IUIAutomationTextPattern2));

  int rangeFromAnnotation(
          VTablePointer annotation, Pointer<VTablePointer> range) =>
      _vtable.RangeFromAnnotation.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer annotation,
              Pointer<VTablePointer> range)>()(ptr, annotation, range);

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