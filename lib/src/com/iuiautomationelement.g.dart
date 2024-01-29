// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../extensions/iunknown.dart';
import '../guid.dart';
import '../structs.g.dart';
import '../types.dart';
import '../variant.dart';
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
      _vtable.SetFocus.asFunction<int Function(VTablePointer)>()(ptr);

  int getRuntimeId(Pointer<Pointer<SAFEARRAY>> runtimeId) =>
      _vtable.GetRuntimeId.asFunction<
          int Function(VTablePointer,
              Pointer<Pointer<SAFEARRAY>> runtimeId)>()(ptr, runtimeId);

  int findFirst(
          int scope, VTablePointer condition, Pointer<VTablePointer> found) =>
      _vtable.FindFirst.asFunction<
          int Function(VTablePointer, int scope, VTablePointer condition,
              Pointer<VTablePointer> found)>()(ptr, scope, condition, found);

  int findAll(
          int scope, VTablePointer condition, Pointer<VTablePointer> found) =>
      _vtable.FindAll.asFunction<
          int Function(VTablePointer, int scope, VTablePointer condition,
              Pointer<VTablePointer> found)>()(ptr, scope, condition, found);

  int findFirstBuildCache(int scope, VTablePointer condition,
          VTablePointer cacheRequest, Pointer<VTablePointer> found) =>
      _vtable.FindFirstBuildCache.asFunction<
              int Function(VTablePointer, int scope, VTablePointer condition,
                  VTablePointer cacheRequest, Pointer<VTablePointer> found)>()(
          ptr, scope, condition, cacheRequest, found);

  int findAllBuildCache(int scope, VTablePointer condition,
          VTablePointer cacheRequest, Pointer<VTablePointer> found) =>
      _vtable.FindAllBuildCache.asFunction<
              int Function(VTablePointer, int scope, VTablePointer condition,
                  VTablePointer cacheRequest, Pointer<VTablePointer> found)>()(
          ptr, scope, condition, cacheRequest, found);

  int buildUpdatedCache(
          VTablePointer cacheRequest, Pointer<VTablePointer> updatedElement) =>
      _vtable.BuildUpdatedCache.asFunction<
              int Function(VTablePointer, VTablePointer cacheRequest,
                  Pointer<VTablePointer> updatedElement)>()(
          ptr, cacheRequest, updatedElement);

  int getCurrentPropertyValue(int propertyId, Pointer<VARIANT> retVal) =>
      _vtable.GetCurrentPropertyValue.asFunction<
          int Function(VTablePointer, int propertyId,
              Pointer<VARIANT> retVal)>()(ptr, propertyId, retVal);

  int getCurrentPropertyValueEx(
          int propertyId, int ignoreDefaultValue, Pointer<VARIANT> retVal) =>
      _vtable.GetCurrentPropertyValueEx.asFunction<
              int Function(VTablePointer, int propertyId,
                  int ignoreDefaultValue, Pointer<VARIANT> retVal)>()(
          ptr, propertyId, ignoreDefaultValue, retVal);

  int getCachedPropertyValue(int propertyId, Pointer<VARIANT> retVal) =>
      _vtable.GetCachedPropertyValue.asFunction<
          int Function(VTablePointer, int propertyId,
              Pointer<VARIANT> retVal)>()(ptr, propertyId, retVal);

  int getCachedPropertyValueEx(
          int propertyId, int ignoreDefaultValue, Pointer<VARIANT> retVal) =>
      _vtable.GetCachedPropertyValueEx.asFunction<
              int Function(VTablePointer, int propertyId,
                  int ignoreDefaultValue, Pointer<VARIANT> retVal)>()(
          ptr, propertyId, ignoreDefaultValue, retVal);

  int getCurrentPatternAs(
          int patternId, Pointer<GUID> riid, Pointer<Pointer> patternObject) =>
      _vtable.GetCurrentPatternAs.asFunction<
              int Function(VTablePointer, int patternId, Pointer<GUID> riid,
                  Pointer<Pointer> patternObject)>()(
          ptr, patternId, riid, patternObject);

  int getCachedPatternAs(
          int patternId, Pointer<GUID> riid, Pointer<Pointer> patternObject) =>
      _vtable.GetCachedPatternAs.asFunction<
              int Function(VTablePointer, int patternId, Pointer<GUID> riid,
                  Pointer<Pointer> patternObject)>()(
          ptr, patternId, riid, patternObject);

  int getCurrentPattern(int patternId, Pointer<VTablePointer> patternObject) =>
      _vtable.GetCurrentPattern.asFunction<
              int Function(VTablePointer, int patternId,
                  Pointer<VTablePointer> patternObject)>()(
          ptr, patternId, patternObject);

  int getCachedPattern(int patternId, Pointer<VTablePointer> patternObject) =>
      _vtable.GetCachedPattern.asFunction<
              int Function(VTablePointer, int patternId,
                  Pointer<VTablePointer> patternObject)>()(
          ptr, patternId, patternObject);

  int getCachedParent(Pointer<VTablePointer> parent) =>
      _vtable.GetCachedParent.asFunction<
          int Function(
              VTablePointer, Pointer<VTablePointer> parent)>()(ptr, parent);

  int getCachedChildren(Pointer<VTablePointer> children) =>
      _vtable.GetCachedChildren.asFunction<
          int Function(
              VTablePointer, Pointer<VTablePointer> children)>()(ptr, children);

  int get_CurrentProcessId(Pointer<Int32> retVal) =>
      _vtable.get_CurrentProcessId
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr, retVal);

  int get_CurrentControlType(Pointer<Int32> retVal) =>
      _vtable.get_CurrentControlType
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr, retVal);

  int get_CurrentLocalizedControlType(Pointer<Pointer<Utf16>> retVal) =>
      _vtable.get_CurrentLocalizedControlType.asFunction<
          int Function(
              VTablePointer, Pointer<Pointer<Utf16>> retVal)>()(ptr, retVal);

  int get_CurrentName(Pointer<Pointer<Utf16>> retVal) =>
      _vtable.get_CurrentName.asFunction<
          int Function(
              VTablePointer, Pointer<Pointer<Utf16>> retVal)>()(ptr, retVal);

  int get_CurrentAcceleratorKey(Pointer<Pointer<Utf16>> retVal) =>
      _vtable.get_CurrentAcceleratorKey.asFunction<
          int Function(
              VTablePointer, Pointer<Pointer<Utf16>> retVal)>()(ptr, retVal);

  int get_CurrentAccessKey(Pointer<Pointer<Utf16>> retVal) =>
      _vtable.get_CurrentAccessKey.asFunction<
          int Function(
              VTablePointer, Pointer<Pointer<Utf16>> retVal)>()(ptr, retVal);

  int get_CurrentHasKeyboardFocus(Pointer<Int32> retVal) =>
      _vtable.get_CurrentHasKeyboardFocus
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr, retVal);

  int get_CurrentIsKeyboardFocusable(Pointer<Int32> retVal) =>
      _vtable.get_CurrentIsKeyboardFocusable
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr, retVal);

  int get_CurrentIsEnabled(Pointer<Int32> retVal) =>
      _vtable.get_CurrentIsEnabled
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr, retVal);

  int get_CurrentAutomationId(Pointer<Pointer<Utf16>> retVal) =>
      _vtable.get_CurrentAutomationId.asFunction<
          int Function(
              VTablePointer, Pointer<Pointer<Utf16>> retVal)>()(ptr, retVal);

  int get_CurrentClassName(Pointer<Pointer<Utf16>> retVal) =>
      _vtable.get_CurrentClassName.asFunction<
          int Function(
              VTablePointer, Pointer<Pointer<Utf16>> retVal)>()(ptr, retVal);

  int get_CurrentHelpText(Pointer<Pointer<Utf16>> retVal) =>
      _vtable.get_CurrentHelpText.asFunction<
          int Function(
              VTablePointer, Pointer<Pointer<Utf16>> retVal)>()(ptr, retVal);

  int get_CurrentCulture(Pointer<Int32> retVal) => _vtable.get_CurrentCulture
          .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
      ptr, retVal);

  int get_CurrentIsControlElement(Pointer<Int32> retVal) =>
      _vtable.get_CurrentIsControlElement
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr, retVal);

  int get_CurrentIsContentElement(Pointer<Int32> retVal) =>
      _vtable.get_CurrentIsContentElement
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr, retVal);

  int get_CurrentIsPassword(Pointer<Int32> retVal) =>
      _vtable.get_CurrentIsPassword
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr, retVal);

  int get_CurrentNativeWindowHandle(Pointer<IntPtr> retVal) => _vtable
          .get_CurrentNativeWindowHandle
          .asFunction<int Function(VTablePointer, Pointer<IntPtr> retVal)>()(
      ptr, retVal);

  int get_CurrentItemType(Pointer<Pointer<Utf16>> retVal) =>
      _vtable.get_CurrentItemType.asFunction<
          int Function(
              VTablePointer, Pointer<Pointer<Utf16>> retVal)>()(ptr, retVal);

  int get_CurrentIsOffscreen(Pointer<Int32> retVal) =>
      _vtable.get_CurrentIsOffscreen
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr, retVal);

  int get_CurrentOrientation(Pointer<Int32> retVal) =>
      _vtable.get_CurrentOrientation
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr, retVal);

  int get_CurrentFrameworkId(Pointer<Pointer<Utf16>> retVal) =>
      _vtable.get_CurrentFrameworkId.asFunction<
          int Function(
              VTablePointer, Pointer<Pointer<Utf16>> retVal)>()(ptr, retVal);

  int get_CurrentIsRequiredForForm(Pointer<Int32> retVal) =>
      _vtable.get_CurrentIsRequiredForForm
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr, retVal);

  int get_CurrentItemStatus(Pointer<Pointer<Utf16>> retVal) =>
      _vtable.get_CurrentItemStatus.asFunction<
          int Function(
              VTablePointer, Pointer<Pointer<Utf16>> retVal)>()(ptr, retVal);

  int get_CurrentBoundingRectangle(Pointer<RECT> retVal) =>
      _vtable.get_CurrentBoundingRectangle
              .asFunction<int Function(VTablePointer, Pointer<RECT> retVal)>()(
          ptr, retVal);

  int get_CurrentLabeledBy(Pointer<VTablePointer> retVal) =>
      _vtable.get_CurrentLabeledBy.asFunction<
          int Function(
              VTablePointer, Pointer<VTablePointer> retVal)>()(ptr, retVal);

  int get_CurrentAriaRole(Pointer<Pointer<Utf16>> retVal) =>
      _vtable.get_CurrentAriaRole.asFunction<
          int Function(
              VTablePointer, Pointer<Pointer<Utf16>> retVal)>()(ptr, retVal);

  int get_CurrentAriaProperties(Pointer<Pointer<Utf16>> retVal) =>
      _vtable.get_CurrentAriaProperties.asFunction<
          int Function(
              VTablePointer, Pointer<Pointer<Utf16>> retVal)>()(ptr, retVal);

  int get_CurrentIsDataValidForForm(Pointer<Int32> retVal) =>
      _vtable.get_CurrentIsDataValidForForm
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr, retVal);

  int get_CurrentControllerFor(Pointer<VTablePointer> retVal) =>
      _vtable.get_CurrentControllerFor.asFunction<
          int Function(
              VTablePointer, Pointer<VTablePointer> retVal)>()(ptr, retVal);

  int get_CurrentDescribedBy(Pointer<VTablePointer> retVal) =>
      _vtable.get_CurrentDescribedBy.asFunction<
          int Function(
              VTablePointer, Pointer<VTablePointer> retVal)>()(ptr, retVal);

  int get_CurrentFlowsTo(Pointer<VTablePointer> retVal) =>
      _vtable.get_CurrentFlowsTo.asFunction<
          int Function(
              VTablePointer, Pointer<VTablePointer> retVal)>()(ptr, retVal);

  int get_CurrentProviderDescription(Pointer<Pointer<Utf16>> retVal) =>
      _vtable.get_CurrentProviderDescription.asFunction<
          int Function(
              VTablePointer, Pointer<Pointer<Utf16>> retVal)>()(ptr, retVal);

  int get_CachedProcessId(Pointer<Int32> retVal) => _vtable.get_CachedProcessId
          .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
      ptr, retVal);

  int get_CachedControlType(Pointer<Int32> retVal) =>
      _vtable.get_CachedControlType
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr, retVal);

  int get_CachedLocalizedControlType(Pointer<Pointer<Utf16>> retVal) =>
      _vtable.get_CachedLocalizedControlType.asFunction<
          int Function(
              VTablePointer, Pointer<Pointer<Utf16>> retVal)>()(ptr, retVal);

  int get_CachedName(Pointer<Pointer<Utf16>> retVal) =>
      _vtable.get_CachedName.asFunction<
          int Function(
              VTablePointer, Pointer<Pointer<Utf16>> retVal)>()(ptr, retVal);

  int get_CachedAcceleratorKey(Pointer<Pointer<Utf16>> retVal) =>
      _vtable.get_CachedAcceleratorKey.asFunction<
          int Function(
              VTablePointer, Pointer<Pointer<Utf16>> retVal)>()(ptr, retVal);

  int get_CachedAccessKey(Pointer<Pointer<Utf16>> retVal) =>
      _vtable.get_CachedAccessKey.asFunction<
          int Function(
              VTablePointer, Pointer<Pointer<Utf16>> retVal)>()(ptr, retVal);

  int get_CachedHasKeyboardFocus(Pointer<Int32> retVal) =>
      _vtable.get_CachedHasKeyboardFocus
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr, retVal);

  int get_CachedIsKeyboardFocusable(Pointer<Int32> retVal) =>
      _vtable.get_CachedIsKeyboardFocusable
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr, retVal);

  int get_CachedIsEnabled(Pointer<Int32> retVal) => _vtable.get_CachedIsEnabled
          .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
      ptr, retVal);

  int get_CachedAutomationId(Pointer<Pointer<Utf16>> retVal) =>
      _vtable.get_CachedAutomationId.asFunction<
          int Function(
              VTablePointer, Pointer<Pointer<Utf16>> retVal)>()(ptr, retVal);

  int get_CachedClassName(Pointer<Pointer<Utf16>> retVal) =>
      _vtable.get_CachedClassName.asFunction<
          int Function(
              VTablePointer, Pointer<Pointer<Utf16>> retVal)>()(ptr, retVal);

  int get_CachedHelpText(Pointer<Pointer<Utf16>> retVal) =>
      _vtable.get_CachedHelpText.asFunction<
          int Function(
              VTablePointer, Pointer<Pointer<Utf16>> retVal)>()(ptr, retVal);

  int get_CachedCulture(Pointer<Int32> retVal) => _vtable.get_CachedCulture
          .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
      ptr, retVal);

  int get_CachedIsControlElement(Pointer<Int32> retVal) =>
      _vtable.get_CachedIsControlElement
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr, retVal);

  int get_CachedIsContentElement(Pointer<Int32> retVal) =>
      _vtable.get_CachedIsContentElement
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr, retVal);

  int get_CachedIsPassword(Pointer<Int32> retVal) =>
      _vtable.get_CachedIsPassword
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr, retVal);

  int get_CachedNativeWindowHandle(Pointer<IntPtr> retVal) => _vtable
          .get_CachedNativeWindowHandle
          .asFunction<int Function(VTablePointer, Pointer<IntPtr> retVal)>()(
      ptr, retVal);

  int get_CachedItemType(Pointer<Pointer<Utf16>> retVal) =>
      _vtable.get_CachedItemType.asFunction<
          int Function(
              VTablePointer, Pointer<Pointer<Utf16>> retVal)>()(ptr, retVal);

  int get_CachedIsOffscreen(Pointer<Int32> retVal) =>
      _vtable.get_CachedIsOffscreen
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr, retVal);

  int get_CachedOrientation(Pointer<Int32> retVal) =>
      _vtable.get_CachedOrientation
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr, retVal);

  int get_CachedFrameworkId(Pointer<Pointer<Utf16>> retVal) =>
      _vtable.get_CachedFrameworkId.asFunction<
          int Function(
              VTablePointer, Pointer<Pointer<Utf16>> retVal)>()(ptr, retVal);

  int get_CachedIsRequiredForForm(Pointer<Int32> retVal) =>
      _vtable.get_CachedIsRequiredForForm
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr, retVal);

  int get_CachedItemStatus(Pointer<Pointer<Utf16>> retVal) =>
      _vtable.get_CachedItemStatus.asFunction<
          int Function(
              VTablePointer, Pointer<Pointer<Utf16>> retVal)>()(ptr, retVal);

  int get_CachedBoundingRectangle(Pointer<RECT> retVal) =>
      _vtable.get_CachedBoundingRectangle
              .asFunction<int Function(VTablePointer, Pointer<RECT> retVal)>()(
          ptr, retVal);

  int get_CachedLabeledBy(Pointer<VTablePointer> retVal) =>
      _vtable.get_CachedLabeledBy.asFunction<
          int Function(
              VTablePointer, Pointer<VTablePointer> retVal)>()(ptr, retVal);

  int get_CachedAriaRole(Pointer<Pointer<Utf16>> retVal) =>
      _vtable.get_CachedAriaRole.asFunction<
          int Function(
              VTablePointer, Pointer<Pointer<Utf16>> retVal)>()(ptr, retVal);

  int get_CachedAriaProperties(Pointer<Pointer<Utf16>> retVal) =>
      _vtable.get_CachedAriaProperties.asFunction<
          int Function(
              VTablePointer, Pointer<Pointer<Utf16>> retVal)>()(ptr, retVal);

  int get_CachedIsDataValidForForm(Pointer<Int32> retVal) =>
      _vtable.get_CachedIsDataValidForForm
              .asFunction<int Function(VTablePointer, Pointer<Int32> retVal)>()(
          ptr, retVal);

  int get_CachedControllerFor(Pointer<VTablePointer> retVal) =>
      _vtable.get_CachedControllerFor.asFunction<
          int Function(
              VTablePointer, Pointer<VTablePointer> retVal)>()(ptr, retVal);

  int get_CachedDescribedBy(Pointer<VTablePointer> retVal) =>
      _vtable.get_CachedDescribedBy.asFunction<
          int Function(
              VTablePointer, Pointer<VTablePointer> retVal)>()(ptr, retVal);

  int get_CachedFlowsTo(Pointer<VTablePointer> retVal) =>
      _vtable.get_CachedFlowsTo.asFunction<
          int Function(
              VTablePointer, Pointer<VTablePointer> retVal)>()(ptr, retVal);

  int get_CachedProviderDescription(Pointer<Pointer<Utf16>> retVal) =>
      _vtable.get_CachedProviderDescription.asFunction<
          int Function(
              VTablePointer, Pointer<Pointer<Utf16>> retVal)>()(ptr, retVal);

  int getClickablePoint(
          Pointer<POINT> clickable, Pointer<Int32> gotClickable) =>
      _vtable.GetClickablePoint.asFunction<
          int Function(VTablePointer, Pointer<POINT> clickable,
              Pointer<Int32> gotClickable)>()(ptr, clickable, gotClickable);
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
          Int32 Function(VTablePointer, Int32 scope, VTablePointer condition,
              Pointer<VTablePointer> found)>> FindFirst;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Int32 scope, VTablePointer condition,
              Pointer<VTablePointer> found)>> FindAll;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Int32 scope,
              VTablePointer condition,
              VTablePointer cacheRequest,
              Pointer<VTablePointer> found)>> FindFirstBuildCache;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Int32 scope,
              VTablePointer condition,
              VTablePointer cacheRequest,
              Pointer<VTablePointer> found)>> FindAllBuildCache;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, VTablePointer cacheRequest,
              Pointer<VTablePointer> updatedElement)>> BuildUpdatedCache;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Int32 propertyId, Pointer<VARIANT> retVal)>>
      GetCurrentPropertyValue;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Int32 propertyId,
              Int32 ignoreDefaultValue,
              Pointer<VARIANT> retVal)>> GetCurrentPropertyValueEx;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Int32 propertyId, Pointer<VARIANT> retVal)>>
      GetCachedPropertyValue;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Int32 propertyId,
              Int32 ignoreDefaultValue,
              Pointer<VARIANT> retVal)>> GetCachedPropertyValueEx;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Int32 patternId, Pointer<GUID> riid,
              Pointer<Pointer> patternObject)>> GetCurrentPatternAs;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Int32 patternId, Pointer<GUID> riid,
              Pointer<Pointer> patternObject)>> GetCachedPatternAs;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Int32 patternId,
              Pointer<VTablePointer> patternObject)>> GetCurrentPattern;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Int32 patternId,
              Pointer<VTablePointer> patternObject)>> GetCachedPattern;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> parent)>>
      GetCachedParent;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> children)>>
      GetCachedChildren;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
      get_CurrentProcessId;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
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
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> retVal)>>
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
