// iuiautomationelement8.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../exceptions.dart';
import '../macros.dart';
import '../types.dart';
import '../utils.dart';
import 'iuiautomationelement7.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IUIAutomationElement8 = '{8c60217d-5411-4cde-bcc0-1ceda223830c}';

/// Extends the IUIAutomationElement7 interface.
///
/// {@category com}
class IUIAutomationElement8 extends IUIAutomationElement7 {
  // vtable begins at 115, is 2 entries long.
  IUIAutomationElement8(super.ptr)
      : _vtable = ptr.value.value.cast<IUIAutomationElement8Vtbl>().ref;

  final IUIAutomationElement8Vtbl _vtable;

  factory IUIAutomationElement8.from(IUnknown interface) =>
      IUIAutomationElement8(interface.toInterface(IID_IUIAutomationElement8));

  int get currentHeadingLevel {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = _vtable.get_CurrentHeadingLevel.asFunction<
          int Function(
              VTablePointer, Pointer<Uint32> retVal)>()(ptr.value, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get cachedHeadingLevel {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = _vtable.get_CachedHeadingLevel.asFunction<
          int Function(
              VTablePointer, Pointer<Uint32> retVal)>()(ptr.value, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}

/// @nodoc
base class IUIAutomationElement8Vtbl extends Struct {
  external IUIAutomationElement7Vtbl baseVtbl;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Uint32> retVal)>>
      get_CurrentHeadingLevel;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Uint32> retVal)>>
      get_CachedHeadingLevel;
}
