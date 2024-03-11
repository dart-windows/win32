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
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationelement>.
///
/// {@category com}
class IUIAutomationElement extends IUnknown {
  IUIAutomationElement(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationElementVtbl>().ref;

  final IUIAutomationElementVtbl _vtable;

  factory IUIAutomationElement.from(IUnknown interface) =>
      IUIAutomationElement(interface.toInterface(IID_IUIAutomationElement));

  /// Sets the keyboard focus to this UI Automation element.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-setfocus>.
  int setFocus() =>
      _vtable.SetFocus.asFunction<int Function(VTablePointer lpVtbl)>()(ptr);

  /// Retrieves the unique identifier assigned to the UI element.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-getruntimeid>.
  int getRuntimeId(Pointer<Pointer<SAFEARRAY>> runtimeId) =>
      _vtable.GetRuntimeId.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<SAFEARRAY>> runtimeId)>()(ptr, runtimeId);

  /// Retrieves the first child or descendant element that matches the specified
  /// condition.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-findfirst>.
  int findFirst(
          int scope, VTablePointer condition, Pointer<VTablePointer> found) =>
      _vtable.FindFirst.asFunction<
          int Function(VTablePointer lpVtbl, int scope, VTablePointer condition,
              Pointer<VTablePointer> found)>()(ptr, scope, condition, found);

  /// Returns all UI Automation elements that satisfy the specified condition.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-findall>.
  int findAll(
          int scope, VTablePointer condition, Pointer<VTablePointer> found) =>
      _vtable.FindAll.asFunction<
          int Function(VTablePointer lpVtbl, int scope, VTablePointer condition,
              Pointer<VTablePointer> found)>()(ptr, scope, condition, found);

  /// Retrieves the first child or descendant element that matches the specified
  /// condition, prefetches the requested properties and control patterns, and
  /// stores the prefetched items in the cache.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-findfirstbuildcache>.
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

  /// Returns all UI Automation elements that satisfy the specified condition,
  /// prefetches the requested properties and control patterns, and stores the
  /// prefetched items in the cache.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-findallbuildcache>.
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

  /// Retrieves a new UI Automation element with an updated cache.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-buildupdatedcache>.
  int buildUpdatedCache(
          VTablePointer cacheRequest, Pointer<VTablePointer> updatedElement) =>
      _vtable.BuildUpdatedCache.asFunction<
              int Function(VTablePointer lpVtbl, VTablePointer cacheRequest,
                  Pointer<VTablePointer> updatedElement)>()(
          ptr, cacheRequest, updatedElement);

  /// Retrieves the current value of a property for this UI Automation element.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-getcurrentpropertyvalue>.
  int getCurrentPropertyValue(int propertyId, Pointer<VARIANT> retVal) =>
      _vtable.GetCurrentPropertyValue.asFunction<
          int Function(VTablePointer lpVtbl, int propertyId,
              Pointer<VARIANT> retVal)>()(ptr, propertyId, retVal);

  /// Retrieves a property value for this UI Automation element, optionally
  /// ignoring any default value.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-getcurrentpropertyvalueex>.
  int getCurrentPropertyValueEx(
          int propertyId, int ignoreDefaultValue, Pointer<VARIANT> retVal) =>
      _vtable.GetCurrentPropertyValueEx.asFunction<
              int Function(VTablePointer lpVtbl, int propertyId,
                  int ignoreDefaultValue, Pointer<VARIANT> retVal)>()(
          ptr, propertyId, ignoreDefaultValue, retVal);

  /// Retrieves a property value from the cache for this UI Automation element.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-getcachedpropertyvalue>.
  int getCachedPropertyValue(int propertyId, Pointer<VARIANT> retVal) =>
      _vtable.GetCachedPropertyValue.asFunction<
          int Function(VTablePointer lpVtbl, int propertyId,
              Pointer<VARIANT> retVal)>()(ptr, propertyId, retVal);

