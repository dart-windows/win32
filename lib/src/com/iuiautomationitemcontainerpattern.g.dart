// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../extensions/iunknown.dart';
import '../types.dart';
import '../variant.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IUIAutomationItemContainerPattern =
    '{c690fdb2-27a8-423c-812d-429773c9084e}';

/// Exposes a method that retrieves an item from a container, such as a virtual
/// list.
///
/// {@category com}
class IUIAutomationItemContainerPattern extends IUnknown {
  IUIAutomationItemContainerPattern(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationItemContainerPatternVtbl>().ref;

  final IUIAutomationItemContainerPatternVtbl _vtable;

  factory IUIAutomationItemContainerPattern.from(IUnknown interface) =>
      IUIAutomationItemContainerPattern(
          interface.toInterface(IID_IUIAutomationItemContainerPattern));

  int findItemByProperty(VTablePointer pStartAfter, int propertyId,
          VARIANT value, Pointer<VTablePointer> pFound) =>
      _vtable.FindItemByProperty.asFunction<
              int Function(
                  VTablePointer,
                  VTablePointer pStartAfter,
                  int propertyId,
                  VARIANT value,
                  Pointer<VTablePointer> pFound)>()(
          ptr, pStartAfter, propertyId, value, pFound);
}

/// @nodoc
base class IUIAutomationItemContainerPatternVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              VTablePointer pStartAfter,
              Int32 propertyId,
              VARIANT value,
              Pointer<VTablePointer> pFound)>> FindItemByProperty;
}
