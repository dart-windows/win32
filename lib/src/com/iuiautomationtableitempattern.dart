// iuiautomationtableitempattern.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../types.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IUIAutomationTableItemPattern =
    '{0b964eb3-ef2e-4464-9c79-61d61737a27e}';

/// Provides access to a child element in a container that supports
/// IUIAutomationTablePattern.
///
/// {@category com}
class IUIAutomationTableItemPattern extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IUIAutomationTableItemPattern(super.ptr)
      : _vtable = ptr.value.value.cast<IUIAutomationTableItemPatternVtbl>().ref;

  final IUIAutomationTableItemPatternVtbl _vtable;

  factory IUIAutomationTableItemPattern.from(IUnknown interface) =>
      IUIAutomationTableItemPattern(
          interface.toInterface(IID_IUIAutomationTableItemPattern));

  int getCurrentRowHeaderItems(Pointer<Pointer<VTablePointer>> retVal) =>
      _vtable.GetCurrentRowHeaderItems.asFunction<
          int Function(VTablePointer,
              Pointer<Pointer<VTablePointer>> retVal)>()(ptr.value, retVal);

  int getCurrentColumnHeaderItems(Pointer<Pointer<VTablePointer>> retVal) =>
      _vtable.GetCurrentColumnHeaderItems.asFunction<
          int Function(VTablePointer,
              Pointer<Pointer<VTablePointer>> retVal)>()(ptr.value, retVal);

  int getCachedRowHeaderItems(Pointer<Pointer<VTablePointer>> retVal) =>
      _vtable.GetCachedRowHeaderItems.asFunction<
          int Function(VTablePointer,
              Pointer<Pointer<VTablePointer>> retVal)>()(ptr.value, retVal);

  int getCachedColumnHeaderItems(Pointer<Pointer<VTablePointer>> retVal) =>
      _vtable.GetCachedColumnHeaderItems.asFunction<
          int Function(VTablePointer,
              Pointer<Pointer<VTablePointer>> retVal)>()(ptr.value, retVal);
}

/// @nodoc
base class IUIAutomationTableItemPatternVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Pointer<VTablePointer>> retVal)>>
      GetCurrentRowHeaderItems;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Pointer<VTablePointer>> retVal)>>
      GetCurrentColumnHeaderItems;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Pointer<VTablePointer>> retVal)>>
      GetCachedRowHeaderItems;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Pointer<VTablePointer>> retVal)>>
      GetCachedColumnHeaderItems;
}
