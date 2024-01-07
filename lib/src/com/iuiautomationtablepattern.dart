// iuiautomationtablepattern.dart

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
const IID_IUIAutomationTablePattern = '{620e691c-ea96-4710-a850-754b24ce2417}';

/// Provides access to a control that acts as a container for a collection
/// of child elements.
///
/// {@category com}
class IUIAutomationTablePattern extends IUnknown {
  IUIAutomationTablePattern(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationTablePatternVtbl>().ref;

  final IUIAutomationTablePatternVtbl _vtable;

  factory IUIAutomationTablePattern.from(IUnknown interface) =>
      IUIAutomationTablePattern(
          interface.toInterface(IID_IUIAutomationTablePattern));

  int getCurrentRowHeaders(Pointer<VTablePointer> retVal) =>
      _vtable.GetCurrentRowHeaders.asFunction<
          int Function(
              VTablePointer, Pointer<VTablePointer> retVal)>()(ptr, retVal);

  int getCurrentColumnHeaders(Pointer<VTablePointer> retVal) =>
      _vtable.GetCurrentColumnHeaders.asFunction<
          int Function(
              VTablePointer, Pointer<VTablePointer> retVal)>()(ptr, retVal);

  int get currentRowOrColumnMajor {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CurrentRowOrColumnMajor
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int getCachedRowHeaders(Pointer<VTablePointer> retVal) =>
      _vtable.GetCachedRowHeaders.asFunction<
          int Function(
              VTablePointer, Pointer<VTablePointer> retVal)>()(ptr, retVal);

  int getCachedColumnHeaders(Pointer<VTablePointer> retVal) =>
      _vtable.GetCachedColumnHeaders.asFunction<
          int Function(
              VTablePointer, Pointer<VTablePointer> retVal)>()(ptr, retVal);

  int get cachedRowOrColumnMajor {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CachedRowOrColumnMajor
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
base class IUIAutomationTablePatternVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> retVal)>>
      GetCurrentRowHeaders;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> retVal)>>
      GetCurrentColumnHeaders;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CurrentRowOrColumnMajor;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> retVal)>>
      GetCachedRowHeaders;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> retVal)>>
      GetCachedColumnHeaders;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CachedRowOrColumnMajor;
}
