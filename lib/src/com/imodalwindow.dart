// imodalwindow.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'iunknown.dart';

/// @nodoc
const IID_IModalWindow = '{b4db1657-70d7-485e-8e3e-6fcb5a5c1802}';

/// Exposes a method that represents a modal window.
///
/// {@category com}
class IModalWindow extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IModalWindow(super.ptr);

  factory IModalWindow.from(IUnknown interface) =>
      IModalWindow(interface.toInterface(IID_IModalWindow));

  int show(int hwndOwner) => ptr.ref.vtable
      .elementAt(3)
      .cast<
          Pointer<NativeFunction<Int32 Function(Pointer, IntPtr hwndOwner)>>>()
      .value
      .asFunction<
          int Function(Pointer, int hwndOwner)>()(ptr.ref.lpVtbl, hwndOwner);
}
