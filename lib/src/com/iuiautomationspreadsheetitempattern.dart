// iuiautomationspreadsheetitempattern.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../exceptions.dart';
import '../macros.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IUIAutomationSpreadsheetItemPattern =
    '{7d4fb86c-8d34-40e1-8e83-62c15204e335}';

/// Enables a client application to retrieve information about an item
/// (cell) in a spreadsheet.
///
/// {@category com}
class IUIAutomationSpreadsheetItemPattern extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IUIAutomationSpreadsheetItemPattern(super.ptr)
      : _vtable =
            ptr.value.value.cast<IUIAutomationSpreadsheetItemPatternVtbl>().ref;

  final IUIAutomationSpreadsheetItemPatternVtbl _vtable;

  factory IUIAutomationSpreadsheetItemPattern.from(IUnknown interface) =>
      IUIAutomationSpreadsheetItemPattern(
          interface.toInterface(IID_IUIAutomationSpreadsheetItemPattern));

  Pointer<Utf16> get currentFormula {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = _vtable.get_CurrentFormula.asFunction<
              int Function(VTablePointer, Pointer<Pointer<Utf16>> retVal)>()(
          ptr.value, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int getCurrentAnnotationObjects(Pointer<Pointer<VTablePointer>> retVal) =>
      _vtable.GetCurrentAnnotationObjects.asFunction<
          int Function(VTablePointer,
              Pointer<Pointer<VTablePointer>> retVal)>()(ptr.value, retVal);

  int getCurrentAnnotationTypes(Pointer<Pointer<SAFEARRAY>> retVal) =>
      _vtable.GetCurrentAnnotationTypes.asFunction<
          int Function(VTablePointer,
              Pointer<Pointer<SAFEARRAY>> retVal)>()(ptr.value, retVal);

  Pointer<Utf16> get cachedFormula {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = _vtable.get_CachedFormula.asFunction<
              int Function(VTablePointer, Pointer<Pointer<Utf16>> retVal)>()(
          ptr.value, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int getCachedAnnotationObjects(Pointer<Pointer<VTablePointer>> retVal) =>
      _vtable.GetCachedAnnotationObjects.asFunction<
          int Function(VTablePointer,
              Pointer<Pointer<VTablePointer>> retVal)>()(ptr.value, retVal);

  int getCachedAnnotationTypes(Pointer<Pointer<SAFEARRAY>> retVal) =>
      _vtable.GetCachedAnnotationTypes.asFunction<
          int Function(VTablePointer,
              Pointer<Pointer<SAFEARRAY>> retVal)>()(ptr.value, retVal);
}

/// @nodoc
base class IUIAutomationSpreadsheetItemPatternVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Pointer<Utf16>> retVal)>>
      get_CurrentFormula;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Pointer<VTablePointer>> retVal)>>
      GetCurrentAnnotationObjects;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Pointer<SAFEARRAY>> retVal)>>
      GetCurrentAnnotationTypes;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Pointer<Utf16>> retVal)>>
      get_CachedFormula;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Pointer<VTablePointer>> retVal)>>
      GetCachedAnnotationObjects;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Pointer<SAFEARRAY>> retVal)>>
      GetCachedAnnotationTypes;
}
