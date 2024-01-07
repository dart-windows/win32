// iuiautomationdragpattern.dart

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
const IID_IUIAutomationDragPattern = '{1dc7b570-1f54-4bad-bcda-d36a722fb7bd}';

/// Provides access to information exposed by a UI Automation provider for
/// an element that can be dragged as part of a drag-and-drop operation.
///
/// {@category com}
class IUIAutomationDragPattern extends IUnknown {
  IUIAutomationDragPattern(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationDragPatternVtbl>().ref;

  final IUIAutomationDragPatternVtbl _vtable;

  factory IUIAutomationDragPattern.from(IUnknown interface) =>
      IUIAutomationDragPattern(
          interface.toInterface(IID_IUIAutomationDragPattern));

  int get currentIsGrabbed {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CurrentIsGrabbed
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get cachedIsGrabbed {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CachedIsGrabbed
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get currentDropEffect {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = _vtable.get_CurrentDropEffect.asFunction<
              int Function(VTablePointer, Pointer<Pointer<Utf16>> retVal)>()(
          ptr, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get cachedDropEffect {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = _vtable.get_CachedDropEffect.asFunction<
              int Function(VTablePointer, Pointer<Pointer<Utf16>> retVal)>()(
          ptr, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<SAFEARRAY> get currentDropEffects {
    final retValuePtr = calloc<Pointer<SAFEARRAY>>();

    try {
      final hr = _vtable.get_CurrentDropEffects.asFunction<
          int Function(VTablePointer,
              Pointer<Pointer<SAFEARRAY>> retVal)>()(ptr, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<SAFEARRAY> get cachedDropEffects {
    final retValuePtr = calloc<Pointer<SAFEARRAY>>();

    try {
      final hr = _vtable.get_CachedDropEffects.asFunction<
          int Function(VTablePointer,
              Pointer<Pointer<SAFEARRAY>> retVal)>()(ptr, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int getCurrentGrabbedItems(Pointer<VTablePointer> retVal) =>
      _vtable.GetCurrentGrabbedItems.asFunction<
          int Function(
              VTablePointer, Pointer<VTablePointer> retVal)>()(ptr, retVal);

  int getCachedGrabbedItems(Pointer<VTablePointer> retVal) =>
      _vtable.GetCachedGrabbedItems.asFunction<
          int Function(
              VTablePointer, Pointer<VTablePointer> retVal)>()(ptr, retVal);
}

/// @nodoc
base class IUIAutomationDragPatternVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CurrentIsGrabbed;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CachedIsGrabbed;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Pointer<Utf16>> retVal)>>
      get_CurrentDropEffect;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Pointer<Utf16>> retVal)>>
      get_CachedDropEffect;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Pointer<SAFEARRAY>> retVal)>>
      get_CurrentDropEffects;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Pointer<SAFEARRAY>> retVal)>>
      get_CachedDropEffects;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> retVal)>>
      GetCurrentGrabbedItems;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> retVal)>>
      GetCachedGrabbedItems;
}
