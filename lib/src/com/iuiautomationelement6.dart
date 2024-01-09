// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../exceptions.dart';
import '../extensions/iunknown.dart';
import '../macros.dart';
import '../types.dart';
import '../utils.dart';
import 'iuiautomationelement5.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IUIAutomationElement6 = '{4780d450-8bca-4977-afa5-a4a517f555e3}';

/// Extends the IUIAutomationElement5 interface to provide access to current
/// and cached full descriptions.
///
/// {@category com}
class IUIAutomationElement6 extends IUIAutomationElement5 {
  IUIAutomationElement6(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationElement6Vtbl>().ref;

  final IUIAutomationElement6Vtbl _vtable;

  factory IUIAutomationElement6.from(IUnknown interface) =>
      IUIAutomationElement6(interface.toInterface(IID_IUIAutomationElement6));

  Pointer<Utf16> get currentFullDescription {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = _vtable.get_CurrentFullDescription.asFunction<
              int Function(VTablePointer, Pointer<Pointer<Utf16>> retVal)>()(
          ptr, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get cachedFullDescription {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = _vtable.get_CachedFullDescription.asFunction<
              int Function(VTablePointer, Pointer<Pointer<Utf16>> retVal)>()(
          ptr, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}

/// @nodoc
base class IUIAutomationElement6Vtbl extends Struct {
  external IUIAutomationElement5Vtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Pointer<Utf16>> retVal)>>
      get_CurrentFullDescription;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Pointer<Utf16>> retVal)>>
      get_CachedFullDescription;
}
