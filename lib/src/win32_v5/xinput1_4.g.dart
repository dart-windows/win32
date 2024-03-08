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

final _xinput1_4 = DynamicLibrary.open('xinput1_4.dll');

/// Sets the reporting state of XInput.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/xinput/nf-xinput-xinputenable>.
///
/// {@category xinput}
void XInputEnable(int enable) => _XInputEnable(enable);

final _XInputEnable = _xinput1_4.lookupFunction<Void Function(BOOL enable),
    void Function(int enable)>('XInputEnable');

/// Retrieves the sound rendering and sound capture audio device IDs that are
/// associated with the headset connected to the specified controller.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/xinput/nf-xinput-xinputgetaudiodeviceids>.
///
/// {@category xinput}
int XInputGetAudioDeviceIds(
        int dwUserIndex,
        Pointer<Utf16>? pRenderDeviceId,
        Pointer<Uint32>? pRenderCount,
        Pointer<Utf16>? pCaptureDeviceId,
        Pointer<Uint32>? pCaptureCount) =>
    _XInputGetAudioDeviceIds(
        dwUserIndex,
        pRenderDeviceId ?? nullptr,
        pRenderCount ?? nullptr,
        pCaptureDeviceId ?? nullptr,
        pCaptureCount ?? nullptr);

final _XInputGetAudioDeviceIds = _xinput1_4.lookupFunction<
    Uint32 Function(
        Uint32 dwUserIndex,
        Pointer<Utf16> pRenderDeviceId,
        Pointer<Uint32> pRenderCount,
        Pointer<Utf16> pCaptureDeviceId,
        Pointer<Uint32> pCaptureCount),
    int Function(
        int dwUserIndex,
        Pointer<Utf16> pRenderDeviceId,
        Pointer<Uint32> pRenderCount,
        Pointer<Utf16> pCaptureDeviceId,
        Pointer<Uint32> pCaptureCount)>('XInputGetAudioDeviceIds');

/// Retrieves the battery type and charge status of a wireless controller.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/xinput/nf-xinput-xinputgetbatteryinformation>.
///
/// {@category xinput}
int XInputGetBatteryInformation(int dwUserIndex, int devType,
        Pointer<XINPUT_BATTERY_INFORMATION> pBatteryInformation) =>
    _XInputGetBatteryInformation(dwUserIndex, devType, pBatteryInformation);

final _XInputGetBatteryInformation = _xinput1_4.lookupFunction<
        Uint32 Function(Uint32 dwUserIndex, Uint8 devType,
            Pointer<XINPUT_BATTERY_INFORMATION> pBatteryInformation),
        int Function(int dwUserIndex, int devType,
            Pointer<XINPUT_BATTERY_INFORMATION> pBatteryInformation)>(
    'XInputGetBatteryInformation');

/// Retrieves the capabilities and features of a connected controller.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/xinput/nf-xinput-xinputgetcapabilities>.
///
/// {@category xinput}
int XInputGetCapabilities(int dwUserIndex, int dwFlags,
        Pointer<XINPUT_CAPABILITIES> pCapabilities) =>
    _XInputGetCapabilities(dwUserIndex, dwFlags, pCapabilities);

final _XInputGetCapabilities = _xinput1_4.lookupFunction<
    Uint32 Function(Uint32 dwUserIndex, Uint32 dwFlags,
        Pointer<XINPUT_CAPABILITIES> pCapabilities),
    int Function(int dwUserIndex, int dwFlags,
        Pointer<XINPUT_CAPABILITIES> pCapabilities)>('XInputGetCapabilities');

/// Retrieves a gamepad input event.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/xinput/nf-xinput-xinputgetkeystroke>.
///
/// {@category xinput}
int XInputGetKeystroke(int dwUserIndex, Pointer<XINPUT_KEYSTROKE> pKeystroke) =>
    _XInputGetKeystroke(dwUserIndex, 0, pKeystroke);

final _XInputGetKeystroke = _xinput1_4.lookupFunction<
    Uint32 Function(Uint32 dwUserIndex, Uint32 dwReserved,
        Pointer<XINPUT_KEYSTROKE> pKeystroke),
    int Function(int dwUserIndex, int dwReserved,
        Pointer<XINPUT_KEYSTROKE> pKeystroke)>('XInputGetKeystroke');

/// Retrieves the current state of the specified controller.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/xinput/nf-xinput-xinputgetstate>.
///
/// {@category xinput}
int XInputGetState(int dwUserIndex, Pointer<XINPUT_STATE> pState) =>
    _XInputGetState(dwUserIndex, pState);

final _XInputGetState = _xinput1_4.lookupFunction<
    Uint32 Function(Uint32 dwUserIndex, Pointer<XINPUT_STATE> pState),
    int Function(
        int dwUserIndex, Pointer<XINPUT_STATE> pState)>('XInputGetState');

/// Sends data to a connected controller.
///
/// This function is used to activate the vibration function of a controller.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/xinput/nf-xinput-xinputsetstate>.
///
/// {@category xinput}
int XInputSetState(int dwUserIndex, Pointer<XINPUT_VIBRATION> pVibration) =>
    _XInputSetState(dwUserIndex, pVibration);

final _XInputSetState = _xinput1_4.lookupFunction<
    Uint32 Function(Uint32 dwUserIndex, Pointer<XINPUT_VIBRATION> pVibration),
    int Function(int dwUserIndex,
        Pointer<XINPUT_VIBRATION> pVibration)>('XInputSetState');
