// iuiautomationcacherequest.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import '../exceptions.dart';
import '../macros.dart';
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
  // vtable begins at 3, is 9 entries long.
  IUIAutomationCacheRequest(super.ptr)
      : _vtable = ptr.ref.vtable.cast<IUIAutomationCacheRequestVtbl>().ref;

  final IUIAutomationCacheRequestVtbl _vtable;

  factory IUIAutomationCacheRequest.from(IUnknown interface) =>
      IUIAutomationCacheRequest(
          interface.toInterface(IID_IUIAutomationCacheRequest));

  int addProperty(int propertyId) =>
      _vtable.AddProperty.asFunction<int Function(Pointer, int propertyId)>()(
          ptr.ref.lpVtbl, propertyId);

  int addPattern(int patternId) =>
      _vtable.AddPattern.asFunction<int Function(Pointer, int patternId)>()(
          ptr.ref.lpVtbl, patternId);

  int clone(Pointer<Pointer<COMObject>> clonedRequest) =>
      _vtable.Clone.asFunction<
              int Function(
                  Pointer, Pointer<Pointer<COMObject>> clonedRequest)>()(
          ptr.ref.lpVtbl, clonedRequest);

  int get treeScope {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_TreeScope
              .asFunction<int Function(Pointer, Pointer<Int32> scope)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set treeScope(int value) {
    final hr = _vtable.put_TreeScope
        .asFunction<int Function(Pointer, int scope)>()(ptr.ref.lpVtbl, value);
    if (FAILED(hr)) throw WindowsException(hr);
  }

  Pointer<COMObject> get treeFilter {
    final retValuePtr = calloc<COMObject>();

    final hr = _vtable.get_TreeFilter
            .asFunction<int Function(Pointer, Pointer<COMObject> filter)>()(
        ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }

  set treeFilter(Pointer<COMObject> value) {
    final hr = _vtable.put_TreeFilter
            .asFunction<int Function(Pointer, Pointer<COMObject> filter)>()(
        ptr.ref.lpVtbl, value);
    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get automationElementMode {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_AutomationElementMode
              .asFunction<int Function(Pointer, Pointer<Int32> mode)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set automationElementMode(int value) {
    final hr = _vtable.put_AutomationElementMode
        .asFunction<int Function(Pointer, int mode)>()(ptr.ref.lpVtbl, value);
    if (FAILED(hr)) throw WindowsException(hr);
  }
}

/// @nodoc
base class IUIAutomationCacheRequestVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<NativeFunction<Int32 Function(Pointer, Uint32 propertyId)>>
      AddProperty;
  external Pointer<NativeFunction<Int32 Function(Pointer, Uint32 patternId)>>
      AddPattern;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer, Pointer<Pointer<COMObject>> clonedRequest)>> Clone;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> scope)>>
      get_TreeScope;
  external Pointer<NativeFunction<Int32 Function(Pointer, Int32 scope)>>
      put_TreeScope;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<COMObject> filter)>>
      get_TreeFilter;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<COMObject> filter)>>
      put_TreeFilter;
  external Pointer<NativeFunction<Int32 Function(Pointer, Pointer<Int32> mode)>>
      get_AutomationElementMode;
  external Pointer<NativeFunction<Int32 Function(Pointer, Int32 mode)>>
      put_AutomationElementMode;
}
