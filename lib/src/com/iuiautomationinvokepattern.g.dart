// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../extensions/iunknown.dart';
import '../structs.g.dart';
import '../types.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IUIAutomationInvokePattern = '{fb377fbe-8ea6-46d5-9c73-6499642d3059}';

/// Exposes a method that enables a client application to invoke the action of a
/// control (typically a button).
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationinvokepattern>.
///
/// {@category com}
class IUIAutomationInvokePattern extends IUnknown {
  IUIAutomationInvokePattern(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationInvokePatternVtbl>().ref;

  final IUIAutomationInvokePatternVtbl _vtable;

  factory IUIAutomationInvokePattern.from(IUnknown interface) =>
      IUIAutomationInvokePattern(
          interface.toInterface(IID_IUIAutomationInvokePattern));

  /// Invokes the action of a control, such as a button click.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationinvokepattern-invoke>.
  int invoke() =>
      _vtable.Invoke.asFunction<int Function(VTablePointer lpVtbl)>()(ptr);
}

/// @nodoc
base class IUIAutomationInvokePatternVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      Invoke;
}
