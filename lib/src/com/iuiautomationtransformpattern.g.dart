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
const IID_IUIAutomationTransformPattern =
    '{a9b55844-a55d-4ef0-926d-569c16ff89bb}';

/// Provides access to a control that can be moved, resized, or rotated.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationtransformpattern>.
///
/// {@category com}
class IUIAutomationTransformPattern extends IUnknown {
  IUIAutomationTransformPattern(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationTransformPatternVtbl>().ref;

  final IUIAutomationTransformPatternVtbl _vtable;

  /// Creates a new instance of `IUIAutomationTransformPattern` from an existing
  /// [interface].
  ///
  /// This constructor invokes the [queryInterface] method to obtain a reference
  /// to the `IUIAutomationTransformPattern` interface with the provided
  /// interface.
  ///
  /// Throws a [WindowsException] if the `queryInterface` call fails.
  factory IUIAutomationTransformPattern.from(IUnknown interface) =>
      IUIAutomationTransformPattern(
          interface.toInterface(IID_IUIAutomationTransformPattern));

  /// Moves the UI Automation element.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtransformpattern-move>.
  int move(double x, double y) => _vtable.Move.asFunction<
      int Function(VTablePointer lpVtbl, double x, double y)>()(ptr, x, y);

  /// Resizes the UI Automation element.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtransformpattern-resize>.
  int resize(double width, double height) => _vtable.Resize.asFunction<
          int Function(VTablePointer lpVtbl, double width, double height)>()(
      ptr, width, height);

  /// Rotates the UI Automation element.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtransformpattern-rotate>.
  int rotate(double degrees) => _vtable.Rotate.asFunction<
      int Function(VTablePointer lpVtbl, double degrees)>()(ptr, degrees);

  /// Indicates whether the element can be moved.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtransformpattern-get_currentcanmove>.
  int get currentCanMove {
    final retVal = calloc<BOOL>();
    try {
      final hr = _vtable.get_CurrentCanMove.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<BOOL> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Indicates whether the element can be resized.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtransformpattern-get_currentcanresize>.
  int get currentCanResize {
    final retVal = calloc<BOOL>();
    try {
      final hr = _vtable.get_CurrentCanResize.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<BOOL> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Indicates whether the element can be rotated.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtransformpattern-get_currentcanrotate>.
  int get currentCanRotate {
    final retVal = calloc<BOOL>();
    try {
      final hr = _vtable.get_CurrentCanRotate.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<BOOL> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Retrieves a cached value that indicates whether the element can be moved.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtransformpattern-get_cachedcanmove>.
  int get cachedCanMove {
    final retVal = calloc<BOOL>();
    try {
      final hr = _vtable.get_CachedCanMove.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<BOOL> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Retrieves a cached value that indicates whether the element can be resized.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtransformpattern-get_cachedcanresize>.
  int get cachedCanResize {
    final retVal = calloc<BOOL>();
    try {
      final hr = _vtable.get_CachedCanResize.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<BOOL> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Retrieves a cached value that indicates whether the element can be rotated.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtransformpattern-get_cachedcanrotate>.
  int get cachedCanRotate {
    final retVal = calloc<BOOL>();
    try {
      final hr = _vtable.get_CachedCanRotate.asFunction<
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
base class IUIAutomationTransformPatternVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Double x, Double y)>> Move;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Double width, Double height)>> Resize;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Double degrees)>> Rotate;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<BOOL> retVal)>>
      get_CurrentCanMove;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<BOOL> retVal)>>
      get_CurrentCanResize;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<BOOL> retVal)>>
      get_CurrentCanRotate;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<BOOL> retVal)>>
      get_CachedCanMove;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<BOOL> retVal)>>
      get_CachedCanResize;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<BOOL> retVal)>>
      get_CachedCanRotate;
}
