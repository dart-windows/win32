// iuiautomationtreewalker.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../exceptions.dart';
import '../macros.dart';
import '../types.dart';
import '../utils.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IUIAutomationTreeWalker = '{4042c624-389c-4afc-a630-9df854a541fc}';

/// Exposes properties and methods that UI Automation client applications
/// use to view and navigate the UI Automation elements on the desktop.
///
/// {@category com}
class IUIAutomationTreeWalker extends IUnknown {
  // vtable begins at 3, is 13 entries long.
  IUIAutomationTreeWalker(super.ptr)
      : _vtable = ptr.value.value.cast<IUIAutomationTreeWalkerVtbl>().ref;

  final IUIAutomationTreeWalkerVtbl _vtable;

  factory IUIAutomationTreeWalker.from(IUnknown interface) =>
      IUIAutomationTreeWalker(
          interface.toInterface(IID_IUIAutomationTreeWalker));

  int getParentElement(Pointer<VTablePointer> element,
          Pointer<Pointer<VTablePointer>> parent) =>
      _vtable.GetParentElement.asFunction<
              int Function(VTablePointer, Pointer<VTablePointer> element,
                  Pointer<Pointer<VTablePointer>> parent)>()(
          ptr.value, element, parent);

  int getFirstChildElement(Pointer<VTablePointer> element,
          Pointer<Pointer<VTablePointer>> first) =>
      _vtable.GetFirstChildElement.asFunction<
              int Function(VTablePointer, Pointer<VTablePointer> element,
                  Pointer<Pointer<VTablePointer>> first)>()(
          ptr.value, element, first);

  int getLastChildElement(Pointer<VTablePointer> element,
          Pointer<Pointer<VTablePointer>> last) =>
      _vtable.GetLastChildElement.asFunction<
              int Function(VTablePointer, Pointer<VTablePointer> element,
                  Pointer<Pointer<VTablePointer>> last)>()(
          ptr.value, element, last);

  int getNextSiblingElement(Pointer<VTablePointer> element,
          Pointer<Pointer<VTablePointer>> next) =>
      _vtable.GetNextSiblingElement.asFunction<
              int Function(VTablePointer, Pointer<VTablePointer> element,
                  Pointer<Pointer<VTablePointer>> next)>()(
          ptr.value, element, next);

  int getPreviousSiblingElement(Pointer<VTablePointer> element,
          Pointer<Pointer<VTablePointer>> previous) =>
      _vtable.GetPreviousSiblingElement.asFunction<
              int Function(VTablePointer, Pointer<VTablePointer> element,
                  Pointer<Pointer<VTablePointer>> previous)>()(
          ptr.value, element, previous);

  int normalizeElement(Pointer<VTablePointer> element,
          Pointer<Pointer<VTablePointer>> normalized) =>
      _vtable.NormalizeElement.asFunction<
              int Function(VTablePointer, Pointer<VTablePointer> element,
                  Pointer<Pointer<VTablePointer>> normalized)>()(
          ptr.value, element, normalized);

