// iuiautomationtextpattern.dart

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
const IID_IUIAutomationTextPattern = '{32eba289-3583-42c9-9c59-3b6d9a1e9b6a}';

/// Provides access to a control that contains text.
///
/// {@category com}
class IUIAutomationTextPattern extends IUnknown {
  IUIAutomationTextPattern(super.ptr)
      : _vtable = ptr.value.value.cast<IUIAutomationTextPatternVtbl>().ref;

  final IUIAutomationTextPatternVtbl _vtable;

  factory IUIAutomationTextPattern.from(IUnknown interface) =>
      IUIAutomationTextPattern(
          interface.toInterface(IID_IUIAutomationTextPattern));

  int rangeFromPoint(POINT pt, Pointer<Pointer<VTablePointer>> range) =>
      _vtable.RangeFromPoint.asFunction<
          int Function(VTablePointer, POINT pt,
              Pointer<Pointer<VTablePointer>> range)>()(ptr.value, pt, range);

  int rangeFromChild(Pointer<VTablePointer> child,
          Pointer<Pointer<VTablePointer>> range) =>
      _vtable.RangeFromChild.asFunction<
              int Function(VTablePointer, Pointer<VTablePointer> child,
                  Pointer<Pointer<VTablePointer>> range)>()(
          ptr.value, child, range);

  int getSelection(Pointer<Pointer<VTablePointer>> ranges) =>
      _vtable.GetSelection.asFunction<
          int Function(VTablePointer,
              Pointer<Pointer<VTablePointer>> ranges)>()(ptr.value, ranges);

  int getVisibleRanges(Pointer<Pointer<VTablePointer>> ranges) =>
      _vtable.GetVisibleRanges.asFunction<
          int Function(VTablePointer,
              Pointer<Pointer<VTablePointer>> ranges)>()(ptr.value, ranges);

  Pointer<VTablePointer> get documentRange {
    final retValuePtr = calloc<VTablePointer>();

    final hr = _vtable.get_DocumentRange.asFunction<
            int Function(VTablePointer, Pointer<VTablePointer> range)>()(
        ptr.value, retValuePtr);
    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }

  int get supportedTextSelection {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_SupportedTextSelection.asFunction<
          int Function(VTablePointer,
              Pointer<Int32> supportedTextSelection)>()(ptr.value, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}

/// @nodoc
base class IUIAutomationTextPatternVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, POINT pt,
              Pointer<Pointer<VTablePointer>> range)>> RangeFromPoint;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<VTablePointer> child,
              Pointer<Pointer<VTablePointer>> range)>> RangeFromChild;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Pointer<VTablePointer>> ranges)>>
      GetSelection;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Pointer<VTablePointer>> ranges)>>
      GetVisibleRanges;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> range)>>
      get_DocumentRange;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Int32> supportedTextSelection)>>
      get_SupportedTextSelection;
}
