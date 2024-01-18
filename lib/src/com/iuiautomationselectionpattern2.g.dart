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
import 'iuiautomationselectionpattern.g.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IUIAutomationSelectionPattern2 =
    '{0532bfae-c011-4e32-a343-6d642d798555}';

/// Extends the IUIAutomationSelectionPattern interface to provide information
/// about selected items.
///
/// {@category com}
class IUIAutomationSelectionPattern2 extends IUIAutomationSelectionPattern {
  IUIAutomationSelectionPattern2(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationSelectionPattern2Vtbl>().ref;

  final IUIAutomationSelectionPattern2Vtbl _vtable;

  factory IUIAutomationSelectionPattern2.from(IUnknown interface) =>
      IUIAutomationSelectionPattern2(
          interface.toInterface(IID_IUIAutomationSelectionPattern2));

  VTablePointer get currentFirstSelectedItem {
    final retValuePtr = calloc<VTablePointer>();

    try {
      final hr = _vtable.get_CurrentFirstSelectedItem.asFunction<
              int Function(VTablePointer, Pointer<VTablePointer> retVal)>()(
          ptr, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  VTablePointer get currentLastSelectedItem {
    final retValuePtr = calloc<VTablePointer>();

    try {
      final hr = _vtable.get_CurrentLastSelectedItem.asFunction<
              int Function(VTablePointer, Pointer<VTablePointer> retVal)>()(
          ptr, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  VTablePointer get currentCurrentSelectedItem {
    final retValuePtr = calloc<VTablePointer>();

    try {
      final hr = _vtable.get_CurrentCurrentSelectedItem.asFunction<
              int Function(VTablePointer, Pointer<VTablePointer> retVal)>()(
          ptr, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get currentItemCount {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CurrentItemCount
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  VTablePointer get cachedFirstSelectedItem {
    final retValuePtr = calloc<VTablePointer>();

    try {
      final hr = _vtable.get_CachedFirstSelectedItem.asFunction<
              int Function(VTablePointer, Pointer<VTablePointer> retVal)>()(
          ptr, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  VTablePointer get cachedLastSelectedItem {
    final retValuePtr = calloc<VTablePointer>();

    try {
      final hr = _vtable.get_CachedLastSelectedItem.asFunction<
              int Function(VTablePointer, Pointer<VTablePointer> retVal)>()(
          ptr, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  VTablePointer get cachedCurrentSelectedItem {
    final retValuePtr = calloc<VTablePointer>();

    try {
      final hr = _vtable.get_CachedCurrentSelectedItem.asFunction<
              int Function(VTablePointer, Pointer<VTablePointer> retVal)>()(
          ptr, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get cachedItemCount {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CachedItemCount
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
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
base class IUIAutomationSelectionPattern2Vtbl extends Struct {
  external IUIAutomationSelectionPatternVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> retVal)>>
      get_CurrentFirstSelectedItem;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> retVal)>>
      get_CurrentLastSelectedItem;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> retVal)>>
      get_CurrentCurrentSelectedItem;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CurrentItemCount;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> retVal)>>
      get_CachedFirstSelectedItem;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> retVal)>>
      get_CachedLastSelectedItem;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> retVal)>>
      get_CachedCurrentSelectedItem;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CachedItemCount;
}
