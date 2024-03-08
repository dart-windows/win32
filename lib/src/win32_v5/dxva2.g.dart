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

final _dxva2 = DynamicLibrary.open('dxva2.dll');

/// Closes a handle to a physical monitor.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/physicalmonitorenumerationapi/nf-physicalmonitorenumerationapi-destroyphysicalmonitor>.
///
/// {@category dxva2}
int DestroyPhysicalMonitor(int hMonitor) => _DestroyPhysicalMonitor(hMonitor);

final _DestroyPhysicalMonitor = _dxva2.lookupFunction<
    BOOL Function(HANDLE hMonitor),
    int Function(int hMonitor)>('DestroyPhysicalMonitor');

/// Closes an array of physical monitor handles.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/physicalmonitorenumerationapi/nf-physicalmonitorenumerationapi-destroyphysicalmonitors>.
///
/// {@category dxva2}
int DestroyPhysicalMonitors(int dwPhysicalMonitorArraySize,
        Pointer<PHYSICAL_MONITOR> pPhysicalMonitorArray) =>
    _DestroyPhysicalMonitors(dwPhysicalMonitorArraySize, pPhysicalMonitorArray);

final _DestroyPhysicalMonitors = _dxva2.lookupFunction<
        BOOL Function(Uint32 dwPhysicalMonitorArraySize,
            Pointer<PHYSICAL_MONITOR> pPhysicalMonitorArray),
        int Function(int dwPhysicalMonitorArraySize,
            Pointer<PHYSICAL_MONITOR> pPhysicalMonitorArray)>(
    'DestroyPhysicalMonitors');

/// Retrieves a monitor's minimum, maximum, and current brightness settings.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/highlevelmonitorconfigurationapi/nf-highlevelmonitorconfigurationapi-getmonitorbrightness>.
///
/// {@category dxva2}
int GetMonitorBrightness(
        int hMonitor,
        Pointer<Uint32> pdwMinimumBrightness,
        Pointer<Uint32> pdwCurrentBrightness,
        Pointer<Uint32> pdwMaximumBrightness) =>
    _GetMonitorBrightness(hMonitor, pdwMinimumBrightness, pdwCurrentBrightness,
        pdwMaximumBrightness);

final _GetMonitorBrightness = _dxva2.lookupFunction<
    Int32 Function(
        HANDLE hMonitor,
        Pointer<Uint32> pdwMinimumBrightness,
        Pointer<Uint32> pdwCurrentBrightness,
        Pointer<Uint32> pdwMaximumBrightness),
    int Function(
        int hMonitor,
        Pointer<Uint32> pdwMinimumBrightness,
        Pointer<Uint32> pdwCurrentBrightness,
        Pointer<Uint32> pdwMaximumBrightness)>('GetMonitorBrightness');

/// Retrieves the configuration capabilities of a monitor.
///
/// Call this function to find out which high-level monitor configuration
/// functions are supported by the monitor.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/highlevelmonitorconfigurationapi/nf-highlevelmonitorconfigurationapi-getmonitorcapabilities>.
///
/// {@category dxva2}
int GetMonitorCapabilities(int hMonitor, Pointer<Uint32> pdwMonitorCapabilities,
        Pointer<Uint32> pdwSupportedColorTemperatures) =>
    _GetMonitorCapabilities(
        hMonitor, pdwMonitorCapabilities, pdwSupportedColorTemperatures);

final _GetMonitorCapabilities = _dxva2.lookupFunction<
        Int32 Function(HANDLE hMonitor, Pointer<Uint32> pdwMonitorCapabilities,
            Pointer<Uint32> pdwSupportedColorTemperatures),
        int Function(int hMonitor, Pointer<Uint32> pdwMonitorCapabilities,
            Pointer<Uint32> pdwSupportedColorTemperatures)>(
    'GetMonitorCapabilities');

