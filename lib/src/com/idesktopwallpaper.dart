// idesktopwallpaper.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IDesktopWallpaper = '{b92b56a9-8b55-4e14-9a89-0199bbb6f93b}';

/// Provides methods for managing the desktop wallpaper.
///
/// {@category com}
class IDesktopWallpaper extends IUnknown {
  IDesktopWallpaper(super.ptr)
      : _vtable = ptr.value.value.cast<IDesktopWallpaperVtbl>().ref;

  final IDesktopWallpaperVtbl _vtable;

  factory IDesktopWallpaper.from(IUnknown interface) =>
      IDesktopWallpaper(interface.toInterface(IID_IDesktopWallpaper));

  int setWallpaper(Pointer<Utf16> monitorID, Pointer<Utf16> wallpaper) =>
      _vtable.SetWallpaper.asFunction<
          int Function(VTablePointer, Pointer<Utf16> monitorID,
              Pointer<Utf16> wallpaper)>()(ptr.value, monitorID, wallpaper);

  int getWallpaper(
          Pointer<Utf16> monitorID, Pointer<Pointer<Utf16>> wallpaper) =>
      _vtable.GetWallpaper.asFunction<
              int Function(VTablePointer, Pointer<Utf16> monitorID,
                  Pointer<Pointer<Utf16>> wallpaper)>()(
          ptr.value, monitorID, wallpaper);

  int getMonitorDevicePathAt(
          int monitorIndex, Pointer<Pointer<Utf16>> monitorID) =>
      _vtable.GetMonitorDevicePathAt.asFunction<
              int Function(VTablePointer, int monitorIndex,
                  Pointer<Pointer<Utf16>> monitorID)>()(
          ptr.value, monitorIndex, monitorID);

  int getMonitorDevicePathCount(Pointer<Uint32> count) =>
      _vtable.GetMonitorDevicePathCount.asFunction<
          int Function(
              VTablePointer, Pointer<Uint32> count)>()(ptr.value, count);

  int getMonitorRECT(Pointer<Utf16> monitorID, Pointer<RECT> displayRect) =>
      _vtable.GetMonitorRECT.asFunction<
          int Function(VTablePointer, Pointer<Utf16> monitorID,
              Pointer<RECT> displayRect)>()(ptr.value, monitorID, displayRect);

  int setBackgroundColor(int color) => _vtable.SetBackgroundColor.asFunction<
      int Function(VTablePointer, int color)>()(ptr.value, color);

  int getBackgroundColor(Pointer<Uint32> color) =>
      _vtable.GetBackgroundColor.asFunction<
          int Function(
              VTablePointer, Pointer<Uint32> color)>()(ptr.value, color);

  int setPosition(int position) => _vtable.SetPosition.asFunction<
      int Function(VTablePointer, int position)>()(ptr.value, position);

  int getPosition(Pointer<Int32> position) => _vtable.GetPosition.asFunction<
      int Function(
          VTablePointer, Pointer<Int32> position)>()(ptr.value, position);

  int setSlideshow(
          Pointer<VTablePointer> items) =>
      _vtable.SetSlideshow.asFunction<
          int Function(
              VTablePointer, Pointer<VTablePointer> items)>()(ptr.value, items);

  int getSlideshow(Pointer<Pointer<VTablePointer>> items) =>
      _vtable.GetSlideshow.asFunction<
          int Function(VTablePointer,
              Pointer<Pointer<VTablePointer>> items)>()(ptr.value, items);

  int setSlideshowOptions(int options, int slideshowTick) =>
      _vtable.SetSlideshowOptions.asFunction<
              int Function(VTablePointer, int options, int slideshowTick)>()(
          ptr.value, options, slideshowTick);

  int getSlideshowOptions(
          Pointer<Int32> options, Pointer<Uint32> slideshowTick) =>
      _vtable.GetSlideshowOptions.asFunction<
              int Function(VTablePointer, Pointer<Int32> options,
                  Pointer<Uint32> slideshowTick)>()(
          ptr.value, options, slideshowTick);

  int advanceSlideshow(Pointer<Utf16> monitorID, int direction) =>
      _vtable.AdvanceSlideshow.asFunction<
          int Function(VTablePointer, Pointer<Utf16> monitorID,
              int direction)>()(ptr.value, monitorID, direction);

  int getStatus(Pointer<Int32> state) => _vtable.GetStatus.asFunction<
      int Function(VTablePointer, Pointer<Int32> state)>()(ptr.value, state);

  int enable(int enable) =>
      _vtable.Enable.asFunction<int Function(VTablePointer, int enable)>()(
          ptr.value, enable);
}

/// @nodoc
base class IDesktopWallpaperVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<Utf16> monitorID,
              Pointer<Utf16> wallpaper)>> SetWallpaper;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<Utf16> monitorID,
              Pointer<Pointer<Utf16>> wallpaper)>> GetWallpaper;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Uint32 monitorIndex,
              Pointer<Pointer<Utf16>> monitorID)>> GetMonitorDevicePathAt;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Uint32> count)>>
      GetMonitorDevicePathCount;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<Utf16> monitorID,
              Pointer<RECT> displayRect)>> GetMonitorRECT;
  external Pointer<NativeFunction<Int32 Function(VTablePointer, Uint32 color)>>
      SetBackgroundColor;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Uint32> color)>>
      GetBackgroundColor;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Int32 position)>>
      SetPosition;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<Int32> position)>> GetPosition;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> items)>>
      SetSlideshow;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Pointer<VTablePointer>> items)>>
      GetSlideshow;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Int32 options, Uint32 slideshowTick)>>
      SetSlideshowOptions;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<Int32> options,
              Pointer<Uint32> slideshowTick)>> GetSlideshowOptions;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Utf16> monitorID, Int32 direction)>>
      AdvanceSlideshow;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> state)>>
      GetStatus;
  external Pointer<NativeFunction<Int32 Function(VTablePointer, Int32 enable)>>
      Enable;
}

/// @nodoc
const CLSID_DesktopWallpaper = '{c2cf3110-460e-4fc1-b9d0-8a1c0c9cc4bd}';

/// {@category com}
class DesktopWallpaper extends IDesktopWallpaper {
  DesktopWallpaper(super.ptr);

  factory DesktopWallpaper.createInstance() => DesktopWallpaper(
      createCOMObject(CLSID_DesktopWallpaper, IID_IDesktopWallpaper));
}
