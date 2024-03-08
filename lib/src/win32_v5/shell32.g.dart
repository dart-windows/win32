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

final _shell32 = DynamicLibrary.open('shell32.dll');

/// Parses a Unicode command line string and returns an array of pointers to the
/// command line arguments, along with a count of such arguments, in a way that
/// is similar to the standard C run-time argv and argc values.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/shellapi/nf-shellapi-commandlinetoargvw>.
///
/// {@category shell32}
Pointer<Pointer<Utf16>> CommandLineToArgv(
        Pointer<Utf16> lpCmdLine, Pointer<Int32> pNumArgs) =>
    _CommandLineToArgv(lpCmdLine, pNumArgs);

final _CommandLineToArgv = _shell32.lookupFunction<
    Pointer<Pointer<Utf16>> Function(
        Pointer<Utf16> lpCmdLine, Pointer<Int32> pNumArgs),
    Pointer<Pointer<Utf16>> Function(Pointer<Utf16> lpCmdLine,
        Pointer<Int32> pNumArgs)>('CommandLineToArgvW');

/// Gets a handle to an icon stored as a resource in a file or an icon stored in
/// a file's associated executable file.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/shellapi/nf-shellapi-extractassociatediconw>.
///
/// {@category shell32}
int ExtractAssociatedIcon(Pointer<Utf16> pszIconPath, Pointer<Uint16> piIcon) =>
    _ExtractAssociatedIcon(0, pszIconPath, piIcon);

final _ExtractAssociatedIcon = _shell32.lookupFunction<
    HICON Function(
        HINSTANCE hInst, Pointer<Utf16> pszIconPath, Pointer<Uint16> piIcon),
    int Function(int hInst, Pointer<Utf16> pszIconPath,
        Pointer<Uint16> piIcon)>('ExtractAssociatedIconW');

/// Retrieves the name of and handle to the executable (.exe) file associated
/// with a specific document file.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/shellapi/nf-shellapi-findexecutablew>.
///
/// {@category shell32}
int FindExecutable(Pointer<Utf16> lpFile, Pointer<Utf16>? lpDirectory,
        Pointer<Utf16> lpResult) =>
    _FindExecutable(lpFile, lpDirectory ?? nullptr, lpResult);

final _FindExecutable = _shell32.lookupFunction<
    HINSTANCE Function(Pointer<Utf16> lpFile, Pointer<Utf16> lpDirectory,
        Pointer<Utf16> lpResult),
    int Function(Pointer<Utf16> lpFile, Pointer<Utf16> lpDirectory,
        Pointer<Utf16> lpResult)>('FindExecutableW');

/// Creates and initializes a Shell item object from a parsing name.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-shcreateitemfromparsingname>.
///
/// {@category shell32}
int SHCreateItemFromParsingName(Pointer<Utf16> pszPath, VTablePointer? pbc,
        Pointer<GUID> riid, Pointer<Pointer> ppv) =>
    _SHCreateItemFromParsingName(pszPath, pbc ?? nullptr, riid, ppv);

final _SHCreateItemFromParsingName = _shell32.lookupFunction<
    HRESULT Function(Pointer<Utf16> pszPath, VTablePointer pbc,
        Pointer<GUID> riid, Pointer<Pointer> ppv),
    int Function(Pointer<Utf16> pszPath, VTablePointer pbc, Pointer<GUID> riid,
        Pointer<Pointer> ppv)>('SHCreateItemFromParsingName');

/// Sends a message to the taskbar's status area.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/shellapi/nf-shellapi-shell_notifyiconw>.
///
/// {@category shell32}
int Shell_NotifyIcon(int dwMessage, Pointer<NOTIFYICONDATA> lpData) =>
    _Shell_NotifyIcon(dwMessage, lpData);

final _Shell_NotifyIcon = _shell32.lookupFunction<
    BOOL Function(Uint32 dwMessage, Pointer<NOTIFYICONDATA> lpData),
    int Function(
        int dwMessage, Pointer<NOTIFYICONDATA> lpData)>('Shell_NotifyIconW');

/// Displays a ShellAbout dialog box.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/shellapi/nf-shellapi-shellaboutw>.
///
/// {@category shell32}
int ShellAbout(int? hWnd, Pointer<Utf16> szApp, Pointer<Utf16>? szOtherStuff,
        int? hIcon) =>
    _ShellAbout(hWnd ?? 0, szApp, szOtherStuff ?? nullptr, hIcon ?? 0);

final _ShellAbout = _shell32.lookupFunction<
    Int32 Function(HWND hWnd, Pointer<Utf16> szApp, Pointer<Utf16> szOtherStuff,
        HICON hIcon),
    int Function(int hWnd, Pointer<Utf16> szApp, Pointer<Utf16> szOtherStuff,
        int hIcon)>('ShellAboutW');

