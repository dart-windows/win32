// ivirtualdesktopmanager.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../combase.dart';
import '../guid.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IVirtualDesktopManager = '{a5cd92ff-29be-454c-8d04-d82879fb3f1b}';

/// Exposes methods that enable an application to interact with groups of
/// windows that form virtual workspaces.
///
/// {@category com}
class IVirtualDesktopManager extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IVirtualDesktopManager(super.ptr)
      : _vtable = ptr.ref.vtable.cast<IVirtualDesktopManagerVtbl>().ref;

  final IVirtualDesktopManagerVtbl _vtable;

  factory IVirtualDesktopManager.from(IUnknown interface) =>
      IVirtualDesktopManager(interface.toInterface(IID_IVirtualDesktopManager));

  int isWindowOnCurrentVirtualDesktop(
          int topLevelWindow, Pointer<Int32> onCurrentDesktop) =>
      _vtable.IsWindowOnCurrentVirtualDesktop.asFunction<
              int Function(Pointer, int topLevelWindow,
                  Pointer<Int32> onCurrentDesktop)>()(
          ptr.ref.lpVtbl, topLevelWindow, onCurrentDesktop);

  int getWindowDesktopId(int topLevelWindow, Pointer<GUID> desktopId) =>
      _vtable.GetWindowDesktopId.asFunction<
              int Function(
                  Pointer, int topLevelWindow, Pointer<GUID> desktopId)>()(
          ptr.ref.lpVtbl, topLevelWindow, desktopId);

  int moveWindowToDesktop(int topLevelWindow, Pointer<GUID> desktopId) =>
      _vtable.MoveWindowToDesktop.asFunction<
              int Function(
                  Pointer, int topLevelWindow, Pointer<GUID> desktopId)>()(
          ptr.ref.lpVtbl, topLevelWindow, desktopId);
}

/// @nodoc
base class IVirtualDesktopManagerVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, IntPtr topLevelWindow,
                  Pointer<Int32> onCurrentDesktop)>>
      IsWindowOnCurrentVirtualDesktop;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer, IntPtr topLevelWindow, Pointer<GUID> desktopId)>>
      GetWindowDesktopId;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer, IntPtr topLevelWindow, Pointer<GUID> desktopId)>>
      MoveWindowToDesktop;
}

/// @nodoc
const CLSID_VirtualDesktopManager = '{aa509086-5ca9-4c25-8f95-589d3c07b48a}';

/// {@category com}
class VirtualDesktopManager extends IVirtualDesktopManager {
  VirtualDesktopManager(super.ptr);

  factory VirtualDesktopManager.createInstance() =>
      VirtualDesktopManager(COMObject.createFromID(
          CLSID_VirtualDesktopManager, IID_IVirtualDesktopManager));
}
