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
const IID_IUIAutomationTreeWalker = '{4042c624-389c-4afc-a630-9df854a541fc}';

/// Exposes properties and methods that UI Automation client applications use to
/// view and navigate the UI Automation elements on the desktop.
///
/// {@category com}
class IUIAutomationTreeWalker extends IUnknown {
  IUIAutomationTreeWalker(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationTreeWalkerVtbl>().ref;

  final IUIAutomationTreeWalkerVtbl _vtable;

  factory IUIAutomationTreeWalker.from(IUnknown interface) =>
      IUIAutomationTreeWalker(
          interface.toInterface(IID_IUIAutomationTreeWalker));

  int getParentElement(VTablePointer element, Pointer<VTablePointer> parent) =>
      _vtable.GetParentElement.asFunction<
          int Function(VTablePointer, VTablePointer element,
              Pointer<VTablePointer> parent)>()(ptr, element, parent);

  int getFirstChildElement(
          VTablePointer element, Pointer<VTablePointer> first) =>
      _vtable.GetFirstChildElement.asFunction<
          int Function(VTablePointer, VTablePointer element,
              Pointer<VTablePointer> first)>()(ptr, element, first);

  int getLastChildElement(VTablePointer element, Pointer<VTablePointer> last) =>
      _vtable.GetLastChildElement.asFunction<
          int Function(VTablePointer, VTablePointer element,
              Pointer<VTablePointer> last)>()(ptr, element, last);

  int getNextSiblingElement(
          VTablePointer element, Pointer<VTablePointer> next) =>
      _vtable.GetNextSiblingElement.asFunction<
          int Function(VTablePointer, VTablePointer element,
              Pointer<VTablePointer> next)>()(ptr, element, next);

  int getPreviousSiblingElement(
          VTablePointer element, Pointer<VTablePointer> previous) =>
      _vtable.GetPreviousSiblingElement.asFunction<
          int Function(VTablePointer, VTablePointer element,
              Pointer<VTablePointer> previous)>()(ptr, element, previous);

  int normalizeElement(
          VTablePointer element, Pointer<VTablePointer> normalized) =>
      _vtable.NormalizeElement.asFunction<
          int Function(VTablePointer, VTablePointer element,
              Pointer<VTablePointer> normalized)>()(ptr, element, normalized);

  int getParentElementBuildCache(VTablePointer element,
          VTablePointer cacheRequest, Pointer<VTablePointer> parent) =>
      _vtable.GetParentElementBuildCache.asFunction<
              int Function(VTablePointer, VTablePointer element,
                  VTablePointer cacheRequest, Pointer<VTablePointer> parent)>()(
          ptr, element, cacheRequest, parent);

  int getFirstChildElementBuildCache(VTablePointer element,
          VTablePointer cacheRequest, Pointer<VTablePointer> first) =>
      _vtable.GetFirstChildElementBuildCache.asFunction<
              int Function(VTablePointer, VTablePointer element,
                  VTablePointer cacheRequest, Pointer<VTablePointer> first)>()(
          ptr, element, cacheRequest, first);

  int getLastChildElementBuildCache(VTablePointer element,
          VTablePointer cacheRequest, Pointer<VTablePointer> last) =>
      _vtable.GetLastChildElementBuildCache.asFunction<
          int Function(
              VTablePointer,
              VTablePointer element,
              VTablePointer cacheRequest,
              Pointer<VTablePointer> last)>()(ptr, element, cacheRequest, last);

  int getNextSiblingElementBuildCache(VTablePointer element,
          VTablePointer cacheRequest, Pointer<VTablePointer> next) =>
      _vtable.GetNextSiblingElementBuildCache.asFunction<
          int Function(
              VTablePointer,
              VTablePointer element,
              VTablePointer cacheRequest,
              Pointer<VTablePointer> next)>()(ptr, element, cacheRequest, next);

  int getPreviousSiblingElementBuildCache(VTablePointer element,
          VTablePointer cacheRequest, Pointer<VTablePointer> previous) =>
      _vtable.GetPreviousSiblingElementBuildCache.asFunction<
              int Function(
                  VTablePointer,
                  VTablePointer element,
                  VTablePointer cacheRequest,
                  Pointer<VTablePointer> previous)>()(
          ptr, element, cacheRequest, previous);

  int normalizeElementBuildCache(VTablePointer element,
          VTablePointer cacheRequest, Pointer<VTablePointer> normalized) =>
      _vtable.NormalizeElementBuildCache.asFunction<
              int Function(
                  VTablePointer,
                  VTablePointer element,
                  VTablePointer cacheRequest,
                  Pointer<VTablePointer> normalized)>()(
          ptr, element, cacheRequest, normalized);

  int get_Condition(Pointer<VTablePointer> condition) =>
      _vtable.get_Condition.asFunction<
              int Function(VTablePointer, Pointer<VTablePointer> condition)>()(
          ptr, condition);
}

/// @nodoc
base class IUIAutomationTreeWalkerVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, VTablePointer element,
              Pointer<VTablePointer> parent)>> GetParentElement;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, VTablePointer element,
              Pointer<VTablePointer> first)>> GetFirstChildElement;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, VTablePointer element,
              Pointer<VTablePointer> last)>> GetLastChildElement;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, VTablePointer element,
              Pointer<VTablePointer> next)>> GetNextSiblingElement;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, VTablePointer element,
              Pointer<VTablePointer> previous)>> GetPreviousSiblingElement;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, VTablePointer element,
              Pointer<VTablePointer> normalized)>> NormalizeElement;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              VTablePointer element,
              VTablePointer cacheRequest,
              Pointer<VTablePointer> parent)>> GetParentElementBuildCache;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              VTablePointer element,
              VTablePointer cacheRequest,
              Pointer<VTablePointer> first)>> GetFirstChildElementBuildCache;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              VTablePointer element,
              VTablePointer cacheRequest,
              Pointer<VTablePointer> last)>> GetLastChildElementBuildCache;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              VTablePointer element,
              VTablePointer cacheRequest,
              Pointer<VTablePointer> next)>> GetNextSiblingElementBuildCache;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, VTablePointer element,
                  VTablePointer cacheRequest, Pointer<VTablePointer> previous)>>
      GetPreviousSiblingElementBuildCache;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              VTablePointer element,
              VTablePointer cacheRequest,
              Pointer<VTablePointer> normalized)>> NormalizeElementBuildCache;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> condition)>>
      get_Condition;
}
