// iuiautomationgridpattern.dart

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
const IID_IUIAutomationGridPattern = '{414c3cdc-856b-4f5b-8538-3131c6302550}';

/// Provides access to a control that acts as a container for a collection
/// of child controls that are organized in a two-dimensional logical
/// coordinate system that can be traversed by row and column.
///
/// {@category com}
class IUIAutomationGridPattern extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IUIAutomationGridPattern(super.ptr)
      : _vtable = ptr.value.value.cast<IUIAutomationGridPatternVtbl>().ref;

  final IUIAutomationGridPatternVtbl _vtable;

  factory IUIAutomationGridPattern.from(IUnknown interface) =>
      IUIAutomationGridPattern(
          interface.toInterface(IID_IUIAutomationGridPattern));

  int getItem(int row, int column, Pointer<Pointer<VTablePointer>> element) =>
      _vtable.GetItem.asFunction<
              int Function(VTablePointer, int row, int column,
                  Pointer<Pointer<VTablePointer>> element)>()(
          ptr.value, row, column, element);

  int get currentRowCount {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CurrentRowCount
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr.value, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get currentColumnCount {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CurrentColumnCount
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr.value, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get cachedRowCount {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CachedRowCount
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr.value, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get cachedColumnCount {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CachedColumnCount
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
base class IUIAutomationGridPatternVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Int32 row, Int32 column,
              Pointer<Pointer<VTablePointer>> element)>> GetItem;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CurrentRowCount;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CurrentColumnCount;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CachedRowCount;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CachedColumnCount;
}
