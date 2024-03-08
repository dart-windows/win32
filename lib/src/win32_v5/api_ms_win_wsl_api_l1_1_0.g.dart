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

final _api_ms_win_wsl_api_l1_1_0 =
    DynamicLibrary.open('api-ms-win-wsl-api-l1-1-0.dll');

/// Modifies the behavior of a distribution registered with the Windows
/// Subsystem for Linux (WSL).
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wslapi/nf-wslapi-wslconfiguredistribution>.
///
/// {@category wslapi}
int WslConfigureDistribution(Pointer<Utf16> distributionName, int defaultUID,
        int wslDistributionFlags) =>
    _WslConfigureDistribution(
        distributionName, defaultUID, wslDistributionFlags);

final _WslConfigureDistribution = _api_ms_win_wsl_api_l1_1_0.lookupFunction<
    HRESULT Function(Pointer<Utf16> distributionName, Uint32 defaultUID,
        Int32 wslDistributionFlags),
    int Function(Pointer<Utf16> distributionName, int defaultUID,
        int wslDistributionFlags)>('WslConfigureDistribution');

/// Retrieves the current configuration of a distribution registered with the
/// Windows Subsystem for Linux (WSL).
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wslapi/nf-wslapi-wslgetdistributionconfiguration>.
///
/// {@category wslapi}
int WslGetDistributionConfiguration(
        Pointer<Utf16> distributionName,
        Pointer<Uint32> distributionVersion,
        Pointer<Uint32> defaultUID,
        Pointer<Int32> wslDistributionFlags,
        Pointer<Pointer<Pointer<Utf8>>> defaultEnvironmentVariables,
        Pointer<Uint32> defaultEnvironmentVariableCount) =>
    _WslGetDistributionConfiguration(
        distributionName,
        distributionVersion,
        defaultUID,
        wslDistributionFlags,
        defaultEnvironmentVariables,
        defaultEnvironmentVariableCount);

final _WslGetDistributionConfiguration =
    _api_ms_win_wsl_api_l1_1_0.lookupFunction<
            HRESULT Function(
                Pointer<Utf16> distributionName,
                Pointer<Uint32> distributionVersion,
                Pointer<Uint32> defaultUID,
                Pointer<Int32> wslDistributionFlags,
                Pointer<Pointer<Pointer<Utf8>>> defaultEnvironmentVariables,
                Pointer<Uint32> defaultEnvironmentVariableCount),
            int Function(
                Pointer<Utf16> distributionName,
                Pointer<Uint32> distributionVersion,
                Pointer<Uint32> defaultUID,
                Pointer<Int32> wslDistributionFlags,
                Pointer<Pointer<Pointer<Utf8>>> defaultEnvironmentVariables,
                Pointer<Uint32> defaultEnvironmentVariableCount)>(
        'WslGetDistributionConfiguration');

/// Determines if a distribution is registered with the Windows Subsystem for
/// Linux (WSL).
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wslapi/nf-wslapi-wslisdistributionregistered>.
///
/// {@category wslapi}
int WslIsDistributionRegistered(Pointer<Utf16> distributionName) =>
    _WslIsDistributionRegistered(distributionName);

final _WslIsDistributionRegistered = _api_ms_win_wsl_api_l1_1_0.lookupFunction<
    BOOL Function(Pointer<Utf16> distributionName),
    int Function(
        Pointer<Utf16> distributionName)>('WslIsDistributionRegistered');

/// Launches a Windows Subsystem for Linux (WSL) process in the context of a
/// particular distribution.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wslapi/nf-wslapi-wsllaunch>.
///
/// {@category wslapi}
int WslLaunch(
        Pointer<Utf16> distributionName,
        Pointer<Utf16>? command,
        int useCurrentWorkingDirectory,
        int stdIn,
        int stdOut,
        int stdErr,
        Pointer<HANDLE> process) =>
    _WslLaunch(distributionName, command ?? nullptr, useCurrentWorkingDirectory,
        stdIn, stdOut, stdErr, process);

final _WslLaunch = _api_ms_win_wsl_api_l1_1_0.lookupFunction<
    HRESULT Function(
        Pointer<Utf16> distributionName,
        Pointer<Utf16> command,
        BOOL useCurrentWorkingDirectory,
        HANDLE stdIn,
        HANDLE stdOut,
        HANDLE stdErr,
        Pointer<HANDLE> process),
    int Function(
        Pointer<Utf16> distributionName,
        Pointer<Utf16> command,
        int useCurrentWorkingDirectory,
        int stdIn,
        int stdOut,
        int stdErr,
        Pointer<HANDLE> process)>('WslLaunch');

/// Launches an interactive Windows Subsystem for Linux (WSL) process in the
/// context of a particular distribution.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wslapi/nf-wslapi-wsllaunchinteractive>.
///
/// {@category wslapi}
int WslLaunchInteractive(
        Pointer<Utf16> distributionName,
        Pointer<Utf16>? command,
        int useCurrentWorkingDirectory,
        Pointer<Uint32> exitCode) =>
    _WslLaunchInteractive(distributionName, command ?? nullptr,
        useCurrentWorkingDirectory, exitCode);

final _WslLaunchInteractive = _api_ms_win_wsl_api_l1_1_0.lookupFunction<
    HRESULT Function(Pointer<Utf16> distributionName, Pointer<Utf16> command,
        BOOL useCurrentWorkingDirectory, Pointer<Uint32> exitCode),
    int Function(
        Pointer<Utf16> distributionName,
        Pointer<Utf16> command,
        int useCurrentWorkingDirectory,
        Pointer<Uint32> exitCode)>('WslLaunchInteractive');

/// Registers a new distribution with the Windows Subsystem for Linux (WSL).
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wslapi/nf-wslapi-wslregisterdistribution>.
///
/// {@category wslapi}
int WslRegisterDistribution(
        Pointer<Utf16> distributionName, Pointer<Utf16> tarGzFilename) =>
    _WslRegisterDistribution(distributionName, tarGzFilename);

final _WslRegisterDistribution = _api_ms_win_wsl_api_l1_1_0.lookupFunction<
    HRESULT Function(
        Pointer<Utf16> distributionName, Pointer<Utf16> tarGzFilename),
    int Function(Pointer<Utf16> distributionName,
        Pointer<Utf16> tarGzFilename)>('WslRegisterDistribution');

/// Unregisters a distribution from the Windows Subsystem for Linux (WSL).
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wslapi/nf-wslapi-wslunregisterdistribution>.
///
/// {@category wslapi}
int WslUnregisterDistribution(Pointer<Utf16> distributionName) =>
    _WslUnregisterDistribution(distributionName);

final _WslUnregisterDistribution = _api_ms_win_wsl_api_l1_1_0.lookupFunction<
    HRESULT Function(Pointer<Utf16> distributionName),
    int Function(Pointer<Utf16> distributionName)>('WslUnregisterDistribution');
