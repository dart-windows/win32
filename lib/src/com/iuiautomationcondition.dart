// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../extensions/iunknown.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IUIAutomationCondition = '{352ffba8-0973-437c-a61f-f64cafd81df9}';

/// This is the primary interface for conditions used in filtering when
/// searching for elements in the UI Automation tree.
///
/// {@category com}
class IUIAutomationCondition extends IUnknown {
  IUIAutomationCondition(super.ptr);

  factory IUIAutomationCondition.from(IUnknown interface) =>
      IUIAutomationCondition(interface.toInterface(IID_IUIAutomationCondition));
}

/// @nodoc
base class IUIAutomationConditionVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
}
