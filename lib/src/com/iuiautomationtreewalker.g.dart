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
const IID_IUIAutomationTreeWalker = '{4042c624-389c-4afc-a630-9df854a541fc}';

/// Exposes properties and methods that UI Automation client applications use to
/// view and navigate the UI Automation elements on the desktop.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationtreewalker>.
///
/// {@category com}
class IUIAutomationTreeWalker extends IUnknown {
  IUIAutomationTreeWalker(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationTreeWalkerVtbl>().ref;

  final IUIAutomationTreeWalkerVtbl _vtable;

  factory IUIAutomationTreeWalker.from(IUnknown interface) =>
      IUIAutomationTreeWalker(
          interface.toInterface(IID_IUIAutomationTreeWalker));

  /// Retrieves the parent element of the specified UI Automation element.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtreewalker-getparentelement>.
  int getParentElement(VTablePointer element, Pointer<VTablePointer> parent) =>
      _vtable.GetParentElement.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer element,
              Pointer<VTablePointer> parent)>()(ptr, element, parent);

  /// Retrieves the first child element of the specified UI Automation element.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtreewalker-getfirstchildelement>.
  int getFirstChildElement(
          VTablePointer element, Pointer<VTablePointer> first) =>
      _vtable.GetFirstChildElement.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer element,
              Pointer<VTablePointer> first)>()(ptr, element, first);

  /// Retrieves the last child element of the specified UI Automation element.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtreewalker-getlastchildelement>.
  int getLastChildElement(VTablePointer element, Pointer<VTablePointer> last) =>
      _vtable.GetLastChildElement.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer element,
              Pointer<VTablePointer> last)>()(ptr, element, last);

  /// Retrieves the next sibling element of the specified UI Automation element.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtreewalker-getnextsiblingelement>.
  int getNextSiblingElement(
          VTablePointer element, Pointer<VTablePointer> next) =>
      _vtable.GetNextSiblingElement.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer element,
              Pointer<VTablePointer> next)>()(ptr, element, next);

  /// Retrieves the previous sibling element of the specified UI Automation
  /// element.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtreewalker-getprevioussiblingelement>.
  int getPreviousSiblingElement(
          VTablePointer element, Pointer<VTablePointer> previous) =>
      _vtable.GetPreviousSiblingElement.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer element,
              Pointer<VTablePointer> previous)>()(ptr, element, previous);

  /// Retrieves the ancestor element nearest to the specified Microsoft UI
  /// Automation element in the tree view.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtreewalker-normalizeelement>.
  int normalizeElement(
          VTablePointer element, Pointer<VTablePointer> normalized) =>
      _vtable.NormalizeElement.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer element,
              Pointer<VTablePointer> normalized)>()(ptr, element, normalized);

  /// Retrieves the parent element of the specified UI Automation element, and
  /// caches properties and control patterns.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtreewalker-getparentelementbuildcache>.
  int getParentElementBuildCache(VTablePointer element,
          VTablePointer cacheRequest, Pointer<VTablePointer> parent) =>
      _vtable.GetParentElementBuildCache.asFunction<
              int Function(VTablePointer lpVtbl, VTablePointer element,
                  VTablePointer cacheRequest, Pointer<VTablePointer> parent)>()(
          ptr, element, cacheRequest, parent);

  /// Retrieves the first child element of the specified UI Automation element,
  /// and caches properties and control patterns.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtreewalker-getfirstchildelementbuildcache>.
  int getFirstChildElementBuildCache(VTablePointer element,
          VTablePointer cacheRequest, Pointer<VTablePointer> first) =>
      _vtable.GetFirstChildElementBuildCache.asFunction<
              int Function(VTablePointer lpVtbl, VTablePointer element,
                  VTablePointer cacheRequest, Pointer<VTablePointer> first)>()(
          ptr, element, cacheRequest, first);

  /// Retrieves the last child element of the specified UI Automation element, and
  /// caches properties and control patterns.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtreewalker-getlastchildelementbuildcache>.
  int getLastChildElementBuildCache(VTablePointer element,
          VTablePointer cacheRequest, Pointer<VTablePointer> last) =>
      _vtable.GetLastChildElementBuildCache.asFunction<
          int Function(
              VTablePointer lpVtbl,
              VTablePointer element,
              VTablePointer cacheRequest,
              Pointer<VTablePointer> last)>()(ptr, element, cacheRequest, last);

  /// Retrieves the next sibling element of the specified UI Automation element,
  /// and caches properties and control patterns.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtreewalker-getnextsiblingelementbuildcache>.
  int getNextSiblingElementBuildCache(VTablePointer element,
          VTablePointer cacheRequest, Pointer<VTablePointer> next) =>
      _vtable.GetNextSiblingElementBuildCache.asFunction<
          int Function(
              VTablePointer lpVtbl,
              VTablePointer element,
              VTablePointer cacheRequest,
              Pointer<VTablePointer> next)>()(ptr, element, cacheRequest, next);

  /// Retrieves the previous sibling element of the specified UI Automation
  /// element, and caches properties and control patterns.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtreewalker-getprevioussiblingelementbuildcache>.
  int getPreviousSiblingElementBuildCache(VTablePointer element,
          VTablePointer cacheRequest, Pointer<VTablePointer> previous) =>
      _vtable.GetPreviousSiblingElementBuildCache.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  VTablePointer element,
                  VTablePointer cacheRequest,
                  Pointer<VTablePointer> previous)>()(
          ptr, element, cacheRequest, previous);

  /// Retrieves the ancestor element nearest to the specified Microsoft UI
  /// Automation element in the tree view, prefetches the requested properties and
  /// control patterns, and stores the prefetched items in the cache.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtreewalker-normalizeelementbuildcache>.
  int normalizeElementBuildCache(VTablePointer element,
          VTablePointer cacheRequest, Pointer<VTablePointer> normalized) =>
      _vtable.NormalizeElementBuildCache.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  VTablePointer element,
                  VTablePointer cacheRequest,
                  Pointer<VTablePointer> normalized)>()(
          ptr, element, cacheRequest, normalized);

  /// Retrieves the condition that defines the view of the UI Automation tree.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtreewalker-get_condition>.
  VTablePointer get condition {
    final condition = calloc<VTablePointer>();
    try {
      final hr = _vtable.get_Condition.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> condition)>()(ptr, condition);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = condition.value;
      return retValue;
    } finally {
      free(condition);
    }
  }
}

