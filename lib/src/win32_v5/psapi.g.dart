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

final _psapi = DynamicLibrary.open('psapi.dll');

/// Removes as many pages as possible from the working set of the specified
/// process.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/psapi/nf-psapi-emptyworkingset>.
///
/// {@category psapi}
int EmptyWorkingSet(int hProcess) => _EmptyWorkingSet(hProcess);

final _EmptyWorkingSet = _psapi.lookupFunction<BOOL Function(HANDLE hProcess),
    int Function(int hProcess)>('EmptyWorkingSet');

/// Retrieves the load address for each device driver in the system.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/psapi/nf-psapi-enumdevicedrivers>.
///
/// {@category psapi}
int EnumDeviceDrivers(
        Pointer<Pointer> lpImageBase, int cb, Pointer<Uint32> lpcbNeeded) =>
    _EnumDeviceDrivers(lpImageBase, cb, lpcbNeeded);

final _EnumDeviceDrivers = _psapi.lookupFunction<
    BOOL Function(
        Pointer<Pointer> lpImageBase, Uint32 cb, Pointer<Uint32> lpcbNeeded),
    int Function(Pointer<Pointer> lpImageBase, int cb,
        Pointer<Uint32> lpcbNeeded)>('EnumDeviceDrivers');

/// Calls the callback routine for each installed pagefile in the system.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/psapi/nf-psapi-enumpagefilesw>.
///
/// {@category psapi}
int EnumPageFiles(
        Pointer<NativeFunction<PENUM_PAGE_FILE_CALLBACK>> pCallBackRoutine,
        Pointer pContext) =>
    _EnumPageFiles(pCallBackRoutine, pContext);

final _EnumPageFiles = _psapi.lookupFunction<
    BOOL Function(
        Pointer<NativeFunction<PENUM_PAGE_FILE_CALLBACK>> pCallBackRoutine,
        Pointer pContext),
    int Function(
        Pointer<NativeFunction<PENUM_PAGE_FILE_CALLBACK>> pCallBackRoutine,
        Pointer pContext)>('EnumPageFilesW');

/// Retrieves the process identifier for each process object in the system.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/psapi/nf-psapi-enumprocesses>.
///
/// {@category psapi}
int EnumProcesses(
        Pointer<Uint32> lpidProcess, int cb, Pointer<Uint32> lpcbNeeded) =>
    _EnumProcesses(lpidProcess, cb, lpcbNeeded);

final _EnumProcesses = _psapi.lookupFunction<
    BOOL Function(
        Pointer<Uint32> lpidProcess, Uint32 cb, Pointer<Uint32> lpcbNeeded),
    int Function(Pointer<Uint32> lpidProcess, int cb,
        Pointer<Uint32> lpcbNeeded)>('EnumProcesses');

/// Retrieves a handle for each module in the specified process.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/psapi/nf-psapi-enumprocessmodules>.
///
/// {@category psapi}
int EnumProcessModules(int hProcess, Pointer<HMODULE> lphModule, int cb,
        Pointer<Uint32> lpcbNeeded) =>
    _EnumProcessModules(hProcess, lphModule, cb, lpcbNeeded);

final _EnumProcessModules = _psapi.lookupFunction<
    BOOL Function(HANDLE hProcess, Pointer<HMODULE> lphModule, Uint32 cb,
        Pointer<Uint32> lpcbNeeded),
    int Function(int hProcess, Pointer<HMODULE> lphModule, int cb,
        Pointer<Uint32> lpcbNeeded)>('EnumProcessModules');

/// Retrieves a handle for each module in the specified process that meets the
/// specified filter criteria.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/psapi/nf-psapi-enumprocessmodulesex>.
///
/// {@category psapi}
int EnumProcessModulesEx(int hProcess, Pointer<HMODULE> lphModule, int cb,
        Pointer<Uint32> lpcbNeeded, int dwFilterFlag) =>
    _EnumProcessModulesEx(hProcess, lphModule, cb, lpcbNeeded, dwFilterFlag);

final _EnumProcessModulesEx = _psapi.lookupFunction<
    BOOL Function(HANDLE hProcess, Pointer<HMODULE> lphModule, Uint32 cb,
        Pointer<Uint32> lpcbNeeded, Uint32 dwFilterFlag),
    int Function(int hProcess, Pointer<HMODULE> lphModule, int cb,
        Pointer<Uint32> lpcbNeeded, int dwFilterFlag)>('EnumProcessModulesEx');

/// Retrieves the base name of the specified device driver.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/psapi/nf-psapi-getdevicedriverbasenamew>.
///
/// {@category psapi}
int GetDeviceDriverBaseName(
        Pointer imageBase, Pointer<Utf16> lpBaseName, int nSize) =>
    _GetDeviceDriverBaseName(imageBase, lpBaseName, nSize);

final _GetDeviceDriverBaseName = _psapi.lookupFunction<
    Uint32 Function(Pointer imageBase, Pointer<Utf16> lpBaseName, Uint32 nSize),
    int Function(Pointer imageBase, Pointer<Utf16> lpBaseName,
        int nSize)>('GetDeviceDriverBaseNameW');

