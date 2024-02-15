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
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IUIAutomationValuePattern = '{a94cd8b1-0844-4cd6-9d2d-640537ab39e9}';

/// Provides access to a control that contains a value that does not span a
/// range and that can be represented as a string.
///
/// {@category com}
class IUIAutomationValuePattern extends IUnknown {
  IUIAutomationValuePattern(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationValuePatternVtbl>().ref;

  final IUIAutomationValuePatternVtbl _vtable;

  factory IUIAutomationValuePattern.from(IUnknown interface) =>
      IUIAutomationValuePattern(
          interface.toInterface(IID_IUIAutomationValuePattern));

  int setValue(BSTR val) => _vtable.SetValue.asFunction<
      int Function(VTablePointer lpVtbl, BSTR val)>()(ptr, val);

  BSTR get currentValue {
    final retVal = calloc<BSTR>();
    try {
      final hr = _vtable.get_CurrentValue.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<BSTR> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  int get currentIsReadOnly {
    final retVal = calloc<BOOL>();
    try {
      final hr = _vtable.get_CurrentIsReadOnly.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<BOOL> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  BSTR get cachedValue {
    final retVal = calloc<BSTR>();
    try {
      final hr = _vtable.get_CachedValue.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<BSTR> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  int get cachedIsReadOnly {
    final retVal = calloc<BOOL>();
    try {
      final hr = _vtable.get_CachedIsReadOnly.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<BOOL> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }
}

/// @nodoc
base class IUIAutomationValuePatternVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, BSTR val)>>
      SetValue;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<BSTR> retVal)>>
      get_CurrentValue;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<BOOL> retVal)>>
      get_CurrentIsReadOnly;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<BSTR> retVal)>>
      get_CachedValue;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<BOOL> retVal)>>
      get_CachedIsReadOnly;
}
