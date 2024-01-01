// iuiautomationspreadsheetpattern.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IUIAutomationSpreadsheetPattern =
    '{7517a7c8-faae-4de9-9f08-29b91e8595c1}';

/// Enables a client application to access the items (cells) in a
/// spreadsheet.
///
/// {@category com}
class IUIAutomationSpreadsheetPattern extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IUIAutomationSpreadsheetPattern(super.ptr)
      : _vtable =
            ptr.ref.vtable.cast<IUIAutomationSpreadsheetPatternVtbl>().ref;

  final IUIAutomationSpreadsheetPatternVtbl _vtable;

  factory IUIAutomationSpreadsheetPattern.from(IUnknown interface) =>
      IUIAutomationSpreadsheetPattern(
          interface.toInterface(IID_IUIAutomationSpreadsheetPattern));

  int getItemByName(Pointer<Utf16> name, Pointer<Pointer<COMObject>> element) =>
      _vtable.GetItemByName.asFunction<
              int Function(Pointer, Pointer<Utf16> name,
                  Pointer<Pointer<COMObject>> element)>()(
          ptr.ref.lpVtbl, name, element);
}

/// @nodoc
base class IUIAutomationSpreadsheetPatternVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<Utf16> name,
              Pointer<Pointer<COMObject>> element)>> GetItemByName;
}
