// iuiautomation.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../exceptions.dart';
import '../macros.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import '../variant.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IUIAutomation = '{30cbe57d-d9d0-452a-ab13-7ac5ac4825ee}';

/// Exposes methods that enable Microsoft UI Automation client applications
/// to discover, access, and filter UI Automation elements.
///
/// {@category com}
class IUIAutomation extends IUnknown {
  IUIAutomation(super.ptr)
      : _vtable = ptr.value.value.cast<IUIAutomationVtbl>().ref;

  final IUIAutomationVtbl _vtable;

  factory IUIAutomation.from(IUnknown interface) =>
      IUIAutomation(interface.toInterface(IID_IUIAutomation));

  int compareElements(Pointer<VTablePointer> el1, Pointer<VTablePointer> el2,
          Pointer<Int32> areSame) =>
      _vtable.CompareElements.asFunction<
          int Function(
              VTablePointer,
              Pointer<VTablePointer> el1,
              Pointer<VTablePointer> el2,
              Pointer<Int32> areSame)>()(ptr.value, el1, el2, areSame);

  int compareRuntimeIds(Pointer<SAFEARRAY> runtimeId1,
          Pointer<SAFEARRAY> runtimeId2, Pointer<Int32> areSame) =>
      _vtable.CompareRuntimeIds.asFunction<
              int Function(VTablePointer, Pointer<SAFEARRAY> runtimeId1,
                  Pointer<SAFEARRAY> runtimeId2, Pointer<Int32> areSame)>()(
          ptr.value, runtimeId1, runtimeId2, areSame);

  int getRootElement(Pointer<Pointer<VTablePointer>> root) =>
      _vtable.GetRootElement.asFunction<
          int Function(VTablePointer,
              Pointer<Pointer<VTablePointer>> root)>()(ptr.value, root);

  int elementFromHandle(int hwnd, Pointer<Pointer<VTablePointer>> element) =>
      _vtable.ElementFromHandle.asFunction<
              int Function(VTablePointer, int hwnd,
                  Pointer<Pointer<VTablePointer>> element)>()(
          ptr.value, hwnd, element);

  int elementFromPoint(POINT pt, Pointer<Pointer<VTablePointer>> element) =>
      _vtable.ElementFromPoint.asFunction<
              int Function(VTablePointer, POINT pt,
                  Pointer<Pointer<VTablePointer>> element)>()(
          ptr.value, pt, element);

  int getFocusedElement(Pointer<Pointer<VTablePointer>> element) =>
      _vtable.GetFocusedElement.asFunction<
          int Function(VTablePointer,
              Pointer<Pointer<VTablePointer>> element)>()(ptr.value, element);

  int getRootElementBuildCache(Pointer<VTablePointer> cacheRequest,
          Pointer<Pointer<VTablePointer>> root) =>
      _vtable.GetRootElementBuildCache.asFunction<
              int Function(VTablePointer, Pointer<VTablePointer> cacheRequest,
                  Pointer<Pointer<VTablePointer>> root)>()(
          ptr.value, cacheRequest, root);

  int elementFromHandleBuildCache(int hwnd, Pointer<VTablePointer> cacheRequest,
          Pointer<Pointer<VTablePointer>> element) =>
      _vtable.ElementFromHandleBuildCache.asFunction<
              int Function(
                  VTablePointer,
                  int hwnd,
                  Pointer<VTablePointer> cacheRequest,
                  Pointer<Pointer<VTablePointer>> element)>()(
          ptr.value, hwnd, cacheRequest, element);

  int elementFromPointBuildCache(POINT pt, Pointer<VTablePointer> cacheRequest,
          Pointer<Pointer<VTablePointer>> element) =>
      _vtable.ElementFromPointBuildCache.asFunction<
              int Function(
                  VTablePointer,
                  POINT pt,
                  Pointer<VTablePointer> cacheRequest,
                  Pointer<Pointer<VTablePointer>> element)>()(
          ptr.value, pt, cacheRequest, element);

