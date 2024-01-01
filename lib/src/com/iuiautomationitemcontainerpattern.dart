// iuiautomationitemcontainerpattern.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../combase.dart';
import '../variant.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IUIAutomationItemContainerPattern =
    '{c690fdb2-27a8-423c-812d-429773c9084e}';

/// Exposes a method that retrieves an item from a container, such as a
/// virtual list.
///
/// {@category com}
class IUIAutomationItemContainerPattern extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IUIAutomationItemContainerPattern(super.ptr)
      : _vtable =
            ptr.ref.vtable.cast<IUIAutomationItemContainerPatternVtbl>().ref;

  final IUIAutomationItemContainerPatternVtbl _vtable;

  factory IUIAutomationItemContainerPattern.from(IUnknown interface) =>
      IUIAutomationItemContainerPattern(
          interface.toInterface(IID_IUIAutomationItemContainerPattern));

  int findItemByProperty(Pointer<COMObject> pStartAfter, int propertyId,
          VARIANT value, Pointer<Pointer<COMObject>> pFound) =>
      _vtable.FindItemByProperty.asFunction<
              int Function(
                  Pointer,
                  Pointer<COMObject> pStartAfter,
                  int propertyId,
                  VARIANT value,
                  Pointer<Pointer<COMObject>> pFound)>()(
          ptr.ref.lpVtbl, pStartAfter, propertyId, value, pFound);
}

/// @nodoc
base class IUIAutomationItemContainerPatternVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              Pointer<COMObject> pStartAfter,
              Uint32 propertyId,
              VARIANT value,
              Pointer<Pointer<COMObject>> pFound)>> FindItemByProperty;
}
