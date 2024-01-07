// iuiautomationdroptargetpattern.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../exceptions.dart';
import '../macros.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IUIAutomationDropTargetPattern =
    '{69a095f7-eee4-430e-a46b-fb73b1ae39a5}';

/// Provides access to drag-and-drop information exposed by a Microsoft UI
/// Automation provider for an element that can be the drop target of a
/// drag-and-drop operation.
///
/// {@category com}
class IUIAutomationDropTargetPattern extends IUnknown {
  IUIAutomationDropTargetPattern(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationDropTargetPatternVtbl>().ref;

  final IUIAutomationDropTargetPatternVtbl _vtable;

  factory IUIAutomationDropTargetPattern.from(IUnknown interface) =>
      IUIAutomationDropTargetPattern(
          interface.toInterface(IID_IUIAutomationDropTargetPattern));

  Pointer<Utf16> get currentDropTargetEffect {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = _vtable.get_CurrentDropTargetEffect.asFunction<
              int Function(VTablePointer, Pointer<Pointer<Utf16>> retVal)>()(
          ptr, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get cachedDropTargetEffect {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = _vtable.get_CachedDropTargetEffect.asFunction<
              int Function(VTablePointer, Pointer<Pointer<Utf16>> retVal)>()(
          ptr, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<SAFEARRAY> get currentDropTargetEffects {
    final retValuePtr = calloc<Pointer<SAFEARRAY>>();

    try {
      final hr = _vtable.get_CurrentDropTargetEffects.asFunction<
          int Function(VTablePointer,
              Pointer<Pointer<SAFEARRAY>> retVal)>()(ptr, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<SAFEARRAY> get cachedDropTargetEffects {
    final retValuePtr = calloc<Pointer<SAFEARRAY>>();

    try {
      final hr = _vtable.get_CachedDropTargetEffects.asFunction<
          int Function(VTablePointer,
              Pointer<Pointer<SAFEARRAY>> retVal)>()(ptr, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}

/// @nodoc
base class IUIAutomationDropTargetPatternVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Pointer<Utf16>> retVal)>>
      get_CurrentDropTargetEffect;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Pointer<Utf16>> retVal)>>
      get_CachedDropTargetEffect;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Pointer<SAFEARRAY>> retVal)>>
      get_CurrentDropTargetEffects;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Pointer<SAFEARRAY>> retVal)>>
      get_CachedDropTargetEffects;
}
