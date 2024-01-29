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
const IID_IUIAutomationTablePattern = '{620e691c-ea96-4710-a850-754b24ce2417}';

/// Provides access to a control that acts as a container for a collection of
/// child elements.
///
/// {@category com}
class IUIAutomationTablePattern extends IUnknown {
  IUIAutomationTablePattern(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationTablePatternVtbl>().ref;

  final IUIAutomationTablePatternVtbl _vtable;

  factory IUIAutomationTablePattern.from(IUnknown interface) =>
      IUIAutomationTablePattern(
          interface.toInterface(IID_IUIAutomationTablePattern));

  int getCurrentRowHeaders(Pointer<VTablePointer> retVal) =>
      _vtable.GetCurrentRowHeaders.asFunction<
          int Function(
              VTablePointer, Pointer<VTablePointer> retVal)>()(ptr, retVal);

  int getCurrentColumnHeaders(Pointer<VTablePointer> retVal) =>
      _vtable.GetCurrentColumnHeaders.asFunction<
          int Function(
              VTablePointer, Pointer<VTablePointer> retVal)>()(ptr, retVal);

  int get_CurrentRowOrColumnMajor(Pointer<Int32> retVal) =>
      _vtable.get_CurrentRowOrColumnMajor
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr, retVal);

  int getCachedRowHeaders(Pointer<VTablePointer> retVal) =>
      _vtable.GetCachedRowHeaders.asFunction<
          int Function(
              VTablePointer, Pointer<VTablePointer> retVal)>()(ptr, retVal);

  int getCachedColumnHeaders(Pointer<VTablePointer> retVal) =>
      _vtable.GetCachedColumnHeaders.asFunction<
          int Function(
              VTablePointer, Pointer<VTablePointer> retVal)>()(ptr, retVal);

  int get_CachedRowOrColumnMajor(Pointer<Int32> retVal) =>
      _vtable.get_CachedRowOrColumnMajor
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr, retVal);
}

/// @nodoc
base class IUIAutomationTablePatternVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> retVal)>>
      GetCurrentRowHeaders;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> retVal)>>
      GetCurrentColumnHeaders;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CurrentRowOrColumnMajor;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> retVal)>>
      GetCachedRowHeaders;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> retVal)>>
      GetCachedColumnHeaders;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CachedRowOrColumnMajor;
}
