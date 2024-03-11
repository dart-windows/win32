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
const IID_IUIAutomationStylesPattern = '{85b5f0a2-bd79-484a-ad2b-388c9838d5fb}';

/// Enables Microsoft UI Automation clients to retrieve the visual styles
/// associated with an element in a document.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationstylespattern>.
///
/// {@category com}
class IUIAutomationStylesPattern extends IUnknown {
  IUIAutomationStylesPattern(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationStylesPatternVtbl>().ref;

  final IUIAutomationStylesPatternVtbl _vtable;

  /// Creates a new instance of `IUIAutomationStylesPattern` from an existing
  /// [interface].
  ///
  /// This constructor invokes the [queryInterface] method to obtain a reference
  /// to the `IUIAutomationStylesPattern` interface with the provided interface.
  ///
  /// Throws a [WindowsException] if the `queryInterface` call fails.
  factory IUIAutomationStylesPattern.from(IUnknown interface) =>
      IUIAutomationStylesPattern(
          interface.toInterface(IID_IUIAutomationStylesPattern));

  /// Retrieves the identifier of the visual style associated with an element in a
  /// document.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationstylespattern-get_currentstyleid>.
  int get currentStyleId {
    final retVal = calloc<Int32>();
    try {
      final hr = _vtable.get_CurrentStyleId.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Retrieves the name of the visual style associated with an element in a
  /// document.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationstylespattern-get_currentstylename>.
  Pointer<Utf16> get currentStyleName {
    final retVal = calloc<Pointer<Utf16>>();
    try {
      final hr = _vtable.get_CurrentStyleName.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<Utf16>> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Retrieves the fill color of an element in a document.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationstylespattern-get_currentfillcolor>.
  int get currentFillColor {
    final retVal = calloc<Int32>();
    try {
      final hr = _vtable.get_CurrentFillColor.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  Pointer<Utf16> get currentFillPatternStyle {
    final retVal = calloc<Pointer<Utf16>>();
    try {
      final hr = _vtable.get_CurrentFillPatternStyle.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<Utf16>> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Retrieves the shape of an element in a document.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationstylespattern-get_currentshape>.
  Pointer<Utf16> get currentShape {
    final retVal = calloc<Pointer<Utf16>>();
    try {
      final hr = _vtable.get_CurrentShape.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<Utf16>> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Retrieves the color of the pattern used to fill an element in a document.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationstylespattern-get_currentfillpatterncolor>.
  int get currentFillPatternColor {
    final retVal = calloc<Int32>();
    try {
      final hr = _vtable.get_CurrentFillPatternColor.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Retrieves a localized string that contains the list of extended properties
  /// for an element in a document.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationstylespattern-get_currentextendedproperties>.
  Pointer<Utf16> get currentExtendedProperties {
    final retVal = calloc<Pointer<Utf16>>();
    try {
      final hr = _vtable.get_CurrentExtendedProperties.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<Utf16>> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  int getCurrentExtendedPropertiesAsArray(
          Pointer<Pointer<ExtendedProperty>> propertyArray,
          Pointer<Int32> propertyCount) =>
      _vtable.GetCurrentExtendedPropertiesAsArray.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  Pointer<Pointer<ExtendedProperty>> propertyArray,
                  Pointer<Int32> propertyCount)>()(
          ptr, propertyArray, propertyCount);

  /// Retrieves the cached identifier of the visual style associated with an
  /// element in a document.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationstylespattern-get_cachedstyleid>.
  int get cachedStyleId {
    final retVal = calloc<Int32>();
    try {
      final hr = _vtable.get_CachedStyleId.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Retrieves the cached name of the visual style associated with an element in
  /// a document.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationstylespattern-get_cachedstylename>.
  Pointer<Utf16> get cachedStyleName {
    final retVal = calloc<Pointer<Utf16>>();
    try {
      final hr = _vtable.get_CachedStyleName.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<Utf16>> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Retrieves the cached fill color of an element in a document.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationstylespattern-get_cachedfillcolor>.
  int get cachedFillColor {
    final retVal = calloc<Int32>();
    try {
      final hr = _vtable.get_CachedFillColor.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  Pointer<Utf16> get cachedFillPatternStyle {
    final retVal = calloc<Pointer<Utf16>>();
    try {
      final hr = _vtable.get_CachedFillPatternStyle.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<Utf16>> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Retrieves the cached shape of an element in a document.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationstylespattern-get_cachedshape>.
  Pointer<Utf16> get cachedShape {
    final retVal = calloc<Pointer<Utf16>>();
    try {
      final hr = _vtable.get_CachedShape.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<Utf16>> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Retrieves the cached color of the pattern used to fill an element in a
  /// document.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationstylespattern-get_cachedfillpatterncolor>.
  int get cachedFillPatternColor {
    final retVal = calloc<Int32>();
    try {
      final hr = _vtable.get_CachedFillPatternColor.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Retrieves a cached localized string that contains the list of extended
  /// properties for an element in a document.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationstylespattern-get_cachedextendedproperties>.
  Pointer<Utf16> get cachedExtendedProperties {
    final retVal = calloc<Pointer<Utf16>>();
    try {
      final hr = _vtable.get_CachedExtendedProperties.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<Utf16>> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  int getCachedExtendedPropertiesAsArray(
          Pointer<Pointer<ExtendedProperty>> propertyArray,
          Pointer<Int32> propertyCount) =>
      _vtable.GetCachedExtendedPropertiesAsArray.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  Pointer<Pointer<ExtendedProperty>> propertyArray,
                  Pointer<Int32> propertyCount)>()(
          ptr, propertyArray, propertyCount);
}

/// @nodoc
base class IUIAutomationStylesPatternVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> retVal)>>
      get_CurrentStyleId;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Pointer<Utf16>> retVal)>>
      get_CurrentStyleName;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> retVal)>>
      get_CurrentFillColor;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Pointer<Utf16>> retVal)>>
      get_CurrentFillPatternStyle;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Pointer<Utf16>> retVal)>>
      get_CurrentShape;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> retVal)>>
      get_CurrentFillPatternColor;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Pointer<Utf16>> retVal)>>
      get_CurrentExtendedProperties;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl,
                  Pointer<Pointer<ExtendedProperty>> propertyArray,
                  Pointer<Int32> propertyCount)>>
      GetCurrentExtendedPropertiesAsArray;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> retVal)>>
      get_CachedStyleId;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Pointer<Utf16>> retVal)>>
      get_CachedStyleName;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> retVal)>>
      get_CachedFillColor;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Pointer<Utf16>> retVal)>>
      get_CachedFillPatternStyle;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Pointer<Utf16>> retVal)>>
      get_CachedShape;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> retVal)>>
      get_CachedFillPatternColor;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Pointer<Utf16>> retVal)>>
      get_CachedExtendedProperties;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl,
                  Pointer<Pointer<ExtendedProperty>> propertyArray,
                  Pointer<Int32> propertyCount)>>
      GetCachedExtendedPropertiesAsArray;
}
