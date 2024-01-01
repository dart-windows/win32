// iuiautomationtransformpattern.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../exceptions.dart';
import '../macros.dart';
import '../utils.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IUIAutomationTransformPattern =
    '{a9b55844-a55d-4ef0-926d-569c16ff89bb}';

/// Provides access to a control that can be moved, resized, or rotated.
///
/// {@category com}
class IUIAutomationTransformPattern extends IUnknown {
  // vtable begins at 3, is 9 entries long.
  IUIAutomationTransformPattern(super.ptr)
      : _vtable = ptr.ref.vtable.cast<IUIAutomationTransformPatternVtbl>().ref;

  final IUIAutomationTransformPatternVtbl _vtable;

  factory IUIAutomationTransformPattern.from(IUnknown interface) =>
      IUIAutomationTransformPattern(
          interface.toInterface(IID_IUIAutomationTransformPattern));

  int move(double x, double y) =>
      _vtable.Move.asFunction<int Function(Pointer, double x, double y)>()(
          ptr.ref.lpVtbl, x, y);

  int resize(double width, double height) => _vtable.Resize.asFunction<
          int Function(Pointer, double width, double height)>()(
      ptr.ref.lpVtbl, width, height);

  int rotate(double degrees) =>
      _vtable.Rotate.asFunction<int Function(Pointer, double degrees)>()(
          ptr.ref.lpVtbl, degrees);

  int get currentCanMove {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CurrentCanMove
              .asFunction<int Function(Pointer, Pointer<Int32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get currentCanResize {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CurrentCanResize
              .asFunction<int Function(Pointer, Pointer<Int32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get currentCanRotate {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CurrentCanRotate
              .asFunction<int Function(Pointer, Pointer<Int32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get cachedCanMove {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CachedCanMove
              .asFunction<int Function(Pointer, Pointer<Int32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get cachedCanResize {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CachedCanResize
              .asFunction<int Function(Pointer, Pointer<Int32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get cachedCanRotate {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CachedCanRotate
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
base class IUIAutomationTransformPatternVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<NativeFunction<Int32 Function(Pointer, Double x, Double y)>>
      Move;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Double width, Double height)>>
      Resize;
  external Pointer<NativeFunction<Int32 Function(Pointer, Double degrees)>>
      Rotate;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> retVal)>>
      get_CurrentCanMove;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> retVal)>>
      get_CurrentCanResize;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> retVal)>>
      get_CurrentCanRotate;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> retVal)>>
      get_CachedCanMove;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> retVal)>>
      get_CachedCanResize;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> retVal)>>
      get_CachedCanRotate;
}
