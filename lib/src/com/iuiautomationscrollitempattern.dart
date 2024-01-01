// iuiautomationscrollitempattern.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'iunknown.dart';

/// @nodoc
const IID_IUIAutomationScrollItemPattern =
    '{b488300f-d015-4f19-9c29-bb595e3645ef}';

/// Exposes a method that enables an item in a scrollable view to be placed
/// in a visible portion of the view.
///
/// {@category com}
class IUIAutomationScrollItemPattern extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IUIAutomationScrollItemPattern(super.ptr)
      : _vtable = ptr.ref.vtable.cast<IUIAutomationScrollItemPatternVtbl>().ref;

  final IUIAutomationScrollItemPatternVtbl _vtable;

  factory IUIAutomationScrollItemPattern.from(IUnknown interface) =>
      IUIAutomationScrollItemPattern(
          interface.toInterface(IID_IUIAutomationScrollItemPattern));

  int scrollIntoView() =>
      _vtable.ScrollIntoView.asFunction<int Function(Pointer)>()(
          ptr.ref.lpVtbl);
}

/// @nodoc
base class IUIAutomationScrollItemPatternVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<NativeFunction<Int32 Function(Pointer)>> ScrollIntoView;
}
