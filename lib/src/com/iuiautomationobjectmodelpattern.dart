// iuiautomationobjectmodelpattern.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../combase.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IUIAutomationObjectModelPattern =
    '{71c284b3-c14d-4d14-981e-19751b0d756d}';

/// Provides access to the underlying object model implemented by a control
/// or application.
///
/// {@category com}
class IUIAutomationObjectModelPattern extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IUIAutomationObjectModelPattern(super.ptr);

  factory IUIAutomationObjectModelPattern.from(IUnknown interface) =>
      IUIAutomationObjectModelPattern(
          interface.toInterface(IID_IUIAutomationObjectModelPattern));

  int getUnderlyingObjectModel(Pointer<Pointer<COMObject>> retVal) => ptr
          .ref.vtable
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
                          Pointer, Pointer<Pointer<COMObject>> retVal)>>>()
          .value
          .asFunction<
              int Function(Pointer, Pointer<Pointer<COMObject>> retVal)>()(
      ptr.ref.lpVtbl, retVal);
}
