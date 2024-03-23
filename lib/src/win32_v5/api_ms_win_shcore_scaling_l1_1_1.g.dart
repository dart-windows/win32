// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../callbacks.g.dart';
import '../guid.dart';
import '../structs.g.dart';
import '../types.dart';

final _api_ms_win_shcore_scaling_l1_1_1 =
    DynamicLibrary.open('api-ms-win-shcore-scaling-l1-1-1.dll');

/// Queries the dots per inch (dpi) of a display.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/shellscalingapi/nf-shellscalingapi-getdpiformonitor>.
///
/// {@category shcore}
int GetDpiForMonitor(int hmonitor, int dpiType, Pointer<Uint32> dpiX,
        Pointer<Uint32> dpiY) =>
    _GetDpiForMonitor(hmonitor, dpiType, dpiX, dpiY);

final _GetDpiForMonitor = _api_ms_win_shcore_scaling_l1_1_1.lookupFunction<
    HRESULT Function(HMONITOR hmonitor, Int32 dpiType, Pointer<Uint32> dpiX,
        Pointer<Uint32> dpiY),
    int Function(int hmonitor, int dpiType, Pointer<Uint32> dpiX,
        Pointer<Uint32> dpiY)>('GetDpiForMonitor');

/// Retrieves the dots per inch (dpi) awareness of the specified process.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/shellscalingapi/nf-shellscalingapi-getprocessdpiawareness>.
///
/// {@category shcore}
int GetProcessDpiAwareness(int? hprocess, Pointer<Int32> value) =>
    _GetProcessDpiAwareness(hprocess ?? 0, value);

final _GetProcessDpiAwareness =
    _api_ms_win_shcore_scaling_l1_1_1.lookupFunction<
        HRESULT Function(HANDLE hprocess, Pointer<Int32> value),
        int Function(
            int hprocess, Pointer<Int32> value)>('GetProcessDpiAwareness');

/// Gets the scale factor of a specific monitor.
///
/// This function replaces GetScaleFactorForDevice.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/shellscalingapi/nf-shellscalingapi-getscalefactorformonitor>.
///
/// {@category shcore}
int GetScaleFactorForMonitor(int hMon, Pointer<Int32> pScale) =>
    _GetScaleFactorForMonitor(hMon, pScale);

final _GetScaleFactorForMonitor =
    _api_ms_win_shcore_scaling_l1_1_1.lookupFunction<
        HRESULT Function(HMONITOR hMon, Pointer<Int32> pScale),
        int Function(
            int hMon, Pointer<Int32> pScale)>('GetScaleFactorForMonitor');

/// Sets the process-default DPI awareness level.
///
/// This is equivalent to calling SetProcessDpiAwarenessContext with the
/// corresponding DPI_AWARENESS_CONTEXT value.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/shellscalingapi/nf-shellscalingapi-setprocessdpiawareness>.
///
/// {@category shcore}
int SetProcessDpiAwareness(int value) => _SetProcessDpiAwareness(value);

final _SetProcessDpiAwareness = _api_ms_win_shcore_scaling_l1_1_1
    .lookupFunction<HRESULT Function(Int32 value), int Function(int value)>(
        'SetProcessDpiAwareness');