/// Retrieves the path available for the specified device driver.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/psapi/nf-psapi-getdevicedriverfilenamew>.
///
/// {@category psapi}
int GetDeviceDriverFileName(
        Pointer imageBase, Pointer<Utf16> lpFilename, int nSize) =>
    _GetDeviceDriverFileName(imageBase, lpFilename, nSize);

final _GetDeviceDriverFileName = _psapi.lookupFunction<
    Uint32 Function(Pointer imageBase, Pointer<Utf16> lpFilename, Uint32 nSize),
    int Function(Pointer imageBase, Pointer<Utf16> lpFilename,
        int nSize)>('GetDeviceDriverFileNameW');

/// Checks whether the specified address is within a memory-mapped file in the
/// address space of the specified process.
///
/// If so, the function returns the name of the memory-mapped file.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/psapi/nf-psapi-getmappedfilenamew>.
///
/// {@category psapi}
int GetMappedFileName(
        int hProcess, Pointer lpv, Pointer<Utf16> lpFilename, int nSize) =>
    _GetMappedFileName(hProcess, lpv, lpFilename, nSize);

final _GetMappedFileName = _psapi.lookupFunction<
    Uint32 Function(
        HANDLE hProcess, Pointer lpv, Pointer<Utf16> lpFilename, Uint32 nSize),
    int Function(int hProcess, Pointer lpv, Pointer<Utf16> lpFilename,
        int nSize)>('GetMappedFileNameW');

/// Retrieves the base name of the specified module.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/psapi/nf-psapi-getmodulebasenamew>.
///
/// {@category psapi}
int GetModuleBaseName(
        int hProcess, int? hModule, Pointer<Utf16> lpBaseName, int nSize) =>
    _GetModuleBaseName(hProcess, hModule ?? 0, lpBaseName, nSize);

final _GetModuleBaseName = _psapi.lookupFunction<
    Uint32 Function(HANDLE hProcess, HMODULE hModule, Pointer<Utf16> lpBaseName,
        Uint32 nSize),
    int Function(int hProcess, int hModule, Pointer<Utf16> lpBaseName,
        int nSize)>('GetModuleBaseNameW');

/// Retrieves the fully qualified path for the file containing the specified
/// module.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/psapi/nf-psapi-getmodulefilenameexw>.
///
/// {@category psapi}
int GetModuleFileNameEx(
        int? hProcess, int? hModule, Pointer<Utf16> lpFilename, int nSize) =>
    _GetModuleFileNameEx(hProcess ?? 0, hModule ?? 0, lpFilename, nSize);

final _GetModuleFileNameEx = _psapi.lookupFunction<
    Uint32 Function(HANDLE hProcess, HMODULE hModule, Pointer<Utf16> lpFilename,
        Uint32 nSize),
    int Function(int hProcess, int hModule, Pointer<Utf16> lpFilename,
        int nSize)>('GetModuleFileNameExW');

/// Retrieves information about the specified module in the MODULEINFO
/// structure.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/psapi/nf-psapi-getmoduleinformation>.
///
/// {@category psapi}
int GetModuleInformation(
        int hProcess, int hModule, Pointer<MODULEINFO> lpmodinfo, int cb) =>
    _GetModuleInformation(hProcess, hModule, lpmodinfo, cb);

final _GetModuleInformation = _psapi.lookupFunction<
    BOOL Function(HANDLE hProcess, HMODULE hModule,
        Pointer<MODULEINFO> lpmodinfo, Uint32 cb),
    int Function(int hProcess, int hModule, Pointer<MODULEINFO> lpmodinfo,
        int cb)>('GetModuleInformation');

/// Retrieves the performance values contained in the PERFORMANCE_INFORMATION
/// structure.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/psapi/nf-psapi-getperformanceinfo>.
///
/// {@category psapi}
int GetPerformanceInfo(
        Pointer<PERFORMANCE_INFORMATION> pPerformanceInformation, int cb) =>
    _GetPerformanceInfo(pPerformanceInformation, cb);

final _GetPerformanceInfo = _psapi.lookupFunction<
    BOOL Function(
        Pointer<PERFORMANCE_INFORMATION> pPerformanceInformation, Uint32 cb),
    int Function(Pointer<PERFORMANCE_INFORMATION> pPerformanceInformation,
        int cb)>('GetPerformanceInfo');

/// Retrieves the name of the executable file for the specified process.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/psapi/nf-psapi-getprocessimagefilenamew>.
///
/// {@category psapi}
int GetProcessImageFileName(
        int hProcess, Pointer<Utf16> lpImageFileName, int nSize) =>
    _GetProcessImageFileName(hProcess, lpImageFileName, nSize);

final _GetProcessImageFileName = _psapi.lookupFunction<
    Uint32 Function(
        HANDLE hProcess, Pointer<Utf16> lpImageFileName, Uint32 nSize),
    int Function(int hProcess, Pointer<Utf16> lpImageFileName,
        int nSize)>('GetProcessImageFileNameW');
