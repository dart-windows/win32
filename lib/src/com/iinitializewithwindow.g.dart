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

  /// Creates a new instance of `IInitializeWithWindow` from an existing
  /// [interface].
  ///
  /// This constructor invokes the [queryInterface] method to obtain a reference
  /// to the `IInitializeWithWindow` interface with the provided interface.
  ///
  /// Throws a [WindowsException] if the `queryInterface` call fails.
  factory IInitializeWithWindow.from(IUnknown interface) =>
      IInitializeWithWindow(interface.toInterface(IID_IInitializeWithWindow));

  /// Specifies an owner window to be used by a Windows Runtime object that is
  /// used in a desktop app.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-iinitializewithwindow-initialize>.
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
