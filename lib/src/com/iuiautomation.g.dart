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
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomation>.
///
/// {@category com}
class IUIAutomation extends IUnknown {
  IUIAutomation(super.ptr) : _vtable = ptr.value.cast<IUIAutomationVtbl>().ref;

  final IUIAutomationVtbl _vtable;

  /// Creates a new instance of `IUIAutomation` from an existing [interface].
  ///
  /// This constructor invokes the [queryInterface] method to obtain a reference
  /// to the `IUIAutomation` interface with the provided interface.
  ///
  /// Throws a [WindowsException] if the `queryInterface` call fails.
  factory IUIAutomation.from(IUnknown interface) =>
      IUIAutomation(interface.toInterface(IID_IUIAutomation));

  /// Compares two UI Automation elements to determine whether they represent the
  /// same underlying UI element.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-compareelements>.
  int compareElements(
          VTablePointer el1, VTablePointer el2, Pointer<BOOL> areSame) =>
      _vtable.CompareElements.asFunction<
          int Function(
              VTablePointer lpVtbl,
              VTablePointer el1,
              VTablePointer el2,
              Pointer<BOOL> areSame)>()(ptr, el1, el2, areSame);

  /// Compares two integer arrays containing run-time identifiers (IDs) to
  /// determine whether their content is the same and they belong to the same UI
  /// element.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-compareruntimeids>.
  int compareRuntimeIds(Pointer<SAFEARRAY> runtimeId1,
          Pointer<SAFEARRAY> runtimeId2, Pointer<BOOL> areSame) =>
      _vtable.CompareRuntimeIds.asFunction<
          int Function(
              VTablePointer lpVtbl,
              Pointer<SAFEARRAY> runtimeId1,
              Pointer<SAFEARRAY> runtimeId2,
              Pointer<BOOL> areSame)>()(ptr, runtimeId1, runtimeId2, areSame);

