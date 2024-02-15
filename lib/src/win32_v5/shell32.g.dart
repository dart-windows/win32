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

final _shell32 = DynamicLibrary.open('shell32.dll');

/// Retrieves the command-line string for the current process.
///
/// ```c
/// LPWSTR CommandLineToArgvW(
///   LPCWSTR lpCmdLine,
///   int     *pNumArgs
/// );
/// ```
/// {@category shell32}
Pointer<PWSTR> CommandLineToArgv(PWSTR lpCmdLine, Pointer<Int32> pNumArgs) =>
    _CommandLineToArgv(lpCmdLine, pNumArgs);

final _CommandLineToArgv = _shell32.lookupFunction<
    Pointer<PWSTR> Function(PWSTR lpCmdLine, Pointer<Int32> pNumArgs),
    Pointer<PWSTR> Function(
        PWSTR lpCmdLine, Pointer<Int32> pNumArgs)>('CommandLineToArgvW');

/// Gets a handle to an icon stored as a resource in a file or an icon stored in
/// a file's associated executable file.
///
/// ```c
/// HICON ExtractAssociatedIconW(
///   HINSTANCE hInst,
///   LPWSTR    pszIconPath,
///   WORD      *piIcon
/// );
/// ```
/// {@category shell32}
int ExtractAssociatedIcon(PWSTR pszIconPath, Pointer<Uint16> piIcon) =>
    _ExtractAssociatedIcon(0, pszIconPath, piIcon);

final _ExtractAssociatedIcon = _shell32.lookupFunction<
    HICON Function(HINSTANCE hInst, PWSTR pszIconPath, Pointer<Uint16> piIcon),
    int Function(int hInst, PWSTR pszIconPath,
        Pointer<Uint16> piIcon)>('ExtractAssociatedIconW');

/// Retrieves the name of and handle to the executable (.exe) file associated
/// with a specific document file.
///
/// ```c
/// HINSTANCE FindExecutableW(
///   LPCWSTR lpFile,
///   LPCWSTR lpDirectory,
///   LPWSTR  lpResult
/// );
/// ```
/// {@category shell32}
int FindExecutable(PWSTR lpFile, PWSTR? lpDirectory, PWSTR lpResult) =>
    _FindExecutable(lpFile, lpDirectory ?? nullptr, lpResult);

final _FindExecutable = _shell32.lookupFunction<
    HINSTANCE Function(PWSTR lpFile, PWSTR lpDirectory, PWSTR lpResult),
    int Function(
        PWSTR lpFile, PWSTR lpDirectory, PWSTR lpResult)>('FindExecutableW');

/// Creates and initializes a Shell item object from a parsing name.
///
/// ```c
/// SHSTDAPI SHCreateItemFromParsingName(
///   PCWSTR   pszPath,
///   IBindCtx *pbc,
///   REFIID   riid,
///   void     **ppv
/// );
/// ```
/// {@category shell32}
int SHCreateItemFromParsingName(PWSTR pszPath, VTablePointer? pbc,
        Pointer<GUID> riid, Pointer<Pointer> ppv) =>
    _SHCreateItemFromParsingName(pszPath, pbc ?? nullptr, riid, ppv);

final _SHCreateItemFromParsingName = _shell32.lookupFunction<
    HRESULT Function(PWSTR pszPath, VTablePointer pbc, Pointer<GUID> riid,
        Pointer<Pointer> ppv),
    int Function(PWSTR pszPath, VTablePointer pbc, Pointer<GUID> riid,
        Pointer<Pointer> ppv)>('SHCreateItemFromParsingName');

/// Sends a message to the taskbar's status area.
///
/// ```c
/// BOOL Shell_NotifyIconW(
///   DWORD dwMessage,
///   NOTIFYICONDATA *lpData
/// );
/// ```
/// {@category shell32}
int Shell_NotifyIcon(int dwMessage, Pointer<NOTIFYICONDATA> lpData) =>
    _Shell_NotifyIcon(dwMessage, lpData);

