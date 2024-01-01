// iuiautomationcondition.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'iunknown.dart';

/// @nodoc
const IID_IUIAutomationCondition = '{352ffba8-0973-437c-a61f-f64cafd81df9}';

/// This is the primary interface for conditions used in filtering when
/// searching for elements in the UI Automation tree.
///
/// {@category com}
class IUIAutomationCondition extends IUnknown {
  // vtable begins at 3, is 0 entries long.
  IUIAutomationCondition(super.ptr);

  factory IUIAutomationCondition.from(IUnknown interface) =>
      IUIAutomationCondition(interface.toInterface(IID_IUIAutomationCondition));
}
