// iinitializewithwindow.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'iunknown.dart';

/// @nodoc
const IID_IInitializeWithWindow = '{3e68d4bd-7135-4d10-8018-9fb6d9f33fa1}';

/// Exposes a method through which a client can provide an owner window to a
/// Windows Runtime (WinRT) object used in a desktop application.
///
/// {@category com}
class IInitializeWithWindow extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IInitializeWithWindow(super.ptr);

  factory IInitializeWithWindow.from(IUnknown interface) =>
      IInitializeWithWindow(interface.toInterface(IID_IInitializeWithWindow));

  int initialize(int hwnd) => ptr.ref.vtable
      .elementAt(3)
      .cast<Pointer<NativeFunction<Int32 Function(Pointer, IntPtr hwnd)>>>()
      .value
      .asFunction<int Function(Pointer, int hwnd)>()(ptr.ref.lpVtbl, hwnd);
}
