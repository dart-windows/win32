// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../extensions/iunknown.dart';
import '../structs.g.dart';
import '../types.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IUIAutomationProxyFactoryEntry =
    '{d50e472e-b64b-490c-bca1-d30696f9f289}';

/// Represents a proxy factory in the table maintained by Microsoft UI
/// Automation, and exposes properties and methods that can be used by client
/// applications to interact with IUIAutomationProxyFactory objects.
///
/// {@category com}
class IUIAutomationProxyFactoryEntry extends IUnknown {
  IUIAutomationProxyFactoryEntry(super.ptr)
      : _vtable = ptr.value.cast<IUIAutomationProxyFactoryEntryVtbl>().ref;

  final IUIAutomationProxyFactoryEntryVtbl _vtable;

  factory IUIAutomationProxyFactoryEntry.from(IUnknown interface) =>
      IUIAutomationProxyFactoryEntry(
          interface.toInterface(IID_IUIAutomationProxyFactoryEntry));

  int get_ProxyFactory(Pointer<VTablePointer> factory) =>
      _vtable.get_ProxyFactory.asFunction<
          int Function(
              VTablePointer, Pointer<VTablePointer> factory)>()(ptr, factory);

  int get_ClassName(Pointer<Pointer<Utf16>> className) =>
      _vtable.get_ClassName.asFunction<
              int Function(VTablePointer, Pointer<Pointer<Utf16>> className)>()(
          ptr, className);

  int get_ImageName(Pointer<Pointer<Utf16>> imageName) =>
      _vtable.get_ImageName.asFunction<
              int Function(VTablePointer, Pointer<Pointer<Utf16>> imageName)>()(
          ptr, imageName);

  int get_AllowSubstringMatch(Pointer<Int32> allowSubstringMatch) =>
      _vtable.get_AllowSubstringMatch.asFunction<
          int Function(VTablePointer,
              Pointer<Int32> allowSubstringMatch)>()(ptr, allowSubstringMatch);

  int get_CanCheckBaseClass(Pointer<Int32> canCheckBaseClass) =>
      _vtable.get_CanCheckBaseClass.asFunction<
              int Function(VTablePointer, Pointer<Int32> canCheckBaseClass)>()(
          ptr, canCheckBaseClass);

  int get_NeedsAdviseEvents(Pointer<Int32> adviseEvents) =>
      _vtable.get_NeedsAdviseEvents.asFunction<
          int Function(
              VTablePointer, Pointer<Int32> adviseEvents)>()(ptr, adviseEvents);

  int put_ClassName(Pointer<Utf16> className) => _vtable.put_ClassName
          .asFunction<int Function(VTablePointer, Pointer<Utf16> className)>()(
      ptr, className);

  int put_ImageName(Pointer<Utf16> imageName) => _vtable.put_ImageName
          .asFunction<int Function(VTablePointer, Pointer<Utf16> imageName)>()(
      ptr, imageName);

  int put_AllowSubstringMatch(int allowSubstringMatch) => _vtable
          .put_AllowSubstringMatch
          .asFunction<int Function(VTablePointer, int allowSubstringMatch)>()(
      ptr, allowSubstringMatch);

  int put_CanCheckBaseClass(int canCheckBaseClass) =>
      _vtable.put_CanCheckBaseClass
              .asFunction<int Function(VTablePointer, int canCheckBaseClass)>()(
          ptr, canCheckBaseClass);

  int put_NeedsAdviseEvents(int adviseEvents) => _vtable.put_NeedsAdviseEvents
          .asFunction<int Function(VTablePointer, int adviseEvents)>()(
      ptr, adviseEvents);

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
