// iuiautomationmultipleviewpattern.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../exceptions.dart';
import '../macros.dart';
import '../structs.g.dart';
import '../utils.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IUIAutomationMultipleViewPattern =
    '{8d253c91-1dc5-4bb5-b18f-ade16fa495e8}';

/// Provides access to a control that can switch between multiple
/// representations of the same information or set of child controls.
///
/// {@category com}
class IUIAutomationMultipleViewPattern extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IUIAutomationMultipleViewPattern(super.ptr)
      : _vtable =
            ptr.ref.vtable.cast<IUIAutomationMultipleViewPatternVtbl>().ref;

  final IUIAutomationMultipleViewPatternVtbl _vtable;

  factory IUIAutomationMultipleViewPattern.from(IUnknown interface) =>
      IUIAutomationMultipleViewPattern(
          interface.toInterface(IID_IUIAutomationMultipleViewPattern));

  int getViewName(int view, Pointer<Pointer<Utf16>> name) =>
      _vtable.GetViewName.asFunction<
              int Function(Pointer, int view, Pointer<Pointer<Utf16>> name)>()(
          ptr.ref.lpVtbl, view, name);

  int setCurrentView(int view) =>
      _vtable.SetCurrentView.asFunction<int Function(Pointer, int view)>()(
          ptr.ref.lpVtbl, view);

  int get currentCurrentView {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CurrentCurrentView
              .asFunction<int Function(Pointer, Pointer<Int32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int getCurrentSupportedViews(Pointer<Pointer<SAFEARRAY>> retVal) =>
      _vtable.GetCurrentSupportedViews.asFunction<
              int Function(Pointer, Pointer<Pointer<SAFEARRAY>> retVal)>()(
          ptr.ref.lpVtbl, retVal);

  int get cachedCurrentView {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CachedCurrentView
              .asFunction<int Function(Pointer, Pointer<Int32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int getCachedSupportedViews(Pointer<Pointer<SAFEARRAY>> retVal) =>
      _vtable.GetCachedSupportedViews.asFunction<
              int Function(Pointer, Pointer<Pointer<SAFEARRAY>> retVal)>()(
          ptr.ref.lpVtbl, retVal);
}

/// @nodoc
base class IUIAutomationMultipleViewPatternVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer, Int32 view, Pointer<Pointer<Utf16>> name)>> GetViewName;
  external Pointer<NativeFunction<Int32 Function(Pointer, Int32 view)>>
      SetCurrentView;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> retVal)>>
      get_CurrentCurrentView;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Pointer<SAFEARRAY>> retVal)>>
      GetCurrentSupportedViews;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> retVal)>>
      get_CachedCurrentView;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Pointer<SAFEARRAY>> retVal)>>
      GetCachedSupportedViews;
}
