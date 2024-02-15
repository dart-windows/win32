// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../exceptions.dart';
import '../extensions/iunknown.dart';
import '../guid.dart';
import '../macros.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IUIAutomationElement = '{d22108aa-8ac5-49a5-837b-37bbb3d7591e}';

/// Exposes methods and properties for a UI Automation element, which represents
/// a UI item.
///
/// {@category com}
class IUIAutomationElement extends IUnknown {
  IUIAutomationElement(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationElementVtbl>().ref;

  final IUIAutomationElementVtbl _vtable;

  factory IUIAutomationElement.from(IUnknown interface) =>
      IUIAutomationElement(interface.toInterface(IID_IUIAutomationElement));

  int setFocus() =>
      _vtable.SetFocus.asFunction<int Function(VTablePointer lpVtbl)>()(ptr);

  int getRuntimeId(Pointer<Pointer<SAFEARRAY>> runtimeId) =>
      _vtable.GetRuntimeId.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<SAFEARRAY>> runtimeId)>()(ptr, runtimeId);

  int findFirst(
          int scope, VTablePointer condition, Pointer<VTablePointer> found) =>
      _vtable.FindFirst.asFunction<
          int Function(VTablePointer lpVtbl, int scope, VTablePointer condition,
              Pointer<VTablePointer> found)>()(ptr, scope, condition, found);

  int findAll(
          int scope, VTablePointer condition, Pointer<VTablePointer> found) =>
      _vtable.FindAll.asFunction<
          int Function(VTablePointer lpVtbl, int scope, VTablePointer condition,
              Pointer<VTablePointer> found)>()(ptr, scope, condition, found);

