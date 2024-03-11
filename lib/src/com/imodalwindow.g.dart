// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../exceptions.dart';
import '../extensions/iunknown.dart';
import '../structs.g.dart';
import '../types.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IModalWindow = '{b4db1657-70d7-485e-8e3e-6fcb5a5c1802}';

/// Exposes a method that represents a modal window.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nn-shobjidl_core-imodalwindow>.
///
/// {@category com}
class IModalWindow extends IUnknown {
  IModalWindow(super.ptr) : _vtable = ptr.value.cast<IModalWindowVtbl>().ref;

  final IModalWindowVtbl _vtable;

  /// Creates a new instance of `IModalWindow` from an existing [interface].
  ///
  /// This constructor invokes the [queryInterface] method to obtain a reference
  /// to the `IModalWindow` interface with the provided interface.
  ///
  /// Throws a [WindowsException] if the `queryInterface` call fails.
  factory IModalWindow.from(IUnknown interface) =>
      IModalWindow(interface.toInterface(IID_IModalWindow));

  /// Launches the modal window.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-imodalwindow-show>.
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
