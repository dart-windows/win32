// iuiautomationscrollpattern.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../exceptions.dart';
import '../macros.dart';
import '../types.dart';
import '../utils.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IUIAutomationScrollPattern = '{88f4d42a-e881-459d-a77c-73bbbb7e02dc}';

/// Provides access to a control that acts as a scrollable container for a
/// collection of child elements.
///
/// {@category com}
class IUIAutomationScrollPattern extends IUnknown {
  IUIAutomationScrollPattern(super.ptr)
      : _vtable = ptr.value.value.cast<IUIAutomationScrollPatternVtbl>().ref;

  final IUIAutomationScrollPatternVtbl _vtable;

  factory IUIAutomationScrollPattern.from(IUnknown interface) =>
      IUIAutomationScrollPattern(
          interface.toInterface(IID_IUIAutomationScrollPattern));

  int scroll(
          int horizontalAmount, int verticalAmount) =>
      _vtable.Scroll.asFunction<
              int Function(
                  VTablePointer, int horizontalAmount, int verticalAmount)>()(
          ptr.value, horizontalAmount, verticalAmount);

  int setScrollPercent(double horizontalPercent, double verticalPercent) =>
      _vtable.SetScrollPercent.asFunction<
              int Function(VTablePointer, double horizontalPercent,
                  double verticalPercent)>()(
          ptr.value, horizontalPercent, verticalPercent);

  double get currentHorizontalScrollPercent {
    final retValuePtr = calloc<Double>();

    try {
      final hr = _vtable.get_CurrentHorizontalScrollPercent.asFunction<
          int Function(
              VTablePointer, Pointer<Double> retVal)>()(ptr.value, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  double get currentVerticalScrollPercent {
    final retValuePtr = calloc<Double>();

    try {
      final hr = _vtable.get_CurrentVerticalScrollPercent.asFunction<
          int Function(
              VTablePointer, Pointer<Double> retVal)>()(ptr.value, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  double get currentHorizontalViewSize {
    final retValuePtr = calloc<Double>();

    try {
      final hr = _vtable.get_CurrentHorizontalViewSize.asFunction<
          int Function(
              VTablePointer, Pointer<Double> retVal)>()(ptr.value, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  double get currentVerticalViewSize {
    final retValuePtr = calloc<Double>();

    try {
      final hr = _vtable.get_CurrentVerticalViewSize.asFunction<
          int Function(
              VTablePointer, Pointer<Double> retVal)>()(ptr.value, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get currentHorizontallyScrollable {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CurrentHorizontallyScrollable
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr.value, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get currentVerticallyScrollable {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CurrentVerticallyScrollable
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr.value, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  double get cachedHorizontalScrollPercent {
    final retValuePtr = calloc<Double>();

    try {
      final hr = _vtable.get_CachedHorizontalScrollPercent.asFunction<
          int Function(
              VTablePointer, Pointer<Double> retVal)>()(ptr.value, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  double get cachedVerticalScrollPercent {
    final retValuePtr = calloc<Double>();

    try {
      final hr = _vtable.get_CachedVerticalScrollPercent.asFunction<
          int Function(
              VTablePointer, Pointer<Double> retVal)>()(ptr.value, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  double get cachedHorizontalViewSize {
    final retValuePtr = calloc<Double>();

    try {
      final hr = _vtable.get_CachedHorizontalViewSize.asFunction<
          int Function(
              VTablePointer, Pointer<Double> retVal)>()(ptr.value, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  double get cachedVerticalViewSize {
    final retValuePtr = calloc<Double>();

    try {
      final hr = _vtable.get_CachedVerticalViewSize.asFunction<
          int Function(
              VTablePointer, Pointer<Double> retVal)>()(ptr.value, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get cachedHorizontallyScrollable {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CachedHorizontallyScrollable
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr.value, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get cachedVerticallyScrollable {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CachedVerticallyScrollable
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr.value, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}

/// @nodoc
base class IUIAutomationScrollPatternVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Int32 horizontalAmount, Int32 verticalAmount)>>
      Scroll;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Double horizontalPercent,
              Double verticalPercent)>> SetScrollPercent;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Double> retVal)>>
      get_CurrentHorizontalScrollPercent;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Double> retVal)>>
      get_CurrentVerticalScrollPercent;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Double> retVal)>>
      get_CurrentHorizontalViewSize;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Double> retVal)>>
      get_CurrentVerticalViewSize;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CurrentHorizontallyScrollable;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CurrentVerticallyScrollable;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Double> retVal)>>
      get_CachedHorizontalScrollPercent;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Double> retVal)>>
      get_CachedVerticalScrollPercent;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Double> retVal)>>
      get_CachedHorizontalViewSize;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Double> retVal)>>
      get_CachedVerticalViewSize;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CachedHorizontallyScrollable;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CachedVerticallyScrollable;
}
