// iuiautomationelementarray.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import '../exceptions.dart';
import '../macros.dart';
import '../utils.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IUIAutomationElementArray = '{14314595-b4bc-4055-95f2-58f2e42c9855}';

/// Represents a collection of UI Automation elements.
///
/// {@category com}
class IUIAutomationElementArray extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IUIAutomationElementArray(super.ptr)
      : _vtable = ptr.ref.vtable.cast<IUIAutomationElementArrayVtbl>().ref;

  final IUIAutomationElementArrayVtbl _vtable;

  factory IUIAutomationElementArray.from(IUnknown interface) =>
      IUIAutomationElementArray(
          interface.toInterface(IID_IUIAutomationElementArray));

  int get length {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_Length
              .asFunction<int Function(Pointer, Pointer<Int32> length)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int getElement(int index, Pointer<Pointer<COMObject>> element) =>
      _vtable.GetElement.asFunction<
              int Function(
                  Pointer, int index, Pointer<Pointer<COMObject>> element)>()(
          ptr.ref.lpVtbl, index, element);
}

/// @nodoc
base class IUIAutomationElementArrayVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> length)>>
      get_Length;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer, Int32 index, Pointer<Pointer<COMObject>> element)>>
      GetElement;
}
