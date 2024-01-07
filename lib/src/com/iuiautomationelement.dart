// iuiautomationelement.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../exceptions.dart';
import '../guid.dart';
import '../macros.dart';
import '../structs.g.dart';
import '../types.dart';
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
      : _vtable = ptr.value.value.cast<IUIAutomationElementVtbl>().ref;

  final IUIAutomationElementVtbl _vtable;

  factory IUIAutomationElement.from(IUnknown interface) =>
      IUIAutomationElement(interface.toInterface(IID_IUIAutomationElement));

  int setFocus() =>
      _vtable.SetFocus.asFunction<int Function(VTablePointer)>()(ptr.value);

  int getRuntimeId(Pointer<Pointer<SAFEARRAY>> runtimeId) =>
      _vtable.GetRuntimeId.asFunction<
          int Function(VTablePointer,
              Pointer<Pointer<SAFEARRAY>> runtimeId)>()(ptr.value, runtimeId);

  int findFirst(int scope, Pointer<VTablePointer> condition,
          Pointer<Pointer<VTablePointer>> found) =>
      _vtable.FindFirst.asFunction<
              int Function(
                  VTablePointer,
                  int scope,
                  Pointer<VTablePointer> condition,
                  Pointer<Pointer<VTablePointer>> found)>()(
          ptr.value, scope, condition, found);

  int findAll(int scope, Pointer<VTablePointer> condition,
          Pointer<Pointer<VTablePointer>> found) =>
      _vtable.FindAll.asFunction<
              int Function(
                  VTablePointer,
                  int scope,
                  Pointer<VTablePointer> condition,
                  Pointer<Pointer<VTablePointer>> found)>()(
          ptr.value, scope, condition, found);

  int findFirstBuildCache(
          int scope,
          Pointer<VTablePointer> condition,
          Pointer<VTablePointer> cacheRequest,
          Pointer<Pointer<VTablePointer>> found) =>
      _vtable.FindFirstBuildCache.asFunction<
              int Function(
                  VTablePointer,
                  int scope,
                  Pointer<VTablePointer> condition,
                  Pointer<VTablePointer> cacheRequest,
                  Pointer<Pointer<VTablePointer>> found)>()(
          ptr.value, scope, condition, cacheRequest, found);

  int findAllBuildCache(
          int scope,
          Pointer<VTablePointer> condition,
          Pointer<VTablePointer> cacheRequest,
          Pointer<Pointer<VTablePointer>> found) =>
      _vtable.FindAllBuildCache.asFunction<
              int Function(
                  VTablePointer,
                  int scope,
                  Pointer<VTablePointer> condition,
                  Pointer<VTablePointer> cacheRequest,
                  Pointer<Pointer<VTablePointer>> found)>()(
          ptr.value, scope, condition, cacheRequest, found);

  int buildUpdatedCache(Pointer<VTablePointer> cacheRequest,
          Pointer<Pointer<VTablePointer>> updatedElement) =>
      _vtable.BuildUpdatedCache.asFunction<
              int Function(VTablePointer, Pointer<VTablePointer> cacheRequest,
                  Pointer<Pointer<VTablePointer>> updatedElement)>()(
          ptr.value, cacheRequest, updatedElement);

  int getCurrentPropertyValue(int propertyId, Pointer<VARIANT> retVal) =>
      _vtable.GetCurrentPropertyValue.asFunction<
          int Function(VTablePointer, int propertyId,
              Pointer<VARIANT> retVal)>()(ptr.value, propertyId, retVal);

  int getCurrentPropertyValueEx(
          int propertyId, int ignoreDefaultValue, Pointer<VARIANT> retVal) =>
      _vtable.GetCurrentPropertyValueEx.asFunction<
              int Function(VTablePointer, int propertyId,
                  int ignoreDefaultValue, Pointer<VARIANT> retVal)>()(
          ptr.value, propertyId, ignoreDefaultValue, retVal);

  int getCachedPropertyValue(int propertyId, Pointer<VARIANT> retVal) =>
      _vtable.GetCachedPropertyValue.asFunction<
          int Function(VTablePointer, int propertyId,
              Pointer<VARIANT> retVal)>()(ptr.value, propertyId, retVal);

  int getCachedPropertyValueEx(
          int propertyId, int ignoreDefaultValue, Pointer<VARIANT> retVal) =>
      _vtable.GetCachedPropertyValueEx.asFunction<
              int Function(VTablePointer, int propertyId,
                  int ignoreDefaultValue, Pointer<VARIANT> retVal)>()(
          ptr.value, propertyId, ignoreDefaultValue, retVal);

  int getCurrentPatternAs(
          int patternId, Pointer<GUID> riid, Pointer<Pointer> patternObject) =>
      _vtable.GetCurrentPatternAs.asFunction<
              int Function(VTablePointer, int patternId, Pointer<GUID> riid,
                  Pointer<Pointer> patternObject)>()(
          ptr.value, patternId, riid, patternObject);

  int getCachedPatternAs(
          int patternId, Pointer<GUID> riid, Pointer<Pointer> patternObject) =>
      _vtable.GetCachedPatternAs.asFunction<
              int Function(VTablePointer, int patternId, Pointer<GUID> riid,
                  Pointer<Pointer> patternObject)>()(
          ptr.value, patternId, riid, patternObject);

  int getCurrentPattern(
          int patternId, Pointer<Pointer<VTablePointer>> patternObject) =>
      _vtable.GetCurrentPattern.asFunction<
              int Function(VTablePointer, int patternId,
                  Pointer<Pointer<VTablePointer>> patternObject)>()(
          ptr.value, patternId, patternObject);

  int getCachedPattern(
          int patternId, Pointer<Pointer<VTablePointer>> patternObject) =>
      _vtable.GetCachedPattern.asFunction<
              int Function(VTablePointer, int patternId,
                  Pointer<Pointer<VTablePointer>> patternObject)>()(
          ptr.value, patternId, patternObject);

  int getCachedParent(Pointer<Pointer<VTablePointer>> parent) =>
      _vtable.GetCachedParent.asFunction<
          int Function(VTablePointer,
              Pointer<Pointer<VTablePointer>> parent)>()(ptr.value, parent);

  int getCachedChildren(Pointer<Pointer<VTablePointer>> children) =>
      _vtable.GetCachedChildren.asFunction<
          int Function(VTablePointer,
              Pointer<Pointer<VTablePointer>> children)>()(ptr.value, children);

  int get currentProcessId {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CurrentProcessId
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr.value, retValuePtr);
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
      final hr = _vtable.get_CurrentControlType.asFunction<
          int Function(
              VTablePointer, Pointer<Uint32> retVal)>()(ptr.value, retValuePtr);
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
              int Function(VTablePointer, Pointer<Pointer<Utf16>> retVal)>()(
          ptr.value, retValuePtr);
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
              int Function(VTablePointer, Pointer<Pointer<Utf16>> retVal)>()(
          ptr.value, retValuePtr);
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
              int Function(VTablePointer, Pointer<Pointer<Utf16>> retVal)>()(
          ptr.value, retValuePtr);
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
              int Function(VTablePointer, Pointer<Pointer<Utf16>> retVal)>()(
          ptr.value, retValuePtr);
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
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr.value, retValuePtr);
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
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr.value, retValuePtr);
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
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr.value, retValuePtr);
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
              int Function(VTablePointer, Pointer<Pointer<Utf16>> retVal)>()(
          ptr.value, retValuePtr);
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
              int Function(VTablePointer, Pointer<Pointer<Utf16>> retVal)>()(
          ptr.value, retValuePtr);
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
              int Function(VTablePointer, Pointer<Pointer<Utf16>> retVal)>()(
          ptr.value, retValuePtr);
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
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr.value, retValuePtr);
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
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr.value, retValuePtr);
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
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr.value, retValuePtr);
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
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr.value, retValuePtr);
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
      final hr = _vtable.get_CurrentNativeWindowHandle.asFunction<
          int Function(
              VTablePointer, Pointer<IntPtr> retVal)>()(ptr.value, retValuePtr);
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
              int Function(VTablePointer, Pointer<Pointer<Utf16>> retVal)>()(
          ptr.value, retValuePtr);
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
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr.value, retValuePtr);
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
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr.value, retValuePtr);
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
              int Function(VTablePointer, Pointer<Pointer<Utf16>> retVal)>()(
          ptr.value, retValuePtr);
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
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr.value, retValuePtr);
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
              int Function(VTablePointer, Pointer<Pointer<Utf16>> retVal)>()(
          ptr.value, retValuePtr);
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
              .asFunction<int Function(VTablePointer, Pointer<RECT> retVal)>()(
          ptr.value, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.ref;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<VTablePointer> get currentLabeledBy {
    final retValuePtr = calloc<VTablePointer>();

    final hr = _vtable.get_CurrentLabeledBy.asFunction<
            int Function(VTablePointer, Pointer<VTablePointer> retVal)>()(
        ptr.value, retValuePtr);
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
              int Function(VTablePointer, Pointer<Pointer<Utf16>> retVal)>()(
          ptr.value, retValuePtr);
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
              int Function(VTablePointer, Pointer<Pointer<Utf16>> retVal)>()(
          ptr.value, retValuePtr);
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
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr.value, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<VTablePointer> get currentControllerFor {
    final retValuePtr = calloc<VTablePointer>();

    final hr = _vtable.get_CurrentControllerFor.asFunction<
            int Function(VTablePointer, Pointer<VTablePointer> retVal)>()(
        ptr.value, retValuePtr);
    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }

  Pointer<VTablePointer> get currentDescribedBy {
    final retValuePtr = calloc<VTablePointer>();

    final hr = _vtable.get_CurrentDescribedBy.asFunction<
            int Function(VTablePointer, Pointer<VTablePointer> retVal)>()(
        ptr.value, retValuePtr);
    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }

  Pointer<VTablePointer> get currentFlowsTo {
    final retValuePtr = calloc<VTablePointer>();

    final hr = _vtable.get_CurrentFlowsTo.asFunction<
            int Function(VTablePointer, Pointer<VTablePointer> retVal)>()(
        ptr.value, retValuePtr);
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
              int Function(VTablePointer, Pointer<Pointer<Utf16>> retVal)>()(
          ptr.value, retValuePtr);
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
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr.value, retValuePtr);
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
      final hr = _vtable.get_CachedControlType.asFunction<
          int Function(
              VTablePointer, Pointer<Uint32> retVal)>()(ptr.value, retValuePtr);
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
              int Function(VTablePointer, Pointer<Pointer<Utf16>> retVal)>()(
          ptr.value, retValuePtr);
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
              int Function(VTablePointer, Pointer<Pointer<Utf16>> retVal)>()(
          ptr.value, retValuePtr);
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
              int Function(VTablePointer, Pointer<Pointer<Utf16>> retVal)>()(
          ptr.value, retValuePtr);
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
              int Function(VTablePointer, Pointer<Pointer<Utf16>> retVal)>()(
          ptr.value, retValuePtr);
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
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr.value, retValuePtr);
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
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr.value, retValuePtr);
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
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr.value, retValuePtr);
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
              int Function(VTablePointer, Pointer<Pointer<Utf16>> retVal)>()(
          ptr.value, retValuePtr);
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
              int Function(VTablePointer, Pointer<Pointer<Utf16>> retVal)>()(
          ptr.value, retValuePtr);
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
              int Function(VTablePointer, Pointer<Pointer<Utf16>> retVal)>()(
          ptr.value, retValuePtr);
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
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr.value, retValuePtr);
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
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr.value, retValuePtr);
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
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr.value, retValuePtr);
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
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr.value, retValuePtr);
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
      final hr = _vtable.get_CachedNativeWindowHandle.asFunction<
          int Function(
              VTablePointer, Pointer<IntPtr> retVal)>()(ptr.value, retValuePtr);
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
              int Function(VTablePointer, Pointer<Pointer<Utf16>> retVal)>()(
          ptr.value, retValuePtr);
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
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr.value, retValuePtr);
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
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr.value, retValuePtr);
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
              int Function(VTablePointer, Pointer<Pointer<Utf16>> retVal)>()(
          ptr.value, retValuePtr);
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
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr.value, retValuePtr);
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
              int Function(VTablePointer, Pointer<Pointer<Utf16>> retVal)>()(
          ptr.value, retValuePtr);
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
              .asFunction<int Function(VTablePointer, Pointer<RECT> retVal)>()(
          ptr.value, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.ref;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<VTablePointer> get cachedLabeledBy {
    final retValuePtr = calloc<VTablePointer>();

    final hr = _vtable.get_CachedLabeledBy.asFunction<
            int Function(VTablePointer, Pointer<VTablePointer> retVal)>()(
        ptr.value, retValuePtr);
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
              int Function(VTablePointer, Pointer<Pointer<Utf16>> retVal)>()(
          ptr.value, retValuePtr);
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
              int Function(VTablePointer, Pointer<Pointer<Utf16>> retVal)>()(
          ptr.value, retValuePtr);
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
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr.value, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<VTablePointer> get cachedControllerFor {
    final retValuePtr = calloc<VTablePointer>();

    final hr = _vtable.get_CachedControllerFor.asFunction<
            int Function(VTablePointer, Pointer<VTablePointer> retVal)>()(
        ptr.value, retValuePtr);
    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }

  Pointer<VTablePointer> get cachedDescribedBy {
    final retValuePtr = calloc<VTablePointer>();

    final hr = _vtable.get_CachedDescribedBy.asFunction<
            int Function(VTablePointer, Pointer<VTablePointer> retVal)>()(
        ptr.value, retValuePtr);
    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }

  Pointer<VTablePointer> get cachedFlowsTo {
    final retValuePtr = calloc<VTablePointer>();

    final hr = _vtable.get_CachedFlowsTo.asFunction<
            int Function(VTablePointer, Pointer<VTablePointer> retVal)>()(
        ptr.value, retValuePtr);
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
              int Function(VTablePointer, Pointer<Pointer<Utf16>> retVal)>()(
          ptr.value, retValuePtr);
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
              int Function(VTablePointer, Pointer<POINT> clickable,
                  Pointer<Int32> gotClickable)>()(
          ptr.value, clickable, gotClickable);
}

/// @nodoc
base class IUIAutomationElementVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<NativeFunction<Int32 Function(VTablePointer)>> SetFocus;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Pointer<SAFEARRAY>> runtimeId)>>
      GetRuntimeId;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Int32 scope,
              Pointer<VTablePointer> condition,
              Pointer<Pointer<VTablePointer>> found)>> FindFirst;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Int32 scope,
              Pointer<VTablePointer> condition,
              Pointer<Pointer<VTablePointer>> found)>> FindAll;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Int32 scope,
              Pointer<VTablePointer> condition,
              Pointer<VTablePointer> cacheRequest,
              Pointer<Pointer<VTablePointer>> found)>> FindFirstBuildCache;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Int32 scope,
              Pointer<VTablePointer> condition,
              Pointer<VTablePointer> cacheRequest,
              Pointer<Pointer<VTablePointer>> found)>> FindAllBuildCache;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> cacheRequest,
                  Pointer<Pointer<VTablePointer>> updatedElement)>>
      BuildUpdatedCache;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Uint32 propertyId, Pointer<VARIANT> retVal)>>
      GetCurrentPropertyValue;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Uint32 propertyId,
              Int32 ignoreDefaultValue,
              Pointer<VARIANT> retVal)>> GetCurrentPropertyValueEx;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Uint32 propertyId, Pointer<VARIANT> retVal)>>
      GetCachedPropertyValue;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Uint32 propertyId,
              Int32 ignoreDefaultValue,
              Pointer<VARIANT> retVal)>> GetCachedPropertyValueEx;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Uint32 patternId, Pointer<GUID> riid,
              Pointer<Pointer> patternObject)>> GetCurrentPatternAs;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Uint32 patternId, Pointer<GUID> riid,
              Pointer<Pointer> patternObject)>> GetCachedPatternAs;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Uint32 patternId,
                  Pointer<Pointer<VTablePointer>> patternObject)>>
      GetCurrentPattern;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Uint32 patternId,
              Pointer<Pointer<VTablePointer>> patternObject)>> GetCachedPattern;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Pointer<VTablePointer>> parent)>>
      GetCachedParent;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Pointer<VTablePointer>> children)>>
      GetCachedChildren;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CurrentProcessId;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Uint32> retVal)>>
      get_CurrentControlType;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Pointer<Utf16>> retVal)>>
      get_CurrentLocalizedControlType;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Pointer<Utf16>> retVal)>>
      get_CurrentName;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Pointer<Utf16>> retVal)>>
      get_CurrentAcceleratorKey;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Pointer<Utf16>> retVal)>>
      get_CurrentAccessKey;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CurrentHasKeyboardFocus;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CurrentIsKeyboardFocusable;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CurrentIsEnabled;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Pointer<Utf16>> retVal)>>
      get_CurrentAutomationId;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Pointer<Utf16>> retVal)>>
      get_CurrentClassName;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Pointer<Utf16>> retVal)>>
      get_CurrentHelpText;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CurrentCulture;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CurrentIsControlElement;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CurrentIsContentElement;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CurrentIsPassword;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<IntPtr> retVal)>>
      get_CurrentNativeWindowHandle;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Pointer<Utf16>> retVal)>>
      get_CurrentItemType;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CurrentIsOffscreen;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CurrentOrientation;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Pointer<Utf16>> retVal)>>
      get_CurrentFrameworkId;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CurrentIsRequiredForForm;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Pointer<Utf16>> retVal)>>
      get_CurrentItemStatus;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<RECT> retVal)>>
      get_CurrentBoundingRectangle;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> retVal)>>
      get_CurrentLabeledBy;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Pointer<Utf16>> retVal)>>
      get_CurrentAriaRole;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Pointer<Utf16>> retVal)>>
      get_CurrentAriaProperties;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CurrentIsDataValidForForm;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> retVal)>>
      get_CurrentControllerFor;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> retVal)>>
      get_CurrentDescribedBy;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> retVal)>>
      get_CurrentFlowsTo;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Pointer<Utf16>> retVal)>>
      get_CurrentProviderDescription;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CachedProcessId;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Uint32> retVal)>>
      get_CachedControlType;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Pointer<Utf16>> retVal)>>
      get_CachedLocalizedControlType;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Pointer<Utf16>> retVal)>>
      get_CachedName;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Pointer<Utf16>> retVal)>>
      get_CachedAcceleratorKey;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Pointer<Utf16>> retVal)>>
      get_CachedAccessKey;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CachedHasKeyboardFocus;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CachedIsKeyboardFocusable;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CachedIsEnabled;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Pointer<Utf16>> retVal)>>
      get_CachedAutomationId;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Pointer<Utf16>> retVal)>>
      get_CachedClassName;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Pointer<Utf16>> retVal)>>
      get_CachedHelpText;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CachedCulture;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CachedIsControlElement;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CachedIsContentElement;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CachedIsPassword;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<IntPtr> retVal)>>
      get_CachedNativeWindowHandle;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Pointer<Utf16>> retVal)>>
      get_CachedItemType;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CachedIsOffscreen;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CachedOrientation;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Pointer<Utf16>> retVal)>>
      get_CachedFrameworkId;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CachedIsRequiredForForm;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Pointer<Utf16>> retVal)>>
      get_CachedItemStatus;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<RECT> retVal)>>
      get_CachedBoundingRectangle;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> retVal)>>
      get_CachedLabeledBy;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Pointer<Utf16>> retVal)>>
      get_CachedAriaRole;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Pointer<Utf16>> retVal)>>
      get_CachedAriaProperties;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CachedIsDataValidForForm;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> retVal)>>
      get_CachedControllerFor;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> retVal)>>
      get_CachedDescribedBy;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> retVal)>>
      get_CachedFlowsTo;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Pointer<Utf16>> retVal)>>
      get_CachedProviderDescription;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<POINT> clickable,
              Pointer<Int32> gotClickable)>> GetClickablePoint;
}
