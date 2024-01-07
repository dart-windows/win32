// iinitializewithwindow.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../types.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IInitializeWithWindow = '{3e68d4bd-7135-4d10-8018-9fb6d9f33fa1}';

/// Exposes a method through which a client can provide an owner window to a
/// Windows Runtime (WinRT) object used in a desktop application.
///
/// {@category com}
class IInitializeWithWindow extends IUnknown {
  IInitializeWithWindow(super.ptr)
      : _vtable = ptr.value.cast<IInitializeWithWindowVtbl>().ref;

  final IInitializeWithWindowVtbl _vtable;

  factory IInitializeWithWindow.from(IUnknown interface) =>
      IInitializeWithWindow(interface.toInterface(IID_IInitializeWithWindow));

  int initialize(int hwnd) =>
      _vtable.Initialize.asFunction<int Function(VTablePointer, int hwnd)>()(
          ptr, hwnd);
}

/// @nodoc
base class IInitializeWithWindowVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<NativeFunction<Int32 Function(VTablePointer, IntPtr hwnd)>>
      Initialize;
}
