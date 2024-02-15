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
const IID_IModalWindow = '{b4db1657-70d7-485e-8e3e-6fcb5a5c1802}';

/// Exposes a method that represents a modal window.
///
/// {@category com}
class IModalWindow extends IUnknown {
  IModalWindow(super.ptr) : _vtable = ptr.value.cast<IModalWindowVtbl>().ref;

  final IModalWindowVtbl _vtable;

  factory IModalWindow.from(IUnknown interface) =>
      IModalWindow(interface.toInterface(IID_IModalWindow));

  int show(int? hwndOwner) => _vtable.Show.asFunction<
      int Function(VTablePointer lpVtbl, int hwndOwner)>()(ptr, hwndOwner ?? 0);
}

/// @nodoc
base class IModalWindowVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, HWND hwndOwner)>> Show;
}
