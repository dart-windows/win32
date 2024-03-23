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
const IID_IUIAutomationCacheRequest = '{b32a92b5-bc25-4078-9c08-d7ee95c48e03}';

/// Exposes properties and methods of a cache request.
///
/// Client applications use this interface to specify the properties and control
/// patterns to be cached when a Microsoft UI Automation element is obtained.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationcacherequest>.
///
/// {@category com}
class IUIAutomationCacheRequest extends IUnknown {
  IUIAutomationCacheRequest(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationCacheRequestVtbl>().ref;

  final IUIAutomationCacheRequestVtbl _vtable;

  /// Creates a new instance of `IUIAutomationCacheRequest` from an existing
  /// [interface].
  ///
  /// This constructor invokes the [queryInterface] method to obtain a reference
  /// to the `IUIAutomationCacheRequest` interface with the provided interface.
  ///
  /// Throws a [WindowsException] if the `queryInterface` call fails.
  factory IUIAutomationCacheRequest.from(IUnknown interface) =>
      IUIAutomationCacheRequest(
          interface.toInterface(IID_IUIAutomationCacheRequest));

  /// Adds a property to the cache request.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationcacherequest-addproperty>.
  int addProperty(int propertyId) => _vtable.AddProperty.asFunction<
      int Function(VTablePointer lpVtbl, int propertyId)>()(ptr, propertyId);

  /// Adds a control pattern to the cache request.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationcacherequest-addpattern>.
  int addPattern(int patternId) => _vtable.AddPattern.asFunction<
      int Function(VTablePointer lpVtbl, int patternId)>()(ptr, patternId);

  /// Creates a copy of the cache request.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationcacherequest-clone>.
  int clone(Pointer<VTablePointer> clonedRequest) => _vtable.Clone.asFunction<
      int Function(VTablePointer lpVtbl,
          Pointer<VTablePointer> clonedRequest)>()(ptr, clonedRequest);

  /// Specifies the scope of caching.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationcacherequest-get_treescope>.
  int get treeScope {
    final scope = calloc<Int32>();
    try {
      final hr = _vtable.get_TreeScope.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> scope)>()(ptr, scope);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = scope.value;
      return retValue;
    } finally {
      free(scope);
    }
  }

  set treeScope(int scope) {
    final hr = _vtable.put_TreeScope
            .asFunction<int Function(VTablePointer lpVtbl, int scope)>()(
        ptr, scope);
    if (FAILED(hr)) throw WindowsException(hr);
  }

  /// Specifies the view of the UI Automation element tree that is used when
  /// caching.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationcacherequest-get_treefilter>.
  VTablePointer get treeFilter {
    final filter = calloc<VTablePointer>();
    try {
      final hr = _vtable.get_TreeFilter.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> filter)>()(ptr, filter);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = filter.value;
      return retValue;
    } finally {
      free(filter);
    }
  }

  set treeFilter(VTablePointer filter) {
    final hr = _vtable.put_TreeFilter.asFunction<
        int Function(
            VTablePointer lpVtbl, VTablePointer filter)>()(ptr, filter);
    if (FAILED(hr)) throw WindowsException(hr);
  }

  /// Indicates whether returned elements contain full references to the
  /// underlying UI, or only cached information.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationcacherequest-get_automationelementmode>.
  int get automationElementMode {
    final mode = calloc<Int32>();
    try {
      final hr = _vtable.get_AutomationElementMode.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<Int32> mode)>()(ptr, mode);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = mode.value;
      return retValue;
    } finally {
      free(mode);
    }
  }

  set automationElementMode(int mode) {
    final hr = _vtable.put_AutomationElementMode
        .asFunction<int Function(VTablePointer lpVtbl, int mode)>()(ptr, mode);
    if (FAILED(hr)) throw WindowsException(hr);
  }
}

/// @nodoc
base class IUIAutomationCacheRequestVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Int32 propertyId)>>
      AddProperty;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 patternId)>> AddPattern;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> clonedRequest)>>
      Clone;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> scope)>>
      get_TreeScope;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Int32 scope)>>
      put_TreeScope;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> filter)>>
      get_TreeFilter;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, VTablePointer filter)>>
      put_TreeFilter;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> mode)>>
      get_AutomationElementMode;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Int32 mode)>>
      put_AutomationElementMode;
}