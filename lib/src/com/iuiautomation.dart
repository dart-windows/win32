// iuiautomation.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import '../exceptions.dart';
import '../macros.dart';
import '../structs.g.dart';
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
  // vtable begins at 3, is 55 entries long.
  IUIAutomation(super.ptr)
      : _vtable = ptr.ref.vtable.cast<IUIAutomationVtbl>().ref;

  final IUIAutomationVtbl _vtable;

  factory IUIAutomation.from(IUnknown interface) =>
      IUIAutomation(interface.toInterface(IID_IUIAutomation));

  int compareElements(Pointer<COMObject> el1, Pointer<COMObject> el2,
          Pointer<Int32> areSame) =>
      _vtable.CompareElements.asFunction<
          int Function(Pointer, Pointer<COMObject> el1, Pointer<COMObject> el2,
              Pointer<Int32> areSame)>()(ptr.ref.lpVtbl, el1, el2, areSame);

  int compareRuntimeIds(Pointer<SAFEARRAY> runtimeId1,
          Pointer<SAFEARRAY> runtimeId2, Pointer<Int32> areSame) =>
      _vtable.CompareRuntimeIds.asFunction<
              int Function(Pointer, Pointer<SAFEARRAY> runtimeId1,
                  Pointer<SAFEARRAY> runtimeId2, Pointer<Int32> areSame)>()(
          ptr.ref.lpVtbl, runtimeId1, runtimeId2, areSame);

  int getRootElement(Pointer<Pointer<COMObject>> root) =>
      _vtable.GetRootElement.asFunction<
              int Function(Pointer, Pointer<Pointer<COMObject>> root)>()(
          ptr.ref.lpVtbl, root);

  int elementFromHandle(int hwnd, Pointer<Pointer<COMObject>> element) =>
      _vtable.ElementFromHandle.asFunction<
              int Function(
                  Pointer, int hwnd, Pointer<Pointer<COMObject>> element)>()(
          ptr.ref.lpVtbl, hwnd, element);

  int elementFromPoint(POINT pt, Pointer<Pointer<COMObject>> element) =>
      _vtable.ElementFromPoint.asFunction<
              int Function(
                  Pointer, POINT pt, Pointer<Pointer<COMObject>> element)>()(
          ptr.ref.lpVtbl, pt, element);

  int getFocusedElement(Pointer<Pointer<COMObject>> element) =>
      _vtable.GetFocusedElement.asFunction<
              int Function(Pointer, Pointer<Pointer<COMObject>> element)>()(
          ptr.ref.lpVtbl, element);

  int getRootElementBuildCache(
          Pointer<COMObject> cacheRequest, Pointer<Pointer<COMObject>> root) =>
      _vtable.GetRootElementBuildCache.asFunction<
              int Function(Pointer, Pointer<COMObject> cacheRequest,
                  Pointer<Pointer<COMObject>> root)>()(
          ptr.ref.lpVtbl, cacheRequest, root);

  int elementFromHandleBuildCache(int hwnd, Pointer<COMObject> cacheRequest,
          Pointer<Pointer<COMObject>> element) =>
      _vtable.ElementFromHandleBuildCache.asFunction<
              int Function(Pointer, int hwnd, Pointer<COMObject> cacheRequest,
                  Pointer<Pointer<COMObject>> element)>()(
          ptr.ref.lpVtbl, hwnd, cacheRequest, element);

  int elementFromPointBuildCache(POINT pt, Pointer<COMObject> cacheRequest,
          Pointer<Pointer<COMObject>> element) =>
      _vtable.ElementFromPointBuildCache.asFunction<
              int Function(Pointer, POINT pt, Pointer<COMObject> cacheRequest,
                  Pointer<Pointer<COMObject>> element)>()(
          ptr.ref.lpVtbl, pt, cacheRequest, element);

  int getFocusedElementBuildCache(Pointer<COMObject> cacheRequest,
          Pointer<Pointer<COMObject>> element) =>
      _vtable.GetFocusedElementBuildCache.asFunction<
              int Function(Pointer, Pointer<COMObject> cacheRequest,
                  Pointer<Pointer<COMObject>> element)>()(
          ptr.ref.lpVtbl, cacheRequest, element);

  int createTreeWalker(
          Pointer<COMObject> pCondition, Pointer<Pointer<COMObject>> walker) =>
      _vtable.CreateTreeWalker.asFunction<
              int Function(Pointer, Pointer<COMObject> pCondition,
                  Pointer<Pointer<COMObject>> walker)>()(
          ptr.ref.lpVtbl, pCondition, walker);

  Pointer<COMObject> get controlViewWalker {
    final retValuePtr = calloc<COMObject>();

    final hr = _vtable.get_ControlViewWalker
            .asFunction<int Function(Pointer, Pointer<COMObject> walker)>()(
        ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }

  Pointer<COMObject> get contentViewWalker {
    final retValuePtr = calloc<COMObject>();

    final hr = _vtable.get_ContentViewWalker
            .asFunction<int Function(Pointer, Pointer<COMObject> walker)>()(
        ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }

  Pointer<COMObject> get rawViewWalker {
    final retValuePtr = calloc<COMObject>();

    final hr = _vtable.get_RawViewWalker
            .asFunction<int Function(Pointer, Pointer<COMObject> walker)>()(
        ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }

  Pointer<COMObject> get rawViewCondition {
    final retValuePtr = calloc<COMObject>();

    final hr = _vtable.get_RawViewCondition
            .asFunction<int Function(Pointer, Pointer<COMObject> condition)>()(
        ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }

  Pointer<COMObject> get controlViewCondition {
    final retValuePtr = calloc<COMObject>();

    final hr = _vtable.get_ControlViewCondition
            .asFunction<int Function(Pointer, Pointer<COMObject> condition)>()(
        ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }

  Pointer<COMObject> get contentViewCondition {
    final retValuePtr = calloc<COMObject>();

    final hr = _vtable.get_ContentViewCondition
            .asFunction<int Function(Pointer, Pointer<COMObject> condition)>()(
        ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }

  int createCacheRequest(Pointer<Pointer<COMObject>> cacheRequest) =>
      _vtable.CreateCacheRequest.asFunction<
              int Function(
                  Pointer, Pointer<Pointer<COMObject>> cacheRequest)>()(
          ptr.ref.lpVtbl, cacheRequest);

  int createTrueCondition(Pointer<Pointer<COMObject>> newCondition) =>
      _vtable.CreateTrueCondition.asFunction<
              int Function(
                  Pointer, Pointer<Pointer<COMObject>> newCondition)>()(
          ptr.ref.lpVtbl, newCondition);

  int createFalseCondition(Pointer<Pointer<COMObject>> newCondition) =>
      _vtable.CreateFalseCondition.asFunction<
              int Function(
                  Pointer, Pointer<Pointer<COMObject>> newCondition)>()(
          ptr.ref.lpVtbl, newCondition);

  int createPropertyCondition(int propertyId, VARIANT value,
          Pointer<Pointer<COMObject>> newCondition) =>
      _vtable.CreatePropertyCondition.asFunction<
              int Function(Pointer, int propertyId, VARIANT value,
                  Pointer<Pointer<COMObject>> newCondition)>()(
          ptr.ref.lpVtbl, propertyId, value, newCondition);

  int createPropertyConditionEx(int propertyId, VARIANT value, int flags,
          Pointer<Pointer<COMObject>> newCondition) =>
      _vtable.CreatePropertyConditionEx.asFunction<
              int Function(Pointer, int propertyId, VARIANT value, int flags,
                  Pointer<Pointer<COMObject>> newCondition)>()(
          ptr.ref.lpVtbl, propertyId, value, flags, newCondition);

  int createAndCondition(
          Pointer<COMObject> condition1,
          Pointer<COMObject> condition2,
          Pointer<Pointer<COMObject>> newCondition) =>
      _vtable.CreateAndCondition.asFunction<
              int Function(
                  Pointer,
                  Pointer<COMObject> condition1,
                  Pointer<COMObject> condition2,
                  Pointer<Pointer<COMObject>> newCondition)>()(
          ptr.ref.lpVtbl, condition1, condition2, newCondition);

  int createAndConditionFromArray(Pointer<SAFEARRAY> conditions,
          Pointer<Pointer<COMObject>> newCondition) =>
      _vtable.CreateAndConditionFromArray.asFunction<
              int Function(Pointer, Pointer<SAFEARRAY> conditions,
                  Pointer<Pointer<COMObject>> newCondition)>()(
          ptr.ref.lpVtbl, conditions, newCondition);

  int createAndConditionFromNativeArray(Pointer<Pointer<COMObject>> conditions,
          int conditionCount, Pointer<Pointer<COMObject>> newCondition) =>
      _vtable.CreateAndConditionFromNativeArray.asFunction<
              int Function(
                  Pointer,
                  Pointer<Pointer<COMObject>> conditions,
                  int conditionCount,
                  Pointer<Pointer<COMObject>> newCondition)>()(
          ptr.ref.lpVtbl, conditions, conditionCount, newCondition);

  int createOrCondition(
          Pointer<COMObject> condition1,
          Pointer<COMObject> condition2,
          Pointer<Pointer<COMObject>> newCondition) =>
      _vtable.CreateOrCondition.asFunction<
              int Function(
                  Pointer,
                  Pointer<COMObject> condition1,
                  Pointer<COMObject> condition2,
                  Pointer<Pointer<COMObject>> newCondition)>()(
          ptr.ref.lpVtbl, condition1, condition2, newCondition);

  int createOrConditionFromArray(Pointer<SAFEARRAY> conditions,
          Pointer<Pointer<COMObject>> newCondition) =>
      _vtable.CreateOrConditionFromArray.asFunction<
              int Function(Pointer, Pointer<SAFEARRAY> conditions,
                  Pointer<Pointer<COMObject>> newCondition)>()(
          ptr.ref.lpVtbl, conditions, newCondition);

  int createOrConditionFromNativeArray(Pointer<Pointer<COMObject>> conditions,
          int conditionCount, Pointer<Pointer<COMObject>> newCondition) =>
      _vtable.CreateOrConditionFromNativeArray.asFunction<
              int Function(
                  Pointer,
                  Pointer<Pointer<COMObject>> conditions,
                  int conditionCount,
                  Pointer<Pointer<COMObject>> newCondition)>()(
          ptr.ref.lpVtbl, conditions, conditionCount, newCondition);

  int createNotCondition(Pointer<COMObject> condition,
          Pointer<Pointer<COMObject>> newCondition) =>
      _vtable.CreateNotCondition.asFunction<
              int Function(Pointer, Pointer<COMObject> condition,
                  Pointer<Pointer<COMObject>> newCondition)>()(
          ptr.ref.lpVtbl, condition, newCondition);

  int addAutomationEventHandler(
          int eventId,
          Pointer<COMObject> element,
          int scope,
          Pointer<COMObject> cacheRequest,
          Pointer<COMObject> handler) =>
      _vtable.AddAutomationEventHandler.asFunction<
              int Function(
                  Pointer,
                  int eventId,
                  Pointer<COMObject> element,
                  int scope,
                  Pointer<COMObject> cacheRequest,
                  Pointer<COMObject> handler)>()(
          ptr.ref.lpVtbl, eventId, element, scope, cacheRequest, handler);

  int removeAutomationEventHandler(int eventId, Pointer<COMObject> element,
          Pointer<COMObject> handler) =>
      _vtable.RemoveAutomationEventHandler.asFunction<
              int Function(Pointer, int eventId, Pointer<COMObject> element,
                  Pointer<COMObject> handler)>()(
          ptr.ref.lpVtbl, eventId, element, handler);

  int addPropertyChangedEventHandlerNativeArray(
          Pointer<COMObject> element,
          int scope,
          Pointer<COMObject> cacheRequest,
          Pointer<COMObject> handler,
          Pointer<Uint32> propertyArray,
          int propertyCount) =>
      _vtable.AddPropertyChangedEventHandlerNativeArray.asFunction<
              int Function(
                  Pointer,
                  Pointer<COMObject> element,
                  int scope,
                  Pointer<COMObject> cacheRequest,
                  Pointer<COMObject> handler,
                  Pointer<Uint32> propertyArray,
                  int propertyCount)>()(ptr.ref.lpVtbl, element, scope,
          cacheRequest, handler, propertyArray, propertyCount);

  int addPropertyChangedEventHandler(
          Pointer<COMObject> element,
          int scope,
          Pointer<COMObject> cacheRequest,
          Pointer<COMObject> handler,
          Pointer<SAFEARRAY> propertyArray) =>
      _vtable.AddPropertyChangedEventHandler.asFunction<
              int Function(
                  Pointer,
                  Pointer<COMObject> element,
                  int scope,
                  Pointer<COMObject> cacheRequest,
                  Pointer<COMObject> handler,
                  Pointer<SAFEARRAY> propertyArray)>()(
          ptr.ref.lpVtbl, element, scope, cacheRequest, handler, propertyArray);

  int removePropertyChangedEventHandler(
          Pointer<COMObject> element, Pointer<COMObject> handler) =>
      _vtable.RemovePropertyChangedEventHandler.asFunction<
          int Function(Pointer, Pointer<COMObject> element,
              Pointer<COMObject> handler)>()(ptr.ref.lpVtbl, element, handler);

  int addStructureChangedEventHandler(Pointer<COMObject> element, int scope,
          Pointer<COMObject> cacheRequest, Pointer<COMObject> handler) =>
      _vtable.AddStructureChangedEventHandler.asFunction<
              int Function(
                  Pointer,
                  Pointer<COMObject> element,
                  int scope,
                  Pointer<COMObject> cacheRequest,
                  Pointer<COMObject> handler)>()(
          ptr.ref.lpVtbl, element, scope, cacheRequest, handler);

  int removeStructureChangedEventHandler(
          Pointer<COMObject> element, Pointer<COMObject> handler) =>
      _vtable.RemoveStructureChangedEventHandler.asFunction<
          int Function(Pointer, Pointer<COMObject> element,
              Pointer<COMObject> handler)>()(ptr.ref.lpVtbl, element, handler);

  int addFocusChangedEventHandler(
          Pointer<COMObject> cacheRequest, Pointer<COMObject> handler) =>
      _vtable.AddFocusChangedEventHandler.asFunction<
              int Function(Pointer, Pointer<COMObject> cacheRequest,
                  Pointer<COMObject> handler)>()(
          ptr.ref.lpVtbl, cacheRequest, handler);

  int removeFocusChangedEventHandler(Pointer<COMObject> handler) =>
      _vtable.RemoveFocusChangedEventHandler.asFunction<
          int Function(
              Pointer, Pointer<COMObject> handler)>()(ptr.ref.lpVtbl, handler);

  int removeAllEventHandlers() =>
      _vtable.RemoveAllEventHandlers.asFunction<int Function(Pointer)>()(
          ptr.ref.lpVtbl);

  int intNativeArrayToSafeArray(Pointer<Int32> array, int arrayCount,
          Pointer<Pointer<SAFEARRAY>> safeArray) =>
      _vtable.IntNativeArrayToSafeArray.asFunction<
              int Function(Pointer, Pointer<Int32> array, int arrayCount,
                  Pointer<Pointer<SAFEARRAY>> safeArray)>()(
          ptr.ref.lpVtbl, array, arrayCount, safeArray);

  int intSafeArrayToNativeArray(Pointer<SAFEARRAY> intArray,
          Pointer<Pointer<Int32>> array, Pointer<Int32> arrayCount) =>
      _vtable.IntSafeArrayToNativeArray.asFunction<
              int Function(Pointer, Pointer<SAFEARRAY> intArray,
                  Pointer<Pointer<Int32>> array, Pointer<Int32> arrayCount)>()(
          ptr.ref.lpVtbl, intArray, array, arrayCount);

  int rectToVariant(RECT rc, Pointer<VARIANT> var_) => _vtable.RectToVariant
          .asFunction<int Function(Pointer, RECT rc, Pointer<VARIANT> var_)>()(
      ptr.ref.lpVtbl, rc, var_);

  int variantToRect(VARIANT var_, Pointer<RECT> rc) => _vtable.VariantToRect
          .asFunction<int Function(Pointer, VARIANT var_, Pointer<RECT> rc)>()(
      ptr.ref.lpVtbl, var_, rc);

  int safeArrayToRectNativeArray(Pointer<SAFEARRAY> rects,
          Pointer<Pointer<RECT>> rectArray, Pointer<Int32> rectArrayCount) =>
      _vtable.SafeArrayToRectNativeArray.asFunction<
              int Function(
                  Pointer,
                  Pointer<SAFEARRAY> rects,
                  Pointer<Pointer<RECT>> rectArray,
                  Pointer<Int32> rectArrayCount)>()(
          ptr.ref.lpVtbl, rects, rectArray, rectArrayCount);

  int createProxyFactoryEntry(Pointer<COMObject> factory,
          Pointer<Pointer<COMObject>> factoryEntry) =>
      _vtable.CreateProxyFactoryEntry.asFunction<
              int Function(Pointer, Pointer<COMObject> factory,
                  Pointer<Pointer<COMObject>> factoryEntry)>()(
          ptr.ref.lpVtbl, factory, factoryEntry);

  Pointer<COMObject> get proxyFactoryMapping {
    final retValuePtr = calloc<COMObject>();

    final hr = _vtable.get_ProxyFactoryMapping.asFunction<
            int Function(Pointer, Pointer<COMObject> factoryMapping)>()(
        ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }

  int getPropertyProgrammaticName(int property, Pointer<Pointer<Utf16>> name) =>
      _vtable.GetPropertyProgrammaticName.asFunction<
          int Function(Pointer, int property,
              Pointer<Pointer<Utf16>> name)>()(ptr.ref.lpVtbl, property, name);

  int getPatternProgrammaticName(int pattern, Pointer<Pointer<Utf16>> name) =>
      _vtable.GetPatternProgrammaticName.asFunction<
          int Function(Pointer, int pattern,
              Pointer<Pointer<Utf16>> name)>()(ptr.ref.lpVtbl, pattern, name);

  int pollForPotentialSupportedPatterns(
          Pointer<COMObject> pElement,
          Pointer<Pointer<SAFEARRAY>> patternIds,
          Pointer<Pointer<SAFEARRAY>> patternNames) =>
      _vtable.PollForPotentialSupportedPatterns.asFunction<
              int Function(
                  Pointer,
                  Pointer<COMObject> pElement,
                  Pointer<Pointer<SAFEARRAY>> patternIds,
                  Pointer<Pointer<SAFEARRAY>> patternNames)>()(
          ptr.ref.lpVtbl, pElement, patternIds, patternNames);

  int pollForPotentialSupportedProperties(
          Pointer<COMObject> pElement,
          Pointer<Pointer<SAFEARRAY>> propertyIds,
          Pointer<Pointer<SAFEARRAY>> propertyNames) =>
      _vtable.PollForPotentialSupportedProperties.asFunction<
              int Function(
                  Pointer,
                  Pointer<COMObject> pElement,
                  Pointer<Pointer<SAFEARRAY>> propertyIds,
                  Pointer<Pointer<SAFEARRAY>> propertyNames)>()(
          ptr.ref.lpVtbl, pElement, propertyIds, propertyNames);

  int checkNotSupported(VARIANT value, Pointer<Int32> isNotSupported) =>
      _vtable.CheckNotSupported.asFunction<
              int Function(
                  Pointer, VARIANT value, Pointer<Int32> isNotSupported)>()(
          ptr.ref.lpVtbl, value, isNotSupported);

  Pointer<COMObject> get reservedNotSupportedValue {
    final retValuePtr = calloc<COMObject>();

    final hr = _vtable.get_ReservedNotSupportedValue.asFunction<
            int Function(Pointer, Pointer<COMObject> notSupportedValue)>()(
        ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }

  Pointer<COMObject> get reservedMixedAttributeValue {
    final retValuePtr = calloc<COMObject>();

    final hr = _vtable.get_ReservedMixedAttributeValue.asFunction<
            int Function(Pointer, Pointer<COMObject> mixedAttributeValue)>()(
        ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }

  int elementFromIAccessible(Pointer<COMObject> accessible, int childId,
          Pointer<Pointer<COMObject>> element) =>
      _vtable.ElementFromIAccessible.asFunction<
              int Function(Pointer, Pointer<COMObject> accessible, int childId,
                  Pointer<Pointer<COMObject>> element)>()(
          ptr.ref.lpVtbl, accessible, childId, element);

  int elementFromIAccessibleBuildCache(
          Pointer<COMObject> accessible,
          int childId,
          Pointer<COMObject> cacheRequest,
          Pointer<Pointer<COMObject>> element) =>
      _vtable.ElementFromIAccessibleBuildCache.asFunction<
              int Function(
                  Pointer,
                  Pointer<COMObject> accessible,
                  int childId,
                  Pointer<COMObject> cacheRequest,
                  Pointer<Pointer<COMObject>> element)>()(
          ptr.ref.lpVtbl, accessible, childId, cacheRequest, element);
}

/// @nodoc
base class IUIAutomationVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<COMObject> el1,
              Pointer<COMObject> el2, Pointer<Int32> areSame)>> CompareElements;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              Pointer<SAFEARRAY> runtimeId1,
              Pointer<SAFEARRAY> runtimeId2,
              Pointer<Int32> areSame)>> CompareRuntimeIds;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Pointer<COMObject>> root)>>
      GetRootElement;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer, IntPtr hwnd, Pointer<Pointer<COMObject>> element)>>
      ElementFromHandle;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer, POINT pt, Pointer<Pointer<COMObject>> element)>>
      ElementFromPoint;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Pointer<COMObject>> element)>>
      GetFocusedElement;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<COMObject> cacheRequest,
              Pointer<Pointer<COMObject>> root)>> GetRootElementBuildCache;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer,
                  IntPtr hwnd,
                  Pointer<COMObject> cacheRequest,
                  Pointer<Pointer<COMObject>> element)>>
      ElementFromHandleBuildCache;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, POINT pt, Pointer<COMObject> cacheRequest,
              Pointer<Pointer<COMObject>> element)>> ElementFromPointBuildCache;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<COMObject> cacheRequest,
                  Pointer<Pointer<COMObject>> element)>>
      GetFocusedElementBuildCache;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<COMObject> pCondition,
              Pointer<Pointer<COMObject>> walker)>> CreateTreeWalker;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<COMObject> walker)>>
      get_ControlViewWalker;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<COMObject> walker)>>
      get_ContentViewWalker;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<COMObject> walker)>>
      get_RawViewWalker;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<COMObject> condition)>>
      get_RawViewCondition;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<COMObject> condition)>>
      get_ControlViewCondition;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<COMObject> condition)>>
      get_ContentViewCondition;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer, Pointer<Pointer<COMObject>> cacheRequest)>>
      CreateCacheRequest;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer, Pointer<Pointer<COMObject>> newCondition)>>
      CreateTrueCondition;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer, Pointer<Pointer<COMObject>> newCondition)>>
      CreateFalseCondition;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Uint32 propertyId, VARIANT value,
                  Pointer<Pointer<COMObject>> newCondition)>>
      CreatePropertyCondition;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Uint32 propertyId, VARIANT value,
                  Int32 flags, Pointer<Pointer<COMObject>> newCondition)>>
      CreatePropertyConditionEx;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              Pointer<COMObject> condition1,
              Pointer<COMObject> condition2,
              Pointer<Pointer<COMObject>> newCondition)>> CreateAndCondition;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<SAFEARRAY> conditions,
                  Pointer<Pointer<COMObject>> newCondition)>>
      CreateAndConditionFromArray;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer,
                  Pointer<Pointer<COMObject>> conditions,
                  Int32 conditionCount,
                  Pointer<Pointer<COMObject>> newCondition)>>
      CreateAndConditionFromNativeArray;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              Pointer<COMObject> condition1,
              Pointer<COMObject> condition2,
              Pointer<Pointer<COMObject>> newCondition)>> CreateOrCondition;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<SAFEARRAY> conditions,
                  Pointer<Pointer<COMObject>> newCondition)>>
      CreateOrConditionFromArray;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer,
                  Pointer<Pointer<COMObject>> conditions,
                  Int32 conditionCount,
                  Pointer<Pointer<COMObject>> newCondition)>>
      CreateOrConditionFromNativeArray;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<COMObject> condition,
              Pointer<Pointer<COMObject>> newCondition)>> CreateNotCondition;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              Uint32 eventId,
              Pointer<COMObject> element,
              Int32 scope,
              Pointer<COMObject> cacheRequest,
              Pointer<COMObject> handler)>> AddAutomationEventHandler;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Uint32 eventId, Pointer<COMObject> element,
              Pointer<COMObject> handler)>> RemoveAutomationEventHandler;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              Pointer<COMObject> element,
              Int32 scope,
              Pointer<COMObject> cacheRequest,
              Pointer<COMObject> handler,
              Pointer<Uint32> propertyArray,
              Int32 propertyCount)>> AddPropertyChangedEventHandlerNativeArray;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer,
                  Pointer<COMObject> element,
                  Int32 scope,
                  Pointer<COMObject> cacheRequest,
                  Pointer<COMObject> handler,
                  Pointer<SAFEARRAY> propertyArray)>>
      AddPropertyChangedEventHandler;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<COMObject> element,
              Pointer<COMObject> handler)>> RemovePropertyChangedEventHandler;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              Pointer<COMObject> element,
              Int32 scope,
              Pointer<COMObject> cacheRequest,
              Pointer<COMObject> handler)>> AddStructureChangedEventHandler;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<COMObject> element,
              Pointer<COMObject> handler)>> RemoveStructureChangedEventHandler;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<COMObject> cacheRequest,
              Pointer<COMObject> handler)>> AddFocusChangedEventHandler;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<COMObject> handler)>>
      RemoveFocusChangedEventHandler;
  external Pointer<NativeFunction<Int32 Function(Pointer)>>
      RemoveAllEventHandlers;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Int32> array, Int32 arrayCount,
                  Pointer<Pointer<SAFEARRAY>> safeArray)>>
      IntNativeArrayToSafeArray;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              Pointer<SAFEARRAY> intArray,
              Pointer<Pointer<Int32>> array,
              Pointer<Int32> arrayCount)>> IntSafeArrayToNativeArray;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, RECT rc, Pointer<VARIANT> var_)>>
      RectToVariant;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, VARIANT var_, Pointer<RECT> rc)>>
      VariantToRect;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              Pointer<SAFEARRAY> rects,
              Pointer<Pointer<RECT>> rectArray,
              Pointer<Int32> rectArrayCount)>> SafeArrayToRectNativeArray;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<COMObject> factory,
                  Pointer<Pointer<COMObject>> factoryEntry)>>
      CreateProxyFactoryEntry;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<COMObject> factoryMapping)>>
      get_ProxyFactoryMapping;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer, Uint32 property, Pointer<Pointer<Utf16>> name)>>
      GetPropertyProgrammaticName;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer, Uint32 pattern, Pointer<Pointer<Utf16>> name)>>
      GetPatternProgrammaticName;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer,
                  Pointer<COMObject> pElement,
                  Pointer<Pointer<SAFEARRAY>> patternIds,
                  Pointer<Pointer<SAFEARRAY>> patternNames)>>
      PollForPotentialSupportedPatterns;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer,
                  Pointer<COMObject> pElement,
                  Pointer<Pointer<SAFEARRAY>> propertyIds,
                  Pointer<Pointer<SAFEARRAY>> propertyNames)>>
      PollForPotentialSupportedProperties;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer, VARIANT value, Pointer<Int32> isNotSupported)>>
      CheckNotSupported;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<COMObject> notSupportedValue)>>
      get_ReservedNotSupportedValue;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<COMObject> mixedAttributeValue)>>
      get_ReservedMixedAttributeValue;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<COMObject> accessible, Int32 childId,
              Pointer<Pointer<COMObject>> element)>> ElementFromIAccessible;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer,
                  Pointer<COMObject> accessible,
                  Int32 childId,
                  Pointer<COMObject> cacheRequest,
                  Pointer<Pointer<COMObject>> element)>>
      ElementFromIAccessibleBuildCache;
}

/// @nodoc
const CLSID_CUIAutomation = '{ff48dba4-60ef-4201-aa87-54103eef594e}';

/// {@category com}
class CUIAutomation extends IUIAutomation {
  CUIAutomation(super.ptr);

  factory CUIAutomation.createInstance() => CUIAutomation(
      COMObject.createFromID(CLSID_CUIAutomation, IID_IUIAutomation));
}
