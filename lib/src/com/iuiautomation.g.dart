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
const IID_IUIAutomation = '{30cbe57d-d9d0-452a-ab13-7ac5ac4825ee}';

/// Exposes methods that enable Microsoft UI Automation client applications to
/// discover, access, and filter UI Automation elements.
///
/// {@category com}
class IUIAutomation extends IUnknown {
  IUIAutomation(super.ptr) : _vtable = ptr.value.cast<IUIAutomationVtbl>().ref;

  final IUIAutomationVtbl _vtable;

  factory IUIAutomation.from(IUnknown interface) =>
      IUIAutomation(interface.toInterface(IID_IUIAutomation));

  int compareElements(
          VTablePointer el1, VTablePointer el2, Pointer<Int32> areSame) =>
      _vtable.CompareElements.asFunction<
          int Function(VTablePointer, VTablePointer el1, VTablePointer el2,
              Pointer<Int32> areSame)>()(ptr, el1, el2, areSame);

  int compareRuntimeIds(Pointer<SAFEARRAY> runtimeId1,
          Pointer<SAFEARRAY> runtimeId2, Pointer<Int32> areSame) =>
      _vtable.CompareRuntimeIds.asFunction<
          int Function(
              VTablePointer,
              Pointer<SAFEARRAY> runtimeId1,
              Pointer<SAFEARRAY> runtimeId2,
              Pointer<Int32> areSame)>()(ptr, runtimeId1, runtimeId2, areSame);

  int getRootElement(Pointer<VTablePointer> root) =>
      _vtable.GetRootElement.asFunction<
          int Function(
              VTablePointer, Pointer<VTablePointer> root)>()(ptr, root);

  int elementFromHandle(int hwnd, Pointer<VTablePointer> element) =>
      _vtable.ElementFromHandle.asFunction<
          int Function(VTablePointer, int hwnd,
              Pointer<VTablePointer> element)>()(ptr, hwnd, element);

  int elementFromPoint(POINT pt, Pointer<VTablePointer> element) =>
      _vtable.ElementFromPoint.asFunction<
          int Function(VTablePointer, POINT pt,
              Pointer<VTablePointer> element)>()(ptr, pt, element);

  int getFocusedElement(Pointer<VTablePointer> element) =>
      _vtable.GetFocusedElement.asFunction<
          int Function(
              VTablePointer, Pointer<VTablePointer> element)>()(ptr, element);

  int getRootElementBuildCache(
          VTablePointer cacheRequest, Pointer<VTablePointer> root) =>
      _vtable.GetRootElementBuildCache.asFunction<
          int Function(VTablePointer, VTablePointer cacheRequest,
              Pointer<VTablePointer> root)>()(ptr, cacheRequest, root);

  int elementFromHandleBuildCache(int hwnd, VTablePointer cacheRequest,
          Pointer<VTablePointer> element) =>
      _vtable.ElementFromHandleBuildCache.asFunction<
              int Function(VTablePointer, int hwnd, VTablePointer cacheRequest,
                  Pointer<VTablePointer> element)>()(
          ptr, hwnd, cacheRequest, element);

  int elementFromPointBuildCache(POINT pt, VTablePointer cacheRequest,
          Pointer<VTablePointer> element) =>
      _vtable.ElementFromPointBuildCache.asFunction<
              int Function(VTablePointer, POINT pt, VTablePointer cacheRequest,
                  Pointer<VTablePointer> element)>()(
          ptr, pt, cacheRequest, element);

  int getFocusedElementBuildCache(
          VTablePointer cacheRequest, Pointer<VTablePointer> element) =>
      _vtable.GetFocusedElementBuildCache.asFunction<
          int Function(VTablePointer, VTablePointer cacheRequest,
              Pointer<VTablePointer> element)>()(ptr, cacheRequest, element);

  int createTreeWalker(
          VTablePointer pCondition, Pointer<VTablePointer> walker) =>
      _vtable.CreateTreeWalker.asFunction<
          int Function(VTablePointer, VTablePointer pCondition,
              Pointer<VTablePointer> walker)>()(ptr, pCondition, walker);