/// Performs an operation on a specified file.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/shellapi/nf-shellapi-shellexecutew>.
///
/// {@category shell32}
int ShellExecute(
        int? hwnd,
        Pointer<Utf16>? lpOperation,
        Pointer<Utf16> lpFile,
        Pointer<Utf16>? lpParameters,
        Pointer<Utf16>? lpDirectory,
        int nShowCmd) =>
    _ShellExecute(hwnd ?? 0, lpOperation ?? nullptr, lpFile,
        lpParameters ?? nullptr, lpDirectory ?? nullptr, nShowCmd);

final _ShellExecute = _shell32.lookupFunction<
    HINSTANCE Function(
        HWND hwnd,
        Pointer<Utf16> lpOperation,
        Pointer<Utf16> lpFile,
        Pointer<Utf16> lpParameters,
        Pointer<Utf16> lpDirectory,
        Int32 nShowCmd),
    int Function(
        int hwnd,
        Pointer<Utf16> lpOperation,
        Pointer<Utf16> lpFile,
        Pointer<Utf16> lpParameters,
        Pointer<Utf16> lpDirectory,
        int nShowCmd)>('ShellExecuteW');

/// Performs an operation on a specified file.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/shellapi/nf-shellapi-shellexecuteexw>.
///
/// {@category shell32}
int ShellExecuteEx(Pointer<SHELLEXECUTEINFO> pExecInfo) =>
    _ShellExecuteEx(pExecInfo);

final _ShellExecuteEx = _shell32.lookupFunction<
    BOOL Function(Pointer<SHELLEXECUTEINFO> pExecInfo),
    int Function(Pointer<SHELLEXECUTEINFO> pExecInfo)>('ShellExecuteExW');

/// Empties the Recycle Bin on the specified drive.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/shellapi/nf-shellapi-shemptyrecyclebinw>.
///
/// {@category shell32}
int SHEmptyRecycleBin(int? hwnd, Pointer<Utf16>? pszRootPath, int dwFlags) =>
    _SHEmptyRecycleBin(hwnd ?? 0, pszRootPath ?? nullptr, dwFlags);

final _SHEmptyRecycleBin = _shell32.lookupFunction<
    HRESULT Function(HWND hwnd, Pointer<Utf16> pszRootPath, Uint32 dwFlags),
    int Function(int hwnd, Pointer<Utf16> pszRootPath,
        int dwFlags)>('SHEmptyRecycleBinW');

/// Copies, moves, renames, or deletes a file system object.
///
/// On Windows Vista and later releases, we recommend that you use
/// IFileOperation instead of this function.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/shellapi/nf-shellapi-shfileoperationw>.
///
/// {@category shell32}
int SHFileOperation(Pointer<SHFILEOPSTRUCT> lpFileOp) =>
    _SHFileOperation(lpFileOp);

final _SHFileOperation = _shell32.lookupFunction<
    Int32 Function(Pointer<SHFILEOPSTRUCT> lpFileOp),
    int Function(Pointer<SHFILEOPSTRUCT> lpFileOp)>('SHFileOperationW');

/// Frees a file name mapping object that was retrieved by the SHFileOperation
/// function.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/shellapi/nf-shellapi-shfreenamemappings>.
///
/// {@category shell32}
void SHFreeNameMappings(int? hNameMappings) =>
    _SHFreeNameMappings(hNameMappings ?? 0);

final _SHFreeNameMappings = _shell32.lookupFunction<
    Void Function(HANDLE hNameMappings),
    void Function(int hNameMappings)>('SHFreeNameMappings');

/// Retrieves the IShellFolder interface for the desktop folder, which is the
/// root of the Shell's namespace.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/shlobj_core/nf-shlobj_core-shgetdesktopfolder>.
///
/// {@category shell32}
int SHGetDesktopFolder(Pointer<VTablePointer> ppshf) =>
    _SHGetDesktopFolder(ppshf);

final _SHGetDesktopFolder = _shell32.lookupFunction<
    HRESULT Function(Pointer<VTablePointer> ppshf),
    int Function(Pointer<VTablePointer> ppshf)>('SHGetDesktopFolder');