/// Retrieves a monitor's current color temperature.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/highlevelmonitorconfigurationapi/nf-highlevelmonitorconfigurationapi-getmonitorcolortemperature>.
///
/// {@category dxva2}
int GetMonitorColorTemperature(
        int hMonitor, Pointer<Int32> pctCurrentColorTemperature) =>
    _GetMonitorColorTemperature(hMonitor, pctCurrentColorTemperature);

final _GetMonitorColorTemperature = _dxva2.lookupFunction<
    Int32 Function(HANDLE hMonitor, Pointer<Int32> pctCurrentColorTemperature),
    int Function(
        int hMonitor,
        Pointer<Int32>
            pctCurrentColorTemperature)>('GetMonitorColorTemperature');

/// Retrieves a monitor's minimum, maximum, and current contrast settings.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/highlevelmonitorconfigurationapi/nf-highlevelmonitorconfigurationapi-getmonitorcontrast>.
///
/// {@category dxva2}
int GetMonitorContrast(
        int hMonitor,
        Pointer<Uint32> pdwMinimumContrast,
        Pointer<Uint32> pdwCurrentContrast,
        Pointer<Uint32> pdwMaximumContrast) =>
    _GetMonitorContrast(
        hMonitor, pdwMinimumContrast, pdwCurrentContrast, pdwMaximumContrast);

final _GetMonitorContrast = _dxva2.lookupFunction<
    Int32 Function(HANDLE hMonitor, Pointer<Uint32> pdwMinimumContrast,
        Pointer<Uint32> pdwCurrentContrast, Pointer<Uint32> pdwMaximumContrast),
    int Function(
        int hMonitor,
        Pointer<Uint32> pdwMinimumContrast,
        Pointer<Uint32> pdwCurrentContrast,
        Pointer<Uint32> pdwMaximumContrast)>('GetMonitorContrast');

/// Retrieves a monitor's minimum, maximum, and current horizontal or vertical
/// position.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/highlevelmonitorconfigurationapi/nf-highlevelmonitorconfigurationapi-getmonitordisplayareaposition>.
///
/// {@category dxva2}
int GetMonitorDisplayAreaPosition(
        int hMonitor,
        int ptPositionType,
        Pointer<Uint32> pdwMinimumPosition,
        Pointer<Uint32> pdwCurrentPosition,
        Pointer<Uint32> pdwMaximumPosition) =>
    _GetMonitorDisplayAreaPosition(hMonitor, ptPositionType, pdwMinimumPosition,
        pdwCurrentPosition, pdwMaximumPosition);

final _GetMonitorDisplayAreaPosition = _dxva2.lookupFunction<
    Int32 Function(
        HANDLE hMonitor,
        Int32 ptPositionType,
        Pointer<Uint32> pdwMinimumPosition,
        Pointer<Uint32> pdwCurrentPosition,
        Pointer<Uint32> pdwMaximumPosition),
    int Function(
        int hMonitor,
        int ptPositionType,
        Pointer<Uint32> pdwMinimumPosition,
        Pointer<Uint32> pdwCurrentPosition,
        Pointer<Uint32> pdwMaximumPosition)>('GetMonitorDisplayAreaPosition');

/// Retrieves a monitor's minimum, maximum, and current width or height.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/highlevelmonitorconfigurationapi/nf-highlevelmonitorconfigurationapi-getmonitordisplayareasize>.
///
/// {@category dxva2}
int GetMonitorDisplayAreaSize(
        int hMonitor,
        int stSizeType,
        Pointer<Uint32> pdwMinimumWidthOrHeight,
        Pointer<Uint32> pdwCurrentWidthOrHeight,
        Pointer<Uint32> pdwMaximumWidthOrHeight) =>
    _GetMonitorDisplayAreaSize(hMonitor, stSizeType, pdwMinimumWidthOrHeight,
        pdwCurrentWidthOrHeight, pdwMaximumWidthOrHeight);

