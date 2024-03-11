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
const IID_IUIAutomationAnnotationPattern =
    '{9a175b21-339e-41b1-8e8b-623f6b681098}';

/// Provides access to the properties of an annotation in a document.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationannotationpattern>.
///
/// {@category com}
class IUIAutomationAnnotationPattern extends IUnknown {
  IUIAutomationAnnotationPattern(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationAnnotationPatternVtbl>().ref;

  final IUIAutomationAnnotationPatternVtbl _vtable;

  /// Creates a new instance of `IUIAutomationAnnotationPattern` from an
  /// existing [interface].
  ///
  /// This constructor invokes the [queryInterface] method to obtain a reference
  /// to the `IUIAutomationAnnotationPattern` interface with the provided
  /// interface.
  ///
  /// Throws a [WindowsException] if the `queryInterface` call fails.
  factory IUIAutomationAnnotationPattern.from(IUnknown interface) =>
      IUIAutomationAnnotationPattern(
          interface.toInterface(IID_IUIAutomationAnnotationPattern));

  /// Retrieves a value that identifies the annotation's type.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationannotationpattern-get_currentannotationtypeid>.
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

  /// Retrieves the localized name of this annotation's type.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationannotationpattern-get_currentannotationtypename>.
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

  /// Retrieves the name of the annotation author.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationannotationpattern-get_currentauthor>.
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

  /// Retrieves the date and time that this annotation was created.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationannotationpattern-get_currentdatetime>.
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

  /// Retrieves the element that is being annotated.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationannotationpattern-get_currenttarget>.
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

  /// Retrieves a cached value that identifies this annotation's type.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationannotationpattern-get_cachedannotationtypeid>.
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

  /// Retrieves the cached localized name of this annotation's type.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationannotationpattern-get_cachedannotationtypename>.
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

  /// Retrieves the cached name of the annotation author.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationannotationpattern-get_cachedauthor>.
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

  /// Retrieves the cached date and time that this annotation was created.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationannotationpattern-get_cacheddatetime>.
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

  /// Retrieves the cached element that is being annotated.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationannotationpattern-get_cachedtarget>.
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
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> retVal)>>
      get_CurrentAnnotationTypeId;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Pointer<Utf16>> retVal)>>
      get_CurrentAnnotationTypeName;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Pointer<Utf16>> retVal)>>
      get_CurrentAuthor;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Pointer<Utf16>> retVal)>>
      get_CurrentDateTime;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> retVal)>>
      get_CurrentTarget;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> retVal)>>
      get_CachedAnnotationTypeId;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Pointer<Utf16>> retVal)>>
      get_CachedAnnotationTypeName;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Pointer<Utf16>> retVal)>>
      get_CachedAuthor;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Pointer<Utf16>> retVal)>>
      get_CachedDateTime;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> retVal)>>
      get_CachedTarget;
}
