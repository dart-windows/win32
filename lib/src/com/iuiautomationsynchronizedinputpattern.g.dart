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
const IID_IUIAutomationSynchronizedInputPattern =
    '{2233be0b-afb7-448b-9fda-3b378aa5eae1}';

/// Provides access to the keyboard or mouse input of a control.
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

  int startListening(int inputType) => _vtable.StartListening.asFunction<
      int Function(VTablePointer, int inputType)>()(ptr, inputType);

  int cancel() => _vtable.Cancel.asFunction<int Function(VTablePointer)>()(ptr);
}

/// @nodoc
base class IUIAutomationSynchronizedInputPatternVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Int32 inputType)>>
      StartListening;
  external Pointer<NativeFunction<Int32 Function(VTablePointer)>> Cancel;
}
