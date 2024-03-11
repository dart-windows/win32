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
const IID_IUIAutomationTextEditPattern =
    '{17e21576-996c-4870-99d9-bff323380c06}';

/// Provides access to a control that modifies text, for example a control that
/// performs auto-correction or enables input composition through an Input
/// Method Editor (IME).
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationtexteditpattern>.
///
/// {@category com}
class IUIAutomationTextEditPattern extends IUIAutomationTextPattern {
  IUIAutomationTextEditPattern(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationTextEditPatternVtbl>().ref;

  final IUIAutomationTextEditPatternVtbl _vtable;

  /// Creates a new instance of `IUIAutomationTextEditPattern` from an existing
  /// [interface].
  ///
  /// This constructor invokes the [queryInterface] method to obtain a reference
  /// to the `IUIAutomationTextEditPattern` interface with the provided
  /// interface.
  ///
  /// Throws a [WindowsException] if the `queryInterface` call fails.
  factory IUIAutomationTextEditPattern.from(IUnknown interface) =>
      IUIAutomationTextEditPattern(
          interface.toInterface(IID_IUIAutomationTextEditPattern));

  /// Returns the active composition.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtexteditpattern-getactivecomposition>.
  int getActiveComposition(Pointer<VTablePointer> range) =>
      _vtable.GetActiveComposition.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> range)>()(ptr, range);

  /// Returns the current conversion target range.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtexteditpattern-getconversiontarget>.
  int getConversionTarget(Pointer<VTablePointer> range) =>
      _vtable.GetConversionTarget.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> range)>()(ptr, range);
}

/// @nodoc
base class IUIAutomationTextEditPatternVtbl extends Struct {
  external IUIAutomationTextPatternVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> range)>>
      GetActiveComposition;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> range)>>
      GetConversionTarget;
}