final _Shell_NotifyIcon = _shell32.lookupFunction<
    BOOL Function(Uint32 dwMessage, Pointer<NOTIFYICONDATA> lpData),
    int Function(
        int dwMessage, Pointer<NOTIFYICONDATA> lpData)>('Shell_NotifyIconW');

/// Displays a ShellAbout dialog box.
///
/// ```c
/// INT ShellAboutW(
///   HWND    hWnd,
///   LPCWSTR szApp,
///   LPCWSTR szOtherStuff,
///   HICON   hIcon
/// );
/// ```
/// {@category shell32}
int ShellAbout(int? hWnd, PWSTR szApp, PWSTR? szOtherStuff, int? hIcon) =>
    _ShellAbout(hWnd ?? 0, szApp, szOtherStuff ?? nullptr, hIcon ?? 0);

final _ShellAbout = _shell32.lookupFunction<
    Int32 Function(HWND hWnd, PWSTR szApp, PWSTR szOtherStuff, HICON hIcon),
    int Function(
        int hWnd, PWSTR szApp, PWSTR szOtherStuff, int hIcon)>('ShellAboutW');

/// Performs an operation on a specified file.
///
/// ```c
/// HINSTANCE ShellExecuteW(
///   HWND    hwnd,
///   LPCWSTR lpOperation,
///   LPCWSTR lpFile,
///   LPCWSTR lpParameters,
///   LPCWSTR lpDirectory,
///   INT     nShowCmd
/// );
/// ```
/// {@category shell32}
int ShellExecute(int? hwnd, PWSTR? lpOperation, PWSTR lpFile,
        PWSTR? lpParameters, PWSTR? lpDirectory, int nShowCmd) =>
    _ShellExecute(hwnd ?? 0, lpOperation ?? nullptr, lpFile,
        lpParameters ?? nullptr, lpDirectory ?? nullptr, nShowCmd);

final _ShellExecute = _shell32.lookupFunction<
    HINSTANCE Function(HWND hwnd, PWSTR lpOperation, PWSTR lpFile,
        PWSTR lpParameters, PWSTR lpDirectory, Int32 nShowCmd),
    int Function(int hwnd, PWSTR lpOperation, PWSTR lpFile, PWSTR lpParameters,
        PWSTR lpDirectory, int nShowCmd)>('ShellExecuteW');

/// Performs an operation on a specified file.
///
/// ```c
/// BOOL ShellExecuteExW(
///   SHELLEXECUTEINFOW *pExecInfo
/// );
/// ```
/// {@category shell32}
int ShellExecuteEx(Pointer<SHELLEXECUTEINFO> pExecInfo) =>
    _ShellExecuteEx(pExecInfo);

final _ShellExecuteEx = _shell32.lookupFunction<
    BOOL Function(Pointer<SHELLEXECUTEINFO> pExecInfo),
    int Function(Pointer<SHELLEXECUTEINFO> pExecInfo)>('ShellExecuteExW');

/// Empties the Recycle Bin on the specified drive.
///
/// ```c
/// SHSTDAPI SHEmptyRecycleBinW(
///   HWND    hwnd,
///   LPCWSTR pszRootPath,
///   DWORD   dwFlags
/// );
/// ```
/// {@category shell32}
int SHEmptyRecycleBin(int? hwnd, PWSTR? pszRootPath, int dwFlags) =>
    _SHEmptyRecycleBin(hwnd ?? 0, pszRootPath ?? nullptr, dwFlags);

final _SHEmptyRecycleBin = _shell32.lookupFunction<
    HRESULT Function(HWND hwnd, PWSTR pszRootPath, Uint32 dwFlags),
    int Function(
        int hwnd, PWSTR pszRootPath, int dwFlags)>('SHEmptyRecycleBinW');

/// Copies, moves, renames, or deletes a file system object.
///
/// ```c
/// int SHFileOperationW(
///   LPSHFILEOPSTRUCTW lpFileOp
/// );
/// ```
/// {@category shell32}
int SHFileOperation(Pointer<SHFILEOPSTRUCT> lpFileOp) =>
    _SHFileOperation(lpFileOp);

