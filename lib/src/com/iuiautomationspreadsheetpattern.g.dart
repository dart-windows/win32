// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../exceptions.dart';
import '../extensions/iunknown.dart';
import '../structs.g.dart';
import '../types.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IUIAutomationSpreadsheetPattern =
    '{7517a7c8-faae-4de9-9f08-29b91e8595c1}';

/// Enables a client application to access the items (cells) in a spreadsheet.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationspreadsheetpattern>.
///
/// {@category com}
class IUIAutomationSpreadsheetPattern extends IUnknown {
  IUIAutomationSpreadsheetPattern(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationSpreadsheetPatternVtbl>().ref;

  final IUIAutomationSpreadsheetPatternVtbl _vtable;

  /// Creates a new instance of `IUIAutomationSpreadsheetPattern` from an
  /// existing [interface].
  ///
  /// This constructor invokes the [queryInterface] method to obtain a reference
  /// to the `IUIAutomationSpreadsheetPattern` interface with the provided
  /// interface.
  ///
  /// Throws a [WindowsException] if the `queryInterface` call fails.
  factory IUIAutomationSpreadsheetPattern.from(IUnknown interface) =>
      IUIAutomationSpreadsheetPattern(
          interface.toInterface(IID_IUIAutomationSpreadsheetPattern));

  /// Retrieves a UI Automation element that represents the spreadsheet cell that
  /// has the specified name.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationspreadsheetpattern-getitembyname>.
  int getItemByName(Pointer<Utf16> name, Pointer<VTablePointer> element) =>
      _vtable.GetItemByName.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<Utf16> name,
              Pointer<VTablePointer> element)>()(ptr, name, element);
}

/// @nodoc
base class IUIAutomationSpreadsheetPatternVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<Utf16> name,
              Pointer<VTablePointer> element)>> GetItemByName;
}