  /// Retrieves a property value from the cache for this UI Automation element,
  /// optionally ignoring any default value.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-getcachedpropertyvalueex>.
  int getCachedPropertyValueEx(
          int propertyId, int ignoreDefaultValue, Pointer<VARIANT> retVal) =>
      _vtable.GetCachedPropertyValueEx.asFunction<
              int Function(VTablePointer lpVtbl, int propertyId,
                  int ignoreDefaultValue, Pointer<VARIANT> retVal)>()(
          ptr, propertyId, ignoreDefaultValue, retVal);

  /// Retrieves the control pattern interface of the specified pattern on this UI
  /// Automation element.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-getcurrentpatternas>.
  int getCurrentPatternAs(
          int patternId, Pointer<GUID> riid, Pointer<Pointer> patternObject) =>
      _vtable.GetCurrentPatternAs.asFunction<
              int Function(VTablePointer lpVtbl, int patternId,
                  Pointer<GUID> riid, Pointer<Pointer> patternObject)>()(
          ptr, patternId, riid, patternObject);

  /// Retrieves the control pattern interface of the specified pattern from the
  /// cache of this UI Automation element.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-getcachedpatternas>.
  int getCachedPatternAs(
          int patternId, Pointer<GUID> riid, Pointer<Pointer> patternObject) =>
      _vtable.GetCachedPatternAs.asFunction<
              int Function(VTablePointer lpVtbl, int patternId,
                  Pointer<GUID> riid, Pointer<Pointer> patternObject)>()(
          ptr, patternId, riid, patternObject);

  /// Retrieves the IUnknown interface of the specified control pattern on this UI
  /// Automation element.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-getcurrentpattern>.
  int getCurrentPattern(int patternId, Pointer<VTablePointer> patternObject) =>
      _vtable.GetCurrentPattern.asFunction<
              int Function(VTablePointer lpVtbl, int patternId,
                  Pointer<VTablePointer> patternObject)>()(
          ptr, patternId, patternObject);

  /// Retrieves from the cache the IUnknown interface of the specified control
  /// pattern of this UI Automation element.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-getcachedpattern>.
  int getCachedPattern(int patternId, Pointer<VTablePointer> patternObject) =>
      _vtable.GetCachedPattern.asFunction<
              int Function(VTablePointer lpVtbl, int patternId,
                  Pointer<VTablePointer> patternObject)>()(
          ptr, patternId, patternObject);

