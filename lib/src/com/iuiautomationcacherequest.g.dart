// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../extensions/iunknown.dart';
import '../types.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IUIAutomationCacheRequest = '{b32a92b5-bc25-4078-9c08-d7ee95c48e03}';

/// Exposes properties and methods of a cache request. Client applications use
/// this interface to specify the properties and control patterns to be cached
/// when a Microsoft UI Automation element is obtained.
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

  int get_TreeScope(Pointer<Int32> scope) => _vtable.get_TreeScope
          .asFunction<int Function(VTablePointer, Pointer<Int32> scope)>()(
      ptr, scope);

  int put_TreeScope(int scope) => _vtable.put_TreeScope
      .asFunction<int Function(VTablePointer, int scope)>()(ptr, scope);

  int get_TreeFilter(Pointer<VTablePointer> filter) =>
      _vtable.get_TreeFilter.asFunction<
          int Function(
              VTablePointer, Pointer<VTablePointer> filter)>()(ptr, filter);

  int put_TreeFilter(VTablePointer filter) => _vtable.put_TreeFilter
          .asFunction<int Function(VTablePointer, VTablePointer filter)>()(
      ptr, filter);

  int get_AutomationElementMode(Pointer<Int32> mode) =>
      _vtable.get_AutomationElementMode
              .asFunction<int Function(VTablePointer, Pointer<Int32> mode)>()(
          ptr, mode);

  int put_AutomationElementMode(int mode) => _vtable.put_AutomationElementMode
      .asFunction<int Function(VTablePointer, int mode)>()(ptr, mode);
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
