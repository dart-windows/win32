// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../extensions/iunknown.dart';
import '../structs.g.dart';
import '../types.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IInitializeWithWindow = '{3e68d4bd-7135-4d10-8018-9fb6d9f33fa1}';

/// Exposes a method through which a client can provide an owner window to a
/// Windows Runtime object used in a desktop application.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nn-shobjidl_core-iinitializewithwindow>.
///
/// {@category com}
class IInitializeWithWindow extends IUnknown {
  IInitializeWithWindow(super.ptr)
      : _vtable = ptr.value.cast<IInitializeWithWindowVtbl>().ref;

  final IInitializeWithWindowVtbl _vtable;

  factory IInitializeWithWindow.from(IUnknown interface) =>
      IInitializeWithWindow(interface.toInterface(IID_IInitializeWithWindow));

  int initialize(int hwnd) => _vtable.Initialize.asFunction<
      int Function(VTablePointer lpVtbl, int hwnd)>()(ptr, hwnd);
}

/// @nodoc
base class IInitializeWithWindowVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, HWND hwnd)>>
      Initialize;
}