/// Retrieves disk space information for a disk volume.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/shellapi/nf-shellapi-shgetdiskfreespaceexw>.
///
/// {@category shell32}
int SHGetDiskFreeSpaceEx(
        Pointer<Utf16> pszDirectoryName,
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
        Pointer<Utf16> pszDirectoryName,
        Pointer<Uint64> pulFreeBytesAvailableToCaller,
        Pointer<Uint64> pulTotalNumberOfBytes,
        Pointer<Uint64> pulTotalNumberOfFreeBytes),
    int Function(
        Pointer<Utf16> pszDirectoryName,
        Pointer<Uint64> pulFreeBytesAvailableToCaller,
        Pointer<Uint64> pulTotalNumberOfBytes,
        Pointer<Uint64> pulTotalNumberOfFreeBytes)>('SHGetDiskFreeSpaceExW');

/// Returns the type of media that is in the given drive.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/shellapi/nf-shellapi-shgetdrivemedia>.
///
/// {@category shell32}
int SHGetDriveMedia(Pointer<Utf16> pszDrive, Pointer<Uint32> pdwMediaContent) =>
    _SHGetDriveMedia(pszDrive, pdwMediaContent);

final _SHGetDriveMedia = _shell32.lookupFunction<
    HRESULT Function(Pointer<Utf16> pszDrive, Pointer<Uint32> pdwMediaContent),
    int Function(Pointer<Utf16> pszDrive,
        Pointer<Uint32> pdwMediaContent)>('SHGetDriveMedia');

/// Retrieves information about an object in the file system, such as a file,
/// folder, directory, or drive root.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/shellapi/nf-shellapi-shgetfileinfow>.
///
/// {@category shell32}
int SHGetFileInfo(Pointer<Utf16> pszPath, int dwFileAttributes,
        Pointer<SHFILEINFO>? psfi, int cbFileInfo, int uFlags) =>
    _SHGetFileInfo(
        pszPath, dwFileAttributes, psfi ?? nullptr, cbFileInfo, uFlags);

final _SHGetFileInfo = _shell32.lookupFunction<
    IntPtr Function(Pointer<Utf16> pszPath, Uint32 dwFileAttributes,
        Pointer<SHFILEINFO> psfi, Uint32 cbFileInfo, Uint32 uFlags),
    int Function(
        Pointer<Utf16> pszPath,
        int dwFileAttributes,
        Pointer<SHFILEINFO> psfi,
        int cbFileInfo,
        int uFlags)>('SHGetFileInfoW');

/// Gets the path of a folder identified by a CSIDL value.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/shlobj_core/nf-shlobj_core-shgetfolderpathw>.
///
/// {@category shell32}
int SHGetFolderPath(
        int csidl, int? hToken, int dwFlags, Pointer<Utf16> pszPath) =>
    _SHGetFolderPath(0, csidl, hToken ?? 0, dwFlags, pszPath);

final _SHGetFolderPath = _shell32.lookupFunction<
    HRESULT Function(HWND hwnd, Int32 csidl, HANDLE hToken, Uint32 dwFlags,
        Pointer<Utf16> pszPath),
    int Function(int hwnd, int csidl, int hToken, int dwFlags,
        Pointer<Utf16> pszPath)>('SHGetFolderPathW');

/// Retrieves the full path of a known folder identified by the folder's
/// KNOWNFOLDERID.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/shlobj_core/nf-shlobj_core-shgetknownfolderpath>.
///
/// {@category shell32}
int SHGetKnownFolderPath(Pointer<GUID> rfid, int dwFlags, int? hToken,
        Pointer<Pointer<Utf16>> ppszPath) =>
    _SHGetKnownFolderPath(rfid, dwFlags, hToken ?? 0, ppszPath);

final _SHGetKnownFolderPath = _shell32.lookupFunction<
    HRESULT Function(Pointer<GUID> rfid, Uint32 dwFlags, HANDLE hToken,
        Pointer<Pointer<Utf16>> ppszPath),
    int Function(Pointer<GUID> rfid, int dwFlags, int hToken,
        Pointer<Pointer<Utf16>> ppszPath)>('SHGetKnownFolderPath');

/// Retrieves the size of the Recycle Bin and the number of items in it, for a
/// specified drive.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/shellapi/nf-shellapi-shqueryrecyclebinw>.
///
/// {@category shell32}
int SHQueryRecycleBin(
        Pointer<Utf16>? pszRootPath, Pointer<SHQUERYRBINFO> pSHQueryRBInfo) =>
    _SHQueryRecycleBin(pszRootPath ?? nullptr, pSHQueryRBInfo);

final _SHQueryRecycleBin = _shell32.lookupFunction<
    HRESULT Function(
        Pointer<Utf16> pszRootPath, Pointer<SHQUERYRBINFO> pSHQueryRBInfo),
    int Function(Pointer<Utf16> pszRootPath,
        Pointer<SHQUERYRBINFO> pSHQueryRBInfo)>('SHQueryRecycleBinW');
