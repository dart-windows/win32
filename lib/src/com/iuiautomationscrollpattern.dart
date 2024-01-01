// iuiautomationscrollpattern.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../exceptions.dart';
import '../macros.dart';
import '../utils.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IUIAutomationScrollPattern = '{88f4d42a-e881-459d-a77c-73bbbb7e02dc}';

/// Provides access to a control that acts as a scrollable container for a
/// collection of child elements.
///
/// {@category com}
class IUIAutomationScrollPattern extends IUnknown {
  // vtable begins at 3, is 14 entries long.
  IUIAutomationScrollPattern(super.ptr)
      : _vtable = ptr.ref.vtable.cast<IUIAutomationScrollPatternVtbl>().ref;

  final IUIAutomationScrollPatternVtbl _vtable;

  factory IUIAutomationScrollPattern.from(IUnknown interface) =>
      IUIAutomationScrollPattern(
          interface.toInterface(IID_IUIAutomationScrollPattern));

  int scroll(
          int horizontalAmount, int verticalAmount) =>
      _vtable.Scroll.asFunction<
              int Function(
                  Pointer, int horizontalAmount, int verticalAmount)>()(
          ptr.ref.lpVtbl, horizontalAmount, verticalAmount);

  int setScrollPercent(double horizontalPercent, double verticalPercent) =>
      _vtable.SetScrollPercent.asFunction<
              int Function(
                  Pointer, double horizontalPercent, double verticalPercent)>()(
          ptr.ref.lpVtbl, horizontalPercent, verticalPercent);

  double get currentHorizontalScrollPercent {
    final retValuePtr = calloc<Double>();

    try {
      final hr = _vtable.get_CurrentHorizontalScrollPercent
              .asFunction<int Function(Pointer, Pointer<Double> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
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
      final hr = _vtable.get_CurrentVerticalScrollPercent
              .asFunction<int Function(Pointer, Pointer<Double> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
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
      final hr = _vtable.get_CurrentHorizontalViewSize
              .asFunction<int Function(Pointer, Pointer<Double> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
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
      final hr = _vtable.get_CurrentVerticalViewSize
              .asFunction<int Function(Pointer, Pointer<Double> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
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
              .asFunction<int Function(Pointer, Pointer<Int32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
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
              .asFunction<int Function(Pointer, Pointer<Int32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
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
      final hr = _vtable.get_CachedHorizontalScrollPercent
              .asFunction<int Function(Pointer, Pointer<Double> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
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
      final hr = _vtable.get_CachedVerticalScrollPercent
              .asFunction<int Function(Pointer, Pointer<Double> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
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
      final hr = _vtable.get_CachedHorizontalViewSize
              .asFunction<int Function(Pointer, Pointer<Double> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
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
      final hr = _vtable.get_CachedVerticalViewSize
              .asFunction<int Function(Pointer, Pointer<Double> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
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
              .asFunction<int Function(Pointer, Pointer<Int32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
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
              .asFunction<int Function(Pointer, Pointer<Int32> retVal)>()(
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
base class IUIAutomationScrollPatternVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer, Int32 horizontalAmount, Int32 verticalAmount)>> Scroll;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer, Double horizontalPercent, Double verticalPercent)>>
      SetScrollPercent;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Double> retVal)>>
      get_CurrentHorizontalScrollPercent;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Double> retVal)>>
      get_CurrentVerticalScrollPercent;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Double> retVal)>>
      get_CurrentHorizontalViewSize;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Double> retVal)>>
      get_CurrentVerticalViewSize;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> retVal)>>
      get_CurrentHorizontallyScrollable;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> retVal)>>
      get_CurrentVerticallyScrollable;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Double> retVal)>>
      get_CachedHorizontalScrollPercent;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Double> retVal)>>
      get_CachedVerticalScrollPercent;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Double> retVal)>>
      get_CachedHorizontalViewSize;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Double> retVal)>>
      get_CachedVerticalViewSize;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> retVal)>>
      get_CachedHorizontallyScrollable;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> retVal)>>
      get_CachedVerticallyScrollable;
}
