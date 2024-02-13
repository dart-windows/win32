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
import 'iunknown.g.dart';

/// @nodoc
const IID_IUIAutomationAnnotationPattern =
    '{9a175b21-339e-41b1-8e8b-623f6b681098}';

/// Provides access to the properties of an annotation in a document.
///
/// {@category com}
class IUIAutomationAnnotationPattern extends IUnknown {
  IUIAutomationAnnotationPattern(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationAnnotationPatternVtbl>().ref;

  final IUIAutomationAnnotationPatternVtbl _vtable;

  factory IUIAutomationAnnotationPattern.from(IUnknown interface) =>
      IUIAutomationAnnotationPattern(
          interface.toInterface(IID_IUIAutomationAnnotationPattern));

  int get currentAnnotationTypeId {
    final retVal = calloc<Int32>();
    try {
      final hr = _vtable.get_CurrentAnnotationTypeId.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  Pointer<Utf16> get currentAnnotationTypeName {
    final retVal = calloc<Pointer<Utf16>>();
    try {
      final hr = _vtable.get_CurrentAnnotationTypeName.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<Utf16>> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  Pointer<Utf16> get currentAuthor {
    final retVal = calloc<Pointer<Utf16>>();
    try {
      final hr = _vtable.get_CurrentAuthor.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<Utf16>> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  Pointer<Utf16> get currentDateTime {
    final retVal = calloc<Pointer<Utf16>>();
    try {
      final hr = _vtable.get_CurrentDateTime.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<Utf16>> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  VTablePointer get currentTarget {
    final retVal = calloc<VTablePointer>();
    try {
      final hr = _vtable.get_CurrentTarget.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  int get cachedAnnotationTypeId {
    final retVal = calloc<Int32>();
    try {
      final hr = _vtable.get_CachedAnnotationTypeId.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  Pointer<Utf16> get cachedAnnotationTypeName {
    final retVal = calloc<Pointer<Utf16>>();
    try {
      final hr = _vtable.get_CachedAnnotationTypeName.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<Utf16>> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  Pointer<Utf16> get cachedAuthor {
    final retVal = calloc<Pointer<Utf16>>();
    try {
      final hr = _vtable.get_CachedAuthor.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<Utf16>> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  Pointer<Utf16> get cachedDateTime {
    final retVal = calloc<Pointer<Utf16>>();
    try {
      final hr = _vtable.get_CachedDateTime.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<Utf16>> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  VTablePointer get cachedTarget {
    final retVal = calloc<VTablePointer>();
    try {
      final hr = _vtable.get_CachedTarget.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }
}

/// @nodoc
base class IUIAutomationAnnotationPatternVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer lpVtbl, Pointer<Int32> retVal)>>
      get_CurrentAnnotationTypeId;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer lpVtbl, Pointer<Pointer<Utf16>> retVal)>>
      get_CurrentAnnotationTypeName;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer lpVtbl, Pointer<Pointer<Utf16>> retVal)>>
      get_CurrentAuthor;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer lpVtbl, Pointer<Pointer<Utf16>> retVal)>>
      get_CurrentDateTime;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> retVal)>>
      get_CurrentTarget;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer lpVtbl, Pointer<Int32> retVal)>>
      get_CachedAnnotationTypeId;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer lpVtbl, Pointer<Pointer<Utf16>> retVal)>>
      get_CachedAnnotationTypeName;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer lpVtbl, Pointer<Pointer<Utf16>> retVal)>>
      get_CachedAuthor;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer lpVtbl, Pointer<Pointer<Utf16>> retVal)>>
      get_CachedDateTime;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> retVal)>>
      get_CachedTarget;
}
