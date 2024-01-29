// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../extensions/iunknown.dart';
import '../types.dart';
import 'iuiautomationelement4.g.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IUIAutomationElement5 = '{98141c1d-0d0e-4175-bbe2-6bff455842a7}';

/// Extends the IUIAutomationElement4 interface to provide access to current and
/// cached landmark data.
///
/// {@category com}
class IUIAutomationElement5 extends IUIAutomationElement4 {
  IUIAutomationElement5(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationElement5Vtbl>().ref;

  final IUIAutomationElement5Vtbl _vtable;

  factory IUIAutomationElement5.from(IUnknown interface) =>
      IUIAutomationElement5(interface.toInterface(IID_IUIAutomationElement5));

  int get_CurrentLandmarkType(Pointer<Int32> retVal) =>
      _vtable.get_CurrentLandmarkType
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr, retVal);

  int get_CurrentLocalizedLandmarkType(Pointer<Pointer<Utf16>> retVal) =>
      _vtable.get_CurrentLocalizedLandmarkType.asFunction<
          int Function(
              VTablePointer, Pointer<Pointer<Utf16>> retVal)>()(ptr, retVal);

  int get_CachedLandmarkType(Pointer<Int32> retVal) =>
      _vtable.get_CachedLandmarkType
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr, retVal);

  int get_CachedLocalizedLandmarkType(Pointer<Pointer<Utf16>> retVal) =>
      _vtable.get_CachedLocalizedLandmarkType.asFunction<
          int Function(
              VTablePointer, Pointer<Pointer<Utf16>> retVal)>()(ptr, retVal);
}

/// @nodoc
base class IUIAutomationElement5Vtbl extends Struct {
  external IUIAutomationElement4Vtbl baseVtbl;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CurrentLandmarkType;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Pointer<Utf16>> retVal)>>
      get_CurrentLocalizedLandmarkType;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CachedLandmarkType;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Pointer<Utf16>> retVal)>>
      get_CachedLocalizedLandmarkType;
}
