// iuiautomationtogglepattern.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../exceptions.dart';
import '../macros.dart';
import '../utils.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IUIAutomationTogglePattern = '{94cf8058-9b8d-4ab9-8bfd-4cd0a33c8c70}';

/// Provides access to a control that can cycle through a set of states, and
/// maintain a state after it is set.
///
/// {@category com}
class IUIAutomationTogglePattern extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IUIAutomationTogglePattern(super.ptr)
      : _vtable = ptr.ref.vtable.cast<IUIAutomationTogglePatternVtbl>().ref;

  final IUIAutomationTogglePatternVtbl _vtable;

  factory IUIAutomationTogglePattern.from(IUnknown interface) =>
      IUIAutomationTogglePattern(
          interface.toInterface(IID_IUIAutomationTogglePattern));

  int toggle() =>
      _vtable.Toggle.asFunction<int Function(Pointer)>()(ptr.ref.lpVtbl);

  int get currentToggleState {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CurrentToggleState
              .asFunction<int Function(Pointer, Pointer<Int32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get cachedToggleState {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CachedToggleState
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
base class IUIAutomationTogglePatternVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<NativeFunction<Int32 Function(Pointer)>> Toggle;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> retVal)>>
      get_CurrentToggleState;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> retVal)>>
      get_CachedToggleState;
}