final _SHFileOperation = _shell32.lookupFunction<
    Int32 Function(Pointer<SHFILEOPSTRUCT> lpFileOp),
    int Function(Pointer<SHFILEOPSTRUCT> lpFileOp)>('SHFileOperationW');

/// Frees a file name mapping object that was retrieved by the SHFileOperation
/// function.
///
/// ```c
/// void SHFreeNameMappings(
///   HANDLE hNameMappings
/// );
/// ```
/// {@category shell32}
void SHFreeNameMappings(int? hNameMappings) =>
    _SHFreeNameMappings(hNameMappings ?? 0);

final _SHFreeNameMappings = _shell32.lookupFunction<
    Void Function(HANDLE hNameMappings),
    void Function(int hNameMappings)>('SHFreeNameMappings');

/// Retrieves the IShellFolder interface for the desktop folder, which is the
/// root of the Shell's namespace.
///
/// ```c
/// SHSTDAPI SHGetDesktopFolder(
///   IShellFolder **ppshf
/// );
/// ```
/// {@category shell32}
int SHGetDesktopFolder(Pointer<VTablePointer> ppshf) =>
    _SHGetDesktopFolder(ppshf);

final _SHGetDesktopFolder = _shell32.lookupFunction<
    HRESULT Function(Pointer<VTablePointer> ppshf),
    int Function(Pointer<VTablePointer> ppshf)>('SHGetDesktopFolder');

/// Retrieves disk space information for a disk volume.
///
/// ```c
/// BOOL SHGetDiskFreeSpaceExW(
///   LPCWSTR        pszDirectoryName,
///   ULARGE_INTEGER *pulFreeBytesAvailableToCaller,
///   ULARGE_INTEGER *pulTotalNumberOfBytes,
///   ULARGE_INTEGER *pulTotalNumberOfFreeBytes
/// );
/// ```
/// {@category shell32}
int SHGetDiskFreeSpaceEx(
        PWSTR pszDirectoryName,
        Pointer<Uint64>? pulFreeBytesAvailableToCaller,
        Pointer<Uint64>? pulTotalNumberOfBytes,
        Pointer<Uint64>? pulTotalNumberOfFreeBytes) =>
    _SHGetDiskFreeSpaceEx(
        pszDirectoryName,
        pulFreeBytesAvailableToCaller ?? nullptr,
        pulTotalNumberOfBytes ?? nullptr,
        pulTotalNumberOfFreeBytes ?? nullptr);

final _SHGetDiskFreeSpaceEx = _shell32.lookupFunction<
    BOOL Function(
        PWSTR pszDirectoryName,
        Pointer<Uint64> pulFreeBytesAvailableToCaller,
        Pointer<Uint64> pulTotalNumberOfBytes,
        Pointer<Uint64> pulTotalNumberOfFreeBytes),
    int Function(
        PWSTR pszDirectoryName,
        Pointer<Uint64> pulFreeBytesAvailableToCaller,
        Pointer<Uint64> pulTotalNumberOfBytes,
        Pointer<Uint64> pulTotalNumberOfFreeBytes)>('SHGetDiskFreeSpaceExW');

/// Returns the type of media that is in the given drive.
///
/// ```c
/// HRESULT SHGetDriveMedia(
///   PCWSTR pszDrive,
///   DWORD  *pdwMediaContent
/// );
/// ```
/// {@category shell32}
int SHGetDriveMedia(PWSTR pszDrive, Pointer<Uint32> pdwMediaContent) =>
    _SHGetDriveMedia(pszDrive, pdwMediaContent);

final _SHGetDriveMedia = _shell32.lookupFunction<
    HRESULT Function(PWSTR pszDrive, Pointer<Uint32> pdwMediaContent),
    int Function(
        PWSTR pszDrive, Pointer<Uint32> pdwMediaContent)>('SHGetDriveMedia');

