// iuiautomationelement5.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../exceptions.dart';
import '../macros.dart';
import '../types.dart';
import '../utils.dart';
import 'iuiautomationelement4.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IUIAutomationElement5 = '{98141c1d-0d0e-4175-bbe2-6bff455842a7}';

/// Extends the IUIAutomationElement4 interface to provide access to current
/// and cached landmark data.
///
/// {@category com}
class IUIAutomationElement5 extends IUIAutomationElement4 {
  IUIAutomationElement5(super.ptr)
      : _vtable = ptr.value.value.cast<IUIAutomationElement5Vtbl>().ref;

  final IUIAutomationElement5Vtbl _vtable;

  factory IUIAutomationElement5.from(IUnknown interface) =>
      IUIAutomationElement5(interface.toInterface(IID_IUIAutomationElement5));

  int get currentLandmarkType {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = _vtable.get_CurrentLandmarkType.asFunction<
          int Function(
              VTablePointer, Pointer<Uint32> retVal)>()(ptr.value, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get currentLocalizedLandmarkType {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = _vtable.get_CurrentLocalizedLandmarkType.asFunction<
              int Function(VTablePointer, Pointer<Pointer<Utf16>> retVal)>()(
          ptr.value, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get cachedLandmarkType {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = _vtable.get_CachedLandmarkType.asFunction<
          int Function(
              VTablePointer, Pointer<Uint32> retVal)>()(ptr.value, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get cachedLocalizedLandmarkType {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = _vtable.get_CachedLocalizedLandmarkType.asFunction<
              int Function(VTablePointer, Pointer<Pointer<Utf16>> retVal)>()(
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
base class IUIAutomationElement5Vtbl extends Struct {
  external IUIAutomationElement4Vtbl baseVtbl;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Uint32> retVal)>>
      get_CurrentLandmarkType;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Pointer<Utf16>> retVal)>>
      get_CurrentLocalizedLandmarkType;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Uint32> retVal)>>
      get_CachedLandmarkType;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Pointer<Utf16>> retVal)>>
      get_CachedLocalizedLandmarkType;
}
