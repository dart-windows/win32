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
import 'iuiautomationtransformpattern.g.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IUIAutomationTransformPattern2 =
    '{6d74d017-6ecb-4381-b38b-3c17a48ff1c2}';

/// Extends the IUIAutomationTransformPattern interface to enable Microsoft UI
/// Automation clients to programmatically access the viewport zooming
/// functionality of a control.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationtransformpattern2>.
///
/// {@category com}
class IUIAutomationTransformPattern2 extends IUIAutomationTransformPattern {
  IUIAutomationTransformPattern2(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationTransformPattern2Vtbl>().ref;

  final IUIAutomationTransformPattern2Vtbl _vtable;

  factory IUIAutomationTransformPattern2.from(IUnknown interface) =>
      IUIAutomationTransformPattern2(
          interface.toInterface(IID_IUIAutomationTransformPattern2));

  int zoom(double zoomValue) => _vtable.Zoom.asFunction<
      int Function(VTablePointer lpVtbl, double zoomValue)>()(ptr, zoomValue);

  int zoomByUnit(int zoomUnit) => _vtable.ZoomByUnit.asFunction<
      int Function(VTablePointer lpVtbl, int zoomUnit)>()(ptr, zoomUnit);

  int get currentCanZoom {
    final retVal = calloc<BOOL>();
    try {
      final hr = _vtable.get_CurrentCanZoom.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<BOOL> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  int get cachedCanZoom {
    final retVal = calloc<BOOL>();
    try {
      final hr = _vtable.get_CachedCanZoom.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<BOOL> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  double get currentZoomLevel {
    final retVal = calloc<Double>();
    try {
      final hr = _vtable.get_CurrentZoomLevel.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Double> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  double get cachedZoomLevel {
    final retVal = calloc<Double>();
    try {
      final hr = _vtable.get_CachedZoomLevel.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Double> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  double get currentZoomMinimum {
    final retVal = calloc<Double>();
    try {
      final hr = _vtable.get_CurrentZoomMinimum.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Double> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  double get cachedZoomMinimum {
    final retVal = calloc<Double>();
    try {
      final hr = _vtable.get_CachedZoomMinimum.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Double> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  double get currentZoomMaximum {
    final retVal = calloc<Double>();
    try {
      final hr = _vtable.get_CurrentZoomMaximum.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Double> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  double get cachedZoomMaximum {
    final retVal = calloc<Double>();
    try {
      final hr = _vtable.get_CachedZoomMaximum.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Double> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }
}

/// @nodoc
base class IUIAutomationTransformPattern2Vtbl extends Struct {
  external IUIAutomationTransformPatternVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Double zoomValue)>> Zoom;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 zoomUnit)>> ZoomByUnit;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<BOOL> retVal)>>
      get_CurrentCanZoom;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<BOOL> retVal)>>
      get_CachedCanZoom;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Double> retVal)>>
      get_CurrentZoomLevel;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Double> retVal)>>
      get_CachedZoomLevel;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Double> retVal)>>
      get_CurrentZoomMinimum;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Double> retVal)>>
      get_CachedZoomMinimum;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Double> retVal)>>
      get_CurrentZoomMaximum;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Double> retVal)>>
      get_CachedZoomMaximum;
}
