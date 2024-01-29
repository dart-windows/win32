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
const IID_IUIAutomationGridPattern = '{414c3cdc-856b-4f5b-8538-3131c6302550}';

/// Provides access to a control that acts as a container for a collection of
/// child controls that are organized in a two-dimensional logical coordinate
/// system that can be traversed by row and column.
///
/// {@category com}
class IUIAutomationGridPattern extends IUnknown {
  IUIAutomationGridPattern(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationGridPatternVtbl>().ref;

  final IUIAutomationGridPatternVtbl _vtable;

  factory IUIAutomationGridPattern.from(IUnknown interface) =>
      IUIAutomationGridPattern(
          interface.toInterface(IID_IUIAutomationGridPattern));

  int getItem(int row, int column, Pointer<VTablePointer> element) =>
      _vtable.GetItem.asFunction<
          int Function(VTablePointer, int row, int column,
              Pointer<VTablePointer> element)>()(ptr, row, column, element);

  int get_CurrentRowCount(Pointer<Int32> retVal) => _vtable.get_CurrentRowCount
          .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
      ptr, retVal);

  int get_CurrentColumnCount(Pointer<Int32> retVal) =>
      _vtable.get_CurrentColumnCount
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr, retVal);

  int get_CachedRowCount(Pointer<Int32> retVal) => _vtable.get_CachedRowCount
          .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
      ptr, retVal);

  int get_CachedColumnCount(Pointer<Int32> retVal) =>
      _vtable.get_CachedColumnCount
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr, retVal);
}

/// @nodoc
base class IUIAutomationGridPatternVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Int32 row, Int32 column,
              Pointer<VTablePointer> element)>> GetItem;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CurrentRowCount;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CurrentColumnCount;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CachedRowCount;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CachedColumnCount;
}
