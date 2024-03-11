// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../exceptions.dart';
import '../extensions/iunknown.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IUIAutomationCondition = '{352ffba8-0973-437c-a61f-f64cafd81df9}';

/// This is the primary interface for conditions used in filtering when
/// searching for elements in the UI Automation tree.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationcondition>.
///
/// {@category com}
class IUIAutomationCondition extends IUnknown {
  IUIAutomationCondition(super.ptr);

  /// Creates a new instance of `IUIAutomationCondition` from an existing
  /// [interface].
  ///
  /// This constructor invokes the [queryInterface] method to obtain a reference
  /// to the `IUIAutomationCondition` interface with the provided interface.
  ///
  /// Throws a [WindowsException] if the `queryInterface` call fails.
  factory IUIAutomationCondition.from(IUnknown interface) =>
      IUIAutomationCondition(interface.toInterface(IID_IUIAutomationCondition));
}

/// @nodoc
base class IUIAutomationConditionVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
}