  /// Retrieves the UI Automation element that represents the desktop.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-getrootelement>.
  int getRootElement(Pointer<VTablePointer> root) =>
      _vtable.GetRootElement.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<VTablePointer> root)>()(ptr, root);

  /// Retrieves a UI Automation element for the specified window.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-elementfromhandle>.
  int elementFromHandle(int hwnd, Pointer<VTablePointer> element) =>
      _vtable.ElementFromHandle.asFunction<
          int Function(VTablePointer lpVtbl, int hwnd,
              Pointer<VTablePointer> element)>()(ptr, hwnd, element);

  /// Retrieves the UI Automation element at the specified point on the desktop.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-elementfrompoint>.
  int elementFromPoint(POINT pt, Pointer<VTablePointer> element) =>
      _vtable.ElementFromPoint.asFunction<
          int Function(VTablePointer lpVtbl, POINT pt,
              Pointer<VTablePointer> element)>()(ptr, pt, element);

  /// Retrieves the UI Automation element that has the input focus.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-getfocusedelement>.
  int getFocusedElement(Pointer<VTablePointer> element) =>
      _vtable.GetFocusedElement.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> element)>()(ptr, element);

  /// Retrieves the UI Automation element that represents the desktop, prefetches
  /// the requested properties and control patterns, and stores the prefetched
  /// items in the cache.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-getrootelementbuildcache>.
  int getRootElementBuildCache(
          VTablePointer cacheRequest, Pointer<VTablePointer> root) =>
      _vtable.GetRootElementBuildCache.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer cacheRequest,
              Pointer<VTablePointer> root)>()(ptr, cacheRequest, root);

  /// Retrieves a UI Automation element for the specified window, prefetches the
  /// requested properties and control patterns, and stores the prefetched items
  /// in the cache.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-elementfromhandlebuildcache>.
  int elementFromHandleBuildCache(int hwnd, VTablePointer cacheRequest,
          Pointer<VTablePointer> element) =>
      _vtable.ElementFromHandleBuildCache.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  int hwnd,
                  VTablePointer cacheRequest,
                  Pointer<VTablePointer> element)>()(
          ptr, hwnd, cacheRequest, element);

  /// Retrieves the UI Automation element at the specified point on the desktop,
  /// prefetches the requested properties and control patterns, and stores the
  /// prefetched items in the cache.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-elementfrompointbuildcache>.
  int elementFromPointBuildCache(POINT pt, VTablePointer cacheRequest,
          Pointer<VTablePointer> element) =>
      _vtable.ElementFromPointBuildCache.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  POINT pt,
                  VTablePointer cacheRequest,
                  Pointer<VTablePointer> element)>()(
          ptr, pt, cacheRequest, element);

  /// Retrieves the UI Automation element that has the input focus, prefetches the
  /// requested properties and control patterns, and stores the prefetched items
  /// in the cache.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-getfocusedelementbuildcache>.
  int getFocusedElementBuildCache(
          VTablePointer cacheRequest, Pointer<VTablePointer> element) =>
      _vtable.GetFocusedElementBuildCache.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer cacheRequest,
              Pointer<VTablePointer> element)>()(ptr, cacheRequest, element);

  /// Retrieves a tree walker object that can be used to traverse the Microsoft UI
  /// Automation tree.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-createtreewalker>.
  int createTreeWalker(
          VTablePointer pCondition, Pointer<VTablePointer> walker) =>
      _vtable.CreateTreeWalker.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer pCondition,
              Pointer<VTablePointer> walker)>()(ptr, pCondition, walker);

  /// Retrieves an IUIAutomationTreeWalker interface used to discover control
  /// elements.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-get_controlviewwalker>.
  VTablePointer get controlViewWalker {
    final walker = calloc<VTablePointer>();
    try {
      final hr = _vtable.get_ControlViewWalker.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> walker)>()(ptr, walker);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = walker.value;
      return retValue;
    } finally {
      free(walker);
    }
  }

  /// Retrieves an IUIAutomationTreeWalker interface used to discover content
  /// elements.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-get_contentviewwalker>.
  VTablePointer get contentViewWalker {
    final walker = calloc<VTablePointer>();
    try {
      final hr = _vtable.get_ContentViewWalker.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> walker)>()(ptr, walker);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = walker.value;
      return retValue;
    } finally {
      free(walker);
    }
  }

  /// Retrieves a tree walker object used to traverse an unfiltered view of the
  /// Microsoft UI Automation tree.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-get_rawviewwalker>.
  VTablePointer get rawViewWalker {
    final walker = calloc<VTablePointer>();
    try {
      final hr = _vtable.get_RawViewWalker.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> walker)>()(ptr, walker);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = walker.value;
      return retValue;
    } finally {
      free(walker);
    }
  }

  /// Retrieves a predefined IUIAutomationCondition interface that selects all UI
  /// elements in an unfiltered view.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-get_rawviewcondition>.
  VTablePointer get rawViewCondition {
    final condition = calloc<VTablePointer>();
    try {
      final hr = _vtable.get_RawViewCondition.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> condition)>()(ptr, condition);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = condition.value;
      return retValue;
    } finally {
      free(condition);
    }
  }

  /// Retrieves a predefined IUIAutomationCondition interface that selects control
  /// elements.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-get_controlviewcondition>.
  VTablePointer get controlViewCondition {
    final condition = calloc<VTablePointer>();
    try {
      final hr = _vtable.get_ControlViewCondition.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> condition)>()(ptr, condition);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = condition.value;
      return retValue;
    } finally {
      free(condition);
    }
  }

  /// Retrieves a predefined IUIAutomationCondition interface that selects content
  /// elements.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-get_contentviewcondition>.
  VTablePointer get contentViewCondition {
    final condition = calloc<VTablePointer>();
    try {
      final hr = _vtable.get_ContentViewCondition.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> condition)>()(ptr, condition);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = condition.value;
      return retValue;
    } finally {
      free(condition);
    }
  }

  /// Creates a cache request.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-createcacherequest>.
  int createCacheRequest(Pointer<VTablePointer> cacheRequest) =>
      _vtable.CreateCacheRequest.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> cacheRequest)>()(ptr, cacheRequest);

  /// Retrieves a predefined condition that selects all elements.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-createtruecondition>.
  int createTrueCondition(Pointer<VTablePointer> newCondition) =>
      _vtable.CreateTrueCondition.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> newCondition)>()(ptr, newCondition);

  /// Creates a condition that is always false.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-createfalsecondition>.
  int createFalseCondition(Pointer<VTablePointer> newCondition) =>
      _vtable.CreateFalseCondition.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> newCondition)>()(ptr, newCondition);

  /// Creates a condition that selects elements that have a property with the
  /// specified value.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-createpropertycondition>.
  int createPropertyCondition(
          int propertyId, VARIANT value, Pointer<VTablePointer> newCondition) =>
      _vtable.CreatePropertyCondition.asFunction<
              int Function(VTablePointer lpVtbl, int propertyId, VARIANT value,
                  Pointer<VTablePointer> newCondition)>()(
          ptr, propertyId, value, newCondition);

  /// Creates a condition that selects elements that have a property with the
  /// specified value, using optional flags.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-createpropertyconditionex>.
  int createPropertyConditionEx(int propertyId, VARIANT value, int flags,
          Pointer<VTablePointer> newCondition) =>
      _vtable.CreatePropertyConditionEx.asFunction<
              int Function(VTablePointer lpVtbl, int propertyId, VARIANT value,
                  int flags, Pointer<VTablePointer> newCondition)>()(
          ptr, propertyId, value, flags, newCondition);

  /// Creates a condition that selects elements that match both of two conditions.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-createandcondition>.
  int createAndCondition(VTablePointer condition1, VTablePointer condition2,
          Pointer<VTablePointer> newCondition) =>
      _vtable.CreateAndCondition.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  VTablePointer condition1,
                  VTablePointer condition2,
                  Pointer<VTablePointer> newCondition)>()(
          ptr, condition1, condition2, newCondition);

  /// Creates a condition that selects elements based on multiple conditions, all
  /// of which must be true.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-createandconditionfromarray>.
  int createAndConditionFromArray(
          Pointer<SAFEARRAY> conditions, Pointer<VTablePointer> newCondition) =>
      _vtable.CreateAndConditionFromArray.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<SAFEARRAY> conditions,
                  Pointer<VTablePointer> newCondition)>()(
          ptr, conditions, newCondition);

  /// Creates a condition that selects elements from a native array, based on
  /// multiple conditions that must all be true.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-createandconditionfromnativearray>.
  int createAndConditionFromNativeArray(Pointer<VTablePointer> conditions,
          int conditionCount, Pointer<VTablePointer> newCondition) =>
      _vtable.CreateAndConditionFromNativeArray.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  Pointer<VTablePointer> conditions,
                  int conditionCount,
                  Pointer<VTablePointer> newCondition)>()(
          ptr, conditions, conditionCount, newCondition);

  /// Creates a combination of two conditions where a match exists if either of
  /// the conditions is true.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-createorcondition>.
  int createOrCondition(VTablePointer condition1, VTablePointer condition2,
          Pointer<VTablePointer> newCondition) =>
      _vtable.CreateOrCondition.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  VTablePointer condition1,
                  VTablePointer condition2,
                  Pointer<VTablePointer> newCondition)>()(
          ptr, condition1, condition2, newCondition);

  /// Creates a combination of two or more conditions where a match exists if any
  /// of the conditions is true.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-createorconditionfromarray>.
  int createOrConditionFromArray(
          Pointer<SAFEARRAY> conditions, Pointer<VTablePointer> newCondition) =>
      _vtable.CreateOrConditionFromArray.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<SAFEARRAY> conditions,
                  Pointer<VTablePointer> newCondition)>()(
          ptr, conditions, newCondition);

  /// Creates a combination of two or more conditions where a match exists if any
  /// one of the conditions is true.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-createorconditionfromnativearray>.
  int createOrConditionFromNativeArray(Pointer<VTablePointer> conditions,
          int conditionCount, Pointer<VTablePointer> newCondition) =>
      _vtable.CreateOrConditionFromNativeArray.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  Pointer<VTablePointer> conditions,
                  int conditionCount,
                  Pointer<VTablePointer> newCondition)>()(
          ptr, conditions, conditionCount, newCondition);

  /// Creates a condition that is the negative of a specified condition.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-createnotcondition>.
  int createNotCondition(
          VTablePointer condition, Pointer<VTablePointer> newCondition) =>
      _vtable.CreateNotCondition.asFunction<
              int Function(VTablePointer lpVtbl, VTablePointer condition,
                  Pointer<VTablePointer> newCondition)>()(
          ptr, condition, newCondition);

  /// Registers a method that handles Microsoft UI Automation events.
  ///
  /// **Note:** Before implementing an event handler, you should be familiar with
  /// the threading issues described in Understanding Threading Issues.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-addautomationeventhandler>.
  int addAutomationEventHandler(int eventId, VTablePointer element, int scope,
          VTablePointer cacheRequest, VTablePointer handler) =>
      _vtable.AddAutomationEventHandler.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  int eventId,
                  VTablePointer element,
                  int scope,
                  VTablePointer cacheRequest,
                  VTablePointer handler)>()(
          ptr, eventId, element, scope, cacheRequest, handler);

  /// Removes the specified UI Automation event handler.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-removeautomationeventhandler>.
  int removeAutomationEventHandler(
          int eventId, VTablePointer element, VTablePointer handler) =>
      _vtable.RemoveAutomationEventHandler.asFunction<
          int Function(VTablePointer lpVtbl, int eventId, VTablePointer element,
              VTablePointer handler)>()(ptr, eventId, element, handler);

  /// Registers a method that handles a native array of property-changed events.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-addpropertychangedeventhandlernativearray>.
  int addPropertyChangedEventHandlerNativeArray(
          VTablePointer element,
          int scope,
          VTablePointer cacheRequest,
          VTablePointer handler,
          Pointer<Int32> propertyArray,
          int propertyCount) =>
      _vtable.AddPropertyChangedEventHandlerNativeArray.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  VTablePointer element,
                  int scope,
                  VTablePointer cacheRequest,
                  VTablePointer handler,
                  Pointer<Int32> propertyArray,
                  int propertyCount)>()(ptr, element, scope, cacheRequest,
          handler, propertyArray, propertyCount);

  /// Registers a method that handles and array of property-changed events.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-addpropertychangedeventhandler>.
  int addPropertyChangedEventHandler(
          VTablePointer element,
          int scope,
          VTablePointer cacheRequest,
          VTablePointer handler,
          Pointer<SAFEARRAY> propertyArray) =>
      _vtable.AddPropertyChangedEventHandler.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  VTablePointer element,
                  int scope,
                  VTablePointer cacheRequest,
                  VTablePointer handler,
                  Pointer<SAFEARRAY> propertyArray)>()(
          ptr, element, scope, cacheRequest, handler, propertyArray);

  /// Removes a property-changed event handler.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-removepropertychangedeventhandler>.
  int removePropertyChangedEventHandler(
          VTablePointer element, VTablePointer handler) =>
      _vtable.RemovePropertyChangedEventHandler.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer element,
              VTablePointer handler)>()(ptr, element, handler);

  /// Registers a method that handles structure-changed events.
  ///
  /// **Note:** Before implementing an event handler, you should be familiar with
  /// the threading issues described in Understanding Threading Issues.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-addstructurechangedeventhandler>.
  int addStructureChangedEventHandler(VTablePointer element, int scope,
          VTablePointer cacheRequest, VTablePointer handler) =>
      _vtable.AddStructureChangedEventHandler.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  VTablePointer element,
                  int scope,
                  VTablePointer cacheRequest,
                  VTablePointer handler)>()(
          ptr, element, scope, cacheRequest, handler);

  /// Removes a structure-changed event handler.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-removestructurechangedeventhandler>.
  int removeStructureChangedEventHandler(
          VTablePointer element, VTablePointer handler) =>
      _vtable.RemoveStructureChangedEventHandler.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer element,
              VTablePointer handler)>()(ptr, element, handler);

  /// Registers a method that handles focus-changed events.
  ///
  /// **Note:** Before implementing an event handler, you should be familiar with
  /// the threading issues described in Understanding Threading Issues.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-addfocuschangedeventhandler>.
  int addFocusChangedEventHandler(
          VTablePointer cacheRequest, VTablePointer handler) =>
      _vtable.AddFocusChangedEventHandler.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer cacheRequest,
              VTablePointer handler)>()(ptr, cacheRequest, handler);

  /// Removes a focus-changed event handler.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-removefocuschangedeventhandler>.
  int removeFocusChangedEventHandler(VTablePointer handler) =>
      _vtable.RemoveFocusChangedEventHandler.asFunction<
          int Function(
              VTablePointer lpVtbl, VTablePointer handler)>()(ptr, handler);

  /// Removes all registered Microsoft UI Automation event handlers.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-removealleventhandlers>.
  int removeAllEventHandlers() => _vtable.RemoveAllEventHandlers.asFunction<
      int Function(VTablePointer lpVtbl)>()(ptr);

  /// Converts an array of integers to a SAFEARRAY.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-intnativearraytosafearray>.
  int intNativeArrayToSafeArray(Pointer<Int32> array, int arrayCount,
          Pointer<Pointer<SAFEARRAY>> safeArray) =>
      _vtable.IntNativeArrayToSafeArray.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<Int32> array,
                  int arrayCount, Pointer<Pointer<SAFEARRAY>> safeArray)>()(
          ptr, array, arrayCount, safeArray);

  /// Converts a SAFEARRAY of integers to an array.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-intsafearraytonativearray>.
  int intSafeArrayToNativeArray(Pointer<SAFEARRAY> intArray,
          Pointer<Pointer<Int32>> array, Pointer<Int32> arrayCount) =>
      _vtable.IntSafeArrayToNativeArray.asFunction<
          int Function(
              VTablePointer lpVtbl,
              Pointer<SAFEARRAY> intArray,
              Pointer<Pointer<Int32>> array,
              Pointer<Int32> arrayCount)>()(ptr, intArray, array, arrayCount);

  /// Creates a VARIANT that contains the coordinates of a rectangle.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-recttovariant>.
  int rectToVariant(RECT rc, Pointer<VARIANT> var_) =>
      _vtable.RectToVariant.asFunction<
          int Function(VTablePointer lpVtbl, RECT rc,
              Pointer<VARIANT> var_)>()(ptr, rc, var_);

  /// Converts a VARIANT containing rectangle coordinates to a RECT.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-varianttorect>.
  int variantToRect(VARIANT var_, Pointer<RECT> rc) =>
      _vtable.VariantToRect.asFunction<
          int Function(VTablePointer lpVtbl, VARIANT var_,
              Pointer<RECT> rc)>()(ptr, var_, rc);

  /// Converts a SAFEARRAY containing rectangle coordinates to an array of type
  /// RECT.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-safearraytorectnativearray>.
  int safeArrayToRectNativeArray(Pointer<SAFEARRAY> rects,
          Pointer<Pointer<RECT>> rectArray, Pointer<Int32> rectArrayCount) =>
      _vtable.SafeArrayToRectNativeArray.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  Pointer<SAFEARRAY> rects,
                  Pointer<Pointer<RECT>> rectArray,
                  Pointer<Int32> rectArrayCount)>()(
          ptr, rects, rectArray, rectArrayCount);

  /// Creates a new instance of a proxy factory object.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-createproxyfactoryentry>.
  int createProxyFactoryEntry(
          VTablePointer factory, Pointer<VTablePointer> factoryEntry) =>
      _vtable.CreateProxyFactoryEntry.asFunction<
              int Function(VTablePointer lpVtbl, VTablePointer factory,
                  Pointer<VTablePointer> factoryEntry)>()(
          ptr, factory, factoryEntry);

  /// Retrieves an object that represents the mapping of Window classnames and
  /// associated data to individual proxy factories.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-get_proxyfactorymapping>.
  VTablePointer get proxyFactoryMapping {
    final factoryMapping = calloc<VTablePointer>();
    try {
      final hr = _vtable.get_ProxyFactoryMapping.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> factoryMapping)>()(ptr, factoryMapping);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = factoryMapping.value;
      return retValue;
    } finally {
      free(factoryMapping);
    }
  }

  /// Retrieves the registered programmatic name of a property.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-getpropertyprogrammaticname>.
  int getPropertyProgrammaticName(int property, Pointer<Pointer<Utf16>> name) =>
      _vtable.GetPropertyProgrammaticName.asFunction<
          int Function(VTablePointer lpVtbl, int property,
              Pointer<Pointer<Utf16>> name)>()(ptr, property, name);

  /// Retrieves the registered programmatic name of a control pattern.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-getpatternprogrammaticname>.
  int getPatternProgrammaticName(int pattern, Pointer<Pointer<Utf16>> name) =>
      _vtable.GetPatternProgrammaticName.asFunction<
          int Function(VTablePointer lpVtbl, int pattern,
              Pointer<Pointer<Utf16>> name)>()(ptr, pattern, name);

  /// Retrieves the control patterns that might be supported on a UI Automation
  /// element.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-pollforpotentialsupportedpatterns>.
  int pollForPotentialSupportedPatterns(
          VTablePointer pElement,
          Pointer<Pointer<SAFEARRAY>> patternIds,
          Pointer<Pointer<SAFEARRAY>> patternNames) =>
      _vtable.PollForPotentialSupportedPatterns.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  VTablePointer pElement,
                  Pointer<Pointer<SAFEARRAY>> patternIds,
                  Pointer<Pointer<SAFEARRAY>> patternNames)>()(
          ptr, pElement, patternIds, patternNames);

  /// Retrieves the properties that might be supported on a UI Automation element.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-pollforpotentialsupportedproperties>.
  int pollForPotentialSupportedProperties(
          VTablePointer pElement,
          Pointer<Pointer<SAFEARRAY>> propertyIds,
          Pointer<Pointer<SAFEARRAY>> propertyNames) =>
      _vtable.PollForPotentialSupportedProperties.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  VTablePointer pElement,
                  Pointer<Pointer<SAFEARRAY>> propertyIds,
                  Pointer<Pointer<SAFEARRAY>> propertyNames)>()(
          ptr, pElement, propertyIds, propertyNames);

  /// Checks a provided VARIANT to see if it contains the Not Supported
  /// identifier.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-checknotsupported>.
  int checkNotSupported(VARIANT value, Pointer<BOOL> isNotSupported) =>
      _vtable.CheckNotSupported.asFunction<
          int Function(VTablePointer lpVtbl, VARIANT value,
              Pointer<BOOL> isNotSupported)>()(ptr, value, isNotSupported);

  /// Retrieves a static token object representing a property or text attribute
  /// that is not supported.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-get_reservednotsupportedvalue>.
  VTablePointer get reservedNotSupportedValue {
    final notSupportedValue = calloc<VTablePointer>();
    try {
      final hr = _vtable.get_ReservedNotSupportedValue.asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<VTablePointer> notSupportedValue)>()(
          ptr, notSupportedValue);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = notSupportedValue.value;
      return retValue;
    } finally {
      free(notSupportedValue);
    }
  }

  /// Retrieves a static token object representing a text attribute that is a
  /// mixed attribute.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-get_reservedmixedattributevalue>.
  VTablePointer get reservedMixedAttributeValue {
    final mixedAttributeValue = calloc<VTablePointer>();
    try {
      final hr = _vtable.get_ReservedMixedAttributeValue.asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<VTablePointer> mixedAttributeValue)>()(
          ptr, mixedAttributeValue);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = mixedAttributeValue.value;
      return retValue;
    } finally {
      free(mixedAttributeValue);
    }
  }

  /// Retrieves a UI Automation element for the specified accessible object from a
  /// Microsoft Active Accessibility server.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-elementfromiaccessible>.
  int elementFromIAccessible(VTablePointer accessible, int childId,
          Pointer<VTablePointer> element) =>
      _vtable.ElementFromIAccessible.asFunction<
              int Function(VTablePointer lpVtbl, VTablePointer accessible,
                  int childId, Pointer<VTablePointer> element)>()(
          ptr, accessible, childId, element);

  /// Retrieves a UI Automation element for the specified accessible object from a
  /// Microsoft Active Accessibility server, prefetches the requested properties
  /// and control patterns, and stores the prefetched items in the cache.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation-elementfromiaccessiblebuildcache>.
  int elementFromIAccessibleBuildCache(VTablePointer accessible, int childId,
          VTablePointer cacheRequest, Pointer<VTablePointer> element) =>
      _vtable.ElementFromIAccessibleBuildCache.asFunction<
              int Function(
                  VTablePointer lpVtbl,
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
          HRESULT Function(VTablePointer lpVtbl, VTablePointer el1,
              VTablePointer el2, Pointer<BOOL> areSame)>> CompareElements;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Pointer<SAFEARRAY> runtimeId1,
              Pointer<SAFEARRAY> runtimeId2,
              Pointer<BOOL> areSame)>> CompareRuntimeIds;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> root)>>
      GetRootElement;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, HWND hwnd,
              Pointer<VTablePointer> element)>> ElementFromHandle;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, POINT pt,
              Pointer<VTablePointer> element)>> ElementFromPoint;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> element)>>
      GetFocusedElement;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer cacheRequest,
              Pointer<VTablePointer> root)>> GetRootElementBuildCache;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              HWND hwnd,
              VTablePointer cacheRequest,
              Pointer<VTablePointer> element)>> ElementFromHandleBuildCache;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              POINT pt,
              VTablePointer cacheRequest,
              Pointer<VTablePointer> element)>> ElementFromPointBuildCache;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer cacheRequest,
              Pointer<VTablePointer> element)>> GetFocusedElementBuildCache;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer pCondition,
              Pointer<VTablePointer> walker)>> CreateTreeWalker;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> walker)>>
      get_ControlViewWalker;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> walker)>>
      get_ContentViewWalker;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> walker)>>
      get_RawViewWalker;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> condition)>>
      get_RawViewCondition;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> condition)>>
      get_ControlViewCondition;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> condition)>>
      get_ContentViewCondition;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> cacheRequest)>>
      CreateCacheRequest;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> newCondition)>>
      CreateTrueCondition;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> newCondition)>>
      CreateFalseCondition;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Int32 propertyId,
              VARIANT value,
              Pointer<VTablePointer> newCondition)>> CreatePropertyCondition;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Int32 propertyId,
              VARIANT value,
              Int32 flags,
              Pointer<VTablePointer> newCondition)>> CreatePropertyConditionEx;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer condition1,
              VTablePointer condition2,
              Pointer<VTablePointer> newCondition)>> CreateAndCondition;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl,
                  Pointer<SAFEARRAY> conditions,
                  Pointer<VTablePointer> newCondition)>>
      CreateAndConditionFromArray;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl,
                  Pointer<VTablePointer> conditions,
                  Int32 conditionCount,
                  Pointer<VTablePointer> newCondition)>>
      CreateAndConditionFromNativeArray;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer condition1,
              VTablePointer condition2,
              Pointer<VTablePointer> newCondition)>> CreateOrCondition;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<SAFEARRAY> conditions,
              Pointer<VTablePointer> newCondition)>> CreateOrConditionFromArray;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl,
                  Pointer<VTablePointer> conditions,
                  Int32 conditionCount,
                  Pointer<VTablePointer> newCondition)>>
      CreateOrConditionFromNativeArray;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer condition,
              Pointer<VTablePointer> newCondition)>> CreateNotCondition;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Int32 eventId,
              VTablePointer element,
              Int32 scope,
              VTablePointer cacheRequest,
              VTablePointer handler)>> AddAutomationEventHandler;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Int32 eventId,
              VTablePointer element,
              VTablePointer handler)>> RemoveAutomationEventHandler;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer element,
              Int32 scope,
              VTablePointer cacheRequest,
              VTablePointer handler,
              Pointer<Int32> propertyArray,
              Int32 propertyCount)>> AddPropertyChangedEventHandlerNativeArray;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl,
                  VTablePointer element,
                  Int32 scope,
                  VTablePointer cacheRequest,
                  VTablePointer handler,
                  Pointer<SAFEARRAY> propertyArray)>>
      AddPropertyChangedEventHandler;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer element,
              VTablePointer handler)>> RemovePropertyChangedEventHandler;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer element,
              Int32 scope,
              VTablePointer cacheRequest,
              VTablePointer handler)>> AddStructureChangedEventHandler;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer element,
              VTablePointer handler)>> RemoveStructureChangedEventHandler;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer cacheRequest,
              VTablePointer handler)>> AddFocusChangedEventHandler;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, VTablePointer handler)>>
      RemoveFocusChangedEventHandler;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      RemoveAllEventHandlers;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> array,
                  Int32 arrayCount, Pointer<Pointer<SAFEARRAY>> safeArray)>>
      IntNativeArrayToSafeArray;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Pointer<SAFEARRAY> intArray,
              Pointer<Pointer<Int32>> array,
              Pointer<Int32> arrayCount)>> IntSafeArrayToNativeArray;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, RECT rc, Pointer<VARIANT> var_)>>
      RectToVariant;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, VARIANT var_, Pointer<RECT> rc)>>
      VariantToRect;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Pointer<SAFEARRAY> rects,
              Pointer<Pointer<RECT>> rectArray,
              Pointer<Int32> rectArrayCount)>> SafeArrayToRectNativeArray;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer factory,
              Pointer<VTablePointer> factoryEntry)>> CreateProxyFactoryEntry;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> factoryMapping)>>
      get_ProxyFactoryMapping;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 property,
              Pointer<Pointer<Utf16>> name)>> GetPropertyProgrammaticName;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 pattern,
              Pointer<Pointer<Utf16>> name)>> GetPatternProgrammaticName;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl,
                  VTablePointer pElement,
                  Pointer<Pointer<SAFEARRAY>> patternIds,
                  Pointer<Pointer<SAFEARRAY>> patternNames)>>
      PollForPotentialSupportedPatterns;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl,
                  VTablePointer pElement,
                  Pointer<Pointer<SAFEARRAY>> propertyIds,
                  Pointer<Pointer<SAFEARRAY>> propertyNames)>>
      PollForPotentialSupportedProperties;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VARIANT value,
              Pointer<BOOL> isNotSupported)>> CheckNotSupported;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl,
                  Pointer<VTablePointer> notSupportedValue)>>
      get_ReservedNotSupportedValue;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl,
                  Pointer<VTablePointer> mixedAttributeValue)>>
      get_ReservedMixedAttributeValue;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer accessible,
              Int32 childId,
              Pointer<VTablePointer> element)>> ElementFromIAccessible;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl,
                  VTablePointer accessible,
                  Int32 childId,
                  VTablePointer cacheRequest,
                  Pointer<VTablePointer> element)>>
      ElementFromIAccessibleBuildCache;
}

/// @nodoc
const CUIAutomation = '{ff48dba4-60ef-4201-aa87-54103eef594e}';