  int findFirstBuildCache(int scope, VTablePointer condition,
          VTablePointer cacheRequest, Pointer<VTablePointer> found) =>
      _vtable.FindFirstBuildCache.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  int scope,
                  VTablePointer condition,
                  VTablePointer cacheRequest,
                  Pointer<VTablePointer> found)>()(
          ptr, scope, condition, cacheRequest, found);

  int findAllBuildCache(int scope, VTablePointer condition,
          VTablePointer cacheRequest, Pointer<VTablePointer> found) =>
      _vtable.FindAllBuildCache.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  int scope,
                  VTablePointer condition,
                  VTablePointer cacheRequest,
                  Pointer<VTablePointer> found)>()(
          ptr, scope, condition, cacheRequest, found);

  int buildUpdatedCache(
          VTablePointer cacheRequest, Pointer<VTablePointer> updatedElement) =>
      _vtable.BuildUpdatedCache.asFunction<
              int Function(VTablePointer lpVtbl, VTablePointer cacheRequest,
                  Pointer<VTablePointer> updatedElement)>()(
          ptr, cacheRequest, updatedElement);

  int getCurrentPropertyValue(int propertyId, Pointer<VARIANT> retVal) =>
      _vtable.GetCurrentPropertyValue.asFunction<
          int Function(VTablePointer lpVtbl, int propertyId,
              Pointer<VARIANT> retVal)>()(ptr, propertyId, retVal);

  int getCurrentPropertyValueEx(
          int propertyId, int ignoreDefaultValue, Pointer<VARIANT> retVal) =>
      _vtable.GetCurrentPropertyValueEx.asFunction<
              int Function(VTablePointer lpVtbl, int propertyId,
                  int ignoreDefaultValue, Pointer<VARIANT> retVal)>()(
          ptr, propertyId, ignoreDefaultValue, retVal);

  int getCachedPropertyValue(int propertyId, Pointer<VARIANT> retVal) =>
      _vtable.GetCachedPropertyValue.asFunction<
          int Function(VTablePointer lpVtbl, int propertyId,
              Pointer<VARIANT> retVal)>()(ptr, propertyId, retVal);

  int getCachedPropertyValueEx(
          int propertyId, int ignoreDefaultValue, Pointer<VARIANT> retVal) =>
      _vtable.GetCachedPropertyValueEx.asFunction<
              int Function(VTablePointer lpVtbl, int propertyId,
                  int ignoreDefaultValue, Pointer<VARIANT> retVal)>()(
          ptr, propertyId, ignoreDefaultValue, retVal);

  int getCurrentPatternAs(
          int patternId, Pointer<GUID> riid, Pointer<Pointer> patternObject) =>
      _vtable.GetCurrentPatternAs.asFunction<
              int Function(VTablePointer lpVtbl, int patternId,
                  Pointer<GUID> riid, Pointer<Pointer> patternObject)>()(
          ptr, patternId, riid, patternObject);

  int getCachedPatternAs(
          int patternId, Pointer<GUID> riid, Pointer<Pointer> patternObject) =>
      _vtable.GetCachedPatternAs.asFunction<
              int Function(VTablePointer lpVtbl, int patternId,
                  Pointer<GUID> riid, Pointer<Pointer> patternObject)>()(
          ptr, patternId, riid, patternObject);

  int getCurrentPattern(int patternId, Pointer<VTablePointer> patternObject) =>
      _vtable.GetCurrentPattern.asFunction<
              int Function(VTablePointer lpVtbl, int patternId,
                  Pointer<VTablePointer> patternObject)>()(
          ptr, patternId, patternObject);

  int getCachedPattern(int patternId, Pointer<VTablePointer> patternObject) =>
      _vtable.GetCachedPattern.asFunction<
              int Function(VTablePointer lpVtbl, int patternId,
                  Pointer<VTablePointer> patternObject)>()(
          ptr, patternId, patternObject);

  int getCachedParent(Pointer<VTablePointer> parent) =>
      _vtable.GetCachedParent.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> parent)>()(ptr, parent);

  int getCachedChildren(Pointer<VTablePointer> children) =>
      _vtable.GetCachedChildren.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> children)>()(ptr, children);

  int get currentProcessId {
    final retVal = calloc<Int32>();
    try {
      final hr = _vtable.get_CurrentProcessId.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  int get currentControlType {
    final retVal = calloc<Int32>();
    try {
      final hr = _vtable.get_CurrentControlType.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  BSTR get currentLocalizedControlType {
    final retVal = calloc<BSTR>();
    try {
      final hr = _vtable.get_CurrentLocalizedControlType.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<BSTR> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  BSTR get currentName {
    final retVal = calloc<BSTR>();
    try {
      final hr = _vtable.get_CurrentName.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<BSTR> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  BSTR get currentAcceleratorKey {
    final retVal = calloc<BSTR>();
    try {
      final hr = _vtable.get_CurrentAcceleratorKey.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<BSTR> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  BSTR get currentAccessKey {
    final retVal = calloc<BSTR>();
    try {
      final hr = _vtable.get_CurrentAccessKey.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<BSTR> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  int get currentHasKeyboardFocus {
    final retVal = calloc<BOOL>();
    try {
      final hr = _vtable.get_CurrentHasKeyboardFocus.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<BOOL> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  int get currentIsKeyboardFocusable {
    final retVal = calloc<BOOL>();
    try {
      final hr = _vtable.get_CurrentIsKeyboardFocusable.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<BOOL> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  int get currentIsEnabled {
    final retVal = calloc<BOOL>();
    try {
      final hr = _vtable.get_CurrentIsEnabled.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<BOOL> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  BSTR get currentAutomationId {
    final retVal = calloc<BSTR>();
    try {
      final hr = _vtable.get_CurrentAutomationId.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<BSTR> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  BSTR get currentClassName {
    final retVal = calloc<BSTR>();
    try {
      final hr = _vtable.get_CurrentClassName.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<BSTR> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  BSTR get currentHelpText {
    final retVal = calloc<BSTR>();
    try {
      final hr = _vtable.get_CurrentHelpText.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<BSTR> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  int get currentCulture {
    final retVal = calloc<Int32>();
    try {
      final hr = _vtable.get_CurrentCulture.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  int get currentIsControlElement {
    final retVal = calloc<BOOL>();
    try {
      final hr = _vtable.get_CurrentIsControlElement.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<BOOL> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  int get currentIsContentElement {
    final retVal = calloc<BOOL>();
    try {
      final hr = _vtable.get_CurrentIsContentElement.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<BOOL> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  int get currentIsPassword {
    final retVal = calloc<BOOL>();
    try {
      final hr = _vtable.get_CurrentIsPassword.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<BOOL> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  int get currentNativeWindowHandle {
    final retVal = calloc<HWND>();
    try {
      final hr = _vtable.get_CurrentNativeWindowHandle.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<HWND> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  BSTR get currentItemType {
    final retVal = calloc<BSTR>();
    try {
      final hr = _vtable.get_CurrentItemType.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<BSTR> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  int get currentIsOffscreen {
    final retVal = calloc<BOOL>();
    try {
      final hr = _vtable.get_CurrentIsOffscreen.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<BOOL> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  int get currentOrientation {
    final retVal = calloc<Int32>();
    try {
      final hr = _vtable.get_CurrentOrientation.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  BSTR get currentFrameworkId {
    final retVal = calloc<BSTR>();
    try {
      final hr = _vtable.get_CurrentFrameworkId.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<BSTR> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  int get currentIsRequiredForForm {
    final retVal = calloc<BOOL>();
    try {
      final hr = _vtable.get_CurrentIsRequiredForForm.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<BOOL> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  BSTR get currentItemStatus {
    final retVal = calloc<BSTR>();
    try {
      final hr = _vtable.get_CurrentItemStatus.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<BSTR> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  Pointer<RECT> get currentBoundingRectangle {
    final retVal = calloc<RECT>();
    final hr = _vtable.get_CurrentBoundingRectangle.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<RECT> retVal)>()(ptr, retVal);
    if (FAILED(hr)) {
      free(retVal);
      throw WindowsException(hr);
    }
    return retVal;
  }

  VTablePointer get currentLabeledBy {
    final retVal = calloc<VTablePointer>();
    try {
      final hr = _vtable.get_CurrentLabeledBy.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  BSTR get currentAriaRole {
    final retVal = calloc<BSTR>();
    try {
      final hr = _vtable.get_CurrentAriaRole.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<BSTR> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  BSTR get currentAriaProperties {
    final retVal = calloc<BSTR>();
    try {
      final hr = _vtable.get_CurrentAriaProperties.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<BSTR> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  int get currentIsDataValidForForm {
    final retVal = calloc<BOOL>();
    try {
      final hr = _vtable.get_CurrentIsDataValidForForm.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<BOOL> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  VTablePointer get currentControllerFor {
    final retVal = calloc<VTablePointer>();
    try {
      final hr = _vtable.get_CurrentControllerFor.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  VTablePointer get currentDescribedBy {
    final retVal = calloc<VTablePointer>();
    try {
      final hr = _vtable.get_CurrentDescribedBy.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  VTablePointer get currentFlowsTo {
    final retVal = calloc<VTablePointer>();
    try {
      final hr = _vtable.get_CurrentFlowsTo.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  BSTR get currentProviderDescription {
    final retVal = calloc<BSTR>();
    try {
      final hr = _vtable.get_CurrentProviderDescription.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<BSTR> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  int get cachedProcessId {
    final retVal = calloc<Int32>();
    try {
      final hr = _vtable.get_CachedProcessId.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  int get cachedControlType {
    final retVal = calloc<Int32>();
    try {
      final hr = _vtable.get_CachedControlType.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  BSTR get cachedLocalizedControlType {
    final retVal = calloc<BSTR>();
    try {
      final hr = _vtable.get_CachedLocalizedControlType.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<BSTR> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  BSTR get cachedName {
    final retVal = calloc<BSTR>();
    try {
      final hr = _vtable.get_CachedName.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<BSTR> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  BSTR get cachedAcceleratorKey {
    final retVal = calloc<BSTR>();
    try {
      final hr = _vtable.get_CachedAcceleratorKey.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<BSTR> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  BSTR get cachedAccessKey {
    final retVal = calloc<BSTR>();
    try {
      final hr = _vtable.get_CachedAccessKey.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<BSTR> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  int get cachedHasKeyboardFocus {
    final retVal = calloc<BOOL>();
    try {
      final hr = _vtable.get_CachedHasKeyboardFocus.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<BOOL> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  int get cachedIsKeyboardFocusable {
    final retVal = calloc<BOOL>();
    try {
      final hr = _vtable.get_CachedIsKeyboardFocusable.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<BOOL> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  int get cachedIsEnabled {
    final retVal = calloc<BOOL>();
    try {
      final hr = _vtable.get_CachedIsEnabled.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<BOOL> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  BSTR get cachedAutomationId {
    final retVal = calloc<BSTR>();
    try {
      final hr = _vtable.get_CachedAutomationId.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<BSTR> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  BSTR get cachedClassName {
    final retVal = calloc<BSTR>();
    try {
      final hr = _vtable.get_CachedClassName.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<BSTR> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  BSTR get cachedHelpText {
    final retVal = calloc<BSTR>();
    try {
      final hr = _vtable.get_CachedHelpText.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<BSTR> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  int get cachedCulture {
    final retVal = calloc<Int32>();
    try {
      final hr = _vtable.get_CachedCulture.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  int get cachedIsControlElement {
    final retVal = calloc<BOOL>();
    try {
      final hr = _vtable.get_CachedIsControlElement.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<BOOL> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  int get cachedIsContentElement {
    final retVal = calloc<BOOL>();
    try {
      final hr = _vtable.get_CachedIsContentElement.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<BOOL> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  int get cachedIsPassword {
    final retVal = calloc<BOOL>();
    try {
      final hr = _vtable.get_CachedIsPassword.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<BOOL> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  int get cachedNativeWindowHandle {
    final retVal = calloc<HWND>();
    try {
      final hr = _vtable.get_CachedNativeWindowHandle.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<HWND> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  BSTR get cachedItemType {
    final retVal = calloc<BSTR>();
    try {
      final hr = _vtable.get_CachedItemType.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<BSTR> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  int get cachedIsOffscreen {
    final retVal = calloc<BOOL>();
    try {
      final hr = _vtable.get_CachedIsOffscreen.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<BOOL> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  int get cachedOrientation {
    final retVal = calloc<Int32>();
    try {
      final hr = _vtable.get_CachedOrientation.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  BSTR get cachedFrameworkId {
    final retVal = calloc<BSTR>();
    try {
      final hr = _vtable.get_CachedFrameworkId.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<BSTR> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  int get cachedIsRequiredForForm {
    final retVal = calloc<BOOL>();
    try {
      final hr = _vtable.get_CachedIsRequiredForForm.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<BOOL> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  BSTR get cachedItemStatus {
    final retVal = calloc<BSTR>();
    try {
      final hr = _vtable.get_CachedItemStatus.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<BSTR> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  Pointer<RECT> get cachedBoundingRectangle {
    final retVal = calloc<RECT>();
    final hr = _vtable.get_CachedBoundingRectangle.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<RECT> retVal)>()(ptr, retVal);
    if (FAILED(hr)) {
      free(retVal);
      throw WindowsException(hr);
    }
    return retVal;
  }

  VTablePointer get cachedLabeledBy {
    final retVal = calloc<VTablePointer>();
    try {
      final hr = _vtable.get_CachedLabeledBy.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  BSTR get cachedAriaRole {
    final retVal = calloc<BSTR>();
    try {
      final hr = _vtable.get_CachedAriaRole.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<BSTR> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  BSTR get cachedAriaProperties {
    final retVal = calloc<BSTR>();
    try {
      final hr = _vtable.get_CachedAriaProperties.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<BSTR> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  int get cachedIsDataValidForForm {
    final retVal = calloc<BOOL>();
    try {
      final hr = _vtable.get_CachedIsDataValidForForm.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<BOOL> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  VTablePointer get cachedControllerFor {
    final retVal = calloc<VTablePointer>();
    try {
      final hr = _vtable.get_CachedControllerFor.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  VTablePointer get cachedDescribedBy {
    final retVal = calloc<VTablePointer>();
    try {
      final hr = _vtable.get_CachedDescribedBy.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  VTablePointer get cachedFlowsTo {
    final retVal = calloc<VTablePointer>();
    try {
      final hr = _vtable.get_CachedFlowsTo.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  BSTR get cachedProviderDescription {
    final retVal = calloc<BSTR>();
    try {
      final hr = _vtable.get_CachedProviderDescription.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<BSTR> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  int getClickablePoint(Pointer<POINT> clickable, Pointer<BOOL> gotClickable) =>
      _vtable.GetClickablePoint.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<POINT> clickable,
              Pointer<BOOL> gotClickable)>()(ptr, clickable, gotClickable);
}

/// @nodoc
base class IUIAutomationElementVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      SetFocus;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Pointer<SAFEARRAY>> runtimeId)>>
      GetRuntimeId;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Int32 scope,
              VTablePointer condition,
              Pointer<VTablePointer> found)>> FindFirst;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 scope,
              VTablePointer condition, Pointer<VTablePointer> found)>> FindAll;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Int32 scope,
              VTablePointer condition,
              VTablePointer cacheRequest,
              Pointer<VTablePointer> found)>> FindFirstBuildCache;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Int32 scope,
              VTablePointer condition,
              VTablePointer cacheRequest,
              Pointer<VTablePointer> found)>> FindAllBuildCache;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer cacheRequest,
              Pointer<VTablePointer> updatedElement)>> BuildUpdatedCache;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 propertyId,
              Pointer<VARIANT> retVal)>> GetCurrentPropertyValue;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Int32 propertyId,
              BOOL ignoreDefaultValue,
              Pointer<VARIANT> retVal)>> GetCurrentPropertyValueEx;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 propertyId,
              Pointer<VARIANT> retVal)>> GetCachedPropertyValue;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Int32 propertyId,
              BOOL ignoreDefaultValue,
              Pointer<VARIANT> retVal)>> GetCachedPropertyValueEx;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Int32 patternId,
              Pointer<GUID> riid,
              Pointer<Pointer> patternObject)>> GetCurrentPatternAs;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Int32 patternId,
              Pointer<GUID> riid,
              Pointer<Pointer> patternObject)>> GetCachedPatternAs;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 patternId,
              Pointer<VTablePointer> patternObject)>> GetCurrentPattern;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 patternId,
              Pointer<VTablePointer> patternObject)>> GetCachedPattern;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> parent)>>
      GetCachedParent;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> children)>>
      GetCachedChildren;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> retVal)>>
      get_CurrentProcessId;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> retVal)>>
      get_CurrentControlType;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<BSTR> retVal)>>
      get_CurrentLocalizedControlType;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<BSTR> retVal)>>
      get_CurrentName;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<BSTR> retVal)>>
      get_CurrentAcceleratorKey;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<BSTR> retVal)>>
      get_CurrentAccessKey;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<BOOL> retVal)>>
      get_CurrentHasKeyboardFocus;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<BOOL> retVal)>>
      get_CurrentIsKeyboardFocusable;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<BOOL> retVal)>>
      get_CurrentIsEnabled;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<BSTR> retVal)>>
      get_CurrentAutomationId;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<BSTR> retVal)>>
      get_CurrentClassName;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<BSTR> retVal)>>
      get_CurrentHelpText;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> retVal)>>
      get_CurrentCulture;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<BOOL> retVal)>>
      get_CurrentIsControlElement;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<BOOL> retVal)>>
      get_CurrentIsContentElement;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<BOOL> retVal)>>
      get_CurrentIsPassword;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<HWND> retVal)>>
      get_CurrentNativeWindowHandle;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<BSTR> retVal)>>
      get_CurrentItemType;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<BOOL> retVal)>>
      get_CurrentIsOffscreen;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> retVal)>>
      get_CurrentOrientation;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<BSTR> retVal)>>
      get_CurrentFrameworkId;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<BOOL> retVal)>>
      get_CurrentIsRequiredForForm;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<BSTR> retVal)>>
      get_CurrentItemStatus;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<RECT> retVal)>>
      get_CurrentBoundingRectangle;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> retVal)>>
      get_CurrentLabeledBy;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<BSTR> retVal)>>
      get_CurrentAriaRole;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<BSTR> retVal)>>
      get_CurrentAriaProperties;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<BOOL> retVal)>>
      get_CurrentIsDataValidForForm;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> retVal)>>
      get_CurrentControllerFor;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> retVal)>>
      get_CurrentDescribedBy;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> retVal)>>
      get_CurrentFlowsTo;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<BSTR> retVal)>>
      get_CurrentProviderDescription;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> retVal)>>
      get_CachedProcessId;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> retVal)>>
      get_CachedControlType;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<BSTR> retVal)>>
      get_CachedLocalizedControlType;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<BSTR> retVal)>>
      get_CachedName;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<BSTR> retVal)>>
      get_CachedAcceleratorKey;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<BSTR> retVal)>>
      get_CachedAccessKey;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<BOOL> retVal)>>
      get_CachedHasKeyboardFocus;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<BOOL> retVal)>>
      get_CachedIsKeyboardFocusable;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<BOOL> retVal)>>
      get_CachedIsEnabled;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<BSTR> retVal)>>
      get_CachedAutomationId;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<BSTR> retVal)>>
      get_CachedClassName;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<BSTR> retVal)>>
      get_CachedHelpText;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> retVal)>>
      get_CachedCulture;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<BOOL> retVal)>>
      get_CachedIsControlElement;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<BOOL> retVal)>>
      get_CachedIsContentElement;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<BOOL> retVal)>>
      get_CachedIsPassword;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<HWND> retVal)>>
      get_CachedNativeWindowHandle;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<BSTR> retVal)>>
      get_CachedItemType;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<BOOL> retVal)>>
      get_CachedIsOffscreen;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> retVal)>>
      get_CachedOrientation;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<BSTR> retVal)>>
      get_CachedFrameworkId;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<BOOL> retVal)>>
      get_CachedIsRequiredForForm;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<BSTR> retVal)>>
      get_CachedItemStatus;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<RECT> retVal)>>
      get_CachedBoundingRectangle;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> retVal)>>
      get_CachedLabeledBy;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<BSTR> retVal)>>
      get_CachedAriaRole;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<BSTR> retVal)>>
      get_CachedAriaProperties;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<BOOL> retVal)>>
      get_CachedIsDataValidForForm;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> retVal)>>
      get_CachedControllerFor;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> retVal)>>
      get_CachedDescribedBy;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> retVal)>>
      get_CachedFlowsTo;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<BSTR> retVal)>>
      get_CachedProviderDescription;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<POINT> clickable,
              Pointer<BOOL> gotClickable)>> GetClickablePoint;
}
