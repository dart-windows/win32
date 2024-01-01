// iuiautomationtreewalker.dart

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
const IID_IUIAutomationTreeWalker = '{4042c624-389c-4afc-a630-9df854a541fc}';

/// Exposes properties and methods that UI Automation client applications
/// use to view and navigate the UI Automation elements on the desktop.
///
/// {@category com}
class IUIAutomationTreeWalker extends IUnknown {
  // vtable begins at 3, is 13 entries long.
  IUIAutomationTreeWalker(super.ptr)
      : _vtable = ptr.ref.vtable.cast<IUIAutomationTreeWalkerVtbl>().ref;

  final IUIAutomationTreeWalkerVtbl _vtable;

  factory IUIAutomationTreeWalker.from(IUnknown interface) =>
      IUIAutomationTreeWalker(
          interface.toInterface(IID_IUIAutomationTreeWalker));

  int getParentElement(
          Pointer<COMObject> element, Pointer<Pointer<COMObject>> parent) =>
      _vtable.GetParentElement.asFunction<
              int Function(Pointer, Pointer<COMObject> element,
                  Pointer<Pointer<COMObject>> parent)>()(
          ptr.ref.lpVtbl, element, parent);

  int getFirstChildElement(
          Pointer<COMObject> element, Pointer<Pointer<COMObject>> first) =>
      _vtable.GetFirstChildElement.asFunction<
              int Function(Pointer, Pointer<COMObject> element,
                  Pointer<Pointer<COMObject>> first)>()(
          ptr.ref.lpVtbl, element, first);

  int getLastChildElement(
          Pointer<COMObject> element, Pointer<Pointer<COMObject>> last) =>
      _vtable.GetLastChildElement.asFunction<
              int Function(Pointer, Pointer<COMObject> element,
                  Pointer<Pointer<COMObject>> last)>()(
          ptr.ref.lpVtbl, element, last);

  int getNextSiblingElement(
          Pointer<COMObject> element, Pointer<Pointer<COMObject>> next) =>
      _vtable.GetNextSiblingElement.asFunction<
              int Function(Pointer, Pointer<COMObject> element,
                  Pointer<Pointer<COMObject>> next)>()(
          ptr.ref.lpVtbl, element, next);

  int getPreviousSiblingElement(
          Pointer<COMObject> element, Pointer<Pointer<COMObject>> previous) =>
      _vtable.GetPreviousSiblingElement.asFunction<
              int Function(Pointer, Pointer<COMObject> element,
                  Pointer<Pointer<COMObject>> previous)>()(
          ptr.ref.lpVtbl, element, previous);

  int normalizeElement(
          Pointer<COMObject> element, Pointer<Pointer<COMObject>> normalized) =>
      _vtable.NormalizeElement.asFunction<
              int Function(Pointer, Pointer<COMObject> element,
                  Pointer<Pointer<COMObject>> normalized)>()(
          ptr.ref.lpVtbl, element, normalized);

  int getParentElementBuildCache(
          Pointer<COMObject> element,
          Pointer<COMObject> cacheRequest,
          Pointer<Pointer<COMObject>> parent) =>
      _vtable.GetParentElementBuildCache.asFunction<
              int Function(
                  Pointer,
                  Pointer<COMObject> element,
                  Pointer<COMObject> cacheRequest,
                  Pointer<Pointer<COMObject>> parent)>()(
          ptr.ref.lpVtbl, element, cacheRequest, parent);

  int getFirstChildElementBuildCache(Pointer<COMObject> element,
          Pointer<COMObject> cacheRequest, Pointer<Pointer<COMObject>> first) =>
      _vtable.GetFirstChildElementBuildCache.asFunction<
              int Function(
                  Pointer,
                  Pointer<COMObject> element,
                  Pointer<COMObject> cacheRequest,
                  Pointer<Pointer<COMObject>> first)>()(
          ptr.ref.lpVtbl, element, cacheRequest, first);