final _GetMonitorDisplayAreaSize = _dxva2.lookupFunction<
    Int32 Function(
        HANDLE hMonitor,
        Int32 stSizeType,
        Pointer<Uint32> pdwMinimumWidthOrHeight,
        Pointer<Uint32> pdwCurrentWidthOrHeight,
        Pointer<Uint32> pdwMaximumWidthOrHeight),
    int Function(
        int hMonitor,
        int stSizeType,
        Pointer<Uint32> pdwMinimumWidthOrHeight,
        Pointer<Uint32> pdwCurrentWidthOrHeight,
        Pointer<Uint32> pdwMaximumWidthOrHeight)>('GetMonitorDisplayAreaSize');

/// Retrieves a monitor's red, green, or blue drive value.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/highlevelmonitorconfigurationapi/nf-highlevelmonitorconfigurationapi-getmonitorredgreenorbluedrive>.
///
/// {@category dxva2}
int GetMonitorRedGreenOrBlueDrive(
        int hMonitor,
        int dtDriveType,
        Pointer<Uint32> pdwMinimumDrive,
        Pointer<Uint32> pdwCurrentDrive,
        Pointer<Uint32> pdwMaximumDrive) =>
    _GetMonitorRedGreenOrBlueDrive(hMonitor, dtDriveType, pdwMinimumDrive,
        pdwCurrentDrive, pdwMaximumDrive);

final _GetMonitorRedGreenOrBlueDrive = _dxva2.lookupFunction<
    Int32 Function(
        HANDLE hMonitor,
        Int32 dtDriveType,
        Pointer<Uint32> pdwMinimumDrive,
        Pointer<Uint32> pdwCurrentDrive,
        Pointer<Uint32> pdwMaximumDrive),
    int Function(
        int hMonitor,
        int dtDriveType,
        Pointer<Uint32> pdwMinimumDrive,
        Pointer<Uint32> pdwCurrentDrive,
        Pointer<Uint32> pdwMaximumDrive)>('GetMonitorRedGreenOrBlueDrive');

/// Retrieves a monitor's red, green, or blue gain value.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/highlevelmonitorconfigurationapi/nf-highlevelmonitorconfigurationapi-getmonitorredgreenorbluegain>.
///
/// {@category dxva2}
int GetMonitorRedGreenOrBlueGain(
        int hMonitor,
        int gtGainType,
        Pointer<Uint32> pdwMinimumGain,
        Pointer<Uint32> pdwCurrentGain,
        Pointer<Uint32> pdwMaximumGain) =>
    _GetMonitorRedGreenOrBlueGain(
        hMonitor, gtGainType, pdwMinimumGain, pdwCurrentGain, pdwMaximumGain);

final _GetMonitorRedGreenOrBlueGain = _dxva2.lookupFunction<
    Int32 Function(
        HANDLE hMonitor,
        Int32 gtGainType,
        Pointer<Uint32> pdwMinimumGain,
        Pointer<Uint32> pdwCurrentGain,
        Pointer<Uint32> pdwMaximumGain),
    int Function(
        int hMonitor,
        int gtGainType,
        Pointer<Uint32> pdwMinimumGain,
        Pointer<Uint32> pdwCurrentGain,
        Pointer<Uint32> pdwMaximumGain)>('GetMonitorRedGreenOrBlueGain');

/// Retrieves the type of technology used by a monitor.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/highlevelmonitorconfigurationapi/nf-highlevelmonitorconfigurationapi-getmonitortechnologytype>.
///
/// {@category dxva2}
int GetMonitorTechnologyType(
        int hMonitor, Pointer<Int32> pdtyDisplayTechnologyType) =>
    _GetMonitorTechnologyType(hMonitor, pdtyDisplayTechnologyType);

final _GetMonitorTechnologyType = _dxva2.lookupFunction<
    Int32 Function(HANDLE hMonitor, Pointer<Int32> pdtyDisplayTechnologyType),
    int Function(int hMonitor,
        Pointer<Int32> pdtyDisplayTechnologyType)>('GetMonitorTechnologyType');