/// @nodoc
base class IUIAutomationTreeWalkerVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer element,
              Pointer<VTablePointer> parent)>> GetParentElement;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer element,
              Pointer<VTablePointer> first)>> GetFirstChildElement;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer element,
              Pointer<VTablePointer> last)>> GetLastChildElement;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer element,
              Pointer<VTablePointer> next)>> GetNextSiblingElement;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer element,
              Pointer<VTablePointer> previous)>> GetPreviousSiblingElement;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer element,
              Pointer<VTablePointer> normalized)>> NormalizeElement;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer element,
              VTablePointer cacheRequest,
              Pointer<VTablePointer> parent)>> GetParentElementBuildCache;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer element,
              VTablePointer cacheRequest,
              Pointer<VTablePointer> first)>> GetFirstChildElementBuildCache;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer element,
              VTablePointer cacheRequest,
              Pointer<VTablePointer> last)>> GetLastChildElementBuildCache;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer element,
              VTablePointer cacheRequest,
              Pointer<VTablePointer> next)>> GetNextSiblingElementBuildCache;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, VTablePointer element,
                  VTablePointer cacheRequest, Pointer<VTablePointer> previous)>>
      GetPreviousSiblingElementBuildCache;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer element,
              VTablePointer cacheRequest,
              Pointer<VTablePointer> normalized)>> NormalizeElementBuildCache;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> condition)>>
      get_Condition;
}
