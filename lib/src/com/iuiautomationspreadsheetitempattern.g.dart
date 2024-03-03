// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../exceptions.dart';
import '../extensions/iunknown.dart';
import '../macros.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IUIAutomationSpreadsheetItemPattern =
    '{7d4fb86c-8d34-40e1-8e83-62c15204e335}';

/// Enables a client application to retrieve information about an item (cell) in
/// a spreadsheet.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationspreadsheetitempattern>.
///
/// {@category com}
class IUIAutomationSpreadsheetItemPattern extends IUnknown {
  IUIAutomationSpreadsheetItemPattern(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationSpreadsheetItemPatternVtbl>().ref;

  final IUIAutomationSpreadsheetItemPatternVtbl _vtable;

  factory IUIAutomationSpreadsheetItemPattern.from(IUnknown interface) =>
      IUIAutomationSpreadsheetItemPattern(
          interface.toInterface(IID_IUIAutomationSpreadsheetItemPattern));

  Pointer<Utf16> get currentFormula {
    final retVal = calloc<Pointer<Utf16>>();
    try {
      final hr = _vtable.get_CurrentFormula.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<Utf16>> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  int getCurrentAnnotationObjects(Pointer<VTablePointer> retVal) =>
      _vtable.GetCurrentAnnotationObjects.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> retVal)>()(ptr, retVal);

  int getCurrentAnnotationTypes(Pointer<Pointer<SAFEARRAY>> retVal) =>
      _vtable.GetCurrentAnnotationTypes.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<SAFEARRAY>> retVal)>()(ptr, retVal);

  Pointer<Utf16> get cachedFormula {
    final retVal = calloc<Pointer<Utf16>>();
    try {
      final hr = _vtable.get_CachedFormula.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<Utf16>> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  int getCachedAnnotationObjects(Pointer<VTablePointer> retVal) =>
      _vtable.GetCachedAnnotationObjects.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> retVal)>()(ptr, retVal);

  int getCachedAnnotationTypes(Pointer<Pointer<SAFEARRAY>> retVal) =>
      _vtable.GetCachedAnnotationTypes.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<SAFEARRAY>> retVal)>()(ptr, retVal);
}

/// @nodoc
base class IUIAutomationSpreadsheetItemPatternVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Pointer<Utf16>> retVal)>>
      get_CurrentFormula;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> retVal)>>
      GetCurrentAnnotationObjects;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Pointer<SAFEARRAY>> retVal)>>
      GetCurrentAnnotationTypes;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Pointer<Utf16>> retVal)>>
      get_CachedFormula;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> retVal)>>
      GetCachedAnnotationObjects;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Pointer<SAFEARRAY>> retVal)>>
      GetCachedAnnotationTypes;
}
