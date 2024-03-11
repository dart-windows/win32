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
const IID_IUIAutomationProxyFactoryEntry =
    '{d50e472e-b64b-490c-bca1-d30696f9f289}';

/// Represents a proxy factory in the table maintained by Microsoft UI
/// Automation, and exposes properties and methods that can be used by client
/// applications to interact with IUIAutomationProxyFactory objects.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationproxyfactoryentry>.
///
/// {@category com}
class IUIAutomationProxyFactoryEntry extends IUnknown {
  IUIAutomationProxyFactoryEntry(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationProxyFactoryEntryVtbl>().ref;

  final IUIAutomationProxyFactoryEntryVtbl _vtable;

  factory IUIAutomationProxyFactoryEntry.from(IUnknown interface) =>
      IUIAutomationProxyFactoryEntry(
          interface.toInterface(IID_IUIAutomationProxyFactoryEntry));

  /// Retrieves the proxy factory associated with this entry.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationproxyfactoryentry-get_proxyfactory>.
  VTablePointer get proxyFactory {
    final factory = calloc<VTablePointer>();
    try {
      final hr = _vtable.get_ProxyFactory.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> factory)>()(ptr, factory);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = factory.value;
      return retValue;
    } finally {
      free(factory);
    }
  }

  /// Sets or retrieves the name of the window class served by the proxy factory.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationproxyfactoryentry-get_classname>.
  Pointer<Utf16> get className {
    final className = calloc<Pointer<Utf16>>();
    try {
      final hr = _vtable.get_ClassName.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<Utf16>> className)>()(ptr, className);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = className.value;
      return retValue;
    } finally {
      free(className);
    }
  }

  /// Sets or retrieves the name of the image of the proxy factory.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationproxyfactoryentry-get_imagename>.
  Pointer<Utf16> get imageName {
    final imageName = calloc<Pointer<Utf16>>();
    try {
      final hr = _vtable.get_ImageName.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<Utf16>> imageName)>()(ptr, imageName);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = imageName.value;
      return retValue;
    } finally {
      free(imageName);
    }
  }

  /// Sets or retrieves a value that specifies whether the proxy allows substring
  /// matching.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationproxyfactoryentry-get_allowsubstringmatch>.
  int get allowSubstringMatch {
    final allowSubstringMatch = calloc<BOOL>();
    try {
      final hr = _vtable.get_AllowSubstringMatch.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<BOOL> allowSubstringMatch)>()(ptr, allowSubstringMatch);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = allowSubstringMatch.value;
      return retValue;
    } finally {
      free(allowSubstringMatch);
    }
  }

  /// Sets or retrieves a value that specifies whether the base class can be
  /// checked when searching for a proxy factory.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationproxyfactoryentry-get_cancheckbaseclass>.
  int get canCheckBaseClass {
    final canCheckBaseClass = calloc<BOOL>();
    try {
      final hr = _vtable.get_CanCheckBaseClass.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<BOOL> canCheckBaseClass)>()(ptr, canCheckBaseClass);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = canCheckBaseClass.value;
      return retValue;
    } finally {
      free(canCheckBaseClass);
    }
  }

  /// Sets or retrieves a value that specifies whether the proxy must be notified
  /// when an application has registered for events.
  ///
  /// To learn more about this property, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationproxyfactoryentry-get_needsadviseevents>.
  int get needsAdviseEvents {
    final adviseEvents = calloc<BOOL>();
    try {
      final hr = _vtable.get_NeedsAdviseEvents.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<BOOL> adviseEvents)>()(
          ptr, adviseEvents);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = adviseEvents.value;
      return retValue;
    } finally {
      free(adviseEvents);
    }
  }

  set className(Pointer<Utf16> className) {
    final hr = _vtable.put_ClassName.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<Utf16> className)>()(ptr, className);
    if (FAILED(hr)) throw WindowsException(hr);
  }

  set imageName(Pointer<Utf16> imageName) {
    final hr = _vtable.put_ImageName.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<Utf16> imageName)>()(ptr, imageName);
    if (FAILED(hr)) throw WindowsException(hr);
  }

  set allowSubstringMatch(int allowSubstringMatch) {
    final hr = _vtable.put_AllowSubstringMatch.asFunction<
            int Function(VTablePointer lpVtbl, int allowSubstringMatch)>()(
        ptr, allowSubstringMatch);
    if (FAILED(hr)) throw WindowsException(hr);
  }

  set canCheckBaseClass(int canCheckBaseClass) {
    final hr = _vtable.put_CanCheckBaseClass.asFunction<
            int Function(VTablePointer lpVtbl, int canCheckBaseClass)>()(
        ptr, canCheckBaseClass);
    if (FAILED(hr)) throw WindowsException(hr);
  }

  set needsAdviseEvents(int adviseEvents) {
    final hr = _vtable.put_NeedsAdviseEvents
            .asFunction<int Function(VTablePointer lpVtbl, int adviseEvents)>()(
        ptr, adviseEvents);
    if (FAILED(hr)) throw WindowsException(hr);
  }

  /// Maps Microsoft UI Automation events to WinEvents.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationproxyfactoryentry-setwineventsforautomationevent>.
  int setWinEventsForAutomationEvent(
          int eventId, int propertyId, Pointer<SAFEARRAY> winEvents) =>
      _vtable.SetWinEventsForAutomationEvent.asFunction<
              int Function(VTablePointer lpVtbl, int eventId, int propertyId,
                  Pointer<SAFEARRAY> winEvents)>()(
          ptr, eventId, propertyId, winEvents);

  /// Retrieves the list of WinEvents that are mapped to a specific Microsoft UI
  /// Automation event.
  ///
  /// If an element represented by this proxy raises one the listed WinEvents, the
  /// proxy handles it.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationproxyfactoryentry-getwineventsforautomationevent>.
  int getWinEventsForAutomationEvent(
          int eventId, int propertyId, Pointer<Pointer<SAFEARRAY>> winEvents) =>
      _vtable.GetWinEventsForAutomationEvent.asFunction<
              int Function(VTablePointer lpVtbl, int eventId, int propertyId,
                  Pointer<Pointer<SAFEARRAY>> winEvents)>()(
          ptr, eventId, propertyId, winEvents);
}

/// @nodoc
base class IUIAutomationProxyFactoryEntryVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> factory)>>
      get_ProxyFactory;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Pointer<Utf16>> className)>>
      get_ClassName;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Pointer<Utf16>> imageName)>>
      get_ImageName;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<BOOL> allowSubstringMatch)>>
      get_AllowSubstringMatch;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<BOOL> canCheckBaseClass)>>
      get_CanCheckBaseClass;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<BOOL> adviseEvents)>>
      get_NeedsAdviseEvents;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Utf16> className)>>
      put_ClassName;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Utf16> imageName)>>
      put_ImageName;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, BOOL allowSubstringMatch)>>
      put_AllowSubstringMatch;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, BOOL canCheckBaseClass)>>
      put_CanCheckBaseClass;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, BOOL adviseEvents)>>
      put_NeedsAdviseEvents;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Int32 eventId,
              Int32 propertyId,
              Pointer<SAFEARRAY> winEvents)>> SetWinEventsForAutomationEvent;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Int32 eventId,
                  Int32 propertyId, Pointer<Pointer<SAFEARRAY>> winEvents)>>
      GetWinEventsForAutomationEvent;
}