  /// Retrieves from the cache the parent of this UI Automation element.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-getcachedparent>.
  int getCachedParent(Pointer<VTablePointer> parent) =>
      _vtable.GetCachedParent.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> parent)>()(ptr, parent);

  /// Retrieves the cached child elements of this UI Automation element.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-getcachedchildren>.
  int getCachedChildren(Pointer<VTablePointer> children) =>
      _vtable.GetCachedChildren.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> children)>()(ptr, children);

  /// Retrieves the identifier of the process that hosts the element.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_currentprocessid>.
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

  /// Retrieves the control type of the element.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_currentcontroltype>.
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

  /// Retrieves a localized description of the control type of the element.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_currentlocalizedcontroltype>.
  Pointer<Utf16> get currentLocalizedControlType {
    final retVal = calloc<Pointer<Utf16>>();
    try {
      final hr = _vtable.get_CurrentLocalizedControlType.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<Utf16>> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Retrieves the name of the element.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_currentname>.
  Pointer<Utf16> get currentName {
    final retVal = calloc<Pointer<Utf16>>();
    try {
      final hr = _vtable.get_CurrentName.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<Utf16>> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Retrieves the accelerator key for the element.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_currentacceleratorkey>.
  Pointer<Utf16> get currentAcceleratorKey {
    final retVal = calloc<Pointer<Utf16>>();
    try {
      final hr = _vtable.get_CurrentAcceleratorKey.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<Utf16>> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Retrieves the access key character for the element.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_currentaccesskey>.
  Pointer<Utf16> get currentAccessKey {
    final retVal = calloc<Pointer<Utf16>>();
    try {
      final hr = _vtable.get_CurrentAccessKey.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<Utf16>> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Indicates whether the element has keyboard focus.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_currenthaskeyboardfocus>.
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

  /// Indicates whether the element can accept keyboard focus.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_currentiskeyboardfocusable>.
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

  /// Indicates whether the element is enabled.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_currentisenabled>.
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

  /// Retrieves the Microsoft UI Automation identifier of the element.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_currentautomationid>.
  Pointer<Utf16> get currentAutomationId {
    final retVal = calloc<Pointer<Utf16>>();
    try {
      final hr = _vtable.get_CurrentAutomationId.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<Utf16>> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Retrieves the class name of the element.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_currentclassname>.
  Pointer<Utf16> get currentClassName {
    final retVal = calloc<Pointer<Utf16>>();
    try {
      final hr = _vtable.get_CurrentClassName.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<Utf16>> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Retrieves the help text for the element.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_currenthelptext>.
  Pointer<Utf16> get currentHelpText {
    final retVal = calloc<Pointer<Utf16>>();
    try {
      final hr = _vtable.get_CurrentHelpText.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<Utf16>> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Retrieves the culture identifier for the element.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_currentculture>.
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

  /// Indicates whether the element is a control element.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_currentiscontrolelement>.
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

  /// Indicates whether the element is a content element.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_currentiscontentelement>.
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

  /// Indicates whether the element contains a disguised password.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_currentispassword>.
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

  /// Retrieves the window handle of the element.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_currentnativewindowhandle>.
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

  /// Retrieves a description of the type of UI item represented by the element.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_currentitemtype>.
  Pointer<Utf16> get currentItemType {
    final retVal = calloc<Pointer<Utf16>>();
    try {
      final hr = _vtable.get_CurrentItemType.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<Utf16>> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Indicates whether the element is off-screen.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_currentisoffscreen>.
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

  /// Retrieves a value that indicates the orientation of the element.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_currentorientation>.
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

  /// Retrieves the name of the underlying UI framework.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_currentframeworkid>.
  Pointer<Utf16> get currentFrameworkId {
    final retVal = calloc<Pointer<Utf16>>();
    try {
      final hr = _vtable.get_CurrentFrameworkId.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<Utf16>> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Indicates whether the element is required to be filled out on a form.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_currentisrequiredforform>.
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

  /// Retrieves the description of the status of an item in an element.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_currentitemstatus>.
  Pointer<Utf16> get currentItemStatus {
    final retVal = calloc<Pointer<Utf16>>();
    try {
      final hr = _vtable.get_CurrentItemStatus.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<Utf16>> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Retrieves the coordinates of the rectangle that completely encloses the
  /// element.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_currentboundingrectangle>.
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

  /// Retrieves the element that contains the text label for this element.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_currentlabeledby>.
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

  /// Retrieves the Accessible Rich Internet Applications (ARIA) role of the
  /// element.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_currentariarole>.
  Pointer<Utf16> get currentAriaRole {
    final retVal = calloc<Pointer<Utf16>>();
    try {
      final hr = _vtable.get_CurrentAriaRole.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<Utf16>> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Retrieves the Accessible Rich Internet Applications (ARIA) properties of the
  /// element.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_currentariaproperties>.
  Pointer<Utf16> get currentAriaProperties {
    final retVal = calloc<Pointer<Utf16>>();
    try {
      final hr = _vtable.get_CurrentAriaProperties.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<Utf16>> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Indicates whether the element contains valid data for a form.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_currentisdatavalidforform>.
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

  /// Retrieves an array of elements for which this element serves as the
  /// controller.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_currentcontrollerfor>.
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

  /// Retrieves an array of elements that describe this element.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_currentdescribedby>.
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

  /// Retrieves an array of elements that indicates the reading order after the
  /// current element.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_currentflowsto>.
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

  /// Retrieves a description of the provider for this element.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_currentproviderdescription>.
  Pointer<Utf16> get currentProviderDescription {
    final retVal = calloc<Pointer<Utf16>>();
    try {
      final hr = _vtable.get_CurrentProviderDescription.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<Utf16>> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Retrieves the cached ID of the process that hosts the element.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_cachedprocessid>.
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

  /// Retrieves a cached value that indicates the control type of the element.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_cachedcontroltype>.
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

  /// Retrieves the cached localized description of the control type of the
  /// element.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_cachedlocalizedcontroltype>.
  Pointer<Utf16> get cachedLocalizedControlType {
    final retVal = calloc<Pointer<Utf16>>();
    try {
      final hr = _vtable.get_CachedLocalizedControlType.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<Utf16>> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Retrieves the cached name of the element.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_cachedname>.
  Pointer<Utf16> get cachedName {
    final retVal = calloc<Pointer<Utf16>>();
    try {
      final hr = _vtable.get_CachedName.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<Utf16>> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Retrieves the cached accelerator key for the element.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_cachedacceleratorkey>.
  Pointer<Utf16> get cachedAcceleratorKey {
    final retVal = calloc<Pointer<Utf16>>();
    try {
      final hr = _vtable.get_CachedAcceleratorKey.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<Utf16>> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Retrieves the cached access key character for the element.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_cachedaccesskey>.
  Pointer<Utf16> get cachedAccessKey {
    final retVal = calloc<Pointer<Utf16>>();
    try {
      final hr = _vtable.get_CachedAccessKey.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<Utf16>> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// A cached value that indicates whether the element has keyboard focus.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_cachedhaskeyboardfocus>.
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

  /// Retrieves a cached value that indicates whether the element can accept
  /// keyboard focus.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_cachediskeyboardfocusable>.
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

  /// Retrieves a cached value that indicates whether the element is enabled.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_cachedisenabled>.
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

  /// Retrieves the cached Microsoft UI Automation identifier of the element.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_cachedautomationid>.
  Pointer<Utf16> get cachedAutomationId {
    final retVal = calloc<Pointer<Utf16>>();
    try {
      final hr = _vtable.get_CachedAutomationId.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<Utf16>> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Retrieves the cached class name of the element.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_cachedclassname>.
  Pointer<Utf16> get cachedClassName {
    final retVal = calloc<Pointer<Utf16>>();
    try {
      final hr = _vtable.get_CachedClassName.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<Utf16>> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Retrieves the cached help text for the element.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_cachedhelptext>.
  Pointer<Utf16> get cachedHelpText {
    final retVal = calloc<Pointer<Utf16>>();
    try {
      final hr = _vtable.get_CachedHelpText.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<Utf16>> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Retrieves a cached value that indicates the culture associated with the
  /// element.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_cachedculture>.
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

  /// Retrieves a cached value that indicates whether the element is a control
  /// element.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_cachediscontrolelement>.
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

  /// A cached value that indicates whether the element is a content element.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_cachediscontentelement>.
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

  /// Retrieves a cached value that indicates whether the element contains a
  /// disguised password.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_cachedispassword>.
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

  /// Retrieves the cached window handle of the element.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_cachednativewindowhandle>.
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

  /// Retrieves a cached string that describes the type of item represented by the
  /// element.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_cacheditemtype>.
  Pointer<Utf16> get cachedItemType {
    final retVal = calloc<Pointer<Utf16>>();
    try {
      final hr = _vtable.get_CachedItemType.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<Utf16>> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Retrieves a cached value that indicates whether the element is off-screen.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_cachedisoffscreen>.
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

  /// Retrieves a cached value that indicates the orientation of the element.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_cachedorientation>.
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

  /// Retrieves the cached name of the underlying UI framework associated with the
  /// element.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_cachedframeworkid>.
  Pointer<Utf16> get cachedFrameworkId {
    final retVal = calloc<Pointer<Utf16>>();
    try {
      final hr = _vtable.get_CachedFrameworkId.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<Utf16>> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Retrieves a cached value that indicates whether the element is required to
  /// be filled out on a form.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_cachedisrequiredforform>.
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

  /// Retrieves a cached description of the status of an item within an element.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_cacheditemstatus>.
  Pointer<Utf16> get cachedItemStatus {
    final retVal = calloc<Pointer<Utf16>>();
    try {
      final hr = _vtable.get_CachedItemStatus.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<Utf16>> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Retrieves the cached coordinates of the rectangle that completely encloses
  /// the element.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_cachedboundingrectangle>.
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

  /// Retrieves the cached element that contains the text label for this element.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_cachedlabeledby>.
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

  /// Retrieves the cached Accessible Rich Internet Applications (ARIA) role of
  /// the element.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_cachedariarole>.
  Pointer<Utf16> get cachedAriaRole {
    final retVal = calloc<Pointer<Utf16>>();
    try {
      final hr = _vtable.get_CachedAriaRole.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<Utf16>> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Retrieves the cached Accessible Rich Internet Applications (ARIA) properties
  /// of the element.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_cachedariaproperties>.
  Pointer<Utf16> get cachedAriaProperties {
    final retVal = calloc<Pointer<Utf16>>();
    try {
      final hr = _vtable.get_CachedAriaProperties.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<Utf16>> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Retrieves a cached value that indicates whether the element contains valid
  /// data for the form.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_cachedisdatavalidforform>.
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

  /// Retrieves a cached array of UI Automation elements for which this element
  /// serves as the controller.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_cachedcontrollerfor>.
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

  /// Retrieves a cached array of elements that describe this element.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_cacheddescribedby>.
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

  /// Retrieves a cached array of elements that indicate the reading order after
  /// the current element.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_cachedflowsto>.
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

  /// Retrieves a cached description of the provider for this element.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-get_cachedproviderdescription>.
  Pointer<Utf16> get cachedProviderDescription {
    final retVal = calloc<Pointer<Utf16>>();
    try {
      final hr = _vtable.get_CachedProviderDescription.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<Utf16>> retVal)>()(ptr, retVal);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = retVal.value;
      return retValue;
    } finally {
      free(retVal);
    }
  }

  /// Retrieves a point on the element that can be clicked.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement-getclickablepoint>.
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
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Pointer<Utf16>> retVal)>>
      get_CurrentLocalizedControlType;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Pointer<Utf16>> retVal)>>
      get_CurrentName;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Pointer<Utf16>> retVal)>>
      get_CurrentAcceleratorKey;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Pointer<Utf16>> retVal)>>
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
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Pointer<Utf16>> retVal)>>
      get_CurrentAutomationId;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Pointer<Utf16>> retVal)>>
      get_CurrentClassName;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Pointer<Utf16>> retVal)>>
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
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Pointer<Utf16>> retVal)>>
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
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Pointer<Utf16>> retVal)>>
      get_CurrentFrameworkId;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<BOOL> retVal)>>
      get_CurrentIsRequiredForForm;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Pointer<Utf16>> retVal)>>
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
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Pointer<Utf16>> retVal)>>
      get_CurrentAriaRole;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Pointer<Utf16>> retVal)>>
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
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Pointer<Utf16>> retVal)>>
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
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Pointer<Utf16>> retVal)>>
      get_CachedLocalizedControlType;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Pointer<Utf16>> retVal)>>
      get_CachedName;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Pointer<Utf16>> retVal)>>
      get_CachedAcceleratorKey;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Pointer<Utf16>> retVal)>>
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
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Pointer<Utf16>> retVal)>>
      get_CachedAutomationId;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Pointer<Utf16>> retVal)>>
      get_CachedClassName;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Pointer<Utf16>> retVal)>>
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
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Pointer<Utf16>> retVal)>>
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
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Pointer<Utf16>> retVal)>>
      get_CachedFrameworkId;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<BOOL> retVal)>>
      get_CachedIsRequiredForForm;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Pointer<Utf16>> retVal)>>
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
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Pointer<Utf16>> retVal)>>
      get_CachedAriaRole;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Pointer<Utf16>> retVal)>>
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
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Pointer<Utf16>> retVal)>>
      get_CachedProviderDescription;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<POINT> clickable,
              Pointer<BOOL> gotClickable)>> GetClickablePoint;
}