/// Retrieves the number of physical monitors associated with an HMONITOR
/// monitor handle.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/physicalmonitorenumerationapi/nf-physicalmonitorenumerationapi-getnumberofphysicalmonitorsfromhmonitor>.
///
/// {@category dxva2}
int GetNumberOfPhysicalMonitorsFromHMONITOR(
        int hMonitor, Pointer<Uint32> pdwNumberOfPhysicalMonitors) =>
    _GetNumberOfPhysicalMonitorsFromHMONITOR(
        hMonitor, pdwNumberOfPhysicalMonitors);

final _GetNumberOfPhysicalMonitorsFromHMONITOR = _dxva2.lookupFunction<
        BOOL Function(
            HMONITOR hMonitor, Pointer<Uint32> pdwNumberOfPhysicalMonitors),
        int Function(
            int hMonitor, Pointer<Uint32> pdwNumberOfPhysicalMonitors)>(
    'GetNumberOfPhysicalMonitorsFromHMONITOR');

/// Retrieves the physical monitors associated with an HMONITOR monitor handle.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/physicalmonitorenumerationapi/nf-physicalmonitorenumerationapi-getphysicalmonitorsfromhmonitor>.
///
/// {@category dxva2}
int GetPhysicalMonitorsFromHMONITOR(
        int hMonitor,
        int dwPhysicalMonitorArraySize,
        Pointer<PHYSICAL_MONITOR> pPhysicalMonitorArray) =>
    _GetPhysicalMonitorsFromHMONITOR(
        hMonitor, dwPhysicalMonitorArraySize, pPhysicalMonitorArray);

final _GetPhysicalMonitorsFromHMONITOR = _dxva2.lookupFunction<
        BOOL Function(HMONITOR hMonitor, Uint32 dwPhysicalMonitorArraySize,
            Pointer<PHYSICAL_MONITOR> pPhysicalMonitorArray),
        int Function(int hMonitor, int dwPhysicalMonitorArraySize,
            Pointer<PHYSICAL_MONITOR> pPhysicalMonitorArray)>(
    'GetPhysicalMonitorsFromHMONITOR');

/// Saves the current monitor settings to the display's nonvolatile storage.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/highlevelmonitorconfigurationapi/nf-highlevelmonitorconfigurationapi-savecurrentmonitorsettings>.
///
/// {@category dxva2}
int SaveCurrentMonitorSettings(int hMonitor) =>
    _SaveCurrentMonitorSettings(hMonitor);

final _SaveCurrentMonitorSettings = _dxva2.lookupFunction<
    Int32 Function(HANDLE hMonitor),
    int Function(int hMonitor)>('SaveCurrentMonitorSettings');

/// Sets a monitor's brightness value.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/highlevelmonitorconfigurationapi/nf-highlevelmonitorconfigurationapi-setmonitorbrightness>.
///
/// {@category dxva2}
int SetMonitorBrightness(int hMonitor, int dwNewBrightness) =>
    _SetMonitorBrightness(hMonitor, dwNewBrightness);

final _SetMonitorBrightness = _dxva2.lookupFunction<
    Int32 Function(HANDLE hMonitor, Uint32 dwNewBrightness),
    int Function(int hMonitor, int dwNewBrightness)>('SetMonitorBrightness');

/// Sets a monitor's color temperature.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/highlevelmonitorconfigurationapi/nf-highlevelmonitorconfigurationapi-setmonitorcolortemperature>.
///
/// {@category dxva2}
int SetMonitorColorTemperature(int hMonitor, int ctCurrentColorTemperature) =>
    _SetMonitorColorTemperature(hMonitor, ctCurrentColorTemperature);

final _SetMonitorColorTemperature = _dxva2.lookupFunction<
    Int32 Function(HANDLE hMonitor, Int32 ctCurrentColorTemperature),
    int Function(int hMonitor,
        int ctCurrentColorTemperature)>('SetMonitorColorTemperature');

