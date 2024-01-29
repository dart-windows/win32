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
const IID_IUIAutomationGridItemPattern =
    '{78f8ef57-66c3-4e09-bd7c-e79b2004894d}';

/// Provides access to a child control in a grid-style container that supports
/// the IUIAutomationGridPattern interface.
///
/// {@category com}
class IUIAutomationGridItemPattern extends IUnknown {
  IUIAutomationGridItemPattern(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationGridItemPatternVtbl>().ref;

  final IUIAutomationGridItemPatternVtbl _vtable;

  factory IUIAutomationGridItemPattern.from(IUnknown interface) =>
      IUIAutomationGridItemPattern(
          interface.toInterface(IID_IUIAutomationGridItemPattern));

  int get_CurrentContainingGrid(Pointer<VTablePointer> retVal) =>
      _vtable.get_CurrentContainingGrid.asFunction<
          int Function(
              VTablePointer, Pointer<VTablePointer> retVal)>()(ptr, retVal);

  int get_CurrentRow(Pointer<Int32> retVal) => _vtable.get_CurrentRow
          .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
      ptr, retVal);

  int get_CurrentColumn(Pointer<Int32> retVal) => _vtable.get_CurrentColumn
          .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
      ptr, retVal);

  int get_CurrentRowSpan(Pointer<Int32> retVal) => _vtable.get_CurrentRowSpan
          .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
      ptr, retVal);

  int get_CurrentColumnSpan(Pointer<Int32> retVal) =>
      _vtable.get_CurrentColumnSpan
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr, retVal);

  int get_CachedContainingGrid(Pointer<VTablePointer> retVal) =>
      _vtable.get_CachedContainingGrid.asFunction<
          int Function(
              VTablePointer, Pointer<VTablePointer> retVal)>()(ptr, retVal);

  int get_CachedRow(Pointer<Int32> retVal) => _vtable.get_CachedRow
          .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
      ptr, retVal);

  int get_CachedColumn(Pointer<Int32> retVal) => _vtable.get_CachedColumn
          .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
      ptr, retVal);

  int get_CachedRowSpan(Pointer<Int32> retVal) => _vtable.get_CachedRowSpan
          .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
      ptr, retVal);

  int get_CachedColumnSpan(Pointer<Int32> retVal) =>
      _vtable.get_CachedColumnSpan
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr, retVal);
}

/// @nodoc
base class IUIAutomationGridItemPatternVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> retVal)>>
      get_CurrentContainingGrid;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CurrentRow;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CurrentColumn;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CurrentRowSpan;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CurrentColumnSpan;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> retVal)>>
      get_CachedContainingGrid;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CachedRow;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CachedColumn;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CachedRowSpan;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CachedColumnSpan;
}
