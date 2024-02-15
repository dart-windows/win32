// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../callbacks.dart';
import '../guid.dart';
import '../structs.g.dart';
import '../types.dart';

final _psapi = DynamicLibrary.open('psapi.dll');

/// Removes as many pages as possible from the working set of the specified
/// process.
///
/// ```c
/// BOOL EmptyWorkingSet(
///   [in] HANDLE hProcess
/// );
/// ```
/// {@category psapi}
int EmptyWorkingSet(int hProcess) => _EmptyWorkingSet(hProcess);

final _EmptyWorkingSet = _psapi.lookupFunction<BOOL Function(HANDLE hProcess),
    int Function(int hProcess)>('EmptyWorkingSet');

/// Retrieves the load address for each device driver in the system.
///
/// ```c
/// BOOL EnumDeviceDrivers(
///   [out] LPVOID  *lpImageBase,
///   [in]  DWORD   cb,
///   [out] LPDWORD lpcbNeeded
/// );
/// ```
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
/// ```c
/// BOOL EnumPageFilesW(
///   [out] PENUM_PAGE_FILE_CALLBACKW pCallBackRoutine,
///   [in]  LPVOID                    pContext
/// );
/// ```
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
/// ```c
/// BOOL EnumProcesses(
///   DWORD   *lpidProcess,
///   DWORD   cb,
///   LPDWORD lpcbNeeded
/// );
/// ```
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
/// ```c
/// BOOL EnumProcessModules(
///   HANDLE  hProcess,
///   HMODULE *lphModule,
///   DWORD   cb,
///   LPDWORD lpcbNeeded
/// );
/// ```
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
/// ```c
/// BOOL EnumProcessModulesEx(
///   HANDLE  hProcess,
///   HMODULE *lphModule,
///   DWORD   cb,
///   LPDWORD lpcbNeeded,
///   DWORD   dwFilterFlag
/// );
/// ```
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
/// ```c
/// DWORD GetDeviceDriverBaseNameW(
///   [in]  LPVOID ImageBase,
///   [out] LPWSTR lpBaseName,
///   [in]  DWORD  nSize
/// );
/// ```
/// {@category psapi}
int GetDeviceDriverBaseName(Pointer imageBase, PWSTR lpBaseName, int nSize) =>
    _GetDeviceDriverBaseName(imageBase, lpBaseName, nSize);

final _GetDeviceDriverBaseName = _psapi.lookupFunction<
    Uint32 Function(Pointer imageBase, PWSTR lpBaseName, Uint32 nSize),
    int Function(Pointer imageBase, PWSTR lpBaseName,
        int nSize)>('GetDeviceDriverBaseNameW');

/// Retrieves the path available for the specified device driver.
///
/// ```c
/// DWORD GetDeviceDriverFileNameW(
///   [in]  LPVOID ImageBase,
///   [out] LPWSTR lpFilename,
///   [in]  DWORD  nSize
/// );
/// ```
/// {@category psapi}
int GetDeviceDriverFileName(Pointer imageBase, PWSTR lpFilename, int nSize) =>
    _GetDeviceDriverFileName(imageBase, lpFilename, nSize);

final _GetDeviceDriverFileName = _psapi.lookupFunction<
    Uint32 Function(Pointer imageBase, PWSTR lpFilename, Uint32 nSize),
    int Function(Pointer imageBase, PWSTR lpFilename,
        int nSize)>('GetDeviceDriverFileNameW');

/// Checks whether the specified address is within a memory-mapped file in the
/// address space of the specified process. If so, the function returns the name
/// of the memory-mapped file.
///
/// ```c
/// DWORD GetMappedFileNameW(
///   [in]  HANDLE hProcess,
///   [in]  LPVOID lpv,
///   [out] LPWSTR lpFilename,
///   [in]  DWORD  nSize
/// );
/// ```
/// {@category psapi}
int GetMappedFileName(int hProcess, Pointer lpv, PWSTR lpFilename, int nSize) =>
    _GetMappedFileName(hProcess, lpv, lpFilename, nSize);

final _GetMappedFileName = _psapi.lookupFunction<
    Uint32 Function(
        HANDLE hProcess, Pointer lpv, PWSTR lpFilename, Uint32 nSize),
    int Function(int hProcess, Pointer lpv, PWSTR lpFilename,
        int nSize)>('GetMappedFileNameW');

/// Retrieves the base name of the specified module.
///
/// ```c
/// DWORD GetModuleBaseNameW(
///   HANDLE  hProcess,
///   HMODULE hModule,
///   LPWSTR  lpBaseName,
///   DWORD   nSize
/// );
/// ```
/// {@category psapi}
int GetModuleBaseName(
        int hProcess, int? hModule, PWSTR lpBaseName, int nSize) =>
    _GetModuleBaseName(hProcess, hModule ?? 0, lpBaseName, nSize);

final _GetModuleBaseName = _psapi.lookupFunction<
    Uint32 Function(
        HANDLE hProcess, HMODULE hModule, PWSTR lpBaseName, Uint32 nSize),
    int Function(int hProcess, int hModule, PWSTR lpBaseName,
        int nSize)>('GetModuleBaseNameW');

/// Retrieves the fully qualified path for the file containing the specified
/// module.
///
/// ```c
/// DWORD GetModuleFileNameExW(
///   HANDLE  hProcess,
///   HMODULE hModule,
///   LPWSTR  lpFilename,
///   DWORD   nSize
/// );
/// ```
/// {@category psapi}
int GetModuleFileNameEx(
        int? hProcess, int? hModule, PWSTR lpFilename, int nSize) =>
    _GetModuleFileNameEx(hProcess ?? 0, hModule ?? 0, lpFilename, nSize);

final _GetModuleFileNameEx = _psapi.lookupFunction<
    Uint32 Function(
        HANDLE hProcess, HMODULE hModule, PWSTR lpFilename, Uint32 nSize),
    int Function(int hProcess, int hModule, PWSTR lpFilename,
        int nSize)>('GetModuleFileNameExW');

/// Retrieves information about the specified module in the MODULEINFO
/// structure.
///
/// ```c
/// BOOL GetModuleInformation(
///   [in]  HANDLE       hProcess,
///   [in]  HMODULE      hModule,
///   [out] LPMODULEINFO lpmodinfo,
///   [in]  DWORD        cb
/// );
/// ```
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
/// ```c
/// BOOL GetPerformanceInfo(
///   [out] PPERFORMANCE_INFORMATION pPerformanceInformation,
///   [in]  DWORD                    cb
/// );
/// ```
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
/// ```c
/// DWORD GetProcessImageFileNameW(
///   [in]  HANDLE hProcess,
///   [out] LPWSTR lpImageFileName,
///   [in]  DWORD  nSize
/// );
/// ```
/// {@category psapi}
int GetProcessImageFileName(int hProcess, PWSTR lpImageFileName, int nSize) =>
    _GetProcessImageFileName(hProcess, lpImageFileName, nSize);

final _GetProcessImageFileName = _psapi.lookupFunction<
    Uint32 Function(HANDLE hProcess, PWSTR lpImageFileName, Uint32 nSize),
    int Function(int hProcess, PWSTR lpImageFileName,
        int nSize)>('GetProcessImageFileNameW');
