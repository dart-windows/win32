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
const IID_IUIAutomationSynchronizedInputPattern =
    '{2233be0b-afb7-448b-9fda-3b378aa5eae1}';

/// Provides access to the keyboard or mouse input of a control.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationsynchronizedinputpattern>.
///
/// {@category com}
class IUIAutomationSynchronizedInputPattern extends IUnknown {
  IUIAutomationSynchronizedInputPattern(super.ptr)
      : _vtable =
            ptr.value.cast<IUIAutomationSynchronizedInputPatternVtbl>().ref;

  final IUIAutomationSynchronizedInputPatternVtbl _vtable;

  factory IUIAutomationSynchronizedInputPattern.from(IUnknown interface) =>
      IUIAutomationSynchronizedInputPattern(
          interface.toInterface(IID_IUIAutomationSynchronizedInputPattern));

  /// Causes the Microsoft UI Automation provider to start listening for mouse or
  /// keyboard input.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationsynchronizedinputpattern-startlistening>.
  int startListening(int inputType) => _vtable.StartListening.asFunction<
      int Function(VTablePointer lpVtbl, int inputType)>()(ptr, inputType);

  /// Causes the Microsoft UI Automation provider to stop listening for mouse or
  /// keyboard input.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationsynchronizedinputpattern-cancel>.
  int cancel() =>
      _vtable.Cancel.asFunction<int Function(VTablePointer lpVtbl)>()(ptr);
}

/// @nodoc
base class IUIAutomationSynchronizedInputPatternVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Int32 inputType)>>
      StartListening;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      Cancel;
}
