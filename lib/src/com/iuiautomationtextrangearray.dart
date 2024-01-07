// iuiautomationtextrangearray.dart

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
const IID_IUIAutomationTextRangeArray =
    '{ce4ae76a-e717-4c98-81ea-47371d028eb6}';

/// Represents a collection of IUIAutomationTextRange objects.
///
/// {@category com}
class IUIAutomationTextRangeArray extends IUnknown {
  IUIAutomationTextRangeArray(super.ptr)
      : _vtable = ptr.value.value.cast<IUIAutomationTextRangeArrayVtbl>().ref;

  final IUIAutomationTextRangeArrayVtbl _vtable;

  factory IUIAutomationTextRangeArray.from(IUnknown interface) =>
      IUIAutomationTextRangeArray(
          interface.toInterface(IID_IUIAutomationTextRangeArray));

  int get length {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_Length
              .asFunction<int Function(VTablePointer, Pointer<Int32> length)>()(
          ptr.value, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int getElement(int index, Pointer<Pointer<VTablePointer>> element) =>
      _vtable.GetElement.asFunction<
              int Function(VTablePointer, int index,
                  Pointer<Pointer<VTablePointer>> element)>()(
          ptr.value, index, element);
}

/// @nodoc
base class IUIAutomationTextRangeArrayVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> length)>>
      get_Length;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Int32 index,
              Pointer<Pointer<VTablePointer>> element)>> GetElement;
}
