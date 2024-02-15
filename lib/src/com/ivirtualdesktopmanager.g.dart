// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../extensions/iunknown.dart';
import '../guid.dart';
import '../structs.g.dart';
import '../types.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IVirtualDesktopManager = '{a5cd92ff-29be-454c-8d04-d82879fb3f1b}';

/// Exposes methods that enable an application to interact with groups of
/// windows that form virtual workspaces.
///
/// {@category com}
class IVirtualDesktopManager extends IUnknown {
  IVirtualDesktopManager(super.ptr)
      : _vtable = ptr.value.cast<IVirtualDesktopManagerVtbl>().ref;

  final IVirtualDesktopManagerVtbl _vtable;

  factory IVirtualDesktopManager.from(IUnknown interface) =>
      IVirtualDesktopManager(interface.toInterface(IID_IVirtualDesktopManager));

  int isWindowOnCurrentVirtualDesktop(
          int topLevelWindow, Pointer<BOOL> onCurrentDesktop) =>
      _vtable.IsWindowOnCurrentVirtualDesktop.asFunction<
              int Function(VTablePointer lpVtbl, int topLevelWindow,
                  Pointer<BOOL> onCurrentDesktop)>()(
          ptr, topLevelWindow, onCurrentDesktop);

  int getWindowDesktopId(int topLevelWindow, Pointer<GUID> desktopId) =>
      _vtable.GetWindowDesktopId.asFunction<
          int Function(VTablePointer lpVtbl, int topLevelWindow,
              Pointer<GUID> desktopId)>()(ptr, topLevelWindow, desktopId);

  int moveWindowToDesktop(int topLevelWindow, Pointer<GUID> desktopId) =>
      _vtable.MoveWindowToDesktop.asFunction<
          int Function(VTablePointer lpVtbl, int topLevelWindow,
              Pointer<GUID> desktopId)>()(ptr, topLevelWindow, desktopId);
}

/// @nodoc
base class IVirtualDesktopManagerVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, HWND topLevelWindow,
              Pointer<BOOL> onCurrentDesktop)>> IsWindowOnCurrentVirtualDesktop;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, HWND topLevelWindow,
              Pointer<GUID> desktopId)>> GetWindowDesktopId;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, HWND topLevelWindow,
              Pointer<GUID> desktopId)>> MoveWindowToDesktop;
}

/// @nodoc
const VirtualDesktopManager = '{aa509086-5ca9-4c25-8f95-589d3c07b48a}';
