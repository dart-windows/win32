// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../extensions/iunknown.dart';
import '../structs.g.dart';
import '../types.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IUIAutomationDropTargetPattern =
    '{69a095f7-eee4-430e-a46b-fb73b1ae39a5}';

/// Provides access to drag-and-drop information exposed by a Microsoft UI
/// Automation provider for an element that can be the drop target of a
/// drag-and-drop operation.
///
/// {@category com}
class IUIAutomationDropTargetPattern extends IUnknown {
  IUIAutomationDropTargetPattern(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationDropTargetPatternVtbl>().ref;

  final IUIAutomationDropTargetPatternVtbl _vtable;

  factory IUIAutomationDropTargetPattern.from(IUnknown interface) =>
      IUIAutomationDropTargetPattern(
          interface.toInterface(IID_IUIAutomationDropTargetPattern));

  int get_CurrentDropTargetEffect(Pointer<Pointer<Utf16>> retVal) =>
      _vtable.get_CurrentDropTargetEffect.asFunction<
          int Function(
              VTablePointer, Pointer<Pointer<Utf16>> retVal)>()(ptr, retVal);

  int get_CachedDropTargetEffect(Pointer<Pointer<Utf16>> retVal) =>
      _vtable.get_CachedDropTargetEffect.asFunction<
          int Function(
              VTablePointer, Pointer<Pointer<Utf16>> retVal)>()(ptr, retVal);

  int get_CurrentDropTargetEffects(Pointer<Pointer<SAFEARRAY>> retVal) =>
      _vtable.get_CurrentDropTargetEffects.asFunction<
          int Function(VTablePointer,
              Pointer<Pointer<SAFEARRAY>> retVal)>()(ptr, retVal);

  int get_CachedDropTargetEffects(Pointer<Pointer<SAFEARRAY>> retVal) =>
      _vtable.get_CachedDropTargetEffects.asFunction<
          int Function(VTablePointer,
              Pointer<Pointer<SAFEARRAY>> retVal)>()(ptr, retVal);
}

/// @nodoc
base class IUIAutomationDropTargetPatternVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Pointer<Utf16>> retVal)>>
      get_CurrentDropTargetEffect;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Pointer<Utf16>> retVal)>>
      get_CachedDropTargetEffect;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Pointer<SAFEARRAY>> retVal)>>
      get_CurrentDropTargetEffects;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Pointer<SAFEARRAY>> retVal)>>
      get_CachedDropTargetEffects;
}
