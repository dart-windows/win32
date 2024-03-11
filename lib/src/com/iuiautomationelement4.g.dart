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
import 'iuiautomationelement3.g.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IUIAutomationElement4 = '{3b6e233c-52fb-4063-a4c9-77c075c2a06b}';

/// Extends the IUIAutomationElement3 interface.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationelement4>.
///
/// {@category com}
class IUIAutomationElement4 extends IUIAutomationElement3 {
  IUIAutomationElement4(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationElement4Vtbl>().ref;

  final IUIAutomationElement4Vtbl _vtable;

  /// Creates a new instance of `IUIAutomationElement4` from an existing
  /// [interface].
  ///
  /// This constructor invokes the [queryInterface] method to obtain a reference
  /// to the `IUIAutomationElement4` interface with the provided interface.
  ///
  /// Throws a [WindowsException] if the `queryInterface` call fails.
  factory IUIAutomationElement4.from(IUnknown interface) =>
      IUIAutomationElement4(interface.toInterface(IID_IUIAutomationElement4));

  /// Returns the current 1-based integer for the ordinal position in the set for
  /// the element.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement4-get_currentpositioninset>.
  int get currentPositionInSet {
    final retVal = calloc<Int32>();
    try {
      final hr = _vtable.get_CurrentPositionInSet.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Returns the current 1-based integer for the size of the set where the
  /// element is located.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement4-get_currentsizeofset>.
  int get currentSizeOfSet {
    final retVal = calloc<Int32>();
    try {
      final hr = _vtable.get_CurrentSizeOfSet.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Returns the current 1-based integer for the level (hierarchy) for the
  /// element.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement4-get_currentlevel>.
  int get currentLevel {
    final retVal = calloc<Int32>();
    try {
      final hr = _vtable.get_CurrentLevel.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Returns the current list of annotation types associated with this element,
  /// such as comment, header, footer, and so on.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement4-get_currentannotationtypes>.
  Pointer<SAFEARRAY> get currentAnnotationTypes {
    final retVal = calloc<Pointer<SAFEARRAY>>();
    try {
      final hr = _vtable.get_CurrentAnnotationTypes.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<SAFEARRAY>> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Returns the current list of annotation objects associated with this element,
  /// such as comment, header, footer, and so on.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement4-get_currentannotationobjects>.
  VTablePointer get currentAnnotationObjects {
    final retVal = calloc<VTablePointer>();
    try {
      final hr = _vtable.get_CurrentAnnotationObjects.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Returns the cached 1-based integer for the ordinal position in the set for
  /// the element.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement4-get_cachedpositioninset>.
  int get cachedPositionInSet {
    final retVal = calloc<Int32>();
    try {
      final hr = _vtable.get_CachedPositionInSet.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Returns the cached 1-based integer for the size of the set where the element
  /// is located.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement4-get_cachedsizeofset>.
  int get cachedSizeOfSet {
    final retVal = calloc<Int32>();
    try {
      final hr = _vtable.get_CachedSizeOfSet.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Returns the cached 1-based integer for the level (hierarchy) for the
  /// element.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement4-get_cachedlevel>.
  int get cachedLevel {
    final retVal = calloc<Int32>();
    try {
      final hr = _vtable.get_CachedLevel.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Returns the cached list of annotation types associated with this element,
  /// such as comment, header, footer, and so on.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement4-get_cachedannotationtypes>.
  Pointer<SAFEARRAY> get cachedAnnotationTypes {
    final retVal = calloc<Pointer<SAFEARRAY>>();
    try {
      final hr = _vtable.get_CachedAnnotationTypes.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<SAFEARRAY>> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Returns the cached list of annotation objects associated with this element,
  /// such as comment, header, footer, and so on.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement4-get_cachedannotationobjects>.
  VTablePointer get cachedAnnotationObjects {
    final retVal = calloc<VTablePointer>();
    try {
      final hr = _vtable.get_CachedAnnotationObjects.asFunction<
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
base class IUIAutomationElement4Vtbl extends Struct {
  external IUIAutomationElement3Vtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> retVal)>>
      get_CurrentPositionInSet;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> retVal)>>
      get_CurrentSizeOfSet;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> retVal)>>
      get_CurrentLevel;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Pointer<SAFEARRAY>> retVal)>>
      get_CurrentAnnotationTypes;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> retVal)>>
      get_CurrentAnnotationObjects;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> retVal)>>
      get_CachedPositionInSet;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> retVal)>>
      get_CachedSizeOfSet;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> retVal)>>
      get_CachedLevel;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Pointer<SAFEARRAY>> retVal)>>
      get_CachedAnnotationTypes;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> retVal)>>
      get_CachedAnnotationObjects;
}
