// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../extensions/iunknown.dart';
import '../types.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IUIAutomationValuePattern = '{a94cd8b1-0844-4cd6-9d2d-640537ab39e9}';

/// Provides access to a control that contains a value that does not span a
/// range and that can be represented as a string.
///
/// {@category com}
class IUIAutomationValuePattern extends IUnknown {
  IUIAutomationValuePattern(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationValuePatternVtbl>().ref;

  final IUIAutomationValuePatternVtbl _vtable;

  factory IUIAutomationValuePattern.from(IUnknown interface) =>
      IUIAutomationValuePattern(
          interface.toInterface(IID_IUIAutomationValuePattern));

  int setValue(Pointer<Utf16> val) => _vtable.SetValue.asFunction<
      int Function(VTablePointer, Pointer<Utf16> val)>()(ptr, val);

  int get_CurrentValue(Pointer<Pointer<Utf16>> retVal) =>
      _vtable.get_CurrentValue.asFunction<
          int Function(
              VTablePointer, Pointer<Pointer<Utf16>> retVal)>()(ptr, retVal);

  int get_CurrentIsReadOnly(Pointer<Int32> retVal) =>
      _vtable.get_CurrentIsReadOnly
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr, retVal);

  int get_CachedValue(Pointer<Pointer<Utf16>> retVal) =>
      _vtable.get_CachedValue.asFunction<
          int Function(
              VTablePointer, Pointer<Pointer<Utf16>> retVal)>()(ptr, retVal);

  int get_CachedIsReadOnly(Pointer<Int32> retVal) =>
      _vtable.get_CachedIsReadOnly
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr, retVal);
}

/// @nodoc
base class IUIAutomationValuePatternVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Utf16> val)>>
      SetValue;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Pointer<Utf16>> retVal)>>
      get_CurrentValue;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CurrentIsReadOnly;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Pointer<Utf16>> retVal)>>
      get_CachedValue;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CachedIsReadOnly;
}
