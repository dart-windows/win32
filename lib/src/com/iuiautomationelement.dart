// iuiautomationelement.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import '../exceptions.dart';
import '../guid.dart';
import '../macros.dart';
import '../structs.g.dart';
import '../utils.dart';
import '../variant.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IUIAutomationElement = '{d22108aa-8ac5-49a5-837b-37bbb3d7591e}';

/// Exposes methods and properties for a UI Automation element, which
/// represents a UI item.
///
/// {@category com}
class IUIAutomationElement extends IUnknown {
  // vtable begins at 3, is 82 entries long.
  IUIAutomationElement(super.ptr)
      : _vtable = ptr.ref.vtable.cast<IUIAutomationElementVtbl>().ref;

  final IUIAutomationElementVtbl _vtable;

  factory IUIAutomationElement.from(IUnknown interface) =>
      IUIAutomationElement(interface.toInterface(IID_IUIAutomationElement));

  int setFocus() =>
      _vtable.SetFocus.asFunction<int Function(Pointer)>()(ptr.ref.lpVtbl);

  int getRuntimeId(Pointer<Pointer<SAFEARRAY>> runtimeId) =>
      _vtable.GetRuntimeId.asFunction<
              int Function(Pointer, Pointer<Pointer<SAFEARRAY>> runtimeId)>()(
          ptr.ref.lpVtbl, runtimeId);

  int findFirst(int scope, Pointer<COMObject> condition,
          Pointer<Pointer<COMObject>> found) =>
      _vtable.FindFirst.asFunction<
              int Function(Pointer, int scope, Pointer<COMObject> condition,
                  Pointer<Pointer<COMObject>> found)>()(
          ptr.ref.lpVtbl, scope, condition, found);

  int findAll(int scope, Pointer<COMObject> condition,
          Pointer<Pointer<COMObject>> found) =>
      _vtable.FindAll.asFunction<
              int Function(Pointer, int scope, Pointer<COMObject> condition,
                  Pointer<Pointer<COMObject>> found)>()(
          ptr.ref.lpVtbl, scope, condition, found);

  int findFirstBuildCache(int scope, Pointer<COMObject> condition,
          Pointer<COMObject> cacheRequest, Pointer<Pointer<COMObject>> found) =>
      _vtable.FindFirstBuildCache.asFunction<
              int Function(
                  Pointer,
                  int scope,
                  Pointer<COMObject> condition,
                  Pointer<COMObject> cacheRequest,
                  Pointer<Pointer<COMObject>> found)>()(
          ptr.ref.lpVtbl, scope, condition, cacheRequest, found);

  int findAllBuildCache(int scope, Pointer<COMObject> condition,
          Pointer<COMObject> cacheRequest, Pointer<Pointer<COMObject>> found) =>
      _vtable.FindAllBuildCache.asFunction<
              int Function(
                  Pointer,
                  int scope,
                  Pointer<COMObject> condition,
                  Pointer<COMObject> cacheRequest,
                  Pointer<Pointer<COMObject>> found)>()(
          ptr.ref.lpVtbl, scope, condition, cacheRequest, found);

  int buildUpdatedCache(Pointer<COMObject> cacheRequest,
          Pointer<Pointer<COMObject>> updatedElement) =>
      _vtable.BuildUpdatedCache.asFunction<
              int Function(Pointer, Pointer<COMObject> cacheRequest,
                  Pointer<Pointer<COMObject>> updatedElement)>()(
          ptr.ref.lpVtbl, cacheRequest, updatedElement);

  int getCurrentPropertyValue(int propertyId, Pointer<VARIANT> retVal) =>
      _vtable.GetCurrentPropertyValue.asFunction<
              int Function(Pointer, int propertyId, Pointer<VARIANT> retVal)>()(
          ptr.ref.lpVtbl, propertyId, retVal);