  int getFocusedElementBuildCache(Pointer<VTablePointer> cacheRequest,
          Pointer<Pointer<VTablePointer>> element) =>
      _vtable.GetFocusedElementBuildCache.asFunction<
              int Function(VTablePointer, Pointer<VTablePointer> cacheRequest,
                  Pointer<Pointer<VTablePointer>> element)>()(
          ptr.value, cacheRequest, element);

  int createTreeWalker(Pointer<VTablePointer> pCondition,
          Pointer<Pointer<VTablePointer>> walker) =>
      _vtable.CreateTreeWalker.asFunction<
              int Function(VTablePointer, Pointer<VTablePointer> pCondition,
                  Pointer<Pointer<VTablePointer>> walker)>()(
          ptr.value, pCondition, walker);

  Pointer<VTablePointer> get controlViewWalker {
    final retValuePtr = calloc<VTablePointer>();

    final hr = _vtable.get_ControlViewWalker.asFunction<
            int Function(VTablePointer, Pointer<VTablePointer> walker)>()(
        ptr.value, retValuePtr);
    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }

  Pointer<VTablePointer> get contentViewWalker {
    final retValuePtr = calloc<VTablePointer>();

    final hr = _vtable.get_ContentViewWalker.asFunction<
            int Function(VTablePointer, Pointer<VTablePointer> walker)>()(
        ptr.value, retValuePtr);
    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }

  Pointer<VTablePointer> get rawViewWalker {
    final retValuePtr = calloc<VTablePointer>();

    final hr = _vtable.get_RawViewWalker.asFunction<
            int Function(VTablePointer, Pointer<VTablePointer> walker)>()(
        ptr.value, retValuePtr);
    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }

  Pointer<VTablePointer> get rawViewCondition {
    final retValuePtr = calloc<VTablePointer>();

    final hr = _vtable.get_RawViewCondition.asFunction<
            int Function(VTablePointer, Pointer<VTablePointer> condition)>()(
        ptr.value, retValuePtr);
    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }

  Pointer<VTablePointer> get controlViewCondition {
    final retValuePtr = calloc<VTablePointer>();

    final hr = _vtable.get_ControlViewCondition.asFunction<
            int Function(VTablePointer, Pointer<VTablePointer> condition)>()(
        ptr.value, retValuePtr);
    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }

  Pointer<VTablePointer> get contentViewCondition {
    final retValuePtr = calloc<VTablePointer>();

    final hr = _vtable.get_ContentViewCondition.asFunction<
            int Function(VTablePointer, Pointer<VTablePointer> condition)>()(
        ptr.value, retValuePtr);
    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }

  int createCacheRequest(Pointer<Pointer<VTablePointer>> cacheRequest) =>
      _vtable.CreateCacheRequest.asFunction<
              int Function(VTablePointer,
                  Pointer<Pointer<VTablePointer>> cacheRequest)>()(
          ptr.value, cacheRequest);

  int createTrueCondition(Pointer<Pointer<VTablePointer>> newCondition) =>
      _vtable.CreateTrueCondition.asFunction<
              int Function(VTablePointer,
                  Pointer<Pointer<VTablePointer>> newCondition)>()(
          ptr.value, newCondition);

  int createFalseCondition(Pointer<Pointer<VTablePointer>> newCondition) =>
      _vtable.CreateFalseCondition.asFunction<
              int Function(VTablePointer,
                  Pointer<Pointer<VTablePointer>> newCondition)>()(
          ptr.value, newCondition);

  int createPropertyCondition(int propertyId, VARIANT value,
          Pointer<Pointer<VTablePointer>> newCondition) =>
      _vtable.CreatePropertyCondition.asFunction<
              int Function(VTablePointer, int propertyId, VARIANT value,
                  Pointer<Pointer<VTablePointer>> newCondition)>()(
          ptr.value, propertyId, value, newCondition);