/// Sets a monitor's contrast value.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/highlevelmonitorconfigurationapi/nf-highlevelmonitorconfigurationapi-setmonitorcontrast>.
///
/// {@category dxva2}
int SetMonitorContrast(int hMonitor, int dwNewContrast) =>
    _SetMonitorContrast(hMonitor, dwNewContrast);

final _SetMonitorContrast = _dxva2.lookupFunction<
    Int32 Function(HANDLE hMonitor, Uint32 dwNewContrast),
    int Function(int hMonitor, int dwNewContrast)>('SetMonitorContrast');

/// Sets the horizontal or vertical position of a monitor's display area.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/highlevelmonitorconfigurationapi/nf-highlevelmonitorconfigurationapi-setmonitordisplayareaposition>.
///
/// {@category dxva2}
int SetMonitorDisplayAreaPosition(
        int hMonitor, int ptPositionType, int dwNewPosition) =>
    _SetMonitorDisplayAreaPosition(hMonitor, ptPositionType, dwNewPosition);

final _SetMonitorDisplayAreaPosition = _dxva2.lookupFunction<
    Int32 Function(HANDLE hMonitor, Int32 ptPositionType, Uint32 dwNewPosition),
    int Function(int hMonitor, int ptPositionType,
        int dwNewPosition)>('SetMonitorDisplayAreaPosition');

/// Sets the width or height of a monitor's display area.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/highlevelmonitorconfigurationapi/nf-highlevelmonitorconfigurationapi-setmonitordisplayareasize>.
///
/// {@category dxva2}
int SetMonitorDisplayAreaSize(
        int hMonitor, int stSizeType, int dwNewDisplayAreaWidthOrHeight) =>
    _SetMonitorDisplayAreaSize(
        hMonitor, stSizeType, dwNewDisplayAreaWidthOrHeight);

final _SetMonitorDisplayAreaSize = _dxva2.lookupFunction<
    Int32 Function(HANDLE hMonitor, Int32 stSizeType,
        Uint32 dwNewDisplayAreaWidthOrHeight),
    int Function(int hMonitor, int stSizeType,
        int dwNewDisplayAreaWidthOrHeight)>('SetMonitorDisplayAreaSize');

/// Sets a monitor's red, green, or blue drive value.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/highlevelmonitorconfigurationapi/nf-highlevelmonitorconfigurationapi-setmonitorredgreenorbluedrive>.
///
/// {@category dxva2}
int SetMonitorRedGreenOrBlueDrive(
        int hMonitor, int dtDriveType, int dwNewDrive) =>
    _SetMonitorRedGreenOrBlueDrive(hMonitor, dtDriveType, dwNewDrive);

final _SetMonitorRedGreenOrBlueDrive = _dxva2.lookupFunction<
    Int32 Function(HANDLE hMonitor, Int32 dtDriveType, Uint32 dwNewDrive),
    int Function(int hMonitor, int dtDriveType,
        int dwNewDrive)>('SetMonitorRedGreenOrBlueDrive');

/// Sets a monitor's red, green, or blue gain value.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/highlevelmonitorconfigurationapi/nf-highlevelmonitorconfigurationapi-setmonitorredgreenorbluegain>.
///
/// {@category dxva2}
int SetMonitorRedGreenOrBlueGain(int hMonitor, int gtGainType, int dwNewGain) =>
    _SetMonitorRedGreenOrBlueGain(hMonitor, gtGainType, dwNewGain);

final _SetMonitorRedGreenOrBlueGain = _dxva2.lookupFunction<
    Int32 Function(HANDLE hMonitor, Int32 gtGainType, Uint32 dwNewGain),
    int Function(int hMonitor, int gtGainType,
        int dwNewGain)>('SetMonitorRedGreenOrBlueGain');
