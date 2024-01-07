// iuiautomationvaluepattern.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../exceptions.dart';
import '../extensions/iunknown.dart';
import '../macros.dart';
import '../types.dart';
import '../utils.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IUIAutomationValuePattern = '{a94cd8b1-0844-4cd6-9d2d-640537ab39e9}';

/// Provides access to a control that contains a value that does not span a
/// range and that can be represented as a string.
///
/// {@category com}
class IUIAutomationValuePattern extends IUnknown {
  IUIAutomationValuePattern(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationValuePatternVtbl>().ref;

  final IUIAutomationValuePatternVtbl _vtable;

  factory IUIAutomationValuePattern.from(IUnknown interface) =>
      IUIAutomationValuePattern(
          interface.toInterface(IID_IUIAutomationValuePattern));

  int setValue(Pointer<Utf16> val) => _vtable.SetValue.asFunction<
      int Function(VTablePointer, Pointer<Utf16> val)>()(ptr, val);

  Pointer<Utf16> get currentValue {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = _vtable.get_CurrentValue.asFunction<
              int Function(VTablePointer, Pointer<Pointer<Utf16>> retVal)>()(
          ptr, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get currentIsReadOnly {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CurrentIsReadOnly
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get cachedValue {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = _vtable.get_CachedValue.asFunction<
              int Function(VTablePointer, Pointer<Pointer<Utf16>> retVal)>()(
          ptr, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get cachedIsReadOnly {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CachedIsReadOnly
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}

/// @nodoc
base class IUIAutomationValuePatternVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Utf16> val)>>
      SetValue;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Pointer<Utf16>> retVal)>>
      get_CurrentValue;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CurrentIsReadOnly;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Pointer<Utf16>> retVal)>>
      get_CachedValue;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CachedIsReadOnly;
}
