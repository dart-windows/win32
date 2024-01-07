// iuiautomationcustomnavigationpattern.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../extensions/iunknown.dart';
import '../types.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IUIAutomationCustomNavigationPattern =
    '{01ea217a-1766-47ed-a6cc-acf492854b1f}';

/// Exposes a method to support access by a Microsoft UI Automation client
/// to controls that support a custom navigation order.
///
/// {@category com}
class IUIAutomationCustomNavigationPattern extends IUnknown {
  IUIAutomationCustomNavigationPattern(super.ptr)
      : _vtable =
            ptr.value.cast<IUIAutomationCustomNavigationPatternVtbl>().ref;

  final IUIAutomationCustomNavigationPatternVtbl _vtable;

  factory IUIAutomationCustomNavigationPattern.from(IUnknown interface) =>
      IUIAutomationCustomNavigationPattern(
          interface.toInterface(IID_IUIAutomationCustomNavigationPattern));

  int navigate(int direction, Pointer<VTablePointer> pRetVal) =>
      _vtable.Navigate.asFunction<
          int Function(VTablePointer, int direction,
              Pointer<VTablePointer> pRetVal)>()(ptr, direction, pRetVal);
}

/// @nodoc
base class IUIAutomationCustomNavigationPatternVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Int32 direction,
              Pointer<VTablePointer> pRetVal)>> Navigate;
}