  VTablePointer get controlViewWalker {
    final retValuePtr = calloc<VTablePointer>();

    try {
      final hr = _vtable.get_ControlViewWalker.asFunction<
              int Function(VTablePointer, Pointer<VTablePointer> walker)>()(
          ptr, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  VTablePointer get contentViewWalker {
    final retValuePtr = calloc<VTablePointer>();

    try {
      final hr = _vtable.get_ContentViewWalker.asFunction<
              int Function(VTablePointer, Pointer<VTablePointer> walker)>()(
          ptr, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  VTablePointer get rawViewWalker {
    final retValuePtr = calloc<VTablePointer>();

    try {
      final hr = _vtable.get_RawViewWalker.asFunction<
              int Function(VTablePointer, Pointer<VTablePointer> walker)>()(
          ptr, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  VTablePointer get rawViewCondition {
    final retValuePtr = calloc<VTablePointer>();

    try {
      final hr = _vtable.get_RawViewCondition.asFunction<
              int Function(VTablePointer, Pointer<VTablePointer> condition)>()(
          ptr, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  VTablePointer get controlViewCondition {
    final retValuePtr = calloc<VTablePointer>();

    try {
      final hr = _vtable.get_ControlViewCondition.asFunction<
              int Function(VTablePointer, Pointer<VTablePointer> condition)>()(
          ptr, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  VTablePointer get contentViewCondition {
    final retValuePtr = calloc<VTablePointer>();

    try {
      final hr = _vtable.get_ContentViewCondition.asFunction<
              int Function(VTablePointer, Pointer<VTablePointer> condition)>()(
          ptr, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int createCacheRequest(Pointer<VTablePointer> cacheRequest) =>
      _vtable.CreateCacheRequest.asFunction<
          int Function(VTablePointer,
              Pointer<VTablePointer> cacheRequest)>()(ptr, cacheRequest);

  int createTrueCondition(Pointer<VTablePointer> newCondition) =>
      _vtable.CreateTrueCondition.asFunction<
          int Function(VTablePointer,
              Pointer<VTablePointer> newCondition)>()(ptr, newCondition);

  int createFalseCondition(Pointer<VTablePointer> newCondition) =>
      _vtable.CreateFalseCondition.asFunction<
          int Function(VTablePointer,
              Pointer<VTablePointer> newCondition)>()(ptr, newCondition);

  int createPropertyCondition(
          int propertyId, VARIANT value, Pointer<VTablePointer> newCondition) =>
      _vtable.CreatePropertyCondition.asFunction<
              int Function(VTablePointer, int propertyId, VARIANT value,
                  Pointer<VTablePointer> newCondition)>()(
          ptr, propertyId, value, newCondition);

  int createPropertyConditionEx(int propertyId, VARIANT value, int flags,
          Pointer<VTablePointer> newCondition) =>
      _vtable.CreatePropertyConditionEx.asFunction<
              int Function(VTablePointer, int propertyId, VARIANT value,
                  int flags, Pointer<VTablePointer> newCondition)>()(
          ptr, propertyId, value, flags, newCondition);

  int createAndCondition(VTablePointer condition1, VTablePointer condition2,
          Pointer<VTablePointer> newCondition) =>
      _vtable.CreateAndCondition.asFunction<
              int Function(
                  VTablePointer,
                  VTablePointer condition1,
                  VTablePointer condition2,
                  Pointer<VTablePointer> newCondition)>()(
          ptr, condition1, condition2, newCondition);

  int createAndConditionFromArray(
          Pointer<SAFEARRAY> conditions, Pointer<VTablePointer> newCondition) =>
      _vtable.CreateAndConditionFromArray.asFunction<
              int Function(VTablePointer, Pointer<SAFEARRAY> conditions,
                  Pointer<VTablePointer> newCondition)>()(
          ptr, conditions, newCondition);

  int createAndConditionFromNativeArray(Pointer<VTablePointer> conditions,
          int conditionCount, Pointer<VTablePointer> newCondition) =>
      _vtable.CreateAndConditionFromNativeArray.asFunction<
              int Function(VTablePointer, Pointer<VTablePointer> conditions,
                  int conditionCount, Pointer<VTablePointer> newCondition)>()(
          ptr, conditions, conditionCount, newCondition);

  int createOrCondition(VTablePointer condition1, VTablePointer condition2,
          Pointer<VTablePointer> newCondition) =>
      _vtable.CreateOrCondition.asFunction<
              int Function(
                  VTablePointer,
                  VTablePointer condition1,
                  VTablePointer condition2,
                  Pointer<VTablePointer> newCondition)>()(
          ptr, condition1, condition2, newCondition);

  int createOrConditionFromArray(
          Pointer<SAFEARRAY> conditions, Pointer<VTablePointer> newCondition) =>
      _vtable.CreateOrConditionFromArray.asFunction<
              int Function(VTablePointer, Pointer<SAFEARRAY> conditions,
                  Pointer<VTablePointer> newCondition)>()(
          ptr, conditions, newCondition);

  int createOrConditionFromNativeArray(Pointer<VTablePointer> conditions,
          int conditionCount, Pointer<VTablePointer> newCondition) =>
      _vtable.CreateOrConditionFromNativeArray.asFunction<
              int Function(VTablePointer, Pointer<VTablePointer> conditions,
                  int conditionCount, Pointer<VTablePointer> newCondition)>()(
          ptr, conditions, conditionCount, newCondition);

  int createNotCondition(
          VTablePointer condition, Pointer<VTablePointer> newCondition) =>
      _vtable.CreateNotCondition.asFunction<
              int Function(VTablePointer, VTablePointer condition,
                  Pointer<VTablePointer> newCondition)>()(
          ptr, condition, newCondition);

  int addAutomationEventHandler(int eventId, VTablePointer element, int scope,
          VTablePointer cacheRequest, VTablePointer handler) =>
      _vtable.AddAutomationEventHandler.asFunction<
              int Function(
                  VTablePointer,
                  int eventId,
                  VTablePointer element,
                  int scope,
                  VTablePointer cacheRequest,
                  VTablePointer handler)>()(
          ptr, eventId, element, scope, cacheRequest, handler);

  int removeAutomationEventHandler(
          int eventId, VTablePointer element, VTablePointer handler) =>
      _vtable.RemoveAutomationEventHandler.asFunction<
          int Function(VTablePointer, int eventId, VTablePointer element,
              VTablePointer handler)>()(ptr, eventId, element, handler);

  int addPropertyChangedEventHandlerNativeArray(
          VTablePointer element,
          int scope,
          VTablePointer cacheRequest,
          VTablePointer handler,
          Pointer<Int32> propertyArray,
          int propertyCount) =>
      _vtable.AddPropertyChangedEventHandlerNativeArray.asFunction<
              int Function(
                  VTablePointer,
                  VTablePointer element,
                  int scope,
                  VTablePointer cacheRequest,
                  VTablePointer handler,
                  Pointer<Int32> propertyArray,
                  int propertyCount)>()(ptr, element, scope, cacheRequest,
          handler, propertyArray, propertyCount);

  int addPropertyChangedEventHandler(
          VTablePointer element,
          int scope,
          VTablePointer cacheRequest,
          VTablePointer handler,
          Pointer<SAFEARRAY> propertyArray) =>
      _vtable.AddPropertyChangedEventHandler.asFunction<
              int Function(
                  VTablePointer,
                  VTablePointer element,
                  int scope,
                  VTablePointer cacheRequest,
                  VTablePointer handler,
                  Pointer<SAFEARRAY> propertyArray)>()(
          ptr, element, scope, cacheRequest, handler, propertyArray);

  int removePropertyChangedEventHandler(
          VTablePointer element, VTablePointer handler) =>
      _vtable.RemovePropertyChangedEventHandler.asFunction<
          int Function(VTablePointer, VTablePointer element,
              VTablePointer handler)>()(ptr, element, handler);

  int addStructureChangedEventHandler(VTablePointer element, int scope,
          VTablePointer cacheRequest, VTablePointer handler) =>
      _vtable.AddStructureChangedEventHandler.asFunction<
              int Function(VTablePointer, VTablePointer element, int scope,
                  VTablePointer cacheRequest, VTablePointer handler)>()(
          ptr, element, scope, cacheRequest, handler);

  int removeStructureChangedEventHandler(
          VTablePointer element, VTablePointer handler) =>
      _vtable.RemoveStructureChangedEventHandler.asFunction<
          int Function(VTablePointer, VTablePointer element,
              VTablePointer handler)>()(ptr, element, handler);

  int addFocusChangedEventHandler(
          VTablePointer cacheRequest, VTablePointer handler) =>
      _vtable.AddFocusChangedEventHandler.asFunction<
          int Function(VTablePointer, VTablePointer cacheRequest,
              VTablePointer handler)>()(ptr, cacheRequest, handler);

  int removeFocusChangedEventHandler(VTablePointer handler) =>
      _vtable.RemoveFocusChangedEventHandler.asFunction<
          int Function(VTablePointer, VTablePointer handler)>()(ptr, handler);

  int removeAllEventHandlers() =>
      _vtable.RemoveAllEventHandlers.asFunction<int Function(VTablePointer)>()(
          ptr);

  int intNativeArrayToSafeArray(Pointer<Int32> array, int arrayCount,
          Pointer<Pointer<SAFEARRAY>> safeArray) =>
      _vtable.IntNativeArrayToSafeArray.asFunction<
              int Function(VTablePointer, Pointer<Int32> array, int arrayCount,
                  Pointer<Pointer<SAFEARRAY>> safeArray)>()(
          ptr, array, arrayCount, safeArray);

  int intSafeArrayToNativeArray(Pointer<SAFEARRAY> intArray,
          Pointer<Pointer<Int32>> array, Pointer<Int32> arrayCount) =>
      _vtable.IntSafeArrayToNativeArray.asFunction<
          int Function(
              VTablePointer,
              Pointer<SAFEARRAY> intArray,
              Pointer<Pointer<Int32>> array,
              Pointer<Int32> arrayCount)>()(ptr, intArray, array, arrayCount);

  int rectToVariant(RECT rc, Pointer<VARIANT> var_) =>
      _vtable.RectToVariant.asFunction<
          int Function(
              VTablePointer, RECT rc, Pointer<VARIANT> var_)>()(ptr, rc, var_);

  int variantToRect(VARIANT var_, Pointer<RECT> rc) =>
      _vtable.VariantToRect.asFunction<
          int Function(
              VTablePointer, VARIANT var_, Pointer<RECT> rc)>()(ptr, var_, rc);

  int safeArrayToRectNativeArray(Pointer<SAFEARRAY> rects,
          Pointer<Pointer<RECT>> rectArray, Pointer<Int32> rectArrayCount) =>
      _vtable.SafeArrayToRectNativeArray.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<SAFEARRAY> rects,
                  Pointer<Pointer<RECT>> rectArray,
                  Pointer<Int32> rectArrayCount)>()(
          ptr, rects, rectArray, rectArrayCount);

  int createProxyFactoryEntry(
          VTablePointer factory, Pointer<VTablePointer> factoryEntry) =>
      _vtable.CreateProxyFactoryEntry.asFunction<
              int Function(VTablePointer, VTablePointer factory,
                  Pointer<VTablePointer> factoryEntry)>()(
          ptr, factory, factoryEntry);

  VTablePointer get proxyFactoryMapping {
    final retValuePtr = calloc<VTablePointer>();

    try {
      final hr = _vtable.get_ProxyFactoryMapping.asFunction<
          int Function(VTablePointer,
              Pointer<VTablePointer> factoryMapping)>()(ptr, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int getPropertyProgrammaticName(int property, Pointer<Pointer<Utf16>> name) =>
      _vtable.GetPropertyProgrammaticName.asFunction<
          int Function(VTablePointer, int property,
              Pointer<Pointer<Utf16>> name)>()(ptr, property, name);

  int getPatternProgrammaticName(int pattern, Pointer<Pointer<Utf16>> name) =>
      _vtable.GetPatternProgrammaticName.asFunction<
          int Function(VTablePointer, int pattern,
              Pointer<Pointer<Utf16>> name)>()(ptr, pattern, name);

  int pollForPotentialSupportedPatterns(
          VTablePointer pElement,
          Pointer<Pointer<SAFEARRAY>> patternIds,
          Pointer<Pointer<SAFEARRAY>> patternNames) =>
      _vtable.PollForPotentialSupportedPatterns.asFunction<
              int Function(
                  VTablePointer,
                  VTablePointer pElement,
                  Pointer<Pointer<SAFEARRAY>> patternIds,
                  Pointer<Pointer<SAFEARRAY>> patternNames)>()(
          ptr, pElement, patternIds, patternNames);

  int pollForPotentialSupportedProperties(
          VTablePointer pElement,
          Pointer<Pointer<SAFEARRAY>> propertyIds,
          Pointer<Pointer<SAFEARRAY>> propertyNames) =>
      _vtable.PollForPotentialSupportedProperties.asFunction<
              int Function(
                  VTablePointer,
                  VTablePointer pElement,
                  Pointer<Pointer<SAFEARRAY>> propertyIds,
                  Pointer<Pointer<SAFEARRAY>> propertyNames)>()(
          ptr, pElement, propertyIds, propertyNames);

  int checkNotSupported(VARIANT value, Pointer<Int32> isNotSupported) =>
      _vtable.CheckNotSupported.asFunction<
          int Function(VTablePointer, VARIANT value,
              Pointer<Int32> isNotSupported)>()(ptr, value, isNotSupported);

  VTablePointer get reservedNotSupportedValue {
    final retValuePtr = calloc<VTablePointer>();

    try {
      final hr = _vtable.get_ReservedNotSupportedValue.asFunction<
          int Function(VTablePointer,
              Pointer<VTablePointer> notSupportedValue)>()(ptr, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  VTablePointer get reservedMixedAttributeValue {
    final retValuePtr = calloc<VTablePointer>();

    try {
      final hr = _vtable.get_ReservedMixedAttributeValue.asFunction<
          int Function(VTablePointer,
              Pointer<VTablePointer> mixedAttributeValue)>()(ptr, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int elementFromIAccessible(VTablePointer accessible, int childId,
          Pointer<VTablePointer> element) =>
      _vtable.ElementFromIAccessible.asFunction<
              int Function(VTablePointer, VTablePointer accessible, int childId,
                  Pointer<VTablePointer> element)>()(
          ptr, accessible, childId, element);

  int elementFromIAccessibleBuildCache(VTablePointer accessible, int childId,
          VTablePointer cacheRequest, Pointer<VTablePointer> element) =>
      _vtable.ElementFromIAccessibleBuildCache.asFunction<
              int Function(
                  VTablePointer,
                  VTablePointer accessible,
                  int childId,
                  VTablePointer cacheRequest,
                  Pointer<VTablePointer> element)>()(
          ptr, accessible, childId, cacheRequest, element);
}

/// @nodoc
base class IUIAutomationVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, VTablePointer el1, VTablePointer el2,
              Pointer<Int32> areSame)>> CompareElements;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<SAFEARRAY> runtimeId1,
              Pointer<SAFEARRAY> runtimeId2,
              Pointer<Int32> areSame)>> CompareRuntimeIds;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> root)>>
      GetRootElement;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, IntPtr hwnd, Pointer<VTablePointer> element)>>
      ElementFromHandle;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, POINT pt, Pointer<VTablePointer> element)>>
      ElementFromPoint;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> element)>>
      GetFocusedElement;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, VTablePointer cacheRequest,
              Pointer<VTablePointer> root)>> GetRootElementBuildCache;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, IntPtr hwnd, VTablePointer cacheRequest,
              Pointer<VTablePointer> element)>> ElementFromHandleBuildCache;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, POINT pt, VTablePointer cacheRequest,
              Pointer<VTablePointer> element)>> ElementFromPointBuildCache;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, VTablePointer cacheRequest,
              Pointer<VTablePointer> element)>> GetFocusedElementBuildCache;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, VTablePointer pCondition,
              Pointer<VTablePointer> walker)>> CreateTreeWalker;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> walker)>>
      get_ControlViewWalker;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> walker)>>
      get_ContentViewWalker;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> walker)>>
      get_RawViewWalker;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> condition)>>
      get_RawViewCondition;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> condition)>>
      get_ControlViewCondition;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> condition)>>
      get_ContentViewCondition;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<VTablePointer> cacheRequest)>>
      CreateCacheRequest;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<VTablePointer> newCondition)>>
      CreateTrueCondition;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<VTablePointer> newCondition)>>
      CreateFalseCondition;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Int32 propertyId, VARIANT value,
              Pointer<VTablePointer> newCondition)>> CreatePropertyCondition;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Int32 propertyId,
              VARIANT value,
              Int32 flags,
              Pointer<VTablePointer> newCondition)>> CreatePropertyConditionEx;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              VTablePointer condition1,
              VTablePointer condition2,
              Pointer<VTablePointer> newCondition)>> CreateAndCondition;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<SAFEARRAY> conditions,
                  Pointer<VTablePointer> newCondition)>>
      CreateAndConditionFromArray;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> conditions,
                  Int32 conditionCount, Pointer<VTablePointer> newCondition)>>
      CreateAndConditionFromNativeArray;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              VTablePointer condition1,
              VTablePointer condition2,
              Pointer<VTablePointer> newCondition)>> CreateOrCondition;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<SAFEARRAY> conditions,
              Pointer<VTablePointer> newCondition)>> CreateOrConditionFromArray;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> conditions,
                  Int32 conditionCount, Pointer<VTablePointer> newCondition)>>
      CreateOrConditionFromNativeArray;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, VTablePointer condition,
              Pointer<VTablePointer> newCondition)>> CreateNotCondition;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Int32 eventId,
              VTablePointer element,
              Int32 scope,
              VTablePointer cacheRequest,
              VTablePointer handler)>> AddAutomationEventHandler;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Int32 eventId, VTablePointer element,
              VTablePointer handler)>> RemoveAutomationEventHandler;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              VTablePointer element,
              Int32 scope,
              VTablePointer cacheRequest,
              VTablePointer handler,
              Pointer<Int32> propertyArray,
              Int32 propertyCount)>> AddPropertyChangedEventHandlerNativeArray;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer,
                  VTablePointer element,
                  Int32 scope,
                  VTablePointer cacheRequest,
                  VTablePointer handler,
                  Pointer<SAFEARRAY> propertyArray)>>
      AddPropertyChangedEventHandler;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, VTablePointer element, VTablePointer handler)>>
      RemovePropertyChangedEventHandler;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              VTablePointer element,
              Int32 scope,
              VTablePointer cacheRequest,
              VTablePointer handler)>> AddStructureChangedEventHandler;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, VTablePointer element, VTablePointer handler)>>
      RemoveStructureChangedEventHandler;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, VTablePointer cacheRequest,
              VTablePointer handler)>> AddFocusChangedEventHandler;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, VTablePointer handler)>>
      RemoveFocusChangedEventHandler;
  external Pointer<NativeFunction<Int32 Function(VTablePointer)>>
      RemoveAllEventHandlers;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Int32> array,
                  Int32 arrayCount, Pointer<Pointer<SAFEARRAY>> safeArray)>>
      IntNativeArrayToSafeArray;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<SAFEARRAY> intArray,
              Pointer<Pointer<Int32>> array,
              Pointer<Int32> arrayCount)>> IntSafeArrayToNativeArray;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, RECT rc, Pointer<VARIANT> var_)>>
      RectToVariant;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, VARIANT var_, Pointer<RECT> rc)>>
      VariantToRect;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<SAFEARRAY> rects,
              Pointer<Pointer<RECT>> rectArray,
              Pointer<Int32> rectArrayCount)>> SafeArrayToRectNativeArray;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, VTablePointer factory,
              Pointer<VTablePointer> factoryEntry)>> CreateProxyFactoryEntry;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<VTablePointer> factoryMapping)>>
      get_ProxyFactoryMapping;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Int32 property, Pointer<Pointer<Utf16>> name)>>
      GetPropertyProgrammaticName;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Int32 pattern, Pointer<Pointer<Utf16>> name)>>
      GetPatternProgrammaticName;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer,
                  VTablePointer pElement,
                  Pointer<Pointer<SAFEARRAY>> patternIds,
                  Pointer<Pointer<SAFEARRAY>> patternNames)>>
      PollForPotentialSupportedPatterns;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer,
                  VTablePointer pElement,
                  Pointer<Pointer<SAFEARRAY>> propertyIds,
                  Pointer<Pointer<SAFEARRAY>> propertyNames)>>
      PollForPotentialSupportedProperties;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, VARIANT value, Pointer<Int32> isNotSupported)>>
      CheckNotSupported;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<VTablePointer> notSupportedValue)>>
      get_ReservedNotSupportedValue;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<VTablePointer> mixedAttributeValue)>>
      get_ReservedMixedAttributeValue;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, VTablePointer accessible, Int32 childId,
              Pointer<VTablePointer> element)>> ElementFromIAccessible;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer,
                  VTablePointer accessible,
                  Int32 childId,
                  VTablePointer cacheRequest,
                  Pointer<VTablePointer> element)>>
      ElementFromIAccessibleBuildCache;
}

/// @nodoc
const CUIAutomation = '{ff48dba4-60ef-4201-aa87-54103eef594e}';