  int getCurrentPropertyValueEx(
          int propertyId, int ignoreDefaultValue, Pointer<VARIANT> retVal) =>
      _vtable.GetCurrentPropertyValueEx.asFunction<
              int Function(Pointer, int propertyId, int ignoreDefaultValue,
                  Pointer<VARIANT> retVal)>()(
          ptr.ref.lpVtbl, propertyId, ignoreDefaultValue, retVal);

  int getCachedPropertyValue(int propertyId, Pointer<VARIANT> retVal) =>
      _vtable.GetCachedPropertyValue.asFunction<
              int Function(Pointer, int propertyId, Pointer<VARIANT> retVal)>()(
          ptr.ref.lpVtbl, propertyId, retVal);

  int getCachedPropertyValueEx(
          int propertyId, int ignoreDefaultValue, Pointer<VARIANT> retVal) =>
      _vtable.GetCachedPropertyValueEx.asFunction<
              int Function(Pointer, int propertyId, int ignoreDefaultValue,
                  Pointer<VARIANT> retVal)>()(
          ptr.ref.lpVtbl, propertyId, ignoreDefaultValue, retVal);

  int getCurrentPatternAs(
          int patternId, Pointer<GUID> riid, Pointer<Pointer> patternObject) =>
      _vtable.GetCurrentPatternAs.asFunction<
              int Function(Pointer, int patternId, Pointer<GUID> riid,
                  Pointer<Pointer> patternObject)>()(
          ptr.ref.lpVtbl, patternId, riid, patternObject);

  int getCachedPatternAs(
          int patternId, Pointer<GUID> riid, Pointer<Pointer> patternObject) =>
      _vtable.GetCachedPatternAs.asFunction<
              int Function(Pointer, int patternId, Pointer<GUID> riid,
                  Pointer<Pointer> patternObject)>()(
          ptr.ref.lpVtbl, patternId, riid, patternObject);

  int getCurrentPattern(
          int patternId, Pointer<Pointer<COMObject>> patternObject) =>
      _vtable.GetCurrentPattern.asFunction<
              int Function(Pointer, int patternId,
                  Pointer<Pointer<COMObject>> patternObject)>()(
          ptr.ref.lpVtbl, patternId, patternObject);

  int getCachedPattern(
          int patternId, Pointer<Pointer<COMObject>> patternObject) =>
      _vtable.GetCachedPattern.asFunction<
              int Function(Pointer, int patternId,
                  Pointer<Pointer<COMObject>> patternObject)>()(
          ptr.ref.lpVtbl, patternId, patternObject);

  int getCachedParent(Pointer<Pointer<COMObject>> parent) =>
      _vtable.GetCachedParent.asFunction<
              int Function(Pointer, Pointer<Pointer<COMObject>> parent)>()(
          ptr.ref.lpVtbl, parent);

  int getCachedChildren(Pointer<Pointer<COMObject>> children) =>
      _vtable.GetCachedChildren.asFunction<
              int Function(Pointer, Pointer<Pointer<COMObject>> children)>()(
          ptr.ref.lpVtbl, children);