  int getParentElementBuildCache(
          Pointer<VTablePointer> element,
          Pointer<VTablePointer> cacheRequest,
          Pointer<Pointer<VTablePointer>> parent) =>
      _vtable.GetParentElementBuildCache.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<VTablePointer> element,
                  Pointer<VTablePointer> cacheRequest,
                  Pointer<Pointer<VTablePointer>> parent)>()(
          ptr.value, element, cacheRequest, parent);

  int getFirstChildElementBuildCache(
          Pointer<VTablePointer> element,
          Pointer<VTablePointer> cacheRequest,
          Pointer<Pointer<VTablePointer>> first) =>
      _vtable.GetFirstChildElementBuildCache.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<VTablePointer> element,
                  Pointer<VTablePointer> cacheRequest,
                  Pointer<Pointer<VTablePointer>> first)>()(
          ptr.value, element, cacheRequest, first);

  int getLastChildElementBuildCache(
          Pointer<VTablePointer> element,
          Pointer<VTablePointer> cacheRequest,
          Pointer<Pointer<VTablePointer>> last) =>
      _vtable.GetLastChildElementBuildCache.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<VTablePointer> element,
                  Pointer<VTablePointer> cacheRequest,
                  Pointer<Pointer<VTablePointer>> last)>()(
          ptr.value, element, cacheRequest, last);

  int getNextSiblingElementBuildCache(
          Pointer<VTablePointer> element,
          Pointer<VTablePointer> cacheRequest,
          Pointer<Pointer<VTablePointer>> next) =>
      _vtable.GetNextSiblingElementBuildCache.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<VTablePointer> element,
                  Pointer<VTablePointer> cacheRequest,
                  Pointer<Pointer<VTablePointer>> next)>()(
          ptr.value, element, cacheRequest, next);

  int getPreviousSiblingElementBuildCache(
          Pointer<VTablePointer> element,
          Pointer<VTablePointer> cacheRequest,
          Pointer<Pointer<VTablePointer>> previous) =>
      _vtable.GetPreviousSiblingElementBuildCache.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<VTablePointer> element,
                  Pointer<VTablePointer> cacheRequest,
                  Pointer<Pointer<VTablePointer>> previous)>()(
          ptr.value, element, cacheRequest, previous);

  int normalizeElementBuildCache(
          Pointer<VTablePointer> element,
          Pointer<VTablePointer> cacheRequest,
          Pointer<Pointer<VTablePointer>> normalized) =>
      _vtable.NormalizeElementBuildCache.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<VTablePointer> element,
                  Pointer<VTablePointer> cacheRequest,
                  Pointer<Pointer<VTablePointer>> normalized)>()(
          ptr.value, element, cacheRequest, normalized);

  Pointer<VTablePointer> get condition {
    final retValuePtr = calloc<VTablePointer>();

    final hr = _vtable.get_Condition.asFunction<
            int Function(VTablePointer, Pointer<VTablePointer> condition)>()(
        ptr.value, retValuePtr);
    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }
}

/// @nodoc
base class IUIAutomationTreeWalkerVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<VTablePointer> element,
              Pointer<Pointer<VTablePointer>> parent)>> GetParentElement;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<VTablePointer> element,
              Pointer<Pointer<VTablePointer>> first)>> GetFirstChildElement;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<VTablePointer> element,
              Pointer<Pointer<VTablePointer>> last)>> GetLastChildElement;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<VTablePointer> element,
              Pointer<Pointer<VTablePointer>> next)>> GetNextSiblingElement;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> element,
                  Pointer<Pointer<VTablePointer>> previous)>>
      GetPreviousSiblingElement;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<VTablePointer> element,
              Pointer<Pointer<VTablePointer>> normalized)>> NormalizeElement;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer,
                  Pointer<VTablePointer> element,
                  Pointer<VTablePointer> cacheRequest,
                  Pointer<Pointer<VTablePointer>> parent)>>
      GetParentElementBuildCache;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer,
                  Pointer<VTablePointer> element,
                  Pointer<VTablePointer> cacheRequest,
                  Pointer<Pointer<VTablePointer>> first)>>
      GetFirstChildElementBuildCache;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer,
                  Pointer<VTablePointer> element,
                  Pointer<VTablePointer> cacheRequest,
                  Pointer<Pointer<VTablePointer>> last)>>
      GetLastChildElementBuildCache;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer,
                  Pointer<VTablePointer> element,
                  Pointer<VTablePointer> cacheRequest,
                  Pointer<Pointer<VTablePointer>> next)>>
      GetNextSiblingElementBuildCache;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer,
                  Pointer<VTablePointer> element,
                  Pointer<VTablePointer> cacheRequest,
                  Pointer<Pointer<VTablePointer>> previous)>>
      GetPreviousSiblingElementBuildCache;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer,
                  Pointer<VTablePointer> element,
                  Pointer<VTablePointer> cacheRequest,
                  Pointer<Pointer<VTablePointer>> normalized)>>
      NormalizeElementBuildCache;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> condition)>>
      get_Condition;
}
