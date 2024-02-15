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
const IID_IUIAutomationScrollPattern = '{88f4d42a-e881-459d-a77c-73bbbb7e02dc}';

/// Provides access to a control that acts as a scrollable container for a
/// collection of child elements.
///
/// {@category com}
class IUIAutomationScrollPattern extends IUnknown {
  IUIAutomationScrollPattern(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationScrollPatternVtbl>().ref;

  final IUIAutomationScrollPatternVtbl _vtable;

  factory IUIAutomationScrollPattern.from(IUnknown interface) =>
      IUIAutomationScrollPattern(
          interface.toInterface(IID_IUIAutomationScrollPattern));

  int scroll(
          int horizontalAmount, int verticalAmount) =>
      _vtable.Scroll.asFunction<
          int Function(VTablePointer lpVtbl, int horizontalAmount,
              int verticalAmount)>()(ptr, horizontalAmount, verticalAmount);

  int setScrollPercent(double horizontalPercent, double verticalPercent) =>
      _vtable.SetScrollPercent.asFunction<
              int Function(VTablePointer lpVtbl, double horizontalPercent,
                  double verticalPercent)>()(
          ptr, horizontalPercent, verticalPercent);

  double get currentHorizontalScrollPercent {
    final retVal = calloc<Double>();
    try {
      final hr = _vtable.get_CurrentHorizontalScrollPercent.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Double> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  double get currentVerticalScrollPercent {
    final retVal = calloc<Double>();
    try {
      final hr = _vtable.get_CurrentVerticalScrollPercent.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Double> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  double get currentHorizontalViewSize {
    final retVal = calloc<Double>();
    try {
      final hr = _vtable.get_CurrentHorizontalViewSize.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Double> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  double get currentVerticalViewSize {
    final retVal = calloc<Double>();
    try {
      final hr = _vtable.get_CurrentVerticalViewSize.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Double> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  int get currentHorizontallyScrollable {
    final retVal = calloc<BOOL>();
    try {
      final hr = _vtable.get_CurrentHorizontallyScrollable.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<BOOL> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  int get currentVerticallyScrollable {
    final retVal = calloc<BOOL>();
    try {
      final hr = _vtable.get_CurrentVerticallyScrollable.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<BOOL> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  double get cachedHorizontalScrollPercent {
    final retVal = calloc<Double>();
    try {
      final hr = _vtable.get_CachedHorizontalScrollPercent.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Double> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  double get cachedVerticalScrollPercent {
    final retVal = calloc<Double>();
    try {
      final hr = _vtable.get_CachedVerticalScrollPercent.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Double> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  double get cachedHorizontalViewSize {
    final retVal = calloc<Double>();
    try {
      final hr = _vtable.get_CachedHorizontalViewSize.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Double> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  double get cachedVerticalViewSize {
    final retVal = calloc<Double>();
    try {
      final hr = _vtable.get_CachedVerticalViewSize.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Double> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  int get cachedHorizontallyScrollable {
    final retVal = calloc<BOOL>();
    try {
      final hr = _vtable.get_CachedHorizontallyScrollable.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<BOOL> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  int get cachedVerticallyScrollable {
    final retVal = calloc<BOOL>();
    try {
      final hr = _vtable.get_CachedVerticallyScrollable.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<BOOL> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }
}

/// @nodoc
base class IUIAutomationScrollPatternVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 horizontalAmount,
              Int32 verticalAmount)>> Scroll;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Double horizontalPercent,
              Double verticalPercent)>> SetScrollPercent;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Double> retVal)>>
      get_CurrentHorizontalScrollPercent;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Double> retVal)>>
      get_CurrentVerticalScrollPercent;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Double> retVal)>>
      get_CurrentHorizontalViewSize;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Double> retVal)>>
      get_CurrentVerticalViewSize;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<BOOL> retVal)>>
      get_CurrentHorizontallyScrollable;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<BOOL> retVal)>>
      get_CurrentVerticallyScrollable;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Double> retVal)>>
      get_CachedHorizontalScrollPercent;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Double> retVal)>>
      get_CachedVerticalScrollPercent;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Double> retVal)>>
      get_CachedHorizontalViewSize;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Double> retVal)>>
      get_CachedVerticalViewSize;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<BOOL> retVal)>>
      get_CachedHorizontallyScrollable;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<BOOL> retVal)>>
      get_CachedVerticallyScrollable;
}