/// Retrieves information about an object in the file system, such as a file,
/// folder, directory, or drive root.
///
/// ```c
/// DWORD_PTR SHGetFileInfoW(
///   LPCWSTR     pszPath,
///   DWORD       dwFileAttributes,
///   SHFILEINFOW *psfi,
///   UINT        cbFileInfo,
///   UINT        uFlags
/// );
/// ```
/// {@category shell32}
int SHGetFileInfo(PWSTR pszPath, int dwFileAttributes,
        Pointer<SHFILEINFO>? psfi, int cbFileInfo, int uFlags) =>
    _SHGetFileInfo(
        pszPath, dwFileAttributes, psfi ?? nullptr, cbFileInfo, uFlags);

final _SHGetFileInfo = _shell32.lookupFunction<
    IntPtr Function(PWSTR pszPath, Uint32 dwFileAttributes,
        Pointer<SHFILEINFO> psfi, Uint32 cbFileInfo, Uint32 uFlags),
    int Function(PWSTR pszPath, int dwFileAttributes, Pointer<SHFILEINFO> psfi,
        int cbFileInfo, int uFlags)>('SHGetFileInfoW');

/// Gets the path of a folder identified by a CSIDL value.
///
/// ```c
/// SHFOLDERAPI SHGetFolderPathW(
///   HWND   hwnd,
///   int    csidl,
///   HANDLE hToken,
///   DWORD  dwFlags,
///   LPWSTR pszPath
/// );
/// ```
/// {@category shell32}
int SHGetFolderPath(int csidl, int? hToken, int dwFlags, PWSTR pszPath) =>
    _SHGetFolderPath(0, csidl, hToken ?? 0, dwFlags, pszPath);

final _SHGetFolderPath = _shell32.lookupFunction<
    HRESULT Function(
        HWND hwnd, Int32 csidl, HANDLE hToken, Uint32 dwFlags, PWSTR pszPath),
    int Function(int hwnd, int csidl, int hToken, int dwFlags,
        PWSTR pszPath)>('SHGetFolderPathW');

/// Retrieves the full path of a known folder identified by the folder's
/// KNOWNFOLDERID.
///
/// ```c
/// HRESULT SHGetKnownFolderPath(
///   REFKNOWNFOLDERID rfid,
///   DWORD            dwFlags,
///   HANDLE           hToken,
///   PWSTR            *ppszPath
/// );
/// ```
/// {@category shell32}
int SHGetKnownFolderPath(Pointer<GUID> rfid, int dwFlags, int? hToken,
        Pointer<PWSTR> ppszPath) =>
    _SHGetKnownFolderPath(rfid, dwFlags, hToken ?? 0, ppszPath);

final _SHGetKnownFolderPath = _shell32.lookupFunction<
    HRESULT Function(Pointer<GUID> rfid, Uint32 dwFlags, HANDLE hToken,
        Pointer<PWSTR> ppszPath),
    int Function(Pointer<GUID> rfid, int dwFlags, int hToken,
        Pointer<PWSTR> ppszPath)>('SHGetKnownFolderPath');

/// Retrieves the size of the Recycle Bin and the number of items in it, for a
/// specified drive.
///
/// ```c
/// SHSTDAPI SHQueryRecycleBinW(
///   LPCWSTR         pszRootPath,
///   LPSHQUERYRBINFO pSHQueryRBInfo
/// );
/// ```
/// {@category shell32}
int SHQueryRecycleBin(
        PWSTR? pszRootPath, Pointer<SHQUERYRBINFO> pSHQueryRBInfo) =>
    _SHQueryRecycleBin(pszRootPath ?? nullptr, pSHQueryRBInfo);

final _SHQueryRecycleBin = _shell32.lookupFunction<
    HRESULT Function(PWSTR pszRootPath, Pointer<SHQUERYRBINFO> pSHQueryRBInfo),
    int Function(PWSTR pszRootPath,
        Pointer<SHQUERYRBINFO> pSHQueryRBInfo)>('SHQueryRecycleBinW');
