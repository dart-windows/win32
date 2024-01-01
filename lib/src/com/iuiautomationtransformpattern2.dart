// iuiautomationtransformpattern2.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../exceptions.dart';
import '../macros.dart';
import '../utils.dart';
import 'iuiautomationtransformpattern.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IUIAutomationTransformPattern2 =
    '{6d74d017-6ecb-4381-b38b-3c17a48ff1c2}';

/// Extends the IUIAutomationTransformPattern interface to enable Microsoft
/// UI Automation clients to programmatically access the viewport zooming
/// functionality of a control.
///
/// {@category com}
class IUIAutomationTransformPattern2 extends IUIAutomationTransformPattern {
  // vtable begins at 12, is 10 entries long.
  IUIAutomationTransformPattern2(super.ptr)
      : _vtable = ptr.ref.vtable.cast<IUIAutomationTransformPattern2Vtbl>().ref;

  final IUIAutomationTransformPattern2Vtbl _vtable;

  factory IUIAutomationTransformPattern2.from(IUnknown interface) =>
      IUIAutomationTransformPattern2(
          interface.toInterface(IID_IUIAutomationTransformPattern2));

  int zoom(double zoomValue) =>
      _vtable.Zoom.asFunction<int Function(Pointer, double zoomValue)>()(
          ptr.ref.lpVtbl, zoomValue);

  int zoomByUnit(int zoomUnit) =>
      _vtable.ZoomByUnit.asFunction<int Function(Pointer, int zoomUnit)>()(
          ptr.ref.lpVtbl, zoomUnit);

  int get currentCanZoom {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CurrentCanZoom
              .asFunction<int Function(Pointer, Pointer<Int32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get cachedCanZoom {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CachedCanZoom
              .asFunction<int Function(Pointer, Pointer<Int32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  double get currentZoomLevel {
    final retValuePtr = calloc<Double>();

    try {
      final hr = _vtable.get_CurrentZoomLevel
              .asFunction<int Function(Pointer, Pointer<Double> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  double get cachedZoomLevel {
    final retValuePtr = calloc<Double>();

    try {
      final hr = _vtable.get_CachedZoomLevel
              .asFunction<int Function(Pointer, Pointer<Double> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  double get currentZoomMinimum {
    final retValuePtr = calloc<Double>();

    try {
      final hr = _vtable.get_CurrentZoomMinimum
              .asFunction<int Function(Pointer, Pointer<Double> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  double get cachedZoomMinimum {
    final retValuePtr = calloc<Double>();

    try {
      final hr = _vtable.get_CachedZoomMinimum
              .asFunction<int Function(Pointer, Pointer<Double> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  double get currentZoomMaximum {
    final retValuePtr = calloc<Double>();

    try {
      final hr = _vtable.get_CurrentZoomMaximum
              .asFunction<int Function(Pointer, Pointer<Double> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  double get cachedZoomMaximum {
    final retValuePtr = calloc<Double>();

    try {
      final hr = _vtable.get_CachedZoomMaximum
              .asFunction<int Function(Pointer, Pointer<Double> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}

/// @nodoc
base class IUIAutomationTransformPattern2Vtbl extends Struct {
  external IUIAutomationTransformPatternVtbl baseVtbl;
  external Pointer<NativeFunction<Int32 Function(Pointer, Double zoomValue)>>
      Zoom;
  external Pointer<NativeFunction<Int32 Function(Pointer, Int32 zoomUnit)>>
      ZoomByUnit;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> retVal)>>
      get_CurrentCanZoom;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> retVal)>>
      get_CachedCanZoom;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Double> retVal)>>
      get_CurrentZoomLevel;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Double> retVal)>>
      get_CachedZoomLevel;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Double> retVal)>>
      get_CurrentZoomMinimum;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Double> retVal)>>
      get_CachedZoomMinimum;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Double> retVal)>>
      get_CurrentZoomMaximum;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Double> retVal)>>
      get_CachedZoomMaximum;
}
