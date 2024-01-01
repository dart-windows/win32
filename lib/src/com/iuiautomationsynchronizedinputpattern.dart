// iuiautomationsynchronizedinputpattern.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'iunknown.dart';

/// @nodoc
const IID_IUIAutomationSynchronizedInputPattern =
    '{2233be0b-afb7-448b-9fda-3b378aa5eae1}';

/// Provides access to the keyboard or mouse input of a control.
///
/// {@category com}
class IUIAutomationSynchronizedInputPattern extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IUIAutomationSynchronizedInputPattern(super.ptr)
      : _vtable = ptr.ref.vtable
            .cast<IUIAutomationSynchronizedInputPatternVtbl>()
            .ref;

  final IUIAutomationSynchronizedInputPatternVtbl _vtable;

  factory IUIAutomationSynchronizedInputPattern.from(IUnknown interface) =>
      IUIAutomationSynchronizedInputPattern(
          interface.toInterface(IID_IUIAutomationSynchronizedInputPattern));

  int startListening(int inputType) =>
      _vtable.StartListening.asFunction<int Function(Pointer, int inputType)>()(
          ptr.ref.lpVtbl, inputType);

  int cancel() =>
      _vtable.Cancel.asFunction<int Function(Pointer)>()(ptr.ref.lpVtbl);
}

/// @nodoc
base class IUIAutomationSynchronizedInputPatternVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<NativeFunction<Int32 Function(Pointer, Int32 inputType)>>
      StartListening;
  external Pointer<NativeFunction<Int32 Function(Pointer)>> Cancel;
}
