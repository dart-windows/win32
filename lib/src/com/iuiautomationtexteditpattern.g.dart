// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../extensions/iunknown.dart';
import '../types.dart';
import 'iuiautomationtextpattern.g.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IUIAutomationTextEditPattern =
    '{17e21576-996c-4870-99d9-bff323380c06}';

/// Provides access to a control that modifies text, for example a control that
/// performs auto-correction or enables input composition through an Input
/// Method Editor (IME).
///
/// {@category com}
class IUIAutomationTextEditPattern extends IUIAutomationTextPattern {
  IUIAutomationTextEditPattern(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationTextEditPatternVtbl>().ref;

  final IUIAutomationTextEditPatternVtbl _vtable;

  factory IUIAutomationTextEditPattern.from(IUnknown interface) =>
      IUIAutomationTextEditPattern(
          interface.toInterface(IID_IUIAutomationTextEditPattern));

  int getActiveComposition(Pointer<VTablePointer> range) =>
      _vtable.GetActiveComposition.asFunction<
          int Function(
              VTablePointer, Pointer<VTablePointer> range)>()(ptr, range);

  int getConversionTarget(Pointer<VTablePointer> range) =>
      _vtable.GetConversionTarget.asFunction<
          int Function(
              VTablePointer, Pointer<VTablePointer> range)>()(ptr, range);
}

/// @nodoc
base class IUIAutomationTextEditPatternVtbl extends Struct {
  external IUIAutomationTextPatternVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> range)>>
      GetActiveComposition;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> range)>>
      GetConversionTarget;
}