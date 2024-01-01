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
  IUIAutomationScrollItemPattern(super.ptr);

  factory IUIAutomationScrollItemPattern.from(IUnknown interface) =>
      IUIAutomationScrollItemPattern(
          interface.toInterface(IID_IUIAutomationScrollItemPattern));

  int scrollIntoView() => ptr.ref.vtable
      .elementAt(3)
      .cast<Pointer<NativeFunction<Int32 Function(Pointer)>>>()
      .value
      .asFunction<int Function(Pointer)>()(ptr.ref.lpVtbl);
}
