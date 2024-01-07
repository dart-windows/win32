// iuiautomationproxyfactoryentry.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../exceptions.dart';
import '../macros.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IUIAutomationProxyFactoryEntry =
    '{d50e472e-b64b-490c-bca1-d30696f9f289}';

/// Represents a proxy factory in the table maintained by Microsoft UI
/// Automation, and exposes properties and methods that can be used by
/// client applications to interact with IUIAutomationProxyFactory objects.
///
/// {@category com}
class IUIAutomationProxyFactoryEntry extends IUnknown {
  IUIAutomationProxyFactoryEntry(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationProxyFactoryEntryVtbl>().ref;

  final IUIAutomationProxyFactoryEntryVtbl _vtable;

  factory IUIAutomationProxyFactoryEntry.from(IUnknown interface) =>
      IUIAutomationProxyFactoryEntry(
          interface.toInterface(IID_IUIAutomationProxyFactoryEntry));

  VTablePointer get proxyFactory {
    final retValuePtr = calloc<VTablePointer>();

    try {
      final hr = _vtable.get_ProxyFactory.asFunction<
              int Function(VTablePointer, Pointer<VTablePointer> factory)>()(
          ptr, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get className {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = _vtable.get_ClassName.asFunction<
              int Function(VTablePointer, Pointer<Pointer<Utf16>> className)>()(
          ptr, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get imageName {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = _vtable.get_ImageName.asFunction<
              int Function(VTablePointer, Pointer<Pointer<Utf16>> imageName)>()(
          ptr, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get allowSubstringMatch {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_AllowSubstringMatch.asFunction<
          int Function(VTablePointer,
              Pointer<Int32> allowSubstringMatch)>()(ptr, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get canCheckBaseClass {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CanCheckBaseClass.asFunction<
              int Function(VTablePointer, Pointer<Int32> canCheckBaseClass)>()(
          ptr, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get needsAdviseEvents {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_NeedsAdviseEvents.asFunction<
          int Function(
              VTablePointer, Pointer<Int32> adviseEvents)>()(ptr, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set className(Pointer<Utf16> value) {
    final hr = _vtable.put_ClassName.asFunction<
        int Function(VTablePointer, Pointer<Utf16> className)>()(ptr, value);
    if (FAILED(hr)) throw WindowsException(hr);
  }

  set imageName(Pointer<Utf16> value) {
    final hr = _vtable.put_ImageName.asFunction<
        int Function(VTablePointer, Pointer<Utf16> imageName)>()(ptr, value);
    if (FAILED(hr)) throw WindowsException(hr);
  }

  set allowSubstringMatch(int value) {
    final hr = _vtable.put_AllowSubstringMatch
            .asFunction<int Function(VTablePointer, int allowSubstringMatch)>()(
        ptr, value);
    if (FAILED(hr)) throw WindowsException(hr);
  }

  set canCheckBaseClass(int value) {
    final hr = _vtable.put_CanCheckBaseClass
            .asFunction<int Function(VTablePointer, int canCheckBaseClass)>()(
        ptr, value);
    if (FAILED(hr)) throw WindowsException(hr);
  }

  set needsAdviseEvents(int value) {
    final hr = _vtable.put_NeedsAdviseEvents
            .asFunction<int Function(VTablePointer, int adviseEvents)>()(
        ptr, value);
    if (FAILED(hr)) throw WindowsException(hr);
  }

  int setWinEventsForAutomationEvent(
          int eventId, int propertyId, Pointer<SAFEARRAY> winEvents) =>
      _vtable.SetWinEventsForAutomationEvent.asFunction<
              int Function(VTablePointer, int eventId, int propertyId,
                  Pointer<SAFEARRAY> winEvents)>()(
          ptr, eventId, propertyId, winEvents);

  int getWinEventsForAutomationEvent(
          int eventId, int propertyId, Pointer<Pointer<SAFEARRAY>> winEvents) =>
      _vtable.GetWinEventsForAutomationEvent.asFunction<
              int Function(VTablePointer, int eventId, int propertyId,
                  Pointer<Pointer<SAFEARRAY>> winEvents)>()(
          ptr, eventId, propertyId, winEvents);
}

/// @nodoc
base class IUIAutomationProxyFactoryEntryVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> factory)>>
      get_ProxyFactory;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Pointer<Utf16>> className)>>
      get_ClassName;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Pointer<Utf16>> imageName)>>
      get_ImageName;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Int32> allowSubstringMatch)>>
      get_AllowSubstringMatch;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Int32> canCheckBaseClass)>>
      get_CanCheckBaseClass;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Int32> adviseEvents)>>
      get_NeedsAdviseEvents;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Utf16> className)>>
      put_ClassName;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Utf16> imageName)>>
      put_ImageName;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Int32 allowSubstringMatch)>>
      put_AllowSubstringMatch;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Int32 canCheckBaseClass)>>
      put_CanCheckBaseClass;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Int32 adviseEvents)>>
      put_NeedsAdviseEvents;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Int32 eventId, Int32 propertyId,
              Pointer<SAFEARRAY> winEvents)>> SetWinEventsForAutomationEvent;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Int32 eventId, Int32 propertyId,
                  Pointer<Pointer<SAFEARRAY>> winEvents)>>
      GetWinEventsForAutomationEvent;
}