  int getLastChildElementBuildCache(Pointer<COMObject> element,
          Pointer<COMObject> cacheRequest, Pointer<Pointer<COMObject>> last) =>
      _vtable.GetLastChildElementBuildCache.asFunction<
              int Function(
                  Pointer,
                  Pointer<COMObject> element,
                  Pointer<COMObject> cacheRequest,
                  Pointer<Pointer<COMObject>> last)>()(
          ptr.ref.lpVtbl, element, cacheRequest, last);

  int getNextSiblingElementBuildCache(Pointer<COMObject> element,
          Pointer<COMObject> cacheRequest, Pointer<Pointer<COMObject>> next) =>
      _vtable.GetNextSiblingElementBuildCache.asFunction<
              int Function(
                  Pointer,
                  Pointer<COMObject> element,
                  Pointer<COMObject> cacheRequest,
                  Pointer<Pointer<COMObject>> next)>()(
          ptr.ref.lpVtbl, element, cacheRequest, next);

  int getPreviousSiblingElementBuildCache(
          Pointer<COMObject> element,
          Pointer<COMObject> cacheRequest,
          Pointer<Pointer<COMObject>> previous) =>
      _vtable.GetPreviousSiblingElementBuildCache.asFunction<
              int Function(
                  Pointer,
                  Pointer<COMObject> element,
                  Pointer<COMObject> cacheRequest,
                  Pointer<Pointer<COMObject>> previous)>()(
          ptr.ref.lpVtbl, element, cacheRequest, previous);

  int normalizeElementBuildCache(
          Pointer<COMObject> element,
          Pointer<COMObject> cacheRequest,
          Pointer<Pointer<COMObject>> normalized) =>
      _vtable.NormalizeElementBuildCache.asFunction<
              int Function(
                  Pointer,
                  Pointer<COMObject> element,
                  Pointer<COMObject> cacheRequest,
                  Pointer<Pointer<COMObject>> normalized)>()(
          ptr.ref.lpVtbl, element, cacheRequest, normalized);

  Pointer<COMObject> get condition {
    final retValuePtr = calloc<COMObject>();

    final hr = _vtable.get_Condition
            .asFunction<int Function(Pointer, Pointer<COMObject> condition)>()(
        ptr.ref.lpVtbl, retValuePtr);
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
          Int32 Function(Pointer, Pointer<COMObject> element,
              Pointer<Pointer<COMObject>> parent)>> GetParentElement;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<COMObject> element,
              Pointer<Pointer<COMObject>> first)>> GetFirstChildElement;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<COMObject> element,
              Pointer<Pointer<COMObject>> last)>> GetLastChildElement;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<COMObject> element,
              Pointer<Pointer<COMObject>> next)>> GetNextSiblingElement;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<COMObject> element,
              Pointer<Pointer<COMObject>> previous)>> GetPreviousSiblingElement;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<COMObject> element,
              Pointer<Pointer<COMObject>> normalized)>> NormalizeElement;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              Pointer<COMObject> element,
              Pointer<COMObject> cacheRequest,
              Pointer<Pointer<COMObject>> parent)>> GetParentElementBuildCache;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer,
                  Pointer<COMObject> element,
                  Pointer<COMObject> cacheRequest,
                  Pointer<Pointer<COMObject>> first)>>
      GetFirstChildElementBuildCache;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              Pointer<COMObject> element,
              Pointer<COMObject> cacheRequest,
              Pointer<Pointer<COMObject>> last)>> GetLastChildElementBuildCache;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer,
                  Pointer<COMObject> element,
                  Pointer<COMObject> cacheRequest,
                  Pointer<Pointer<COMObject>> next)>>
      GetNextSiblingElementBuildCache;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer,
                  Pointer<COMObject> element,
                  Pointer<COMObject> cacheRequest,
                  Pointer<Pointer<COMObject>> previous)>>
      GetPreviousSiblingElementBuildCache;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer,
                  Pointer<COMObject> element,
                  Pointer<COMObject> cacheRequest,
                  Pointer<Pointer<COMObject>> normalized)>>
      NormalizeElementBuildCache;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<COMObject> condition)>>
      get_Condition;
}