  int createPropertyConditionEx(int propertyId, VARIANT value, int flags,
          Pointer<Pointer<VTablePointer>> newCondition) =>
      _vtable.CreatePropertyConditionEx.asFunction<
              int Function(VTablePointer, int propertyId, VARIANT value,
                  int flags, Pointer<Pointer<VTablePointer>> newCondition)>()(
          ptr.value, propertyId, value, flags, newCondition);

  int createAndCondition(
          Pointer<VTablePointer> condition1,
          Pointer<VTablePointer> condition2,
          Pointer<Pointer<VTablePointer>> newCondition) =>
      _vtable.CreateAndCondition.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<VTablePointer> condition1,
                  Pointer<VTablePointer> condition2,
                  Pointer<Pointer<VTablePointer>> newCondition)>()(
          ptr.value, condition1, condition2, newCondition);

  int createAndConditionFromArray(Pointer<SAFEARRAY> conditions,
          Pointer<Pointer<VTablePointer>> newCondition) =>
      _vtable.CreateAndConditionFromArray.asFunction<
              int Function(VTablePointer, Pointer<SAFEARRAY> conditions,
                  Pointer<Pointer<VTablePointer>> newCondition)>()(
          ptr.value, conditions, newCondition);

  int createAndConditionFromNativeArray(
          Pointer<Pointer<VTablePointer>> conditions,
          int conditionCount,
          Pointer<Pointer<VTablePointer>> newCondition) =>
      _vtable.CreateAndConditionFromNativeArray.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<Pointer<VTablePointer>> conditions,
                  int conditionCount,
                  Pointer<Pointer<VTablePointer>> newCondition)>()(
          ptr.value, conditions, conditionCount, newCondition);

  int createOrCondition(
          Pointer<VTablePointer> condition1,
          Pointer<VTablePointer> condition2,
          Pointer<Pointer<VTablePointer>> newCondition) =>
      _vtable.CreateOrCondition.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<VTablePointer> condition1,
                  Pointer<VTablePointer> condition2,
                  Pointer<Pointer<VTablePointer>> newCondition)>()(
          ptr.value, condition1, condition2, newCondition);

  int createOrConditionFromArray(Pointer<SAFEARRAY> conditions,
          Pointer<Pointer<VTablePointer>> newCondition) =>
      _vtable.CreateOrConditionFromArray.asFunction<
              int Function(VTablePointer, Pointer<SAFEARRAY> conditions,
                  Pointer<Pointer<VTablePointer>> newCondition)>()(
          ptr.value, conditions, newCondition);

  int createOrConditionFromNativeArray(
          Pointer<Pointer<VTablePointer>> conditions,
          int conditionCount,
          Pointer<Pointer<VTablePointer>> newCondition) =>
      _vtable.CreateOrConditionFromNativeArray.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<Pointer<VTablePointer>> conditions,
                  int conditionCount,
                  Pointer<Pointer<VTablePointer>> newCondition)>()(
          ptr.value, conditions, conditionCount, newCondition);

  int createNotCondition(Pointer<VTablePointer> condition,
          Pointer<Pointer<VTablePointer>> newCondition) =>
      _vtable.CreateNotCondition.asFunction<
              int Function(VTablePointer, Pointer<VTablePointer> condition,
                  Pointer<Pointer<VTablePointer>> newCondition)>()(
          ptr.value, condition, newCondition);

  int addAutomationEventHandler(
          int eventId,
          Pointer<VTablePointer> element,
          int scope,
          Pointer<VTablePointer> cacheRequest,
          Pointer<VTablePointer> handler) =>
      _vtable.AddAutomationEventHandler.asFunction<
              int Function(
                  VTablePointer,
                  int eventId,
                  Pointer<VTablePointer> element,
                  int scope,
                  Pointer<VTablePointer> cacheRequest,
                  Pointer<VTablePointer> handler)>()(
          ptr.value, eventId, element, scope, cacheRequest, handler);

  int removeAutomationEventHandler(int eventId, Pointer<VTablePointer> element,
          Pointer<VTablePointer> handler) =>
      _vtable.RemoveAutomationEventHandler.asFunction<
              int Function(
                  VTablePointer,
                  int eventId,
                  Pointer<VTablePointer> element,
                  Pointer<VTablePointer> handler)>()(
          ptr.value, eventId, element, handler);

  int addPropertyChangedEventHandlerNativeArray(
          Pointer<VTablePointer> element,
          int scope,
          Pointer<VTablePointer> cacheRequest,
          Pointer<VTablePointer> handler,
          Pointer<Int32> propertyArray,
          int propertyCount) =>
      _vtable.AddPropertyChangedEventHandlerNativeArray.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<VTablePointer> element,
                  int scope,
                  Pointer<VTablePointer> cacheRequest,
                  Pointer<VTablePointer> handler,
                  Pointer<Int32> propertyArray,
                  int propertyCount)>()(ptr.value, element, scope, cacheRequest,
          handler, propertyArray, propertyCount);

  int addPropertyChangedEventHandler(
          Pointer<VTablePointer> element,
          int scope,
          Pointer<VTablePointer> cacheRequest,
          Pointer<VTablePointer> handler,
          Pointer<SAFEARRAY> propertyArray) =>
      _vtable.AddPropertyChangedEventHandler.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<VTablePointer> element,
                  int scope,
                  Pointer<VTablePointer> cacheRequest,
                  Pointer<VTablePointer> handler,
                  Pointer<SAFEARRAY> propertyArray)>()(
          ptr.value, element, scope, cacheRequest, handler, propertyArray);

  int removePropertyChangedEventHandler(
          Pointer<VTablePointer> element, Pointer<VTablePointer> handler) =>
      _vtable.RemovePropertyChangedEventHandler.asFunction<
          int Function(VTablePointer, Pointer<VTablePointer> element,
              Pointer<VTablePointer> handler)>()(ptr.value, element, handler);

  int addStructureChangedEventHandler(
          Pointer<VTablePointer> element,
          int scope,
          Pointer<VTablePointer> cacheRequest,
          Pointer<VTablePointer> handler) =>
      _vtable.AddStructureChangedEventHandler.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<VTablePointer> element,
                  int scope,
                  Pointer<VTablePointer> cacheRequest,
                  Pointer<VTablePointer> handler)>()(
          ptr.value, element, scope, cacheRequest, handler);

  int removeStructureChangedEventHandler(
          Pointer<VTablePointer> element, Pointer<VTablePointer> handler) =>
      _vtable.RemoveStructureChangedEventHandler.asFunction<
          int Function(VTablePointer, Pointer<VTablePointer> element,
              Pointer<VTablePointer> handler)>()(ptr.value, element, handler);

  int addFocusChangedEventHandler(Pointer<VTablePointer> cacheRequest,
          Pointer<VTablePointer> handler) =>
      _vtable.AddFocusChangedEventHandler.asFunction<
              int Function(VTablePointer, Pointer<VTablePointer> cacheRequest,
                  Pointer<VTablePointer> handler)>()(
          ptr.value, cacheRequest, handler);

  int removeFocusChangedEventHandler(Pointer<VTablePointer> handler) =>
      _vtable.RemoveFocusChangedEventHandler.asFunction<
              int Function(VTablePointer, Pointer<VTablePointer> handler)>()(
          ptr.value, handler);

  int removeAllEventHandlers() =>
      _vtable.RemoveAllEventHandlers.asFunction<int Function(VTablePointer)>()(
          ptr.value);

  int intNativeArrayToSafeArray(Pointer<Int32> array, int arrayCount,
          Pointer<Pointer<SAFEARRAY>> safeArray) =>
      _vtable.IntNativeArrayToSafeArray.asFunction<
              int Function(VTablePointer, Pointer<Int32> array, int arrayCount,
                  Pointer<Pointer<SAFEARRAY>> safeArray)>()(
          ptr.value, array, arrayCount, safeArray);

  int intSafeArrayToNativeArray(Pointer<SAFEARRAY> intArray,
          Pointer<Pointer<Int32>> array, Pointer<Int32> arrayCount) =>
      _vtable.IntSafeArrayToNativeArray.asFunction<
              int Function(VTablePointer, Pointer<SAFEARRAY> intArray,
                  Pointer<Pointer<Int32>> array, Pointer<Int32> arrayCount)>()(
          ptr.value, intArray, array, arrayCount);

  int rectToVariant(RECT rc, Pointer<VARIANT> var_) =>
      _vtable.RectToVariant.asFunction<
              int Function(VTablePointer, RECT rc, Pointer<VARIANT> var_)>()(
          ptr.value, rc, var_);

  int variantToRect(VARIANT var_, Pointer<RECT> rc) =>
      _vtable.VariantToRect.asFunction<
              int Function(VTablePointer, VARIANT var_, Pointer<RECT> rc)>()(
          ptr.value, var_, rc);

  int safeArrayToRectNativeArray(Pointer<SAFEARRAY> rects,
          Pointer<Pointer<RECT>> rectArray, Pointer<Int32> rectArrayCount) =>
      _vtable.SafeArrayToRectNativeArray.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<SAFEARRAY> rects,
                  Pointer<Pointer<RECT>> rectArray,
                  Pointer<Int32> rectArrayCount)>()(
          ptr.value, rects, rectArray, rectArrayCount);

  int createProxyFactoryEntry(Pointer<VTablePointer> factory,
          Pointer<Pointer<VTablePointer>> factoryEntry) =>
      _vtable.CreateProxyFactoryEntry.asFunction<
              int Function(VTablePointer, Pointer<VTablePointer> factory,
                  Pointer<Pointer<VTablePointer>> factoryEntry)>()(
          ptr.value, factory, factoryEntry);

  Pointer<VTablePointer> get proxyFactoryMapping {
    final retValuePtr = calloc<VTablePointer>();

    final hr = _vtable.get_ProxyFactoryMapping.asFunction<
        int Function(VTablePointer,
            Pointer<VTablePointer> factoryMapping)>()(ptr.value, retValuePtr);
    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }

  int getPropertyProgrammaticName(int property, Pointer<Pointer<Utf16>> name) =>
      _vtable.GetPropertyProgrammaticName.asFunction<
          int Function(VTablePointer, int property,
              Pointer<Pointer<Utf16>> name)>()(ptr.value, property, name);

  int getPatternProgrammaticName(int pattern, Pointer<Pointer<Utf16>> name) =>
      _vtable.GetPatternProgrammaticName.asFunction<
          int Function(VTablePointer, int pattern,
              Pointer<Pointer<Utf16>> name)>()(ptr.value, pattern, name);

  int pollForPotentialSupportedPatterns(
          Pointer<VTablePointer> pElement,
          Pointer<Pointer<SAFEARRAY>> patternIds,
          Pointer<Pointer<SAFEARRAY>> patternNames) =>
      _vtable.PollForPotentialSupportedPatterns.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<VTablePointer> pElement,
                  Pointer<Pointer<SAFEARRAY>> patternIds,
                  Pointer<Pointer<SAFEARRAY>> patternNames)>()(
          ptr.value, pElement, patternIds, patternNames);

  int pollForPotentialSupportedProperties(
          Pointer<VTablePointer> pElement,
          Pointer<Pointer<SAFEARRAY>> propertyIds,
          Pointer<Pointer<SAFEARRAY>> propertyNames) =>
      _vtable.PollForPotentialSupportedProperties.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<VTablePointer> pElement,
                  Pointer<Pointer<SAFEARRAY>> propertyIds,
                  Pointer<Pointer<SAFEARRAY>> propertyNames)>()(
          ptr.value, pElement, propertyIds, propertyNames);

  int checkNotSupported(VARIANT value, Pointer<Int32> isNotSupported) =>
      _vtable.CheckNotSupported.asFunction<
              int Function(VTablePointer, VARIANT value,
                  Pointer<Int32> isNotSupported)>()(
          ptr.value, value, isNotSupported);

  Pointer<VTablePointer> get reservedNotSupportedValue {
    final retValuePtr = calloc<VTablePointer>();

    final hr = _vtable.get_ReservedNotSupportedValue.asFunction<
            int Function(
                VTablePointer, Pointer<VTablePointer> notSupportedValue)>()(
        ptr.value, retValuePtr);
    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }

  Pointer<VTablePointer> get reservedMixedAttributeValue {
    final retValuePtr = calloc<VTablePointer>();

    final hr = _vtable.get_ReservedMixedAttributeValue.asFunction<
            int Function(
                VTablePointer, Pointer<VTablePointer> mixedAttributeValue)>()(
        ptr.value, retValuePtr);
    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }

  int elementFromIAccessible(Pointer<VTablePointer> accessible, int childId,
          Pointer<Pointer<VTablePointer>> element) =>
      _vtable.ElementFromIAccessible.asFunction<
              int Function(VTablePointer, Pointer<VTablePointer> accessible,
                  int childId, Pointer<Pointer<VTablePointer>> element)>()(
          ptr.value, accessible, childId, element);

  int elementFromIAccessibleBuildCache(
          Pointer<VTablePointer> accessible,
          int childId,
          Pointer<VTablePointer> cacheRequest,
          Pointer<Pointer<VTablePointer>> element) =>
      _vtable.ElementFromIAccessibleBuildCache.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<VTablePointer> accessible,
                  int childId,
                  Pointer<VTablePointer> cacheRequest,
                  Pointer<Pointer<VTablePointer>> element)>()(
          ptr.value, accessible, childId, cacheRequest, element);
}

