// iuiautomationtextrange2.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'iuiautomationtextrange.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IUIAutomationTextRange2 = '{bb9b40e0-5e04-46bd-9be0-4b601b9afad4}';

/// Extends the IUIAutomationTextRange interface to enable Microsoft UI
/// Automation clients to programmatically invoke context menus.
///
/// {@category com}
class IUIAutomationTextRange2 extends IUIAutomationTextRange {
  // vtable begins at 21, is 1 entries long.
  IUIAutomationTextRange2(super.ptr);

  factory IUIAutomationTextRange2.from(IUnknown interface) =>
      IUIAutomationTextRange2(
          interface.toInterface(IID_IUIAutomationTextRange2));

  int showContextMenu() => ptr.ref.vtable
      .elementAt(21)
      .cast<Pointer<NativeFunction<Int32 Function(Pointer)>>>()
      .value
      .asFunction<int Function(Pointer)>()(ptr.ref.lpVtbl);
}
