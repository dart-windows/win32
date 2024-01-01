// iuiautomationtableitempattern.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../combase.dart';
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
      : _vtable = ptr.ref.vtable.cast<IUIAutomationTableItemPatternVtbl>().ref;

  final IUIAutomationTableItemPatternVtbl _vtable;

  factory IUIAutomationTableItemPattern.from(IUnknown interface) =>
      IUIAutomationTableItemPattern(
          interface.toInterface(IID_IUIAutomationTableItemPattern));

  int getCurrentRowHeaderItems(Pointer<Pointer<COMObject>> retVal) =>
      _vtable.GetCurrentRowHeaderItems.asFunction<
              int Function(Pointer, Pointer<Pointer<COMObject>> retVal)>()(
          ptr.ref.lpVtbl, retVal);

  int getCurrentColumnHeaderItems(Pointer<Pointer<COMObject>> retVal) =>
      _vtable.GetCurrentColumnHeaderItems.asFunction<
              int Function(Pointer, Pointer<Pointer<COMObject>> retVal)>()(
          ptr.ref.lpVtbl, retVal);

  int getCachedRowHeaderItems(Pointer<Pointer<COMObject>> retVal) =>
      _vtable.GetCachedRowHeaderItems.asFunction<
              int Function(Pointer, Pointer<Pointer<COMObject>> retVal)>()(
          ptr.ref.lpVtbl, retVal);

  int getCachedColumnHeaderItems(Pointer<Pointer<COMObject>> retVal) =>
      _vtable.GetCachedColumnHeaderItems.asFunction<
              int Function(Pointer, Pointer<Pointer<COMObject>> retVal)>()(
          ptr.ref.lpVtbl, retVal);
}

/// @nodoc
base class IUIAutomationTableItemPatternVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Pointer<COMObject>> retVal)>>
      GetCurrentRowHeaderItems;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Pointer<COMObject>> retVal)>>
      GetCurrentColumnHeaderItems;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Pointer<COMObject>> retVal)>>
      GetCachedRowHeaderItems;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Pointer<COMObject>> retVal)>>
      GetCachedColumnHeaderItems;
}
