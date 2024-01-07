// iuiautomationtextchildpattern.dart

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
const IID_IUIAutomationTextChildPattern =
    '{6552b038-ae05-40c8-abfd-aa08352aab86}';

/// Provides access a text-based control (or an object embedded in text)
/// that is a child or descendant of another text-based control.
///
/// {@category com}
class IUIAutomationTextChildPattern extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IUIAutomationTextChildPattern(super.ptr)
      : _vtable = ptr.value.value.cast<IUIAutomationTextChildPatternVtbl>().ref;

  final IUIAutomationTextChildPatternVtbl _vtable;

  factory IUIAutomationTextChildPattern.from(IUnknown interface) =>
      IUIAutomationTextChildPattern(
          interface.toInterface(IID_IUIAutomationTextChildPattern));

  Pointer<VTablePointer> get textContainer {
    final retValuePtr = calloc<VTablePointer>();

    final hr = _vtable.get_TextContainer.asFunction<
            int Function(VTablePointer, Pointer<VTablePointer> container)>()(
        ptr.value, retValuePtr);
    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }

  Pointer<VTablePointer> get textRange {
    final retValuePtr = calloc<VTablePointer>();

    final hr = _vtable.get_TextRange.asFunction<
            int Function(VTablePointer, Pointer<VTablePointer> range)>()(
        ptr.value, retValuePtr);
    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }
}

/// @nodoc
base class IUIAutomationTextChildPatternVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> container)>>
      get_TextContainer;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> range)>>
      get_TextRange;
}
