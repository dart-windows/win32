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
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationscrollpattern>.
///
/// {@category com}
class IUIAutomationScrollPattern extends IUnknown {
  IUIAutomationScrollPattern(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationScrollPatternVtbl>().ref;

  final IUIAutomationScrollPatternVtbl _vtable;

  /// Creates a new instance of `IUIAutomationScrollPattern` from an existing
  /// [interface].
  ///
  /// This constructor invokes the [queryInterface] method to obtain a reference
  /// to the `IUIAutomationScrollPattern` interface with the provided interface.
  ///
  /// Throws a [WindowsException] if the `queryInterface` call fails.
  factory IUIAutomationScrollPattern.from(IUnknown interface) =>
      IUIAutomationScrollPattern(
          interface.toInterface(IID_IUIAutomationScrollPattern));

  /// Scrolls the visible region of the content area horizontally and vertically.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationscrollpattern-scroll>.
  int scroll(
          int horizontalAmount, int verticalAmount) =>
      _vtable.Scroll.asFunction<
          int Function(VTablePointer lpVtbl, int horizontalAmount,
              int verticalAmount)>()(ptr, horizontalAmount, verticalAmount);

  /// Sets the horizontal and vertical scroll positions as a percentage of the
  /// total content area within the UI Automation element.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationscrollpattern-setscrollpercent>.
  int setScrollPercent(double horizontalPercent, double verticalPercent) =>
      _vtable.SetScrollPercent.asFunction<
              int Function(VTablePointer lpVtbl, double horizontalPercent,
                  double verticalPercent)>()(
          ptr, horizontalPercent, verticalPercent);

  /// Retrieves the horizontal scroll position.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationscrollpattern-get_currenthorizontalscrollpercent>.
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

  /// Retrieves the vertical scroll position.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationscrollpattern-get_currentverticalscrollpercent>.
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

  /// Retrieves the horizontal size of the viewable region of a scrollable
  /// element.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationscrollpattern-get_currenthorizontalviewsize>.
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

  /// Retrieves the vertical size of the viewable region of a scrollable element.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationscrollpattern-get_currentverticalviewsize>.
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

  /// Indicates whether the element can scroll horizontally.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationscrollpattern-get_currenthorizontallyscrollable>.
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

  /// Indicates whether the element can scroll vertically.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationscrollpattern-get_currentverticallyscrollable>.
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

  /// Retrieves the cached horizontal scroll position.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationscrollpattern-get_cachedhorizontalscrollpercent>.
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

  /// Retrieves the cached vertical scroll position.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationscrollpattern-get_cachedverticalscrollpercent>.
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

  /// Retrieves the cached horizontal size of the viewable region of a scrollable
  /// element.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationscrollpattern-get_cachedhorizontalviewsize>.
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

  /// Retrieves the cached vertical size of the viewable region of a scrollable
  /// element.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationscrollpattern-get_cachedverticalviewsize>.
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

  /// Retrieves a cached value that indicates whether the element can scroll
  /// horizontally.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationscrollpattern-get_cachedhorizontallyscrollable>.
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

  /// Retrieves a cached value that indicates whether the element can scroll
  /// vertically.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationscrollpattern-get_cachedverticallyscrollable>.
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
