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
/// {@category com}
class IUIAutomationTransformPattern extends IUnknown {
  IUIAutomationTransformPattern(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationTransformPatternVtbl>().ref;

  final IUIAutomationTransformPatternVtbl _vtable;

  factory IUIAutomationTransformPattern.from(IUnknown interface) =>
      IUIAutomationTransformPattern(
          interface.toInterface(IID_IUIAutomationTransformPattern));

  int move(double x, double y) => _vtable.Move.asFunction<
      int Function(VTablePointer lpVtbl, double x, double y)>()(ptr, x, y);

  int resize(double width, double height) => _vtable.Resize.asFunction<
          int Function(VTablePointer lpVtbl, double width, double height)>()(
      ptr, width, height);

  int rotate(double degrees) => _vtable.Rotate.asFunction<
      int Function(VTablePointer lpVtbl, double degrees)>()(ptr, degrees);

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
