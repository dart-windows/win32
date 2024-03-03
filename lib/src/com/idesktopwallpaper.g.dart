// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../extensions/iunknown.dart';
import '../structs.g.dart';
import '../types.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IDesktopWallpaper = '{b92b56a9-8b55-4e14-9a89-0199bbb6f93b}';

/// Provides methods for managing the desktop wallpaper.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nn-shobjidl_core-idesktopwallpaper>.
///
/// {@category com}
class IDesktopWallpaper extends IUnknown {
  IDesktopWallpaper(super.ptr)
      : _vtable = ptr.value.cast<IDesktopWallpaperVtbl>().ref;

  final IDesktopWallpaperVtbl _vtable;

  factory IDesktopWallpaper.from(IUnknown interface) =>
      IDesktopWallpaper(interface.toInterface(IID_IDesktopWallpaper));

  int setWallpaper(Pointer<Utf16> monitorID, Pointer<Utf16> wallpaper) =>
      _vtable.SetWallpaper.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<Utf16> monitorID,
              Pointer<Utf16> wallpaper)>()(ptr, monitorID, wallpaper);

  int getWallpaper(
          Pointer<Utf16> monitorID, Pointer<Pointer<Utf16>> wallpaper) =>
      _vtable.GetWallpaper.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<Utf16> monitorID,
              Pointer<Pointer<Utf16>> wallpaper)>()(ptr, monitorID, wallpaper);

  int getMonitorDevicePathAt(
          int monitorIndex, Pointer<Pointer<Utf16>> monitorID) =>
      _vtable.GetMonitorDevicePathAt.asFunction<
              int Function(VTablePointer lpVtbl, int monitorIndex,
                  Pointer<Pointer<Utf16>> monitorID)>()(
          ptr, monitorIndex, monitorID);

  int getMonitorDevicePathCount(Pointer<Uint32> count) =>
      _vtable.GetMonitorDevicePathCount.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint32> count)>()(ptr, count);

  int getMonitorRECT(Pointer<Utf16> monitorID, Pointer<RECT> displayRect) =>
      _vtable.GetMonitorRECT.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<Utf16> monitorID,
              Pointer<RECT> displayRect)>()(ptr, monitorID, displayRect);

  int setBackgroundColor(int color) => _vtable.SetBackgroundColor.asFunction<
      int Function(VTablePointer lpVtbl, int color)>()(ptr, color);

  int getBackgroundColor(Pointer<COLORREF> color) =>
      _vtable.GetBackgroundColor.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<COLORREF> color)>()(ptr, color);

  int setPosition(int position) => _vtable.SetPosition.asFunction<
      int Function(VTablePointer lpVtbl, int position)>()(ptr, position);

  int getPosition(Pointer<Int32> position) => _vtable.GetPosition.asFunction<
      int Function(
          VTablePointer lpVtbl, Pointer<Int32> position)>()(ptr, position);

  int setSlideshow(VTablePointer items) => _vtable.SetSlideshow.asFunction<
      int Function(VTablePointer lpVtbl, VTablePointer items)>()(ptr, items);

  int getSlideshow(
          Pointer<VTablePointer> items) =>
      _vtable.GetSlideshow.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> items)>()(ptr, items);

  int setSlideshowOptions(int options, int slideshowTick) =>
      _vtable.SetSlideshowOptions.asFunction<
          int Function(VTablePointer lpVtbl, int options,
              int slideshowTick)>()(ptr, options, slideshowTick);

  int getSlideshowOptions(
          Pointer<Int32> options, Pointer<Uint32> slideshowTick) =>
      _vtable.GetSlideshowOptions.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<Int32> options,
              Pointer<Uint32> slideshowTick)>()(ptr, options, slideshowTick);

  int advanceSlideshow(Pointer<Utf16> monitorID, int direction) =>
      _vtable.AdvanceSlideshow.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<Utf16> monitorID,
              int direction)>()(ptr, monitorID, direction);

  int getStatus(Pointer<Int32> state) => _vtable.GetStatus.asFunction<
      int Function(VTablePointer lpVtbl, Pointer<Int32> state)>()(ptr, state);

  int enable(int enable) => _vtable.Enable.asFunction<
      int Function(VTablePointer lpVtbl, int enable)>()(ptr, enable);
}

/// @nodoc
base class IDesktopWallpaperVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<Utf16> monitorID,
              Pointer<Utf16> wallpaper)>> SetWallpaper;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<Utf16> monitorID,
              Pointer<Pointer<Utf16>> wallpaper)>> GetWallpaper;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 monitorIndex,
              Pointer<Pointer<Utf16>> monitorID)>> GetMonitorDevicePathAt;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> count)>>
      GetMonitorDevicePathCount;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<Utf16> monitorID,
              Pointer<RECT> displayRect)>> GetMonitorRECT;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, COLORREF color)>>
      SetBackgroundColor;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COLORREF> color)>>
      GetBackgroundColor;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 position)>> SetPosition;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> position)>>
      GetPosition;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, VTablePointer items)>>
      SetSlideshow;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> items)>>
      GetSlideshow;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Int32 options, Uint32 slideshowTick)>>
      SetSlideshowOptions;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> options,
              Pointer<Uint32> slideshowTick)>> GetSlideshowOptions;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<Utf16> monitorID,
              Int32 direction)>> AdvanceSlideshow;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> state)>>
      GetStatus;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, BOOL enable)>>
      Enable;
}

/// @nodoc
const DesktopWallpaper = '{c2cf3110-460e-4fc1-b9d0-8a1c0c9cc4bd}';