/// @nodoc
base class IUIAutomationVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<VTablePointer> el1,
              Pointer<VTablePointer> el2,
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
              Int32 Function(
                  VTablePointer, Pointer<Pointer<VTablePointer>> root)>>
      GetRootElement;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, IntPtr hwnd,
              Pointer<Pointer<VTablePointer>> element)>> ElementFromHandle;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, POINT pt,
              Pointer<Pointer<VTablePointer>> element)>> ElementFromPoint;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Pointer<VTablePointer>> element)>>
      GetFocusedElement;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<VTablePointer> cacheRequest,
              Pointer<Pointer<VTablePointer>> root)>> GetRootElementBuildCache;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer,
                  IntPtr hwnd,
                  Pointer<VTablePointer> cacheRequest,
                  Pointer<Pointer<VTablePointer>> element)>>
      ElementFromHandleBuildCache;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer,
                  POINT pt,
                  Pointer<VTablePointer> cacheRequest,
                  Pointer<Pointer<VTablePointer>> element)>>
      ElementFromPointBuildCache;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> cacheRequest,
                  Pointer<Pointer<VTablePointer>> element)>>
      GetFocusedElementBuildCache;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<VTablePointer> pCondition,
              Pointer<Pointer<VTablePointer>> walker)>> CreateTreeWalker;
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
                  VTablePointer, Pointer<Pointer<VTablePointer>> cacheRequest)>>
      CreateCacheRequest;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Pointer<VTablePointer>> newCondition)>>
      CreateTrueCondition;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Pointer<VTablePointer>> newCondition)>>
      CreateFalseCondition;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Int32 propertyId, VARIANT value,
                  Pointer<Pointer<VTablePointer>> newCondition)>>
      CreatePropertyCondition;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Int32 propertyId, VARIANT value,
                  Int32 flags, Pointer<Pointer<VTablePointer>> newCondition)>>
      CreatePropertyConditionEx;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer,
                  Pointer<VTablePointer> condition1,
                  Pointer<VTablePointer> condition2,
                  Pointer<Pointer<VTablePointer>> newCondition)>>
      CreateAndCondition;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<SAFEARRAY> conditions,
                  Pointer<Pointer<VTablePointer>> newCondition)>>
      CreateAndConditionFromArray;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer,
                  Pointer<Pointer<VTablePointer>> conditions,
                  Int32 conditionCount,
                  Pointer<Pointer<VTablePointer>> newCondition)>>
      CreateAndConditionFromNativeArray;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<VTablePointer> condition1,
              Pointer<VTablePointer> condition2,
              Pointer<Pointer<VTablePointer>> newCondition)>> CreateOrCondition;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<SAFEARRAY> conditions,
                  Pointer<Pointer<VTablePointer>> newCondition)>>
      CreateOrConditionFromArray;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer,
                  Pointer<Pointer<VTablePointer>> conditions,
                  Int32 conditionCount,
                  Pointer<Pointer<VTablePointer>> newCondition)>>
      CreateOrConditionFromNativeArray;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> condition,
                  Pointer<Pointer<VTablePointer>> newCondition)>>
      CreateNotCondition;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Int32 eventId,
              Pointer<VTablePointer> element,
              Int32 scope,
              Pointer<VTablePointer> cacheRequest,
              Pointer<VTablePointer> handler)>> AddAutomationEventHandler;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Int32 eventId,
              Pointer<VTablePointer> element,
              Pointer<VTablePointer> handler)>> RemoveAutomationEventHandler;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<VTablePointer> element,
              Int32 scope,
              Pointer<VTablePointer> cacheRequest,
              Pointer<VTablePointer> handler,
              Pointer<Int32> propertyArray,
              Int32 propertyCount)>> AddPropertyChangedEventHandlerNativeArray;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer,
                  Pointer<VTablePointer> element,
                  Int32 scope,
                  Pointer<VTablePointer> cacheRequest,
                  Pointer<VTablePointer> handler,
                  Pointer<SAFEARRAY> propertyArray)>>
      AddPropertyChangedEventHandler;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> element,
                  Pointer<VTablePointer> handler)>>
      RemovePropertyChangedEventHandler;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<VTablePointer> element,
              Int32 scope,
              Pointer<VTablePointer> cacheRequest,
              Pointer<VTablePointer> handler)>> AddStructureChangedEventHandler;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> element,
                  Pointer<VTablePointer> handler)>>
      RemoveStructureChangedEventHandler;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<VTablePointer> cacheRequest,
              Pointer<VTablePointer> handler)>> AddFocusChangedEventHandler;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> handler)>>
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
              Int32 Function(VTablePointer, Pointer<VTablePointer> factory,
                  Pointer<Pointer<VTablePointer>> factoryEntry)>>
      CreateProxyFactoryEntry;
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
                  Pointer<VTablePointer> pElement,
                  Pointer<Pointer<SAFEARRAY>> patternIds,
                  Pointer<Pointer<SAFEARRAY>> patternNames)>>
      PollForPotentialSupportedPatterns;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer,
                  Pointer<VTablePointer> pElement,
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
          Int32 Function(
              VTablePointer,
              Pointer<VTablePointer> accessible,
              Int32 childId,
              Pointer<Pointer<VTablePointer>> element)>> ElementFromIAccessible;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer,
                  Pointer<VTablePointer> accessible,
                  Int32 childId,
                  Pointer<VTablePointer> cacheRequest,
                  Pointer<Pointer<VTablePointer>> element)>>
      ElementFromIAccessibleBuildCache;
}

/// @nodoc
const CLSID_CUIAutomation = '{ff48dba4-60ef-4201-aa87-54103eef594e}';

/// {@category com}
class CUIAutomation extends IUIAutomation {
  CUIAutomation(super.ptr);

  factory CUIAutomation.createInstance() =>
      CUIAutomation(createCOMObject(CLSID_CUIAutomation, IID_IUIAutomation));
}