  int get currentProcessId {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CurrentProcessId
              .asFunction<int Function(Pointer, Pointer<Int32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get currentControlType {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = _vtable.get_CurrentControlType
              .asFunction<int Function(Pointer, Pointer<Uint32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get currentLocalizedControlType {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = _vtable.get_CurrentLocalizedControlType.asFunction<
              int Function(Pointer, Pointer<Pointer<Utf16>> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get currentName {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = _vtable.get_CurrentName.asFunction<
              int Function(Pointer, Pointer<Pointer<Utf16>> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get currentAcceleratorKey {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = _vtable.get_CurrentAcceleratorKey.asFunction<
              int Function(Pointer, Pointer<Pointer<Utf16>> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get currentAccessKey {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = _vtable.get_CurrentAccessKey.asFunction<
              int Function(Pointer, Pointer<Pointer<Utf16>> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get currentHasKeyboardFocus {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CurrentHasKeyboardFocus
              .asFunction<int Function(Pointer, Pointer<Int32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get currentIsKeyboardFocusable {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CurrentIsKeyboardFocusable
              .asFunction<int Function(Pointer, Pointer<Int32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get currentIsEnabled {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CurrentIsEnabled
              .asFunction<int Function(Pointer, Pointer<Int32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get currentAutomationId {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = _vtable.get_CurrentAutomationId.asFunction<
              int Function(Pointer, Pointer<Pointer<Utf16>> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get currentClassName {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = _vtable.get_CurrentClassName.asFunction<
              int Function(Pointer, Pointer<Pointer<Utf16>> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get currentHelpText {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = _vtable.get_CurrentHelpText.asFunction<
              int Function(Pointer, Pointer<Pointer<Utf16>> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get currentCulture {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CurrentCulture
              .asFunction<int Function(Pointer, Pointer<Int32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get currentIsControlElement {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CurrentIsControlElement
              .asFunction<int Function(Pointer, Pointer<Int32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get currentIsContentElement {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CurrentIsContentElement
              .asFunction<int Function(Pointer, Pointer<Int32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get currentIsPassword {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CurrentIsPassword
              .asFunction<int Function(Pointer, Pointer<Int32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get currentNativeWindowHandle {
    final retValuePtr = calloc<IntPtr>();

    try {
      final hr = _vtable.get_CurrentNativeWindowHandle
              .asFunction<int Function(Pointer, Pointer<IntPtr> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get currentItemType {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = _vtable.get_CurrentItemType.asFunction<
              int Function(Pointer, Pointer<Pointer<Utf16>> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get currentIsOffscreen {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CurrentIsOffscreen
              .asFunction<int Function(Pointer, Pointer<Int32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get currentOrientation {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CurrentOrientation
              .asFunction<int Function(Pointer, Pointer<Int32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get currentFrameworkId {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = _vtable.get_CurrentFrameworkId.asFunction<
              int Function(Pointer, Pointer<Pointer<Utf16>> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get currentIsRequiredForForm {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CurrentIsRequiredForForm
              .asFunction<int Function(Pointer, Pointer<Int32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get currentItemStatus {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = _vtable.get_CurrentItemStatus.asFunction<
              int Function(Pointer, Pointer<Pointer<Utf16>> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  RECT get currentBoundingRectangle {
    final retValuePtr = calloc<RECT>();

    try {
      final hr = _vtable.get_CurrentBoundingRectangle
              .asFunction<int Function(Pointer, Pointer<RECT> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.ref;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<COMObject> get currentLabeledBy {
    final retValuePtr = calloc<COMObject>();

    final hr = _vtable.get_CurrentLabeledBy
            .asFunction<int Function(Pointer, Pointer<COMObject> retVal)>()(
        ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }

  Pointer<Utf16> get currentAriaRole {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = _vtable.get_CurrentAriaRole.asFunction<
              int Function(Pointer, Pointer<Pointer<Utf16>> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get currentAriaProperties {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = _vtable.get_CurrentAriaProperties.asFunction<
              int Function(Pointer, Pointer<Pointer<Utf16>> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get currentIsDataValidForForm {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CurrentIsDataValidForForm
              .asFunction<int Function(Pointer, Pointer<Int32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<COMObject> get currentControllerFor {
    final retValuePtr = calloc<COMObject>();

    final hr = _vtable.get_CurrentControllerFor
            .asFunction<int Function(Pointer, Pointer<COMObject> retVal)>()(
        ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }

  Pointer<COMObject> get currentDescribedBy {
    final retValuePtr = calloc<COMObject>();

    final hr = _vtable.get_CurrentDescribedBy
            .asFunction<int Function(Pointer, Pointer<COMObject> retVal)>()(
        ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }

  Pointer<COMObject> get currentFlowsTo {
    final retValuePtr = calloc<COMObject>();

    final hr = _vtable.get_CurrentFlowsTo
            .asFunction<int Function(Pointer, Pointer<COMObject> retVal)>()(
        ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }

  Pointer<Utf16> get currentProviderDescription {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = _vtable.get_CurrentProviderDescription.asFunction<
              int Function(Pointer, Pointer<Pointer<Utf16>> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get cachedProcessId {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CachedProcessId
              .asFunction<int Function(Pointer, Pointer<Int32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get cachedControlType {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = _vtable.get_CachedControlType
              .asFunction<int Function(Pointer, Pointer<Uint32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get cachedLocalizedControlType {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = _vtable.get_CachedLocalizedControlType.asFunction<
              int Function(Pointer, Pointer<Pointer<Utf16>> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get cachedName {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = _vtable.get_CachedName.asFunction<
              int Function(Pointer, Pointer<Pointer<Utf16>> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get cachedAcceleratorKey {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = _vtable.get_CachedAcceleratorKey.asFunction<
              int Function(Pointer, Pointer<Pointer<Utf16>> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get cachedAccessKey {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = _vtable.get_CachedAccessKey.asFunction<
              int Function(Pointer, Pointer<Pointer<Utf16>> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get cachedHasKeyboardFocus {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CachedHasKeyboardFocus
              .asFunction<int Function(Pointer, Pointer<Int32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get cachedIsKeyboardFocusable {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CachedIsKeyboardFocusable
              .asFunction<int Function(Pointer, Pointer<Int32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get cachedIsEnabled {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CachedIsEnabled
              .asFunction<int Function(Pointer, Pointer<Int32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get cachedAutomationId {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = _vtable.get_CachedAutomationId.asFunction<
              int Function(Pointer, Pointer<Pointer<Utf16>> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get cachedClassName {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = _vtable.get_CachedClassName.asFunction<
              int Function(Pointer, Pointer<Pointer<Utf16>> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get cachedHelpText {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = _vtable.get_CachedHelpText.asFunction<
              int Function(Pointer, Pointer<Pointer<Utf16>> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get cachedCulture {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CachedCulture
              .asFunction<int Function(Pointer, Pointer<Int32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get cachedIsControlElement {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CachedIsControlElement
              .asFunction<int Function(Pointer, Pointer<Int32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get cachedIsContentElement {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CachedIsContentElement
              .asFunction<int Function(Pointer, Pointer<Int32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get cachedIsPassword {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CachedIsPassword
              .asFunction<int Function(Pointer, Pointer<Int32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get cachedNativeWindowHandle {
    final retValuePtr = calloc<IntPtr>();

    try {
      final hr = _vtable.get_CachedNativeWindowHandle
              .asFunction<int Function(Pointer, Pointer<IntPtr> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get cachedItemType {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = _vtable.get_CachedItemType.asFunction<
              int Function(Pointer, Pointer<Pointer<Utf16>> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get cachedIsOffscreen {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CachedIsOffscreen
              .asFunction<int Function(Pointer, Pointer<Int32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get cachedOrientation {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CachedOrientation
              .asFunction<int Function(Pointer, Pointer<Int32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get cachedFrameworkId {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = _vtable.get_CachedFrameworkId.asFunction<
              int Function(Pointer, Pointer<Pointer<Utf16>> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get cachedIsRequiredForForm {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CachedIsRequiredForForm
              .asFunction<int Function(Pointer, Pointer<Int32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get cachedItemStatus {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = _vtable.get_CachedItemStatus.asFunction<
              int Function(Pointer, Pointer<Pointer<Utf16>> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  RECT get cachedBoundingRectangle {
    final retValuePtr = calloc<RECT>();

    try {
      final hr = _vtable.get_CachedBoundingRectangle
              .asFunction<int Function(Pointer, Pointer<RECT> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.ref;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<COMObject> get cachedLabeledBy {
    final retValuePtr = calloc<COMObject>();

    final hr = _vtable.get_CachedLabeledBy
            .asFunction<int Function(Pointer, Pointer<COMObject> retVal)>()(
        ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }

  Pointer<Utf16> get cachedAriaRole {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = _vtable.get_CachedAriaRole.asFunction<
              int Function(Pointer, Pointer<Pointer<Utf16>> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get cachedAriaProperties {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = _vtable.get_CachedAriaProperties.asFunction<
              int Function(Pointer, Pointer<Pointer<Utf16>> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get cachedIsDataValidForForm {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CachedIsDataValidForForm
              .asFunction<int Function(Pointer, Pointer<Int32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<COMObject> get cachedControllerFor {
    final retValuePtr = calloc<COMObject>();

    final hr = _vtable.get_CachedControllerFor
            .asFunction<int Function(Pointer, Pointer<COMObject> retVal)>()(
        ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }

  Pointer<COMObject> get cachedDescribedBy {
    final retValuePtr = calloc<COMObject>();

    final hr = _vtable.get_CachedDescribedBy
            .asFunction<int Function(Pointer, Pointer<COMObject> retVal)>()(
        ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }

  Pointer<COMObject> get cachedFlowsTo {
    final retValuePtr = calloc<COMObject>();

    final hr = _vtable.get_CachedFlowsTo
            .asFunction<int Function(Pointer, Pointer<COMObject> retVal)>()(
        ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }

  Pointer<Utf16> get cachedProviderDescription {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = _vtable.get_CachedProviderDescription.asFunction<
              int Function(Pointer, Pointer<Pointer<Utf16>> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int getClickablePoint(
          Pointer<POINT> clickable, Pointer<Int32> gotClickable) =>
      _vtable.GetClickablePoint.asFunction<
              int Function(Pointer, Pointer<POINT> clickable,
                  Pointer<Int32> gotClickable)>()(
          ptr.ref.lpVtbl, clickable, gotClickable);
}

/// @nodoc
base class IUIAutomationElementVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<NativeFunction<Int32 Function(Pointer)>> SetFocus;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Pointer<SAFEARRAY>> runtimeId)>>
      GetRuntimeId;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Int32 scope, Pointer<COMObject> condition,
              Pointer<Pointer<COMObject>> found)>> FindFirst;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Int32 scope, Pointer<COMObject> condition,
              Pointer<Pointer<COMObject>> found)>> FindAll;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              Int32 scope,
              Pointer<COMObject> condition,
              Pointer<COMObject> cacheRequest,
              Pointer<Pointer<COMObject>> found)>> FindFirstBuildCache;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              Int32 scope,
              Pointer<COMObject> condition,
              Pointer<COMObject> cacheRequest,
              Pointer<Pointer<COMObject>> found)>> FindAllBuildCache;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<COMObject> cacheRequest,
              Pointer<Pointer<COMObject>> updatedElement)>> BuildUpdatedCache;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer, Uint32 propertyId, Pointer<VARIANT> retVal)>>
      GetCurrentPropertyValue;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Uint32 propertyId, Int32 ignoreDefaultValue,
              Pointer<VARIANT> retVal)>> GetCurrentPropertyValueEx;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer, Uint32 propertyId, Pointer<VARIANT> retVal)>>
      GetCachedPropertyValue;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Uint32 propertyId, Int32 ignoreDefaultValue,
              Pointer<VARIANT> retVal)>> GetCachedPropertyValueEx;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Uint32 patternId, Pointer<GUID> riid,
              Pointer<Pointer> patternObject)>> GetCurrentPatternAs;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Uint32 patternId, Pointer<GUID> riid,
              Pointer<Pointer> patternObject)>> GetCachedPatternAs;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Uint32 patternId,
              Pointer<Pointer<COMObject>> patternObject)>> GetCurrentPattern;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Uint32 patternId,
              Pointer<Pointer<COMObject>> patternObject)>> GetCachedPattern;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Pointer<COMObject>> parent)>>
      GetCachedParent;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Pointer<COMObject>> children)>>
      GetCachedChildren;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> retVal)>>
      get_CurrentProcessId;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Uint32> retVal)>>
      get_CurrentControlType;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Pointer<Utf16>> retVal)>>
      get_CurrentLocalizedControlType;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Pointer<Utf16>> retVal)>>
      get_CurrentName;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Pointer<Utf16>> retVal)>>
      get_CurrentAcceleratorKey;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Pointer<Utf16>> retVal)>>
      get_CurrentAccessKey;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> retVal)>>
      get_CurrentHasKeyboardFocus;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> retVal)>>
      get_CurrentIsKeyboardFocusable;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> retVal)>>
      get_CurrentIsEnabled;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Pointer<Utf16>> retVal)>>
      get_CurrentAutomationId;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Pointer<Utf16>> retVal)>>
      get_CurrentClassName;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Pointer<Utf16>> retVal)>>
      get_CurrentHelpText;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> retVal)>>
      get_CurrentCulture;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> retVal)>>
      get_CurrentIsControlElement;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> retVal)>>
      get_CurrentIsContentElement;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> retVal)>>
      get_CurrentIsPassword;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<IntPtr> retVal)>>
      get_CurrentNativeWindowHandle;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Pointer<Utf16>> retVal)>>
      get_CurrentItemType;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> retVal)>>
      get_CurrentIsOffscreen;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> retVal)>>
      get_CurrentOrientation;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Pointer<Utf16>> retVal)>>
      get_CurrentFrameworkId;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> retVal)>>
      get_CurrentIsRequiredForForm;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Pointer<Utf16>> retVal)>>
      get_CurrentItemStatus;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<RECT> retVal)>>
      get_CurrentBoundingRectangle;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<COMObject> retVal)>>
      get_CurrentLabeledBy;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Pointer<Utf16>> retVal)>>
      get_CurrentAriaRole;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Pointer<Utf16>> retVal)>>
      get_CurrentAriaProperties;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> retVal)>>
      get_CurrentIsDataValidForForm;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<COMObject> retVal)>>
      get_CurrentControllerFor;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<COMObject> retVal)>>
      get_CurrentDescribedBy;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<COMObject> retVal)>>
      get_CurrentFlowsTo;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Pointer<Utf16>> retVal)>>
      get_CurrentProviderDescription;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> retVal)>>
      get_CachedProcessId;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Uint32> retVal)>>
      get_CachedControlType;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Pointer<Utf16>> retVal)>>
      get_CachedLocalizedControlType;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Pointer<Utf16>> retVal)>>
      get_CachedName;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Pointer<Utf16>> retVal)>>
      get_CachedAcceleratorKey;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Pointer<Utf16>> retVal)>>
      get_CachedAccessKey;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> retVal)>>
      get_CachedHasKeyboardFocus;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> retVal)>>
      get_CachedIsKeyboardFocusable;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> retVal)>>
      get_CachedIsEnabled;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Pointer<Utf16>> retVal)>>
      get_CachedAutomationId;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Pointer<Utf16>> retVal)>>
      get_CachedClassName;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Pointer<Utf16>> retVal)>>
      get_CachedHelpText;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> retVal)>>
      get_CachedCulture;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> retVal)>>
      get_CachedIsControlElement;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> retVal)>>
      get_CachedIsContentElement;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> retVal)>>
      get_CachedIsPassword;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<IntPtr> retVal)>>
      get_CachedNativeWindowHandle;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Pointer<Utf16>> retVal)>>
      get_CachedItemType;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> retVal)>>
      get_CachedIsOffscreen;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> retVal)>>
      get_CachedOrientation;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Pointer<Utf16>> retVal)>>
      get_CachedFrameworkId;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> retVal)>>
      get_CachedIsRequiredForForm;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Pointer<Utf16>> retVal)>>
      get_CachedItemStatus;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<RECT> retVal)>>
      get_CachedBoundingRectangle;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<COMObject> retVal)>>
      get_CachedLabeledBy;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Pointer<Utf16>> retVal)>>
      get_CachedAriaRole;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Pointer<Utf16>> retVal)>>
      get_CachedAriaProperties;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> retVal)>>
      get_CachedIsDataValidForForm;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<COMObject> retVal)>>
      get_CachedControllerFor;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<COMObject> retVal)>>
      get_CachedDescribedBy;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<COMObject> retVal)>>
      get_CachedFlowsTo;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Pointer<Utf16>> retVal)>>
      get_CachedProviderDescription;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<POINT> clickable,
              Pointer<Int32> gotClickable)>> GetClickablePoint;
}
