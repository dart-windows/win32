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
const IID_IUIAutomationObjectModelPattern =
    '{71c284b3-c14d-4d14-981e-19751b0d756d}';

/// Provides access to the underlying object model implemented by a control or
/// application.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationobjectmodelpattern>.
///
/// {@category com}
class IUIAutomationObjectModelPattern extends IUnknown {
  IUIAutomationObjectModelPattern(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationObjectModelPatternVtbl>().ref;

  final IUIAutomationObjectModelPatternVtbl _vtable;

  factory IUIAutomationObjectModelPattern.from(IUnknown interface) =>
      IUIAutomationObjectModelPattern(
          interface.toInterface(IID_IUIAutomationObjectModelPattern));

  /// Retrieves an interface used to access the underlying object model of the
  /// provider.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationobjectmodelpattern-getunderlyingobjectmodel>.
  int getUnderlyingObjectModel(Pointer<VTablePointer> retVal) =>
      _vtable.GetUnderlyingObjectModel.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> retVal)>()(ptr, retVal);
}

/// @nodoc
base class IUIAutomationObjectModelPatternVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> retVal)>>
      GetUnderlyingObjectModel;
}
