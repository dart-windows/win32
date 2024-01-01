// idesktopwallpaper.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import '../structs.g.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IDesktopWallpaper = '{b92b56a9-8b55-4e14-9a89-0199bbb6f93b}';

/// Provides methods for managing the desktop wallpaper.
///
/// {@category com}
class IDesktopWallpaper extends IUnknown {
  // vtable begins at 3, is 16 entries long.
  IDesktopWallpaper(super.ptr)
      : _vtable = ptr.ref.vtable.cast<IDesktopWallpaperVtbl>().ref;

  final IDesktopWallpaperVtbl _vtable;

  factory IDesktopWallpaper.from(IUnknown interface) =>
      IDesktopWallpaper(interface.toInterface(IID_IDesktopWallpaper));

  int setWallpaper(Pointer<Utf16> monitorID, Pointer<Utf16> wallpaper) =>
      _vtable.SetWallpaper.asFunction<
              int Function(Pointer, Pointer<Utf16> monitorID,
                  Pointer<Utf16> wallpaper)>()(
          ptr.ref.lpVtbl, monitorID, wallpaper);

  int getWallpaper(
          Pointer<Utf16> monitorID, Pointer<Pointer<Utf16>> wallpaper) =>
      _vtable.GetWallpaper.asFunction<
              int Function(Pointer, Pointer<Utf16> monitorID,
                  Pointer<Pointer<Utf16>> wallpaper)>()(
          ptr.ref.lpVtbl, monitorID, wallpaper);

  int getMonitorDevicePathAt(
          int monitorIndex, Pointer<Pointer<Utf16>> monitorID) =>
      _vtable.GetMonitorDevicePathAt.asFunction<
              int Function(Pointer, int monitorIndex,
                  Pointer<Pointer<Utf16>> monitorID)>()(
          ptr.ref.lpVtbl, monitorIndex, monitorID);

  int getMonitorDevicePathCount(Pointer<Uint32> count) =>
      _vtable.GetMonitorDevicePathCount.asFunction<
          int Function(
              Pointer, Pointer<Uint32> count)>()(ptr.ref.lpVtbl, count);

  int getMonitorRECT(Pointer<Utf16> monitorID, Pointer<RECT> displayRect) =>
      _vtable.GetMonitorRECT.asFunction<
              int Function(Pointer, Pointer<Utf16> monitorID,
                  Pointer<RECT> displayRect)>()(
          ptr.ref.lpVtbl, monitorID, displayRect);

  int setBackgroundColor(int color) =>
      _vtable.SetBackgroundColor.asFunction<int Function(Pointer, int color)>()(
          ptr.ref.lpVtbl, color);

  int getBackgroundColor(Pointer<Uint32> color) =>
      _vtable.GetBackgroundColor.asFunction<
          int Function(
              Pointer, Pointer<Uint32> color)>()(ptr.ref.lpVtbl, color);

  int setPosition(int position) =>
      _vtable.SetPosition.asFunction<int Function(Pointer, int position)>()(
          ptr.ref.lpVtbl, position);

  int getPosition(Pointer<Int32> position) => _vtable.GetPosition.asFunction<
      int Function(
          Pointer, Pointer<Int32> position)>()(ptr.ref.lpVtbl, position);

  int setSlideshow(Pointer<COMObject> items) => _vtable.SetSlideshow.asFunction<
      int Function(Pointer, Pointer<COMObject> items)>()(ptr.ref.lpVtbl, items);

  int getSlideshow(Pointer<Pointer<COMObject>> items) =>
      _vtable.GetSlideshow.asFunction<
              int Function(Pointer, Pointer<Pointer<COMObject>> items)>()(
          ptr.ref.lpVtbl, items);

  int setSlideshowOptions(int options, int slideshowTick) =>
      _vtable.SetSlideshowOptions.asFunction<
              int Function(Pointer, int options, int slideshowTick)>()(
          ptr.ref.lpVtbl, options, slideshowTick);

  int getSlideshowOptions(
          Pointer<Int32> options, Pointer<Uint32> slideshowTick) =>
      _vtable.GetSlideshowOptions.asFunction<
              int Function(Pointer, Pointer<Int32> options,
                  Pointer<Uint32> slideshowTick)>()(
          ptr.ref.lpVtbl, options, slideshowTick);

  int advanceSlideshow(Pointer<Utf16> monitorID, int direction) =>
      _vtable.AdvanceSlideshow.asFunction<
              int Function(Pointer, Pointer<Utf16> monitorID, int direction)>()(
          ptr.ref.lpVtbl, monitorID, direction);

  int getStatus(Pointer<Int32> state) => _vtable.GetStatus.asFunction<
      int Function(Pointer, Pointer<Int32> state)>()(ptr.ref.lpVtbl, state);

  int enable(int enable) =>
      _vtable.Enable.asFunction<int Function(Pointer, int enable)>()(
          ptr.ref.lpVtbl, enable);
}

/// @nodoc
base class IDesktopWallpaperVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer, Pointer<Utf16> monitorID, Pointer<Utf16> wallpaper)>>
      SetWallpaper;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<Utf16> monitorID,
              Pointer<Pointer<Utf16>> wallpaper)>> GetWallpaper;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Uint32 monitorIndex,
              Pointer<Pointer<Utf16>> monitorID)>> GetMonitorDevicePathAt;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Uint32> count)>>
      GetMonitorDevicePathCount;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<Utf16> monitorID,
              Pointer<RECT> displayRect)>> GetMonitorRECT;
  external Pointer<NativeFunction<Int32 Function(Pointer, Uint32 color)>>
      SetBackgroundColor;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Uint32> color)>>
      GetBackgroundColor;
  external Pointer<NativeFunction<Int32 Function(Pointer, Int32 position)>>
      SetPosition;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> position)>>
      GetPosition;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<COMObject> items)>>
      SetSlideshow;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Pointer<COMObject>> items)>>
      GetSlideshow;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Int32 options, Uint32 slideshowTick)>>
      SetSlideshowOptions;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<Int32> options,
              Pointer<Uint32> slideshowTick)>> GetSlideshowOptions;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer, Pointer<Utf16> monitorID, Int32 direction)>>
      AdvanceSlideshow;
  external Pointer<
      NativeFunction<Int32 Function(Pointer, Pointer<Int32> state)>> GetStatus;
  external Pointer<NativeFunction<Int32 Function(Pointer, Int32 enable)>>
      Enable;
}

/// @nodoc
const CLSID_DesktopWallpaper = '{c2cf3110-460e-4fc1-b9d0-8a1c0c9cc4bd}';

/// {@category com}
class DesktopWallpaper extends IDesktopWallpaper {
  DesktopWallpaper(super.ptr);

  factory DesktopWallpaper.createInstance() => DesktopWallpaper(
      COMObject.createFromID(CLSID_DesktopWallpaper, IID_IDesktopWallpaper));
}
