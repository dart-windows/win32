// iuiautomationcacherequest.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../exceptions.dart';
import '../extensions/iunknown.dart';
import '../macros.dart';
import '../types.dart';
import '../utils.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IUIAutomationCacheRequest = '{b32a92b5-bc25-4078-9c08-d7ee95c48e03}';

/// Exposes properties and methods of a cache request. Client applications
/// use this interface to specify the properties and control patterns to be
/// cached when a Microsoft UI Automation element is obtained.
///
/// {@category com}
class IUIAutomationCacheRequest extends IUnknown {
  IUIAutomationCacheRequest(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationCacheRequestVtbl>().ref;

  final IUIAutomationCacheRequestVtbl _vtable;

  factory IUIAutomationCacheRequest.from(IUnknown interface) =>
      IUIAutomationCacheRequest(
          interface.toInterface(IID_IUIAutomationCacheRequest));

  int addProperty(int propertyId) => _vtable.AddProperty.asFunction<
      int Function(VTablePointer, int propertyId)>()(ptr, propertyId);

  int addPattern(int patternId) => _vtable.AddPattern.asFunction<
      int Function(VTablePointer, int patternId)>()(ptr, patternId);

  int clone(Pointer<VTablePointer> clonedRequest) => _vtable.Clone.asFunction<
          int Function(VTablePointer, Pointer<VTablePointer> clonedRequest)>()(
      ptr, clonedRequest);

  int get treeScope {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_TreeScope
              .asFunction<int Function(VTablePointer, Pointer<Int32> scope)>()(
          ptr, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set treeScope(int value) {
    final hr = _vtable.put_TreeScope
        .asFunction<int Function(VTablePointer, int scope)>()(ptr, value);
    if (FAILED(hr)) throw WindowsException(hr);
  }

  VTablePointer get treeFilter {
    final retValuePtr = calloc<VTablePointer>();

    try {
      final hr = _vtable.get_TreeFilter.asFunction<
              int Function(VTablePointer, Pointer<VTablePointer> filter)>()(
          ptr, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set treeFilter(VTablePointer value) {
    final hr = _vtable.put_TreeFilter
            .asFunction<int Function(VTablePointer, VTablePointer filter)>()(
        ptr, value);
    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get automationElementMode {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_AutomationElementMode
              .asFunction<int Function(VTablePointer, Pointer<Int32> mode)>()(
          ptr, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set automationElementMode(int value) {
    final hr = _vtable.put_AutomationElementMode
        .asFunction<int Function(VTablePointer, int mode)>()(ptr, value);
    if (FAILED(hr)) throw WindowsException(hr);
  }
}

/// @nodoc
base class IUIAutomationCacheRequestVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Int32 propertyId)>>
      AddProperty;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Int32 patternId)>>
      AddPattern;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer, Pointer<VTablePointer> clonedRequest)>> Clone;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> scope)>>
      get_TreeScope;
  external Pointer<NativeFunction<Int32 Function(VTablePointer, Int32 scope)>>
      put_TreeScope;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> filter)>>
      get_TreeFilter;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, VTablePointer filter)>>
      put_TreeFilter;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> mode)>>
      get_AutomationElementMode;
  external Pointer<NativeFunction<Int32 Function(VTablePointer, Int32 mode)>>
      put_AutomationElementMode;
}
