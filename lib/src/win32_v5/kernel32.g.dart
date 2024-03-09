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

final _kernel32 = DynamicLibrary.open('kernel32.dll');

/// Activates the specified activation context.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-activateactctx>.
///
/// {@category kernel32}
int ActivateActCtx(int? hActCtx, Pointer<IntPtr> lpCookie) =>
    _ActivateActCtx(hActCtx ?? 0, lpCookie);

final _ActivateActCtx = _kernel32.lookupFunction<
    BOOL Function(HANDLE hActCtx, Pointer<IntPtr> lpCookie),
    int Function(int hActCtx, Pointer<IntPtr> lpCookie)>('ActivateActCtx');

/// Adds a directory to the process DLL search path.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/libloaderapi/nf-libloaderapi-adddlldirectory>.
///
/// {@category kernel32}
Pointer AddDllDirectory(Pointer<Utf16> newDirectory) =>
    _AddDllDirectory(newDirectory);

final _AddDllDirectory = _kernel32.lookupFunction<
    Pointer Function(Pointer<Utf16> newDirectory),
    Pointer Function(Pointer<Utf16> newDirectory)>('AddDllDirectory');

/// Increments the reference count of the specified activation context.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-addrefactctx>.
///
/// {@category kernel32}
void AddRefActCtx(int hActCtx) => _AddRefActCtx(hActCtx);

final _AddRefActCtx = _kernel32.lookupFunction<Void Function(HANDLE hActCtx),
    void Function(int hActCtx)>('AddRefActCtx');

/// Allocates a new console for the calling process.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/console/allocconsole>.
///
/// {@category kernel32}
int AllocConsole() => _AllocConsole();

final _AllocConsole =
    _kernel32.lookupFunction<BOOL Function(), int Function()>('AllocConsole');

/// Determines whether the file I/O functions are using the ANSI or OEM
/// character set code page.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-arefileapisansi>.
///
/// {@category kernel32}
int AreFileApisANSI() => _AreFileApisANSI();

final _AreFileApisANSI = _kernel32
    .lookupFunction<BOOL Function(), int Function()>('AreFileApisANSI');

/// Assigns a process to an existing job object.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/jobapi2/nf-jobapi2-assignprocesstojobobject>.
///
/// {@category kernel32}
int AssignProcessToJobObject(int hJob, int hProcess) =>
    _AssignProcessToJobObject(hJob, hProcess);

final _AssignProcessToJobObject = _kernel32.lookupFunction<
    BOOL Function(HANDLE hJob, HANDLE hProcess),
    int Function(int hJob, int hProcess)>('AssignProcessToJobObject');

/// Attaches the calling process to the console of the specified process.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/console/attachconsole>.
///
/// {@category kernel32}
int AttachConsole(int dwProcessId) => _AttachConsole(dwProcessId);

final _AttachConsole = _kernel32.lookupFunction<
    BOOL Function(Uint32 dwProcessId),
    int Function(int dwProcessId)>('AttachConsole');

/// Generates simple tones on the speaker.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/utilapiset/nf-utilapiset-beep>.
///
/// {@category kernel32}
int Beep(int dwFreq, int dwDuration) => _Beep(dwFreq, dwDuration);

final _Beep = _kernel32.lookupFunction<
    BOOL Function(Uint32 dwFreq, Uint32 dwDuration),
    int Function(int dwFreq, int dwDuration)>('Beep');

/// Retrieves a handle that can be used by the UpdateResource function to add,
/// delete, or replace resources in a binary module.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-beginupdateresourcew>.
///
/// {@category kernel32}
int BeginUpdateResource(
        Pointer<Utf16> pFileName, int bDeleteExistingResources) =>
    _BeginUpdateResource(pFileName, bDeleteExistingResources);

final _BeginUpdateResource = _kernel32.lookupFunction<
    HANDLE Function(Pointer<Utf16> pFileName, BOOL bDeleteExistingResources),
    int Function(Pointer<Utf16> pFileName,
        int bDeleteExistingResources)>('BeginUpdateResourceW');

/// Fills a specified DCB structure with values specified in a device-control
/// string.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-buildcommdcbw>.
///
/// {@category kernel32}
int BuildCommDCB(Pointer<Utf16> lpDef, Pointer<DCB> lpDCB) =>
    _BuildCommDCB(lpDef, lpDCB);

final _BuildCommDCB = _kernel32.lookupFunction<
    BOOL Function(Pointer<Utf16> lpDef, Pointer<DCB> lpDCB),
    int Function(Pointer<Utf16> lpDef, Pointer<DCB> lpDCB)>('BuildCommDCBW');

/// Translates a device-definition string into appropriate device-control block
/// codes and places them into a device control block.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-buildcommdcbandtimeoutsw>.
///
/// {@category kernel32}
int BuildCommDCBAndTimeouts(Pointer<Utf16> lpDef, Pointer<DCB> lpDCB,
        Pointer<COMMTIMEOUTS> lpCommTimeouts) =>
    _BuildCommDCBAndTimeouts(lpDef, lpDCB, lpCommTimeouts);

final _BuildCommDCBAndTimeouts = _kernel32.lookupFunction<
    BOOL Function(Pointer<Utf16> lpDef, Pointer<DCB> lpDCB,
        Pointer<COMMTIMEOUTS> lpCommTimeouts),
    int Function(Pointer<Utf16> lpDef, Pointer<DCB> lpDCB,
        Pointer<COMMTIMEOUTS> lpCommTimeouts)>('BuildCommDCBAndTimeoutsW');

/// Connects to a message-type pipe (and waits if an instance of the pipe is not
/// available), writes to and reads from the pipe, and then closes the pipe.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/namedpipeapi/nf-namedpipeapi-callnamedpipew>.
///
/// {@category kernel32}
int CallNamedPipe(
        Pointer<Utf16> lpNamedPipeName,
        Pointer? lpInBuffer,
        int nInBufferSize,
        Pointer? lpOutBuffer,
        int nOutBufferSize,
        Pointer<Uint32> lpBytesRead,
        int nTimeOut) =>
    _CallNamedPipe(lpNamedPipeName, lpInBuffer ?? nullptr, nInBufferSize,
        lpOutBuffer ?? nullptr, nOutBufferSize, lpBytesRead, nTimeOut);

final _CallNamedPipe = _kernel32.lookupFunction<
    BOOL Function(
        Pointer<Utf16> lpNamedPipeName,
        Pointer lpInBuffer,
        Uint32 nInBufferSize,
        Pointer lpOutBuffer,
        Uint32 nOutBufferSize,
        Pointer<Uint32> lpBytesRead,
        Uint32 nTimeOut),
    int Function(
        Pointer<Utf16> lpNamedPipeName,
        Pointer lpInBuffer,
        int nInBufferSize,
        Pointer lpOutBuffer,
        int nOutBufferSize,
        Pointer<Uint32> lpBytesRead,
        int nTimeOut)>('CallNamedPipeW');

/// Cancels all pending input and output (I/O) operations that are issued by the
/// calling thread for the specified file.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/ioapiset/nf-ioapiset-cancelio>.
///
/// {@category kernel32}
int CancelIo(int hFile) => _CancelIo(hFile);

final _CancelIo = _kernel32.lookupFunction<BOOL Function(HANDLE hFile),
    int Function(int hFile)>('CancelIo');

/// Marks any outstanding I/O operations for the specified file handle.
///
/// The function only cancels I/O operations in the current process, regardless
/// of which thread created the I/O operation.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/ioapiset/nf-ioapiset-cancelioex>.
///
/// {@category kernel32}
int CancelIoEx(int hFile, Pointer<OVERLAPPED>? lpOverlapped) =>
    _CancelIoEx(hFile, lpOverlapped ?? nullptr);

final _CancelIoEx = _kernel32.lookupFunction<
    BOOL Function(HANDLE hFile, Pointer<OVERLAPPED> lpOverlapped),
    int Function(int hFile, Pointer<OVERLAPPED> lpOverlapped)>('CancelIoEx');

/// Marks pending synchronous I/O operations that are issued by the specified
/// thread as canceled.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/ioapiset/nf-ioapiset-cancelsynchronousio>.
///
/// {@category kernel32}
int CancelSynchronousIo(int hThread) => _CancelSynchronousIo(hThread);

final _CancelSynchronousIo = _kernel32.lookupFunction<
    BOOL Function(HANDLE hThread),
    int Function(int hThread)>('CancelSynchronousIo');

/// Determines whether the specified process is being debugged.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/debugapi/nf-debugapi-checkremotedebuggerpresent>.
///
/// {@category kernel32}
int CheckRemoteDebuggerPresent(int hProcess, Pointer<BOOL> pbDebuggerPresent) =>
    _CheckRemoteDebuggerPresent(hProcess, pbDebuggerPresent);

final _CheckRemoteDebuggerPresent = _kernel32.lookupFunction<
    BOOL Function(HANDLE hProcess, Pointer<BOOL> pbDebuggerPresent),
    int Function(int hProcess,
        Pointer<BOOL> pbDebuggerPresent)>('CheckRemoteDebuggerPresent');

/// Restores character transmission for a specified communications device and
/// places the transmission line in a nonbreak state.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-clearcommbreak>.
///
/// {@category kernel32}
int ClearCommBreak(int hFile) => _ClearCommBreak(hFile);

final _ClearCommBreak = _kernel32.lookupFunction<BOOL Function(HANDLE hFile),
    int Function(int hFile)>('ClearCommBreak');

/// Retrieves information about a communications error and reports the current
/// status of a communications device.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-clearcommerror>.
///
/// {@category kernel32}
int ClearCommError(
        int hFile, Pointer<Uint32>? lpErrors, Pointer<COMSTAT>? lpStat) =>
    _ClearCommError(hFile, lpErrors ?? nullptr, lpStat ?? nullptr);

final _ClearCommError = _kernel32.lookupFunction<
    BOOL Function(
        HANDLE hFile, Pointer<Uint32> lpErrors, Pointer<COMSTAT> lpStat),
    int Function(int hFile, Pointer<Uint32> lpErrors,
        Pointer<COMSTAT> lpStat)>('ClearCommError');

/// Closes an open object handle.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/handleapi/nf-handleapi-closehandle>.
///
/// {@category kernel32}
int CloseHandle(int hObject) => _CloseHandle(hObject);

final _CloseHandle = _kernel32.lookupFunction<BOOL Function(HANDLE hObject),
    int Function(int hObject)>('CloseHandle');

/// Closes a pseudoconsole from the given handle.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/console/closepseudoconsole>.
///
/// {@category kernel32}
void ClosePseudoConsole(int hPC) => _ClosePseudoConsole(hPC);

final _ClosePseudoConsole =
    _kernel32.lookupFunction<Void Function(HPCON hPC), void Function(int hPC)>(
        'ClosePseudoConsole');

/// Displays a driver-supplied configuration dialog box.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-commconfigdialogw>.
///
/// {@category kernel32}
int CommConfigDialog(
        Pointer<Utf16> lpszName, int? hWnd, Pointer<COMMCONFIG> lpCC) =>
    _CommConfigDialog(lpszName, hWnd ?? 0, lpCC);

final _CommConfigDialog = _kernel32.lookupFunction<
    BOOL Function(Pointer<Utf16> lpszName, HWND hWnd, Pointer<COMMCONFIG> lpCC),
    int Function(Pointer<Utf16> lpszName, int hWnd,
        Pointer<COMMCONFIG> lpCC)>('CommConfigDialogW');

/// Enables a named pipe server process to wait for a client process to connect
/// to an instance of a named pipe.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/namedpipeapi/nf-namedpipeapi-connectnamedpipe>.
///
/// {@category kernel32}
int ConnectNamedPipe(int hNamedPipe, Pointer<OVERLAPPED>? lpOverlapped) =>
    _ConnectNamedPipe(hNamedPipe, lpOverlapped ?? nullptr);

final _ConnectNamedPipe = _kernel32.lookupFunction<
    BOOL Function(HANDLE hNamedPipe, Pointer<OVERLAPPED> lpOverlapped),
    int Function(
        int hNamedPipe, Pointer<OVERLAPPED> lpOverlapped)>('ConnectNamedPipe');

/// Enables a debugger to continue a thread that previously reported a debugging
/// event.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/debugapi/nf-debugapi-continuedebugevent>.
///
/// {@category kernel32}
int ContinueDebugEvent(int dwProcessId, int dwThreadId, int dwContinueStatus) =>
    _ContinueDebugEvent(dwProcessId, dwThreadId, dwContinueStatus);

final _ContinueDebugEvent = _kernel32.lookupFunction<
    BOOL Function(
        Uint32 dwProcessId, Uint32 dwThreadId, NTSTATUS dwContinueStatus),
    int Function(int dwProcessId, int dwThreadId,
        int dwContinueStatus)>('ContinueDebugEvent');

/// Creates an activation context.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-createactctxw>.
///
/// {@category kernel32}
int CreateActCtx(Pointer<ACTCTX> pActCtx) => _CreateActCtx(pActCtx);

final _CreateActCtx = _kernel32.lookupFunction<
    HANDLE Function(Pointer<ACTCTX> pActCtx),
    int Function(Pointer<ACTCTX> pActCtx)>('CreateActCtxW');

/// Creates a screen buffer for the Windows Console.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/console/createconsolescreenbuffer>.
///
/// {@category kernel32}
int CreateConsoleScreenBuffer(int dwDesiredAccess, int dwShareMode,
        Pointer<SECURITY_ATTRIBUTES>? lpSecurityAttributes, int dwFlags) =>
    _CreateConsoleScreenBuffer(dwDesiredAccess, dwShareMode,
        lpSecurityAttributes ?? nullptr, dwFlags, nullptr);

final _CreateConsoleScreenBuffer = _kernel32.lookupFunction<
    HANDLE Function(
        Uint32 dwDesiredAccess,
        Uint32 dwShareMode,
        Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
        Uint32 dwFlags,
        Pointer lpScreenBufferData),
    int Function(
        int dwDesiredAccess,
        int dwShareMode,
        Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
        int dwFlags,
        Pointer lpScreenBufferData)>('CreateConsoleScreenBuffer');

/// Creates a new directory.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-createdirectoryw>.
///
/// {@category kernel32}
int CreateDirectory(Pointer<Utf16> lpPathName,
        Pointer<SECURITY_ATTRIBUTES>? lpSecurityAttributes) =>
    _CreateDirectory(lpPathName, lpSecurityAttributes ?? nullptr);

final _CreateDirectory = _kernel32.lookupFunction<
    BOOL Function(Pointer<Utf16> lpPathName,
        Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes),
    int Function(Pointer<Utf16> lpPathName,
        Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes)>('CreateDirectoryW');

/// Creates or opens a named or unnamed event object.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/synchapi/nf-synchapi-createeventw>.
///
/// {@category kernel32}
int CreateEvent(Pointer<SECURITY_ATTRIBUTES>? lpEventAttributes,
        int bManualReset, int bInitialState, Pointer<Utf16>? lpName) =>
    _CreateEvent(lpEventAttributes ?? nullptr, bManualReset, bInitialState,
        lpName ?? nullptr);

final _CreateEvent = _kernel32.lookupFunction<
    HANDLE Function(Pointer<SECURITY_ATTRIBUTES> lpEventAttributes,
        BOOL bManualReset, BOOL bInitialState, Pointer<Utf16> lpName),
    int Function(
        Pointer<SECURITY_ATTRIBUTES> lpEventAttributes,
        int bManualReset,
        int bInitialState,
        Pointer<Utf16> lpName)>('CreateEventW');

/// Creates or opens a named or unnamed event object and returns a handle to the
/// object.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/synchapi/nf-synchapi-createeventexw>.
///
/// {@category kernel32}
int CreateEventEx(Pointer<SECURITY_ATTRIBUTES>? lpEventAttributes,
        Pointer<Utf16>? lpName, int dwFlags, int dwDesiredAccess) =>
    _CreateEventEx(lpEventAttributes ?? nullptr, lpName ?? nullptr, dwFlags,
        dwDesiredAccess);

final _CreateEventEx = _kernel32.lookupFunction<
    HANDLE Function(Pointer<SECURITY_ATTRIBUTES> lpEventAttributes,
        Pointer<Utf16> lpName, Uint32 dwFlags, Uint32 dwDesiredAccess),
    int Function(
        Pointer<SECURITY_ATTRIBUTES> lpEventAttributes,
        Pointer<Utf16> lpName,
        int dwFlags,
        int dwDesiredAccess)>('CreateEventExW');

/// Creates or opens a file or I/O device.
///
/// The most commonly used I/O devices are as follows: file, file stream,
/// directory, physical disk, volume, console buffer, tape drive, communications
/// resource, mailslot, and pipe.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-createfilew>.
///
/// {@category kernel32}
int CreateFile(
        Pointer<Utf16> lpFileName,
        int dwDesiredAccess,
        int dwShareMode,
        Pointer<SECURITY_ATTRIBUTES>? lpSecurityAttributes,
        int dwCreationDisposition,
        int dwFlagsAndAttributes,
        int? hTemplateFile) =>
    _CreateFile(
        lpFileName,
        dwDesiredAccess,
        dwShareMode,
        lpSecurityAttributes ?? nullptr,
        dwCreationDisposition,
        dwFlagsAndAttributes,
        hTemplateFile ?? 0);

final _CreateFile = _kernel32.lookupFunction<
    HANDLE Function(
        Pointer<Utf16> lpFileName,
        Uint32 dwDesiredAccess,
        Uint32 dwShareMode,
        Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
        Uint32 dwCreationDisposition,
        Uint32 dwFlagsAndAttributes,
        HANDLE hTemplateFile),
    int Function(
        Pointer<Utf16> lpFileName,
        int dwDesiredAccess,
        int dwShareMode,
        Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
        int dwCreationDisposition,
        int dwFlagsAndAttributes,
        int hTemplateFile)>('CreateFileW');

/// Creates or opens a file or I/O device.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-createfile2>.
///
/// {@category kernel32}
int CreateFile2(
        Pointer<Utf16> lpFileName,
        int dwDesiredAccess,
        int dwShareMode,
        int dwCreationDisposition,
        Pointer<CREATEFILE2_EXTENDED_PARAMETERS>? pCreateExParams) =>
    _CreateFile2(lpFileName, dwDesiredAccess, dwShareMode,
        dwCreationDisposition, pCreateExParams ?? nullptr);

final _CreateFile2 = _kernel32.lookupFunction<
        HANDLE Function(
            Pointer<Utf16> lpFileName,
            Uint32 dwDesiredAccess,
            Uint32 dwShareMode,
            Uint32 dwCreationDisposition,
            Pointer<CREATEFILE2_EXTENDED_PARAMETERS> pCreateExParams),
        int Function(
            Pointer<Utf16> lpFileName,
            int dwDesiredAccess,
            int dwShareMode,
            int dwCreationDisposition,
            Pointer<CREATEFILE2_EXTENDED_PARAMETERS> pCreateExParams)>(
    'CreateFile2');

/// Creates an input/output (I/O) completion port and associates it with a
/// specified file handle, or creates an I/O completion port that is not yet
/// associated with a file handle, allowing association at a later time.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/ioapiset/nf-ioapiset-createiocompletionport>.
///
/// {@category kernel32}
int CreateIoCompletionPort(int fileHandle, int? existingCompletionPort,
        int completionKey, int numberOfConcurrentThreads) =>
    _CreateIoCompletionPort(fileHandle, existingCompletionPort ?? 0,
        completionKey, numberOfConcurrentThreads);

final _CreateIoCompletionPort = _kernel32.lookupFunction<
    HANDLE Function(HANDLE fileHandle, HANDLE existingCompletionPort,
        IntPtr completionKey, Uint32 numberOfConcurrentThreads),
    int Function(int fileHandle, int existingCompletionPort, int completionKey,
        int numberOfConcurrentThreads)>('CreateIoCompletionPort');

/// Creates or opens a job object.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/jobapi2/nf-jobapi2-createjobobjectw>.
///
/// {@category kernel32}
int CreateJobObject(Pointer<SECURITY_ATTRIBUTES>? lpJobAttributes,
        Pointer<Utf16>? lpName) =>
    _CreateJobObject(lpJobAttributes ?? nullptr, lpName ?? nullptr);

final _CreateJobObject = _kernel32.lookupFunction<
    HANDLE Function(
        Pointer<SECURITY_ATTRIBUTES> lpJobAttributes, Pointer<Utf16> lpName),
    int Function(Pointer<SECURITY_ATTRIBUTES> lpJobAttributes,
        Pointer<Utf16> lpName)>('CreateJobObjectW');

/// Creates an instance of a named pipe and returns a handle for subsequent pipe
/// operations.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/namedpipeapi/nf-namedpipeapi-createnamedpipew>.
///
/// {@category kernel32}
int CreateNamedPipe(
        Pointer<Utf16> lpName,
        int dwOpenMode,
        int dwPipeMode,
        int nMaxInstances,
        int nOutBufferSize,
        int nInBufferSize,
        int nDefaultTimeOut,
        Pointer<SECURITY_ATTRIBUTES>? lpSecurityAttributes) =>
    _CreateNamedPipe(
        lpName,
        dwOpenMode,
        dwPipeMode,
        nMaxInstances,
        nOutBufferSize,
        nInBufferSize,
        nDefaultTimeOut,
        lpSecurityAttributes ?? nullptr);

final _CreateNamedPipe = _kernel32.lookupFunction<
    HANDLE Function(
        Pointer<Utf16> lpName,
        Uint32 dwOpenMode,
        Uint32 dwPipeMode,
        Uint32 nMaxInstances,
        Uint32 nOutBufferSize,
        Uint32 nInBufferSize,
        Uint32 nDefaultTimeOut,
        Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes),
    int Function(
        Pointer<Utf16> lpName,
        int dwOpenMode,
        int dwPipeMode,
        int nMaxInstances,
        int nOutBufferSize,
        int nInBufferSize,
        int nDefaultTimeOut,
        Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes)>('CreateNamedPipeW');

/// Creates an anonymous pipe, and returns handles to the read and write ends of
/// the pipe.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/namedpipeapi/nf-namedpipeapi-createpipe>.
///
/// {@category kernel32}
int CreatePipe(Pointer<HANDLE> hReadPipe, Pointer<HANDLE> hWritePipe,
        Pointer<SECURITY_ATTRIBUTES>? lpPipeAttributes, int nSize) =>
    _CreatePipe(hReadPipe, hWritePipe, lpPipeAttributes ?? nullptr, nSize);

final _CreatePipe = _kernel32.lookupFunction<
    BOOL Function(Pointer<HANDLE> hReadPipe, Pointer<HANDLE> hWritePipe,
        Pointer<SECURITY_ATTRIBUTES> lpPipeAttributes, Uint32 nSize),
    int Function(
        Pointer<HANDLE> hReadPipe,
        Pointer<HANDLE> hWritePipe,
        Pointer<SECURITY_ATTRIBUTES> lpPipeAttributes,
        int nSize)>('CreatePipe');

/// Creates a new process and its primary thread.
///
/// The new process runs in the security context of the calling process.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-createprocessw>.
///
/// {@category kernel32}
int CreateProcess(
        Pointer<Utf16>? lpApplicationName,
        Pointer<Utf16>? lpCommandLine,
        Pointer<SECURITY_ATTRIBUTES>? lpProcessAttributes,
        Pointer<SECURITY_ATTRIBUTES>? lpThreadAttributes,
        int bInheritHandles,
        int dwCreationFlags,
        Pointer? lpEnvironment,
        Pointer<Utf16>? lpCurrentDirectory,
        Pointer<STARTUPINFO> lpStartupInfo,
        Pointer<PROCESS_INFORMATION> lpProcessInformation) =>
    _CreateProcess(
        lpApplicationName ?? nullptr,
        lpCommandLine ?? nullptr,
        lpProcessAttributes ?? nullptr,
        lpThreadAttributes ?? nullptr,
        bInheritHandles,
        dwCreationFlags,
        lpEnvironment ?? nullptr,
        lpCurrentDirectory ?? nullptr,
        lpStartupInfo,
        lpProcessInformation);

final _CreateProcess = _kernel32.lookupFunction<
    BOOL Function(
        Pointer<Utf16> lpApplicationName,
        Pointer<Utf16> lpCommandLine,
        Pointer<SECURITY_ATTRIBUTES> lpProcessAttributes,
        Pointer<SECURITY_ATTRIBUTES> lpThreadAttributes,
        BOOL bInheritHandles,
        Uint32 dwCreationFlags,
        Pointer lpEnvironment,
        Pointer<Utf16> lpCurrentDirectory,
        Pointer<STARTUPINFO> lpStartupInfo,
        Pointer<PROCESS_INFORMATION> lpProcessInformation),
    int Function(
        Pointer<Utf16> lpApplicationName,
        Pointer<Utf16> lpCommandLine,
        Pointer<SECURITY_ATTRIBUTES> lpProcessAttributes,
        Pointer<SECURITY_ATTRIBUTES> lpThreadAttributes,
        int bInheritHandles,
        int dwCreationFlags,
        Pointer lpEnvironment,
        Pointer<Utf16> lpCurrentDirectory,
        Pointer<STARTUPINFO> lpStartupInfo,
        Pointer<PROCESS_INFORMATION> lpProcessInformation)>('CreateProcessW');

/// Allocates a new pseudoconsole for the calling process.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/console/createpseudoconsole>.
///
/// {@category kernel32}
int CreatePseudoConsole(COORD size, int hInput, int hOutput, int dwFlags,
        Pointer<HPCON> phPC) =>
    _CreatePseudoConsole(size, hInput, hOutput, dwFlags, phPC);

final _CreatePseudoConsole = _kernel32.lookupFunction<
    HRESULT Function(COORD size, HANDLE hInput, HANDLE hOutput, Uint32 dwFlags,
        Pointer<HPCON> phPC),
    int Function(COORD size, int hInput, int hOutput, int dwFlags,
        Pointer<HPCON> phPC)>('CreatePseudoConsole');

/// Creates a thread that runs in the virtual address space of another process.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-createremotethread>.
///
/// {@category kernel32}
int CreateRemoteThread(
        int hProcess,
        Pointer<SECURITY_ATTRIBUTES>? lpThreadAttributes,
        int dwStackSize,
        Pointer<NativeFunction<LPTHREAD_START_ROUTINE>> lpStartAddress,
        Pointer? lpParameter,
        int dwCreationFlags,
        Pointer<Uint32>? lpThreadId) =>
    _CreateRemoteThread(
        hProcess,
        lpThreadAttributes ?? nullptr,
        dwStackSize,
        lpStartAddress,
        lpParameter ?? nullptr,
        dwCreationFlags,
        lpThreadId ?? nullptr);

final _CreateRemoteThread = _kernel32.lookupFunction<
    HANDLE Function(
        HANDLE hProcess,
        Pointer<SECURITY_ATTRIBUTES> lpThreadAttributes,
        IntPtr dwStackSize,
        Pointer<NativeFunction<LPTHREAD_START_ROUTINE>> lpStartAddress,
        Pointer lpParameter,
        Uint32 dwCreationFlags,
        Pointer<Uint32> lpThreadId),
    int Function(
        int hProcess,
        Pointer<SECURITY_ATTRIBUTES> lpThreadAttributes,
        int dwStackSize,
        Pointer<NativeFunction<LPTHREAD_START_ROUTINE>> lpStartAddress,
        Pointer lpParameter,
        int dwCreationFlags,
        Pointer<Uint32> lpThreadId)>('CreateRemoteThread');

/// Creates a thread that runs in the virtual address space of another process
/// and optionally specifies extended attributes such as processor group
/// affinity.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-createremotethreadex>.
///
/// {@category kernel32}
int CreateRemoteThreadEx(
        int hProcess,
        Pointer<SECURITY_ATTRIBUTES>? lpThreadAttributes,
        int dwStackSize,
        Pointer<NativeFunction<LPTHREAD_START_ROUTINE>> lpStartAddress,
        Pointer? lpParameter,
        int dwCreationFlags,
        LPPROC_THREAD_ATTRIBUTE_LIST? lpAttributeList,
        Pointer<Uint32>? lpThreadId) =>
    _CreateRemoteThreadEx(
        hProcess,
        lpThreadAttributes ?? nullptr,
        dwStackSize,
        lpStartAddress,
        lpParameter ?? nullptr,
        dwCreationFlags,
        lpAttributeList ?? nullptr,
        lpThreadId ?? nullptr);

final _CreateRemoteThreadEx = _kernel32.lookupFunction<
    HANDLE Function(
        HANDLE hProcess,
        Pointer<SECURITY_ATTRIBUTES> lpThreadAttributes,
        IntPtr dwStackSize,
        Pointer<NativeFunction<LPTHREAD_START_ROUTINE>> lpStartAddress,
        Pointer lpParameter,
        Uint32 dwCreationFlags,
        LPPROC_THREAD_ATTRIBUTE_LIST lpAttributeList,
        Pointer<Uint32> lpThreadId),
    int Function(
        int hProcess,
        Pointer<SECURITY_ATTRIBUTES> lpThreadAttributes,
        int dwStackSize,
        Pointer<NativeFunction<LPTHREAD_START_ROUTINE>> lpStartAddress,
        Pointer lpParameter,
        int dwCreationFlags,
        LPPROC_THREAD_ATTRIBUTE_LIST lpAttributeList,
        Pointer<Uint32> lpThreadId)>('CreateRemoteThreadEx');

/// Creates a thread to execute within the virtual address space of the calling
/// process.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-createthread>.
///
/// {@category kernel32}
int CreateThread(
        Pointer<SECURITY_ATTRIBUTES>? lpThreadAttributes,
        int dwStackSize,
        Pointer<NativeFunction<LPTHREAD_START_ROUTINE>> lpStartAddress,
        Pointer? lpParameter,
        int dwCreationFlags,
        Pointer<Uint32>? lpThreadId) =>
    _CreateThread(lpThreadAttributes ?? nullptr, dwStackSize, lpStartAddress,
        lpParameter ?? nullptr, dwCreationFlags, lpThreadId ?? nullptr);

final _CreateThread = _kernel32.lookupFunction<
    HANDLE Function(
        Pointer<SECURITY_ATTRIBUTES> lpThreadAttributes,
        IntPtr dwStackSize,
        Pointer<NativeFunction<LPTHREAD_START_ROUTINE>> lpStartAddress,
        Pointer lpParameter,
        Uint32 dwCreationFlags,
        Pointer<Uint32> lpThreadId),
    int Function(
        Pointer<SECURITY_ATTRIBUTES> lpThreadAttributes,
        int dwStackSize,
        Pointer<NativeFunction<LPTHREAD_START_ROUTINE>> lpStartAddress,
        Pointer lpParameter,
        int dwCreationFlags,
        Pointer<Uint32> lpThreadId)>('CreateThread');

/// Deactivates the activation context corresponding to the specified cookie.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-deactivateactctx>.
///
/// {@category kernel32}
int DeactivateActCtx(int dwFlags, int ulCookie) =>
    _DeactivateActCtx(dwFlags, ulCookie);

final _DeactivateActCtx = _kernel32.lookupFunction<
    BOOL Function(Uint32 dwFlags, IntPtr ulCookie),
    int Function(int dwFlags, int ulCookie)>('DeactivateActCtx');

/// Causes a breakpoint exception to occur in the current process.
///
/// This allows the calling thread to signal the debugger to handle the
/// exception.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/debugapi/nf-debugapi-debugbreak>.
///
/// {@category kernel32}
void DebugBreak() => _DebugBreak();

final _DebugBreak =
    _kernel32.lookupFunction<Void Function(), void Function()>('DebugBreak');

/// Causes a breakpoint exception to occur in the specified process.
///
/// This allows the calling thread to signal the debugger to handle the
/// exception.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-debugbreakprocess>.
///
/// {@category kernel32}
int DebugBreakProcess(int process) => _DebugBreakProcess(process);

final _DebugBreakProcess = _kernel32.lookupFunction<
    BOOL Function(HANDLE process),
    int Function(int process)>('DebugBreakProcess');

/// Sets the action to be performed when the calling thread exits.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-debugsetprocesskillonexit>.
///
/// {@category kernel32}
int DebugSetProcessKillOnExit(int killOnExit) =>
    _DebugSetProcessKillOnExit(killOnExit);

final _DebugSetProcessKillOnExit = _kernel32.lookupFunction<
    BOOL Function(BOOL killOnExit),
    int Function(int killOnExit)>('DebugSetProcessKillOnExit');

/// Defines, redefines, or deletes MS-DOS device names.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-definedosdevicew>.
///
/// {@category kernel32}
int DefineDosDevice(int dwFlags, Pointer<Utf16> lpDeviceName,
        Pointer<Utf16>? lpTargetPath) =>
    _DefineDosDevice(dwFlags, lpDeviceName, lpTargetPath ?? nullptr);

final _DefineDosDevice = _kernel32.lookupFunction<
    BOOL Function(Uint32 dwFlags, Pointer<Utf16> lpDeviceName,
        Pointer<Utf16> lpTargetPath),
    int Function(int dwFlags, Pointer<Utf16> lpDeviceName,
        Pointer<Utf16> lpTargetPath)>('DefineDosDeviceW');

/// Deletes an existing file.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-deletefilew>.
///
/// {@category kernel32}
int DeleteFile(Pointer<Utf16> lpFileName) => _DeleteFile(lpFileName);

final _DeleteFile = _kernel32.lookupFunction<
    BOOL Function(Pointer<Utf16> lpFileName),
    int Function(Pointer<Utf16> lpFileName)>('DeleteFileW');

/// Deletes a drive letter or mounted folder.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-deletevolumemountpointw>.
///
/// {@category kernel32}
int DeleteVolumeMountPoint(Pointer<Utf16> lpszVolumeMountPoint) =>
    _DeleteVolumeMountPoint(lpszVolumeMountPoint);

final _DeleteVolumeMountPoint = _kernel32.lookupFunction<
    BOOL Function(Pointer<Utf16> lpszVolumeMountPoint),
    int Function(
        Pointer<Utf16> lpszVolumeMountPoint)>('DeleteVolumeMountPointW');

/// Sends a control code directly to a specified device driver, causing the
/// corresponding device to perform the corresponding operation.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/ioapiset/nf-ioapiset-deviceiocontrol>.
///
/// {@category kernel32}
int DeviceIoControl(
        int hDevice,
        int dwIoControlCode,
        Pointer? lpInBuffer,
        int nInBufferSize,
        Pointer? lpOutBuffer,
        int nOutBufferSize,
        Pointer<Uint32>? lpBytesReturned,
        Pointer<OVERLAPPED>? lpOverlapped) =>
    _DeviceIoControl(
        hDevice,
        dwIoControlCode,
        lpInBuffer ?? nullptr,
        nInBufferSize,
        lpOutBuffer ?? nullptr,
        nOutBufferSize,
        lpBytesReturned ?? nullptr,
        lpOverlapped ?? nullptr);

final _DeviceIoControl = _kernel32.lookupFunction<
    BOOL Function(
        HANDLE hDevice,
        Uint32 dwIoControlCode,
        Pointer lpInBuffer,
        Uint32 nInBufferSize,
        Pointer lpOutBuffer,
        Uint32 nOutBufferSize,
        Pointer<Uint32> lpBytesReturned,
        Pointer<OVERLAPPED> lpOverlapped),
    int Function(
        int hDevice,
        int dwIoControlCode,
        Pointer lpInBuffer,
        int nInBufferSize,
        Pointer lpOutBuffer,
        int nOutBufferSize,
        Pointer<Uint32> lpBytesReturned,
        Pointer<OVERLAPPED> lpOverlapped)>('DeviceIoControl');

/// Disables the DLL_THREAD_ATTACH and DLL_THREAD_DETACH notifications for the
/// specified dynamic-link library (DLL).
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/libloaderapi/nf-libloaderapi-disablethreadlibrarycalls>.
///
/// {@category kernel32}
int DisableThreadLibraryCalls(int hLibModule) =>
    _DisableThreadLibraryCalls(hLibModule);

final _DisableThreadLibraryCalls = _kernel32.lookupFunction<
    BOOL Function(HMODULE hLibModule),
    int Function(int hLibModule)>('DisableThreadLibraryCalls');

/// Disconnects the server end of a named pipe instance from a client process.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/namedpipeapi/nf-namedpipeapi-disconnectnamedpipe>.
///
/// {@category kernel32}
int DisconnectNamedPipe(int hNamedPipe) => _DisconnectNamedPipe(hNamedPipe);

final _DisconnectNamedPipe = _kernel32.lookupFunction<
    BOOL Function(HANDLE hNamedPipe),
    int Function(int hNamedPipe)>('DisconnectNamedPipe');

/// Converts a DNS-style host name to a NetBIOS-style computer name.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-dnshostnametocomputernamew>.
///
/// {@category kernel32}
int DnsHostnameToComputerName(Pointer<Utf16> hostname,
        Pointer<Utf16>? computerName, Pointer<Uint32> nSize) =>
    _DnsHostnameToComputerName(hostname, computerName ?? nullptr, nSize);

final _DnsHostnameToComputerName = _kernel32.lookupFunction<
    BOOL Function(Pointer<Utf16> hostname, Pointer<Utf16> computerName,
        Pointer<Uint32> nSize),
    int Function(Pointer<Utf16> hostname, Pointer<Utf16> computerName,
        Pointer<Uint32> nSize)>('DnsHostnameToComputerNameW');

/// Converts MS-DOS date and time values to a file time.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-dosdatetimetofiletime>.
///
/// {@category kernel32}
int DosDateTimeToFileTime(
        int wFatDate, int wFatTime, Pointer<FILETIME> lpFileTime) =>
    _DosDateTimeToFileTime(wFatDate, wFatTime, lpFileTime);

final _DosDateTimeToFileTime = _kernel32.lookupFunction<
    BOOL Function(
        Uint16 wFatDate, Uint16 wFatTime, Pointer<FILETIME> lpFileTime),
    int Function(int wFatDate, int wFatTime,
        Pointer<FILETIME> lpFileTime)>('DosDateTimeToFileTime');

/// Duplicates an object handle.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/handleapi/nf-handleapi-duplicatehandle>.
///
/// {@category kernel32}
int DuplicateHandle(
        int hSourceProcessHandle,
        int hSourceHandle,
        int hTargetProcessHandle,
        Pointer<HANDLE> lpTargetHandle,
        int dwDesiredAccess,
        int bInheritHandle,
        int dwOptions) =>
    _DuplicateHandle(hSourceProcessHandle, hSourceHandle, hTargetProcessHandle,
        lpTargetHandle, dwDesiredAccess, bInheritHandle, dwOptions);

final _DuplicateHandle = _kernel32.lookupFunction<
    BOOL Function(
        HANDLE hSourceProcessHandle,
        HANDLE hSourceHandle,
        HANDLE hTargetProcessHandle,
        Pointer<HANDLE> lpTargetHandle,
        Uint32 dwDesiredAccess,
        BOOL bInheritHandle,
        Uint32 dwOptions),
    int Function(
        int hSourceProcessHandle,
        int hSourceHandle,
        int hTargetProcessHandle,
        Pointer<HANDLE> lpTargetHandle,
        int dwDesiredAccess,
        int bInheritHandle,
        int dwOptions)>('DuplicateHandle');

/// Commits or discards changes made prior to a call to UpdateResource.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-endupdateresourcew>.
///
/// {@category kernel32}
int EndUpdateResource(int hUpdate, int fDiscard) =>
    _EndUpdateResource(hUpdate, fDiscard);

final _EndUpdateResource = _kernel32.lookupFunction<
    BOOL Function(HANDLE hUpdate, BOOL fDiscard),
    int Function(int hUpdate, int fDiscard)>('EndUpdateResourceW');

/// Enumerates resources of a specified type within a binary module.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/libloaderapi/nf-libloaderapi-enumresourcenamesw>.
///
/// {@category kernel32}
int EnumResourceNames(int? hModule, Pointer<Utf16> lpType,
        Pointer<NativeFunction<ENUMRESNAMEPROC>> lpEnumFunc, int lParam) =>
    _EnumResourceNames(hModule ?? 0, lpType, lpEnumFunc, lParam);

final _EnumResourceNames = _kernel32.lookupFunction<
    BOOL Function(HMODULE hModule, Pointer<Utf16> lpType,
        Pointer<NativeFunction<ENUMRESNAMEPROC>> lpEnumFunc, IntPtr lParam),
    int Function(
        int hModule,
        Pointer<Utf16> lpType,
        Pointer<NativeFunction<ENUMRESNAMEPROC>> lpEnumFunc,
        int lParam)>('EnumResourceNamesW');

/// Enumerates resource types within a binary module.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-enumresourcetypesw>.
///
/// {@category kernel32}
int EnumResourceTypes(int? hModule,
        Pointer<NativeFunction<ENUMRESTYPEPROC>> lpEnumFunc, int lParam) =>
    _EnumResourceTypes(hModule ?? 0, lpEnumFunc, lParam);

final _EnumResourceTypes = _kernel32.lookupFunction<
    BOOL Function(HMODULE hModule,
        Pointer<NativeFunction<ENUMRESTYPEPROC>> lpEnumFunc, IntPtr lParam),
    int Function(
        int hModule,
        Pointer<NativeFunction<ENUMRESTYPEPROC>> lpEnumFunc,
        int lParam)>('EnumResourceTypesW');

/// Enumerates all system firmware tables of the specified type.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/sysinfoapi/nf-sysinfoapi-enumsystemfirmwaretables>.
///
/// {@category kernel32}
int EnumSystemFirmwareTables(int firmwareTableProviderSignature,
        Pointer<Uint8>? pFirmwareTableEnumBuffer, int bufferSize) =>
    _EnumSystemFirmwareTables(firmwareTableProviderSignature,
        pFirmwareTableEnumBuffer ?? nullptr, bufferSize);

final _EnumSystemFirmwareTables = _kernel32.lookupFunction<
    Uint32 Function(Uint32 firmwareTableProviderSignature,
        Pointer<Uint8> pFirmwareTableEnumBuffer, Uint32 bufferSize),
    int Function(
        int firmwareTableProviderSignature,
        Pointer<Uint8> pFirmwareTableEnumBuffer,
        int bufferSize)>('EnumSystemFirmwareTables');

/// Directs the specified communications device to perform an extended function.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-escapecommfunction>.
///
/// {@category kernel32}
int EscapeCommFunction(int hFile, int dwFunc) =>
    _EscapeCommFunction(hFile, dwFunc);

final _EscapeCommFunction = _kernel32.lookupFunction<
    BOOL Function(HANDLE hFile, Uint32 dwFunc),
    int Function(int hFile, int dwFunc)>('EscapeCommFunction');

/// Ends the calling process and all its threads.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-exitprocess>.
///
/// {@category kernel32}
void ExitProcess(int uExitCode) => _ExitProcess(uExitCode);

final _ExitProcess = _kernel32.lookupFunction<Void Function(Uint32 uExitCode),
    void Function(int uExitCode)>('ExitProcess');

/// Ends the calling thread.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-exitthread>.
///
/// {@category kernel32}
void ExitThread(int dwExitCode) => _ExitThread(dwExitCode);

final _ExitThread = _kernel32.lookupFunction<Void Function(Uint32 dwExitCode),
    void Function(int dwExitCode)>('ExitThread');

/// Converts a file time to MS-DOS date and time values.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-filetimetodosdatetime>.
///
/// {@category kernel32}
int FileTimeToDosDateTime(Pointer<FILETIME> lpFileTime,
        Pointer<Uint16> lpFatDate, Pointer<Uint16> lpFatTime) =>
    _FileTimeToDosDateTime(lpFileTime, lpFatDate, lpFatTime);

final _FileTimeToDosDateTime = _kernel32.lookupFunction<
    BOOL Function(Pointer<FILETIME> lpFileTime, Pointer<Uint16> lpFatDate,
        Pointer<Uint16> lpFatTime),
    int Function(Pointer<FILETIME> lpFileTime, Pointer<Uint16> lpFatDate,
        Pointer<Uint16> lpFatTime)>('FileTimeToDosDateTime');

/// Converts a file time to system time format.
///
/// System time is based on Coordinated Universal Time (UTC).
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/timezoneapi/nf-timezoneapi-filetimetosystemtime>.
///
/// {@category kernel32}
int FileTimeToSystemTime(
        Pointer<FILETIME> lpFileTime, Pointer<SYSTEMTIME> lpSystemTime) =>
    _FileTimeToSystemTime(lpFileTime, lpSystemTime);

final _FileTimeToSystemTime = _kernel32.lookupFunction<
    BOOL Function(
        Pointer<FILETIME> lpFileTime, Pointer<SYSTEMTIME> lpSystemTime),
    int Function(Pointer<FILETIME> lpFileTime,
        Pointer<SYSTEMTIME> lpSystemTime)>('FileTimeToSystemTime');

/// Sets the character attributes for a specified number of character cells,
/// beginning at the specified coordinates in a screen buffer.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/console/fillconsoleoutputattribute>.
///
/// {@category kernel32}
int FillConsoleOutputAttribute(int hConsoleOutput, int wAttribute, int nLength,
        COORD dwWriteCoord, Pointer<Uint32> lpNumberOfAttrsWritten) =>
    _FillConsoleOutputAttribute(hConsoleOutput, wAttribute, nLength,
        dwWriteCoord, lpNumberOfAttrsWritten);

final _FillConsoleOutputAttribute = _kernel32.lookupFunction<
    BOOL Function(HANDLE hConsoleOutput, Uint16 wAttribute, Uint32 nLength,
        COORD dwWriteCoord, Pointer<Uint32> lpNumberOfAttrsWritten),
    int Function(
        int hConsoleOutput,
        int wAttribute,
        int nLength,
        COORD dwWriteCoord,
        Pointer<Uint32> lpNumberOfAttrsWritten)>('FillConsoleOutputAttribute');

/// Writes a character to the console screen buffer a specified number of times,
/// beginning at the specified coordinates.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/console/fillconsoleoutputcharacter>.
///
/// {@category kernel32}
int FillConsoleOutputCharacter(int hConsoleOutput, int cCharacter, int nLength,
        COORD dwWriteCoord, Pointer<Uint32> lpNumberOfCharsWritten) =>
    _FillConsoleOutputCharacter(hConsoleOutput, cCharacter, nLength,
        dwWriteCoord, lpNumberOfCharsWritten);

final _FillConsoleOutputCharacter = _kernel32.lookupFunction<
    BOOL Function(HANDLE hConsoleOutput, Uint16 cCharacter, Uint32 nLength,
        COORD dwWriteCoord, Pointer<Uint32> lpNumberOfCharsWritten),
    int Function(
        int hConsoleOutput,
        int cCharacter,
        int nLength,
        COORD dwWriteCoord,
        Pointer<Uint32> lpNumberOfCharsWritten)>('FillConsoleOutputCharacterW');

/// Closes a file search handle opened by the FindFirstFile, FindFirstFileEx,
/// FindFirstFileNameW, FindFirstFileNameTransactedW, FindFirstFileTransacted,
/// FindFirstStreamTransactedW, or FindFirstStreamW functions.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-findclose>.
///
/// {@category kernel32}
int FindClose(int hFindFile) => _FindClose(hFindFile);

final _FindClose = _kernel32.lookupFunction<BOOL Function(HANDLE hFindFile),
    int Function(int hFindFile)>('FindClose');

/// Stops change notification handle monitoring.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-findclosechangenotification>.
///
/// {@category kernel32}
int FindCloseChangeNotification(int hChangeHandle) =>
    _FindCloseChangeNotification(hChangeHandle);

final _FindCloseChangeNotification = _kernel32.lookupFunction<
    BOOL Function(HANDLE hChangeHandle),
    int Function(int hChangeHandle)>('FindCloseChangeNotification');

/// Creates a change notification handle and sets up initial change notification
/// filter conditions.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-findfirstchangenotificationw>.
///
/// {@category kernel32}
int FindFirstChangeNotification(
        Pointer<Utf16> lpPathName, int bWatchSubtree, int dwNotifyFilter) =>
    _FindFirstChangeNotification(lpPathName, bWatchSubtree, dwNotifyFilter);

final _FindFirstChangeNotification = _kernel32.lookupFunction<
    HANDLE Function(
        Pointer<Utf16> lpPathName, BOOL bWatchSubtree, Uint32 dwNotifyFilter),
    int Function(Pointer<Utf16> lpPathName, int bWatchSubtree,
        int dwNotifyFilter)>('FindFirstChangeNotificationW');

/// Searches a directory for a file or subdirectory with a name that matches a
/// specific name (or partial name if wildcards are used).
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-findfirstfilew>.
///
/// {@category kernel32}
int FindFirstFile(
        Pointer<Utf16> lpFileName, Pointer<WIN32_FIND_DATA> lpFindFileData) =>
    _FindFirstFile(lpFileName, lpFindFileData);

final _FindFirstFile = _kernel32.lookupFunction<
    HANDLE Function(
        Pointer<Utf16> lpFileName, Pointer<WIN32_FIND_DATA> lpFindFileData),
    int Function(Pointer<Utf16> lpFileName,
        Pointer<WIN32_FIND_DATA> lpFindFileData)>('FindFirstFileW');

/// Searches a directory for a file or subdirectory with a name and attributes
/// that match those specified.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-findfirstfileexw>.
///
/// {@category kernel32}
int FindFirstFileEx(Pointer<Utf16> lpFileName, int fInfoLevelId,
        Pointer lpFindFileData, int fSearchOp, int dwAdditionalFlags) =>
    _FindFirstFileEx(lpFileName, fInfoLevelId, lpFindFileData, fSearchOp,
        nullptr, dwAdditionalFlags);

final _FindFirstFileEx = _kernel32.lookupFunction<
    HANDLE Function(
        Pointer<Utf16> lpFileName,
        Int32 fInfoLevelId,
        Pointer lpFindFileData,
        Int32 fSearchOp,
        Pointer lpSearchFilter,
        Uint32 dwAdditionalFlags),
    int Function(
        Pointer<Utf16> lpFileName,
        int fInfoLevelId,
        Pointer lpFindFileData,
        int fSearchOp,
        Pointer lpSearchFilter,
        int dwAdditionalFlags)>('FindFirstFileExW');

/// Creates an enumeration of all the hard links to the specified file.
///
/// The FindFirstFileNameW function returns a handle to the enumeration that can
/// be used on subsequent calls to the FindNextFileNameW function.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-findfirstfilenamew>.
///
/// {@category kernel32}
int FindFirstFileName(Pointer<Utf16> lpFileName, int dwFlags,
        Pointer<Uint32> stringLength, Pointer<Utf16> linkName) =>
    _FindFirstFileName(lpFileName, dwFlags, stringLength, linkName);

final _FindFirstFileName = _kernel32.lookupFunction<
    HANDLE Function(Pointer<Utf16> lpFileName, Uint32 dwFlags,
        Pointer<Uint32> stringLength, Pointer<Utf16> linkName),
    int Function(
        Pointer<Utf16> lpFileName,
        int dwFlags,
        Pointer<Uint32> stringLength,
        Pointer<Utf16> linkName)>('FindFirstFileNameW');

/// Enumerates the first stream with a ::$DATA stream type in the specified file
/// or directory.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-findfirststreamw>.
///
/// {@category kernel32}
int FindFirstStream(
        Pointer<Utf16> lpFileName, int infoLevel, Pointer lpFindStreamData) =>
    _FindFirstStream(lpFileName, infoLevel, lpFindStreamData, 0);

final _FindFirstStream = _kernel32.lookupFunction<
    HANDLE Function(Pointer<Utf16> lpFileName, Int32 infoLevel,
        Pointer lpFindStreamData, Uint32 dwFlags),
    int Function(Pointer<Utf16> lpFileName, int infoLevel,
        Pointer lpFindStreamData, int dwFlags)>('FindFirstStreamW');

/// Retrieves the name of a volume on a computer.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-findfirstvolumew>.
///
/// {@category kernel32}
int FindFirstVolume(Pointer<Utf16> lpszVolumeName, int cchBufferLength) =>
    _FindFirstVolume(lpszVolumeName, cchBufferLength);

final _FindFirstVolume = _kernel32.lookupFunction<
    HANDLE Function(Pointer<Utf16> lpszVolumeName, Uint32 cchBufferLength),
    int Function(Pointer<Utf16> lpszVolumeName,
        int cchBufferLength)>('FindFirstVolumeW');

/// Requests that the operating system signal a change notification handle the
/// next time it detects an appropriate change.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-findnextchangenotification>.
///
/// {@category kernel32}
int FindNextChangeNotification(int hChangeHandle) =>
    _FindNextChangeNotification(hChangeHandle);

final _FindNextChangeNotification = _kernel32.lookupFunction<
    BOOL Function(HANDLE hChangeHandle),
    int Function(int hChangeHandle)>('FindNextChangeNotification');

/// Continues a file search from a previous call to the FindFirstFile,
/// FindFirstFileEx, or FindFirstFileTransacted functions.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-findnextfilew>.
///
/// {@category kernel32}
int FindNextFile(int hFindFile, Pointer<WIN32_FIND_DATA> lpFindFileData) =>
    _FindNextFile(hFindFile, lpFindFileData);

final _FindNextFile = _kernel32.lookupFunction<
    BOOL Function(HANDLE hFindFile, Pointer<WIN32_FIND_DATA> lpFindFileData),
    int Function(int hFindFile,
        Pointer<WIN32_FIND_DATA> lpFindFileData)>('FindNextFileW');

/// Continues enumerating the hard links to a file using the handle returned by
/// a successful call to the FindFirstFileNameW function.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-findnextfilenamew>.
///
/// {@category kernel32}
int FindNextFileName(int hFindStream, Pointer<Uint32> stringLength,
        Pointer<Utf16> linkName) =>
    _FindNextFileName(hFindStream, stringLength, linkName);

final _FindNextFileName = _kernel32.lookupFunction<
    BOOL Function(HANDLE hFindStream, Pointer<Uint32> stringLength,
        Pointer<Utf16> linkName),
    int Function(int hFindStream, Pointer<Uint32> stringLength,
        Pointer<Utf16> linkName)>('FindNextFileNameW');

/// Continues a stream search started by a previous call to the FindFirstStreamW
/// function.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-findnextstreamw>.
///
/// {@category kernel32}
int FindNextStream(int hFindStream, Pointer lpFindStreamData) =>
    _FindNextStream(hFindStream, lpFindStreamData);

final _FindNextStream = _kernel32.lookupFunction<
    BOOL Function(HANDLE hFindStream, Pointer lpFindStreamData),
    int Function(int hFindStream, Pointer lpFindStreamData)>('FindNextStreamW');

/// Continues a volume search started by a call to the FindFirstVolume function.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-findnextvolumew>.
///
/// {@category kernel32}
int FindNextVolume(
        int hFindVolume, Pointer<Utf16> lpszVolumeName, int cchBufferLength) =>
    _FindNextVolume(hFindVolume, lpszVolumeName, cchBufferLength);

final _FindNextVolume = _kernel32.lookupFunction<
    BOOL Function(HANDLE hFindVolume, Pointer<Utf16> lpszVolumeName,
        Uint32 cchBufferLength),
    int Function(int hFindVolume, Pointer<Utf16> lpszVolumeName,
        int cchBufferLength)>('FindNextVolumeW');

/// Finds the packages with the specified family name for the current user.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/appmodel/nf-appmodel-findpackagesbypackagefamily>.
///
/// {@category kernel32}
int FindPackagesByPackageFamily(
        Pointer<Utf16> packageFamilyName,
        int packageFilters,
        Pointer<Uint32> count,
        Pointer<Pointer<Utf16>>? packageFullNames,
        Pointer<Uint32> bufferLength,
        Pointer<Utf16>? buffer,
        Pointer<Uint32>? packageProperties) =>
    _FindPackagesByPackageFamily(
        packageFamilyName,
        packageFilters,
        count,
        packageFullNames ?? nullptr,
        bufferLength,
        buffer ?? nullptr,
        packageProperties ?? nullptr);

final _FindPackagesByPackageFamily = _kernel32.lookupFunction<
    Uint32 Function(
        Pointer<Utf16> packageFamilyName,
        Uint32 packageFilters,
        Pointer<Uint32> count,
        Pointer<Pointer<Utf16>> packageFullNames,
        Pointer<Uint32> bufferLength,
        Pointer<Utf16> buffer,
        Pointer<Uint32> packageProperties),
    int Function(
        Pointer<Utf16> packageFamilyName,
        int packageFilters,
        Pointer<Uint32> count,
        Pointer<Pointer<Utf16>> packageFullNames,
        Pointer<Uint32> bufferLength,
        Pointer<Utf16> buffer,
        Pointer<Uint32> packageProperties)>('FindPackagesByPackageFamily');

/// Determines the location of a resource with the specified type and name in
/// the specified module.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/libloaderapi/nf-libloaderapi-findresourcew>.
///
/// {@category kernel32}
int FindResource(int? hModule, Pointer<Utf16> lpName, Pointer<Utf16> lpType) =>
    _FindResource(hModule ?? 0, lpName, lpType);

final _FindResource = _kernel32.lookupFunction<
    HRSRC Function(
        HMODULE hModule, Pointer<Utf16> lpName, Pointer<Utf16> lpType),
    int Function(int hModule, Pointer<Utf16> lpName,
        Pointer<Utf16> lpType)>('FindResourceW');

/// Determines the location of the resource with the specified type, name, and
/// language in the specified module.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/libloaderapi/nf-libloaderapi-findresourceexw>.
///
/// {@category kernel32}
int FindResourceEx(int? hModule, Pointer<Utf16> lpType, Pointer<Utf16> lpName,
        int wLanguage) =>
    _FindResourceEx(hModule ?? 0, lpType, lpName, wLanguage);

final _FindResourceEx = _kernel32.lookupFunction<
    HRSRC Function(HMODULE hModule, Pointer<Utf16> lpType,
        Pointer<Utf16> lpName, Uint16 wLanguage),
    int Function(int hModule, Pointer<Utf16> lpType, Pointer<Utf16> lpName,
        int wLanguage)>('FindResourceExW');

/// Locates a Unicode string (wide characters) in another Unicode string for a
/// non-linguistic comparison.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/libloaderapi/nf-libloaderapi-findstringordinal>.
///
/// {@category kernel32}
int FindStringOrdinal(
        int dwFindStringOrdinalFlags,
        Pointer<Utf16> lpStringSource,
        int cchSource,
        Pointer<Utf16> lpStringValue,
        int cchValue,
        int bIgnoreCase) =>
    _FindStringOrdinal(dwFindStringOrdinalFlags, lpStringSource, cchSource,
        lpStringValue, cchValue, bIgnoreCase);

final _FindStringOrdinal = _kernel32.lookupFunction<
    Int32 Function(
        Uint32 dwFindStringOrdinalFlags,
        Pointer<Utf16> lpStringSource,
        Int32 cchSource,
        Pointer<Utf16> lpStringValue,
        Int32 cchValue,
        BOOL bIgnoreCase),
    int Function(
        int dwFindStringOrdinalFlags,
        Pointer<Utf16> lpStringSource,
        int cchSource,
        Pointer<Utf16> lpStringValue,
        int cchValue,
        int bIgnoreCase)>('FindStringOrdinal');

/// Closes the specified volume search handle.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-findvolumeclose>.
///
/// {@category kernel32}
int FindVolumeClose(int hFindVolume) => _FindVolumeClose(hFindVolume);

final _FindVolumeClose = _kernel32.lookupFunction<
    BOOL Function(HANDLE hFindVolume),
    int Function(int hFindVolume)>('FindVolumeClose');

/// Flushes the console input buffer.
///
/// All input records currently in the input buffer are discarded.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/console/flushconsoleinputbuffer>.
///
/// {@category kernel32}
int FlushConsoleInputBuffer(int hConsoleInput) =>
    _FlushConsoleInputBuffer(hConsoleInput);

final _FlushConsoleInputBuffer = _kernel32.lookupFunction<
    BOOL Function(HANDLE hConsoleInput),
    int Function(int hConsoleInput)>('FlushConsoleInputBuffer');

/// Formats a message string.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-formatmessagew>.
///
/// {@category kernel32}
int FormatMessage(
        int dwFlags,
        Pointer? lpSource,
        int dwMessageId,
        int dwLanguageId,
        Pointer<Utf16> lpBuffer,
        int nSize,
        Pointer<Pointer<Int8>>? arguments) =>
    _FormatMessage(dwFlags, lpSource ?? nullptr, dwMessageId, dwLanguageId,
        lpBuffer, nSize, arguments ?? nullptr);

final _FormatMessage = _kernel32.lookupFunction<
    Uint32 Function(
        Uint32 dwFlags,
        Pointer lpSource,
        Uint32 dwMessageId,
        Uint32 dwLanguageId,
        Pointer<Utf16> lpBuffer,
        Uint32 nSize,
        Pointer<Pointer<Int8>> arguments),
    int Function(
        int dwFlags,
        Pointer lpSource,
        int dwMessageId,
        int dwLanguageId,
        Pointer<Utf16> lpBuffer,
        int nSize,
        Pointer<Pointer<Int8>> arguments)>('FormatMessageW');

/// Detaches the calling process from its console.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/console/freeconsole>.
///
/// {@category kernel32}
int FreeConsole() => _FreeConsole();

final _FreeConsole =
    _kernel32.lookupFunction<BOOL Function(), int Function()>('FreeConsole');

/// Frees the loaded dynamic-link library (DLL) module and, if necessary,
/// decrements its reference count.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/libloaderapi/nf-libloaderapi-freelibrary>.
///
/// {@category kernel32}
int FreeLibrary(int hLibModule) => _FreeLibrary(hLibModule);

final _FreeLibrary = _kernel32.lookupFunction<BOOL Function(HMODULE hLibModule),
    int Function(int hLibModule)>('FreeLibrary');

/// Decrements the reference count of a loaded dynamic-link library (DLL) by
/// one, then calls ExitThread to terminate the calling thread.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/libloaderapi/nf-libloaderapi-freelibraryandexitthread>.
///
/// {@category kernel32}
void FreeLibraryAndExitThread(int hLibModule, int dwExitCode) =>
    _FreeLibraryAndExitThread(hLibModule, dwExitCode);

final _FreeLibraryAndExitThread = _kernel32.lookupFunction<
    Void Function(HMODULE hLibModule, Uint32 dwExitCode),
    void Function(int hLibModule, int dwExitCode)>('FreeLibraryAndExitThread');

/// Frees memory that a function related to job objects allocated.
///
/// Functions related to job objects that allocate memory include
/// QueryIoRateControlInformationJobObject.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/jobapi2/nf-jobapi2-freememoryjobobject>.
///
/// {@category kernel32}
void FreeMemoryJobObject(Pointer buffer) => _FreeMemoryJobObject(buffer);

final _FreeMemoryJobObject = _kernel32.lookupFunction<
    Void Function(Pointer buffer),
    void Function(Pointer buffer)>('FreeMemoryJobObject');

/// Returns the number of active processors in a processor group or in the
/// system.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-getactiveprocessorcount>.
///
/// {@category kernel32}
int GetActiveProcessorCount(int groupNumber) =>
    _GetActiveProcessorCount(groupNumber);

final _GetActiveProcessorCount = _kernel32.lookupFunction<
    Uint32 Function(Uint16 groupNumber),
    int Function(int groupNumber)>('GetActiveProcessorCount');

/// Returns the number of active processor groups in the system.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-getactiveprocessorgroupcount>.
///
/// {@category kernel32}
int GetActiveProcessorGroupCount() => _GetActiveProcessorGroupCount();

final _GetActiveProcessorGroupCount =
    _kernel32.lookupFunction<Uint16 Function(), int Function()>(
        'GetActiveProcessorGroupCount');

/// Determines whether a file is an executable (.exe) file, and if so, which
/// subsystem runs the executable file.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-getbinarytypew>.
///
/// {@category kernel32}
int GetBinaryType(
        Pointer<Utf16> lpApplicationName, Pointer<Uint32> lpBinaryType) =>
    _GetBinaryType(lpApplicationName, lpBinaryType);

final _GetBinaryType = _kernel32.lookupFunction<
    BOOL Function(
        Pointer<Utf16> lpApplicationName, Pointer<Uint32> lpBinaryType),
    int Function(Pointer<Utf16> lpApplicationName,
        Pointer<Uint32> lpBinaryType)>('GetBinaryTypeW');

/// Retrieves the command-line string for the current process.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/processenv/nf-processenv-getcommandlinew>.
///
/// {@category kernel32}
Pointer<Utf16> GetCommandLine() => _GetCommandLine();

final _GetCommandLine = _kernel32.lookupFunction<Pointer<Utf16> Function(),
    Pointer<Utf16> Function()>('GetCommandLineW');

/// Retrieves the current configuration of a communications device.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-getcommconfig>.
///
/// {@category kernel32}
int GetCommConfig(
        int hCommDev, Pointer<COMMCONFIG>? lpCC, Pointer<Uint32> lpdwSize) =>
    _GetCommConfig(hCommDev, lpCC ?? nullptr, lpdwSize);

final _GetCommConfig = _kernel32.lookupFunction<
    BOOL Function(
        HANDLE hCommDev, Pointer<COMMCONFIG> lpCC, Pointer<Uint32> lpdwSize),
    int Function(int hCommDev, Pointer<COMMCONFIG> lpCC,
        Pointer<Uint32> lpdwSize)>('GetCommConfig');

/// Retrieves the value of the event mask for a specified communications device.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-getcommmask>.
///
/// {@category kernel32}
int GetCommMask(int hFile, Pointer<Uint32> lpEvtMask) =>
    _GetCommMask(hFile, lpEvtMask);

final _GetCommMask = _kernel32.lookupFunction<
    BOOL Function(HANDLE hFile, Pointer<Uint32> lpEvtMask),
    int Function(int hFile, Pointer<Uint32> lpEvtMask)>('GetCommMask');

/// Retrieves the modem control-register values.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-getcommmodemstatus>.
///
/// {@category kernel32}
int GetCommModemStatus(int hFile, Pointer<Uint32> lpModemStat) =>
    _GetCommModemStatus(hFile, lpModemStat);

final _GetCommModemStatus = _kernel32.lookupFunction<
    BOOL Function(HANDLE hFile, Pointer<Uint32> lpModemStat),
    int Function(int hFile, Pointer<Uint32> lpModemStat)>('GetCommModemStatus');

/// Retrieves information about the communications properties for a specified
/// communications device.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-getcommproperties>.
///
/// {@category kernel32}
int GetCommProperties(int hFile, Pointer<COMMPROP> lpCommProp) =>
    _GetCommProperties(hFile, lpCommProp);

final _GetCommProperties = _kernel32.lookupFunction<
    BOOL Function(HANDLE hFile, Pointer<COMMPROP> lpCommProp),
    int Function(int hFile, Pointer<COMMPROP> lpCommProp)>('GetCommProperties');

/// Retrieves the current control settings for a specified communications
/// device.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-getcommstate>.
///
/// {@category kernel32}
int GetCommState(int hFile, Pointer<DCB> lpDCB) => _GetCommState(hFile, lpDCB);

final _GetCommState = _kernel32.lookupFunction<
    BOOL Function(HANDLE hFile, Pointer<DCB> lpDCB),
    int Function(int hFile, Pointer<DCB> lpDCB)>('GetCommState');

/// Retrieves the time-out parameters for all read and write operations on a
/// specified communications device.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-getcommtimeouts>.
///
/// {@category kernel32}
int GetCommTimeouts(int hFile, Pointer<COMMTIMEOUTS> lpCommTimeouts) =>
    _GetCommTimeouts(hFile, lpCommTimeouts);

final _GetCommTimeouts = _kernel32.lookupFunction<
    BOOL Function(HANDLE hFile, Pointer<COMMTIMEOUTS> lpCommTimeouts),
    int Function(
        int hFile, Pointer<COMMTIMEOUTS> lpCommTimeouts)>('GetCommTimeouts');

/// Retrieves the actual number of bytes of disk storage used to store a
/// specified file.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-getcompressedfilesizew>.
///
/// {@category kernel32}
int GetCompressedFileSize(
        Pointer<Utf16> lpFileName, Pointer<Uint32>? lpFileSizeHigh) =>
    _GetCompressedFileSize(lpFileName, lpFileSizeHigh ?? nullptr);

final _GetCompressedFileSize = _kernel32.lookupFunction<
    Uint32 Function(Pointer<Utf16> lpFileName, Pointer<Uint32> lpFileSizeHigh),
    int Function(Pointer<Utf16> lpFileName,
        Pointer<Uint32> lpFileSizeHigh)>('GetCompressedFileSizeW');

/// Retrieves the NetBIOS name of the local computer.
///
/// This name is established at system startup, when the system reads it from
/// the registry.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-getcomputernamew>.
///
/// {@category kernel32}
int GetComputerName(Pointer<Utf16>? lpBuffer, Pointer<Uint32> nSize) =>
    _GetComputerName(lpBuffer ?? nullptr, nSize);

final _GetComputerName = _kernel32.lookupFunction<
    BOOL Function(Pointer<Utf16> lpBuffer, Pointer<Uint32> nSize),
    int Function(
        Pointer<Utf16> lpBuffer, Pointer<Uint32> nSize)>('GetComputerNameW');

/// Retrieves a NetBIOS or DNS name associated with the local computer.
///
/// The names are established at system startup, when the system reads them from
/// the registry.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/sysinfoapi/nf-sysinfoapi-getcomputernameexw>.
///
/// {@category kernel32}
int GetComputerNameEx(
        int nameType, Pointer<Utf16>? lpBuffer, Pointer<Uint32> nSize) =>
    _GetComputerNameEx(nameType, lpBuffer ?? nullptr, nSize);

final _GetComputerNameEx = _kernel32.lookupFunction<
    BOOL Function(
        Int32 nameType, Pointer<Utf16> lpBuffer, Pointer<Uint32> nSize),
    int Function(int nameType, Pointer<Utf16> lpBuffer,
        Pointer<Uint32> nSize)>('GetComputerNameExW');

/// Retrieves the input code page used by the console associated with the
/// calling process.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/console/getconsolecp>.
///
/// {@category kernel32}
int GetConsoleCP() => _GetConsoleCP();

final _GetConsoleCP =
    _kernel32.lookupFunction<Uint32 Function(), int Function()>('GetConsoleCP');

/// Retrieves information about the size and visibility of the cursor for the
/// specified console screen buffer.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/console/getconsolecursorinfo>.
///
/// {@category kernel32}
int GetConsoleCursorInfo(
        int hConsoleOutput, Pointer<CONSOLE_CURSOR_INFO> lpConsoleCursorInfo) =>
    _GetConsoleCursorInfo(hConsoleOutput, lpConsoleCursorInfo);

final _GetConsoleCursorInfo = _kernel32.lookupFunction<
        BOOL Function(HANDLE hConsoleOutput,
            Pointer<CONSOLE_CURSOR_INFO> lpConsoleCursorInfo),
        int Function(int hConsoleOutput,
            Pointer<CONSOLE_CURSOR_INFO> lpConsoleCursorInfo)>(
    'GetConsoleCursorInfo');

/// Retrieves the current input mode of a console's input buffer or the current
/// output mode of a console screen buffer.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/console/getconsolemode>.
///
/// {@category kernel32}
int GetConsoleMode(int hConsoleHandle, Pointer<Uint32> lpMode) =>
    _GetConsoleMode(hConsoleHandle, lpMode);

final _GetConsoleMode = _kernel32.lookupFunction<
    BOOL Function(HANDLE hConsoleHandle, Pointer<Uint32> lpMode),
    int Function(int hConsoleHandle, Pointer<Uint32> lpMode)>('GetConsoleMode');

/// Retrieves the output code page used by the console associated with the
/// calling process.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/console/getconsoleoutputcp>.
///
/// {@category kernel32}
int GetConsoleOutputCP() => _GetConsoleOutputCP();

final _GetConsoleOutputCP = _kernel32
    .lookupFunction<Uint32 Function(), int Function()>('GetConsoleOutputCP');

/// Retrieves information about the specified console screen buffer.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/console/getconsolescreenbufferinfo>.
///
/// {@category kernel32}
int GetConsoleScreenBufferInfo(int hConsoleOutput,
        Pointer<CONSOLE_SCREEN_BUFFER_INFO> lpConsoleScreenBufferInfo) =>
    _GetConsoleScreenBufferInfo(hConsoleOutput, lpConsoleScreenBufferInfo);

final _GetConsoleScreenBufferInfo = _kernel32.lookupFunction<
        BOOL Function(HANDLE hConsoleOutput,
            Pointer<CONSOLE_SCREEN_BUFFER_INFO> lpConsoleScreenBufferInfo),
        int Function(int hConsoleOutput,
            Pointer<CONSOLE_SCREEN_BUFFER_INFO> lpConsoleScreenBufferInfo)>(
    'GetConsoleScreenBufferInfo');

/// Retrieves information about the current console selection.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/console/getconsoleselectioninfo>.
///
/// {@category kernel32}
int GetConsoleSelectionInfo(
        Pointer<CONSOLE_SELECTION_INFO> lpConsoleSelectionInfo) =>
    _GetConsoleSelectionInfo(lpConsoleSelectionInfo);

final _GetConsoleSelectionInfo = _kernel32.lookupFunction<
        BOOL Function(Pointer<CONSOLE_SELECTION_INFO> lpConsoleSelectionInfo),
        int Function(Pointer<CONSOLE_SELECTION_INFO> lpConsoleSelectionInfo)>(
    'GetConsoleSelectionInfo');

/// Retrieves the title and size of the title for the current console window.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/console/getconsoletitle>.
///
/// {@category kernel32}
int GetConsoleTitle(Pointer<Utf16> lpConsoleTitle, int nSize) =>
    _GetConsoleTitle(lpConsoleTitle, nSize);

final _GetConsoleTitle = _kernel32.lookupFunction<
    Uint32 Function(Pointer<Utf16> lpConsoleTitle, Uint32 nSize),
    int Function(Pointer<Utf16> lpConsoleTitle, int nSize)>('GetConsoleTitleW');

/// Retrieves the window handle used by the console associated with the calling
/// process.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/console/getconsolewindow>.
///
/// {@category kernel32}
int GetConsoleWindow() => _GetConsoleWindow();

final _GetConsoleWindow = _kernel32
    .lookupFunction<HWND Function(), int Function()>('GetConsoleWindow');

/// Returns the handle to the active activation context of the calling thread.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-getcurrentactctx>.
///
/// {@category kernel32}
int GetCurrentActCtx(Pointer<HANDLE> lphActCtx) => _GetCurrentActCtx(lphActCtx);

final _GetCurrentActCtx = _kernel32.lookupFunction<
    BOOL Function(Pointer<HANDLE> lphActCtx),
    int Function(Pointer<HANDLE> lphActCtx)>('GetCurrentActCtx');

/// Retrieves a pseudo handle for the current process.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-getcurrentprocess>.
///
/// {@category kernel32}
int GetCurrentProcess() => _GetCurrentProcess();

final _GetCurrentProcess = _kernel32
    .lookupFunction<HANDLE Function(), int Function()>('GetCurrentProcess');

/// Retrieves the process identifier of the calling process.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-getcurrentprocessid>.
///
/// {@category kernel32}
int GetCurrentProcessId() => _GetCurrentProcessId();

final _GetCurrentProcessId = _kernel32
    .lookupFunction<Uint32 Function(), int Function()>('GetCurrentProcessId');

/// Retrieves the number of the processor the current thread was running on
/// during the call to this function.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-getcurrentprocessornumber>.
///
/// {@category kernel32}
int GetCurrentProcessorNumber() => _GetCurrentProcessorNumber();

final _GetCurrentProcessorNumber =
    _kernel32.lookupFunction<Uint32 Function(), int Function()>(
        'GetCurrentProcessorNumber');

/// Retrieves a pseudo handle for the calling thread.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-getcurrentthread>.
///
/// {@category kernel32}
int GetCurrentThread() => _GetCurrentThread();

final _GetCurrentThread = _kernel32
    .lookupFunction<HANDLE Function(), int Function()>('GetCurrentThread');

/// Retrieves the thread identifier of the calling thread.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-getcurrentthreadid>.
///
/// {@category kernel32}
int GetCurrentThreadId() => _GetCurrentThreadId();

final _GetCurrentThreadId = _kernel32
    .lookupFunction<Uint32 Function(), int Function()>('GetCurrentThreadId');

/// Retrieves the default configuration for the specified communications device.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-getdefaultcommconfigw>.
///
/// {@category kernel32}
int GetDefaultCommConfig(Pointer<Utf16> lpszName, Pointer<COMMCONFIG> lpCC,
        Pointer<Uint32> lpdwSize) =>
    _GetDefaultCommConfig(lpszName, lpCC, lpdwSize);

final _GetDefaultCommConfig = _kernel32.lookupFunction<
    BOOL Function(Pointer<Utf16> lpszName, Pointer<COMMCONFIG> lpCC,
        Pointer<Uint32> lpdwSize),
    int Function(Pointer<Utf16> lpszName, Pointer<COMMCONFIG> lpCC,
        Pointer<Uint32> lpdwSize)>('GetDefaultCommConfigW');

/// Retrieves information about the specified disk, including the amount of free
/// space on the disk.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-getdiskfreespacew>.
///
/// {@category kernel32}
int GetDiskFreeSpace(
        Pointer<Utf16>? lpRootPathName,
        Pointer<Uint32>? lpSectorsPerCluster,
        Pointer<Uint32>? lpBytesPerSector,
        Pointer<Uint32>? lpNumberOfFreeClusters,
        Pointer<Uint32>? lpTotalNumberOfClusters) =>
    _GetDiskFreeSpace(
        lpRootPathName ?? nullptr,
        lpSectorsPerCluster ?? nullptr,
        lpBytesPerSector ?? nullptr,
        lpNumberOfFreeClusters ?? nullptr,
        lpTotalNumberOfClusters ?? nullptr);

final _GetDiskFreeSpace = _kernel32.lookupFunction<
    BOOL Function(
        Pointer<Utf16> lpRootPathName,
        Pointer<Uint32> lpSectorsPerCluster,
        Pointer<Uint32> lpBytesPerSector,
        Pointer<Uint32> lpNumberOfFreeClusters,
        Pointer<Uint32> lpTotalNumberOfClusters),
    int Function(
        Pointer<Utf16> lpRootPathName,
        Pointer<Uint32> lpSectorsPerCluster,
        Pointer<Uint32> lpBytesPerSector,
        Pointer<Uint32> lpNumberOfFreeClusters,
        Pointer<Uint32> lpTotalNumberOfClusters)>('GetDiskFreeSpaceW');

/// Retrieves information about the amount of space that is available on a disk
/// volume, which is the total amount of space, the total amount of free space,
/// and the total amount of free space available to the user that is associated
/// with the calling thread.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-getdiskfreespaceexw>.
///
/// {@category kernel32}
int GetDiskFreeSpaceEx(
        Pointer<Utf16>? lpDirectoryName,
        Pointer<Uint64>? lpFreeBytesAvailableToCaller,
        Pointer<Uint64>? lpTotalNumberOfBytes,
        Pointer<Uint64>? lpTotalNumberOfFreeBytes) =>
    _GetDiskFreeSpaceEx(
        lpDirectoryName ?? nullptr,
        lpFreeBytesAvailableToCaller ?? nullptr,
        lpTotalNumberOfBytes ?? nullptr,
        lpTotalNumberOfFreeBytes ?? nullptr);

final _GetDiskFreeSpaceEx = _kernel32.lookupFunction<
    BOOL Function(
        Pointer<Utf16> lpDirectoryName,
        Pointer<Uint64> lpFreeBytesAvailableToCaller,
        Pointer<Uint64> lpTotalNumberOfBytes,
        Pointer<Uint64> lpTotalNumberOfFreeBytes),
    int Function(
        Pointer<Utf16> lpDirectoryName,
        Pointer<Uint64> lpFreeBytesAvailableToCaller,
        Pointer<Uint64> lpTotalNumberOfBytes,
        Pointer<Uint64> lpTotalNumberOfFreeBytes)>('GetDiskFreeSpaceExW');

/// Retrieves the application-specific portion of the search path used to locate
/// DLLs for the application.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-getdlldirectoryw>.
///
/// {@category kernel32}
int GetDllDirectory(int nBufferLength, Pointer<Utf16>? lpBuffer) =>
    _GetDllDirectory(nBufferLength, lpBuffer ?? nullptr);

final _GetDllDirectory = _kernel32.lookupFunction<
    Uint32 Function(Uint32 nBufferLength, Pointer<Utf16> lpBuffer),
    int Function(
        int nBufferLength, Pointer<Utf16> lpBuffer)>('GetDllDirectoryW');

/// Determines whether a disk drive is a removable, fixed, CD-ROM, RAM disk, or
/// network drive.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-getdrivetypew>.
///
/// {@category kernel32}
int GetDriveType(Pointer<Utf16>? lpRootPathName) =>
    _GetDriveType(lpRootPathName ?? nullptr);

final _GetDriveType = _kernel32.lookupFunction<
    Uint32 Function(Pointer<Utf16> lpRootPathName),
    int Function(Pointer<Utf16> lpRootPathName)>('GetDriveTypeW');

/// Retrieves the contents of the specified variable from the environment block
/// of the calling process.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/processenv/nf-processenv-getenvironmentvariablew>.
///
/// {@category kernel32}
int GetEnvironmentVariable(
        Pointer<Utf16>? lpName, Pointer<Utf16>? lpBuffer, int nSize) =>
    _GetEnvironmentVariable(lpName ?? nullptr, lpBuffer ?? nullptr, nSize);

final _GetEnvironmentVariable = _kernel32.lookupFunction<
    Uint32 Function(
        Pointer<Utf16> lpName, Pointer<Utf16> lpBuffer, Uint32 nSize),
    int Function(Pointer<Utf16> lpName, Pointer<Utf16> lpBuffer,
        int nSize)>('GetEnvironmentVariableW');

/// Retrieves the termination status of the specified process.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-getexitcodeprocess>.
///
/// {@category kernel32}
int GetExitCodeProcess(int hProcess, Pointer<Uint32> lpExitCode) =>
    _GetExitCodeProcess(hProcess, lpExitCode);

final _GetExitCodeProcess = _kernel32.lookupFunction<
    BOOL Function(HANDLE hProcess, Pointer<Uint32> lpExitCode),
    int Function(
        int hProcess, Pointer<Uint32> lpExitCode)>('GetExitCodeProcess');

/// Retrieves file system attributes for a specified file or directory.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-getfileattributesw>.
///
/// {@category kernel32}
int GetFileAttributes(Pointer<Utf16> lpFileName) =>
    _GetFileAttributes(lpFileName);

final _GetFileAttributes = _kernel32.lookupFunction<
    Uint32 Function(Pointer<Utf16> lpFileName),
    int Function(Pointer<Utf16> lpFileName)>('GetFileAttributesW');

/// Retrieves attributes for a specified file or directory.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-getfileattributesexw>.
///
/// {@category kernel32}
int GetFileAttributesEx(Pointer<Utf16> lpFileName, int fInfoLevelId,
        Pointer lpFileInformation) =>
    _GetFileAttributesEx(lpFileName, fInfoLevelId, lpFileInformation);

final _GetFileAttributesEx = _kernel32.lookupFunction<
    BOOL Function(Pointer<Utf16> lpFileName, Int32 fInfoLevelId,
        Pointer lpFileInformation),
    int Function(Pointer<Utf16> lpFileName, int fInfoLevelId,
        Pointer lpFileInformation)>('GetFileAttributesExW');

/// Retrieves file information for the specified file.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-getfileinformationbyhandle>.
///
/// {@category kernel32}
int GetFileInformationByHandle(
        int hFile, Pointer<BY_HANDLE_FILE_INFORMATION> lpFileInformation) =>
    _GetFileInformationByHandle(hFile, lpFileInformation);

final _GetFileInformationByHandle = _kernel32.lookupFunction<
        BOOL Function(HANDLE hFile,
            Pointer<BY_HANDLE_FILE_INFORMATION> lpFileInformation),
        int Function(
            int hFile, Pointer<BY_HANDLE_FILE_INFORMATION> lpFileInformation)>(
    'GetFileInformationByHandle');

/// Retrieves the size of the specified file, in bytes.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-getfilesize>.
///
/// {@category kernel32}
int GetFileSize(int hFile, Pointer<Uint32>? lpFileSizeHigh) =>
    _GetFileSize(hFile, lpFileSizeHigh ?? nullptr);

final _GetFileSize = _kernel32.lookupFunction<
    Uint32 Function(HANDLE hFile, Pointer<Uint32> lpFileSizeHigh),
    int Function(int hFile, Pointer<Uint32> lpFileSizeHigh)>('GetFileSize');

/// Retrieves the size of the specified file.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-getfilesizeex>.
///
/// {@category kernel32}
int GetFileSizeEx(int hFile, Pointer<Int64> lpFileSize) =>
    _GetFileSizeEx(hFile, lpFileSize);

final _GetFileSizeEx = _kernel32.lookupFunction<
    BOOL Function(HANDLE hFile, Pointer<Int64> lpFileSize),
    int Function(int hFile, Pointer<Int64> lpFileSize)>('GetFileSizeEx');

/// Retrieves the file type of the specified file.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-getfiletype>.
///
/// {@category kernel32}
int GetFileType(int hFile) => _GetFileType(hFile);

final _GetFileType = _kernel32.lookupFunction<Uint32 Function(HANDLE hFile),
    int Function(int hFile)>('GetFileType');

/// Retrieves the final path for the specified file.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-getfinalpathnamebyhandlew>.
///
/// {@category kernel32}
int GetFinalPathNameByHandle(
        int hFile, Pointer<Utf16> lpszFilePath, int cchFilePath, int dwFlags) =>
    _GetFinalPathNameByHandle(hFile, lpszFilePath, cchFilePath, dwFlags);

final _GetFinalPathNameByHandle = _kernel32.lookupFunction<
    Uint32 Function(HANDLE hFile, Pointer<Utf16> lpszFilePath,
        Uint32 cchFilePath, Uint32 dwFlags),
    int Function(int hFile, Pointer<Utf16> lpszFilePath, int cchFilePath,
        int dwFlags)>('GetFinalPathNameByHandleW');

/// Retrieves the full path and file name of the specified file.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-getfullpathnamew>.
///
/// {@category kernel32}
int GetFullPathName(Pointer<Utf16> lpFileName, int nBufferLength,
        Pointer<Utf16>? lpBuffer, Pointer<Pointer<Utf16>>? lpFilePart) =>
    _GetFullPathName(
        lpFileName, nBufferLength, lpBuffer ?? nullptr, lpFilePart ?? nullptr);

final _GetFullPathName = _kernel32.lookupFunction<
    Uint32 Function(Pointer<Utf16> lpFileName, Uint32 nBufferLength,
        Pointer<Utf16> lpBuffer, Pointer<Pointer<Utf16>> lpFilePart),
    int Function(
        Pointer<Utf16> lpFileName,
        int nBufferLength,
        Pointer<Utf16> lpBuffer,
        Pointer<Pointer<Utf16>> lpFilePart)>('GetFullPathNameW');

/// Retrieves certain properties of an object handle.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/handleapi/nf-handleapi-gethandleinformation>.
///
/// {@category kernel32}
int GetHandleInformation(int hObject, Pointer<Uint32> lpdwFlags) =>
    _GetHandleInformation(hObject, lpdwFlags);

final _GetHandleInformation = _kernel32.lookupFunction<
    BOOL Function(HANDLE hObject, Pointer<Uint32> lpdwFlags),
    int Function(
        int hObject, Pointer<Uint32> lpdwFlags)>('GetHandleInformation');

/// Retrieves the size of the largest possible console window, based on the
/// current font and the size of the display.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/console/getlargestconsolewindowsize>.
///
/// {@category kernel32}
COORD GetLargestConsoleWindowSize(int hConsoleOutput) =>
    _GetLargestConsoleWindowSize(hConsoleOutput);

final _GetLargestConsoleWindowSize = _kernel32.lookupFunction<
    COORD Function(HANDLE hConsoleOutput),
    COORD Function(int hConsoleOutput)>('GetLargestConsoleWindowSize');

/// Retrieves the calling thread's last-error code value.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/errhandlingapi/nf-errhandlingapi-getlasterror>.
///
/// {@category kernel32}
int GetLastError() => _GetLastError();

final _GetLastError =
    _kernel32.lookupFunction<Uint32 Function(), int Function()>('GetLastError');

/// Retrieves information about a locale specified by name.
///
/// **Note**: The application should call this function in preference to
/// GetLocaleInfo if designed to run only on Windows Vista and later. **Note**:
/// This function can retrieve data that changes between releases, for example,
/// due to a custom locale. If your application must persist or transmit data,
/// see Using Persistent Locale Data.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winnls/nf-winnls-getlocaleinfoex>.
///
/// {@category kernel32}
int GetLocaleInfoEx(Pointer<Utf16>? lpLocaleName, int lCType,
        Pointer<Utf16>? lpLCData, int cchData) =>
    _GetLocaleInfoEx(
        lpLocaleName ?? nullptr, lCType, lpLCData ?? nullptr, cchData);

final _GetLocaleInfoEx = _kernel32.lookupFunction<
    Int32 Function(Pointer<Utf16> lpLocaleName, Uint32 lCType,
        Pointer<Utf16> lpLCData, Int32 cchData),
    int Function(Pointer<Utf16> lpLocaleName, int lCType,
        Pointer<Utf16> lpLCData, int cchData)>('GetLocaleInfoEx');

/// Retrieves the current local date and time.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/sysinfoapi/nf-sysinfoapi-getlocaltime>.
///
/// {@category kernel32}
void GetLocalTime(Pointer<SYSTEMTIME> lpSystemTime) =>
    _GetLocalTime(lpSystemTime);

final _GetLocalTime = _kernel32.lookupFunction<
    Void Function(Pointer<SYSTEMTIME> lpSystemTime),
    void Function(Pointer<SYSTEMTIME> lpSystemTime)>('GetLocalTime');

/// Retrieves a bitmask representing the currently available disk drives.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-getlogicaldrives>.
///
/// {@category kernel32}
int GetLogicalDrives() => _GetLogicalDrives();

final _GetLogicalDrives = _kernel32
    .lookupFunction<Uint32 Function(), int Function()>('GetLogicalDrives');

/// Fills a buffer with strings that specify valid drives in the system.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-getlogicaldrivestringsw>.
///
/// {@category kernel32}
int GetLogicalDriveStrings(int nBufferLength, Pointer<Utf16>? lpBuffer) =>
    _GetLogicalDriveStrings(nBufferLength, lpBuffer ?? nullptr);

final _GetLogicalDriveStrings = _kernel32.lookupFunction<
    Uint32 Function(Uint32 nBufferLength, Pointer<Utf16> lpBuffer),
    int Function(
        int nBufferLength, Pointer<Utf16> lpBuffer)>('GetLogicalDriveStringsW');

/// Retrieves information about logical processors and related hardware.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/sysinfoapi/nf-sysinfoapi-getlogicalprocessorinformation>.
///
/// {@category kernel32}
int GetLogicalProcessorInformation(
        Pointer<SYSTEM_LOGICAL_PROCESSOR_INFORMATION>? buffer,
        Pointer<Uint32> returnedLength) =>
    _GetLogicalProcessorInformation(buffer ?? nullptr, returnedLength);

final _GetLogicalProcessorInformation = _kernel32.lookupFunction<
    BOOL Function(Pointer<SYSTEM_LOGICAL_PROCESSOR_INFORMATION> buffer,
        Pointer<Uint32> returnedLength),
    int Function(Pointer<SYSTEM_LOGICAL_PROCESSOR_INFORMATION> buffer,
        Pointer<Uint32> returnedLength)>('GetLogicalProcessorInformation');

/// Converts the specified path to its long form.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-getlongpathnamew>.
///
/// {@category kernel32}
int GetLongPathName(Pointer<Utf16> lpszShortPath, Pointer<Utf16>? lpszLongPath,
        int cchBuffer) =>
    _GetLongPathName(lpszShortPath, lpszLongPath ?? nullptr, cchBuffer);

final _GetLongPathName = _kernel32.lookupFunction<
    Uint32 Function(Pointer<Utf16> lpszShortPath, Pointer<Utf16> lpszLongPath,
        Uint32 cchBuffer),
    int Function(Pointer<Utf16> lpszShortPath, Pointer<Utf16> lpszLongPath,
        int cchBuffer)>('GetLongPathNameW');

/// Queries if the specified architecture is supported on the current system,
/// either natively or by any form of compatibility or emulation layer.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-getmachinetypeattributes>.
///
/// {@category kernel32}
int GetMachineTypeAttributes(
        int machine, Pointer<Int32> machineTypeAttributes) =>
    _GetMachineTypeAttributes(machine, machineTypeAttributes);

final _GetMachineTypeAttributes = _kernel32.lookupFunction<
    HRESULT Function(Uint16 machine, Pointer<Int32> machineTypeAttributes),
    int Function(int machine,
        Pointer<Int32> machineTypeAttributes)>('GetMachineTypeAttributes');

/// Returns the maximum number of logical processors that a processor group or
/// the system can have.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-getmaximumprocessorcount>.
///
/// {@category kernel32}
int GetMaximumProcessorCount(int groupNumber) =>
    _GetMaximumProcessorCount(groupNumber);

final _GetMaximumProcessorCount = _kernel32.lookupFunction<
    Uint32 Function(Uint16 groupNumber),
    int Function(int groupNumber)>('GetMaximumProcessorCount');

/// Returns the maximum number of processor groups that the system can have.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-getmaximumprocessorgroupcount>.
///
/// {@category kernel32}
int GetMaximumProcessorGroupCount() => _GetMaximumProcessorGroupCount();

final _GetMaximumProcessorGroupCount =
    _kernel32.lookupFunction<Uint16 Function(), int Function()>(
        'GetMaximumProcessorGroupCount');

/// Retrieves the fully qualified path for the file that contains the specified
/// module.
///
/// The module must have been loaded by the current process.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/libloaderapi/nf-libloaderapi-getmodulefilenamew>.
///
/// {@category kernel32}
int GetModuleFileName(int? hModule, Pointer<Utf16> lpFilename, int nSize) =>
    _GetModuleFileName(hModule ?? 0, lpFilename, nSize);

final _GetModuleFileName = _kernel32.lookupFunction<
    Uint32 Function(HMODULE hModule, Pointer<Utf16> lpFilename, Uint32 nSize),
    int Function(int hModule, Pointer<Utf16> lpFilename,
        int nSize)>('GetModuleFileNameW');

/// Retrieves a module handle for the specified module.
///
/// The module must have been loaded by the calling process.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/libloaderapi/nf-libloaderapi-getmodulehandlew>.
///
/// {@category kernel32}
int GetModuleHandle(Pointer<Utf16>? lpModuleName) =>
    _GetModuleHandle(lpModuleName ?? nullptr);

final _GetModuleHandle = _kernel32.lookupFunction<
    HMODULE Function(Pointer<Utf16> lpModuleName),
    int Function(Pointer<Utf16> lpModuleName)>('GetModuleHandleW');

/// Retrieves a module handle for the specified module and increments the
/// module's reference count unless GET_MODULE_HANDLE_EX_FLAG_UNCHANGED_REFCOUNT
/// is specified.
///
/// The module must have been loaded by the calling process.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/libloaderapi/nf-libloaderapi-getmodulehandleexw>.
///
/// {@category kernel32}
int GetModuleHandleEx(
        int dwFlags, Pointer<Utf16>? lpModuleName, Pointer<HMODULE> phModule) =>
    _GetModuleHandleEx(dwFlags, lpModuleName ?? nullptr, phModule);

final _GetModuleHandleEx = _kernel32.lookupFunction<
    BOOL Function(
        Uint32 dwFlags, Pointer<Utf16> lpModuleName, Pointer<HMODULE> phModule),
    int Function(int dwFlags, Pointer<Utf16> lpModuleName,
        Pointer<HMODULE> phModule)>('GetModuleHandleExW');

/// Retrieves the client computer name for the specified named pipe.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/namedpipeapi/nf-namedpipeapi-getnamedpipeclientcomputernamew>.
///
/// {@category kernel32}
int GetNamedPipeClientComputerName(int pipe, Pointer<Utf16> clientComputerName,
        int clientComputerNameLength) =>
    _GetNamedPipeClientComputerName(
        pipe, clientComputerName, clientComputerNameLength);

final _GetNamedPipeClientComputerName = _kernel32.lookupFunction<
    BOOL Function(HANDLE pipe, Pointer<Utf16> clientComputerName,
        Uint32 clientComputerNameLength),
    int Function(int pipe, Pointer<Utf16> clientComputerName,
        int clientComputerNameLength)>('GetNamedPipeClientComputerNameW');

/// Retrieves the client process identifier for the specified named pipe.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-getnamedpipeclientprocessid>.
///
/// {@category kernel32}
int GetNamedPipeClientProcessId(int pipe, Pointer<Uint32> clientProcessId) =>
    _GetNamedPipeClientProcessId(pipe, clientProcessId);

final _GetNamedPipeClientProcessId = _kernel32.lookupFunction<
    BOOL Function(HANDLE pipe, Pointer<Uint32> clientProcessId),
    int Function(int pipe,
        Pointer<Uint32> clientProcessId)>('GetNamedPipeClientProcessId');

/// Retrieves the client session identifier for the specified named pipe.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-getnamedpipeclientsessionid>.
///
/// {@category kernel32}
int GetNamedPipeClientSessionId(int pipe, Pointer<Uint32> clientSessionId) =>
    _GetNamedPipeClientSessionId(pipe, clientSessionId);

final _GetNamedPipeClientSessionId = _kernel32.lookupFunction<
    BOOL Function(HANDLE pipe, Pointer<Uint32> clientSessionId),
    int Function(int pipe,
        Pointer<Uint32> clientSessionId)>('GetNamedPipeClientSessionId');

/// Retrieves information about a specified named pipe.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/namedpipeapi/nf-namedpipeapi-getnamedpipehandlestatew>.
///
/// {@category kernel32}
int GetNamedPipeHandleState(
        int hNamedPipe,
        Pointer<Uint32>? lpState,
        Pointer<Uint32>? lpCurInstances,
        Pointer<Uint32>? lpMaxCollectionCount,
        Pointer<Uint32>? lpCollectDataTimeout,
        Pointer<Utf16>? lpUserName,
        int nMaxUserNameSize) =>
    _GetNamedPipeHandleState(
        hNamedPipe,
        lpState ?? nullptr,
        lpCurInstances ?? nullptr,
        lpMaxCollectionCount ?? nullptr,
        lpCollectDataTimeout ?? nullptr,
        lpUserName ?? nullptr,
        nMaxUserNameSize);

final _GetNamedPipeHandleState = _kernel32.lookupFunction<
    BOOL Function(
        HANDLE hNamedPipe,
        Pointer<Uint32> lpState,
        Pointer<Uint32> lpCurInstances,
        Pointer<Uint32> lpMaxCollectionCount,
        Pointer<Uint32> lpCollectDataTimeout,
        Pointer<Utf16> lpUserName,
        Uint32 nMaxUserNameSize),
    int Function(
        int hNamedPipe,
        Pointer<Uint32> lpState,
        Pointer<Uint32> lpCurInstances,
        Pointer<Uint32> lpMaxCollectionCount,
        Pointer<Uint32> lpCollectDataTimeout,
        Pointer<Utf16> lpUserName,
        int nMaxUserNameSize)>('GetNamedPipeHandleStateW');

/// Retrieves information about the specified named pipe.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/namedpipeapi/nf-namedpipeapi-getnamedpipeinfo>.
///
/// {@category kernel32}
int GetNamedPipeInfo(
        int hNamedPipe,
        Pointer<Uint32>? lpFlags,
        Pointer<Uint32>? lpOutBufferSize,
        Pointer<Uint32>? lpInBufferSize,
        Pointer<Uint32>? lpMaxInstances) =>
    _GetNamedPipeInfo(
        hNamedPipe,
        lpFlags ?? nullptr,
        lpOutBufferSize ?? nullptr,
        lpInBufferSize ?? nullptr,
        lpMaxInstances ?? nullptr);

final _GetNamedPipeInfo = _kernel32.lookupFunction<
    BOOL Function(
        HANDLE hNamedPipe,
        Pointer<Uint32> lpFlags,
        Pointer<Uint32> lpOutBufferSize,
        Pointer<Uint32> lpInBufferSize,
        Pointer<Uint32> lpMaxInstances),
    int Function(
        int hNamedPipe,
        Pointer<Uint32> lpFlags,
        Pointer<Uint32> lpOutBufferSize,
        Pointer<Uint32> lpInBufferSize,
        Pointer<Uint32> lpMaxInstances)>('GetNamedPipeInfo');

/// Retrieves information about the current system to an application running
/// under WOW64.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/sysinfoapi/nf-sysinfoapi-getnativesysteminfo>.
///
/// {@category kernel32}
void GetNativeSystemInfo(Pointer<SYSTEM_INFO> lpSystemInfo) =>
    _GetNativeSystemInfo(lpSystemInfo);

final _GetNativeSystemInfo = _kernel32.lookupFunction<
    Void Function(Pointer<SYSTEM_INFO> lpSystemInfo),
    void Function(Pointer<SYSTEM_INFO> lpSystemInfo)>('GetNativeSystemInfo');

/// Retrieves the number of unread input records in the console's input buffer.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/console/getnumberofconsoleinputevents>.
///
/// {@category kernel32}
int GetNumberOfConsoleInputEvents(
        int hConsoleInput, Pointer<Uint32> lpNumberOfEvents) =>
    _GetNumberOfConsoleInputEvents(hConsoleInput, lpNumberOfEvents);

final _GetNumberOfConsoleInputEvents = _kernel32.lookupFunction<
    BOOL Function(HANDLE hConsoleInput, Pointer<Uint32> lpNumberOfEvents),
    int Function(int hConsoleInput,
        Pointer<Uint32> lpNumberOfEvents)>('GetNumberOfConsoleInputEvents');

/// Retrieves the results of an overlapped operation on the specified file,
/// named pipe, or communications device.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/ioapiset/nf-ioapiset-getoverlappedresult>.
///
/// {@category kernel32}
int GetOverlappedResult(int hFile, Pointer<OVERLAPPED> lpOverlapped,
        Pointer<Uint32> lpNumberOfBytesTransferred, int bWait) =>
    _GetOverlappedResult(
        hFile, lpOverlapped, lpNumberOfBytesTransferred, bWait);

final _GetOverlappedResult = _kernel32.lookupFunction<
    BOOL Function(HANDLE hFile, Pointer<OVERLAPPED> lpOverlapped,
        Pointer<Uint32> lpNumberOfBytesTransferred, BOOL bWait),
    int Function(
        int hFile,
        Pointer<OVERLAPPED> lpOverlapped,
        Pointer<Uint32> lpNumberOfBytesTransferred,
        int bWait)>('GetOverlappedResult');

/// Retrieves the results of an overlapped operation on the specified file,
/// named pipe, or communications device within the specified time-out interval.
///
/// The calling thread can perform an alertable wait.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/ioapiset/nf-ioapiset-getoverlappedresultex>.
///
/// {@category kernel32}
int GetOverlappedResultEx(
        int hFile,
        Pointer<OVERLAPPED> lpOverlapped,
        Pointer<Uint32> lpNumberOfBytesTransferred,
        int dwMilliseconds,
        int bAlertable) =>
    _GetOverlappedResultEx(hFile, lpOverlapped, lpNumberOfBytesTransferred,
        dwMilliseconds, bAlertable);

final _GetOverlappedResultEx = _kernel32.lookupFunction<
    BOOL Function(
        HANDLE hFile,
        Pointer<OVERLAPPED> lpOverlapped,
        Pointer<Uint32> lpNumberOfBytesTransferred,
        Uint32 dwMilliseconds,
        BOOL bAlertable),
    int Function(
        int hFile,
        Pointer<OVERLAPPED> lpOverlapped,
        Pointer<Uint32> lpNumberOfBytesTransferred,
        int dwMilliseconds,
        int bAlertable)>('GetOverlappedResultEx');

/// Retrieves the amount of RAM that is physically installed on the computer.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/sysinfoapi/nf-sysinfoapi-getphysicallyinstalledsystemmemory>.
///
/// {@category kernel32}
int GetPhysicallyInstalledSystemMemory(
        Pointer<Uint64> totalMemoryInKilobytes) =>
    _GetPhysicallyInstalledSystemMemory(totalMemoryInKilobytes);

final _GetPhysicallyInstalledSystemMemory = _kernel32.lookupFunction<
        BOOL Function(Pointer<Uint64> totalMemoryInKilobytes),
        int Function(Pointer<Uint64> totalMemoryInKilobytes)>(
    'GetPhysicallyInstalledSystemMemory');

/// Retrieves the address of an exported function or variable from the specified
/// dynamic-link library (DLL).
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/libloaderapi/nf-libloaderapi-getprocaddress>.
///
/// {@category kernel32}
FARPROC GetProcAddress(int hModule, Pointer<Utf8> lpProcName) =>
    _GetProcAddress(hModule, lpProcName);

final _GetProcAddress = _kernel32.lookupFunction<
    FARPROC Function(HMODULE hModule, Pointer<Utf8> lpProcName),
    FARPROC Function(int hModule, Pointer<Utf8> lpProcName)>('GetProcAddress');

/// Retrieves a handle to the default heap of the calling process.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/heapapi/nf-heapapi-getprocessheap>.
///
/// {@category kernel32}
int GetProcessHeap() => _GetProcessHeap();

final _GetProcessHeap = _kernel32
    .lookupFunction<HANDLE Function(), int Function()>('GetProcessHeap');

/// Returns the number of active heaps and retrieves handles to all of the
/// active heaps for the calling process.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/heapapi/nf-heapapi-getprocessheaps>.
///
/// {@category kernel32}
int GetProcessHeaps(int numberOfHeaps, Pointer<HANDLE> processHeaps) =>
    _GetProcessHeaps(numberOfHeaps, processHeaps);

final _GetProcessHeaps = _kernel32.lookupFunction<
    Uint32 Function(Uint32 numberOfHeaps, Pointer<HANDLE> processHeaps),
    int Function(
        int numberOfHeaps, Pointer<HANDLE> processHeaps)>('GetProcessHeaps');

/// Retrieves the process identifier of the specified process.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-getprocessid>.
///
/// {@category kernel32}
int GetProcessId(int process) => _GetProcessId(process);

final _GetProcessId = _kernel32.lookupFunction<Uint32 Function(HANDLE process),
    int Function(int process)>('GetProcessId');

/// Retrieves the shutdown parameters for the currently calling process.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-getprocessshutdownparameters>.
///
/// {@category kernel32}
int GetProcessShutdownParameters(
        Pointer<Uint32> lpdwLevel, Pointer<Uint32> lpdwFlags) =>
    _GetProcessShutdownParameters(lpdwLevel, lpdwFlags);

final _GetProcessShutdownParameters = _kernel32.lookupFunction<
    BOOL Function(Pointer<Uint32> lpdwLevel, Pointer<Uint32> lpdwFlags),
    int Function(Pointer<Uint32> lpdwLevel,
        Pointer<Uint32> lpdwFlags)>('GetProcessShutdownParameters');

/// Retrieves timing information for the specified process.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-getprocesstimes>.
///
/// {@category kernel32}
int GetProcessTimes(
        int hProcess,
        Pointer<FILETIME> lpCreationTime,
        Pointer<FILETIME> lpExitTime,
        Pointer<FILETIME> lpKernelTime,
        Pointer<FILETIME> lpUserTime) =>
    _GetProcessTimes(
        hProcess, lpCreationTime, lpExitTime, lpKernelTime, lpUserTime);

final _GetProcessTimes = _kernel32.lookupFunction<
    BOOL Function(
        HANDLE hProcess,
        Pointer<FILETIME> lpCreationTime,
        Pointer<FILETIME> lpExitTime,
        Pointer<FILETIME> lpKernelTime,
        Pointer<FILETIME> lpUserTime),
    int Function(
        int hProcess,
        Pointer<FILETIME> lpCreationTime,
        Pointer<FILETIME> lpExitTime,
        Pointer<FILETIME> lpKernelTime,
        Pointer<FILETIME> lpUserTime)>('GetProcessTimes');

/// Retrieves the major and minor version numbers of the system on which the
/// specified process expects to run.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-getprocessversion>.
///
/// {@category kernel32}
int GetProcessVersion(int processId) => _GetProcessVersion(processId);

final _GetProcessVersion = _kernel32.lookupFunction<
    Uint32 Function(Uint32 processId),
    int Function(int processId)>('GetProcessVersion');

/// Retrieves the minimum and maximum working set sizes of the specified
/// process.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/memoryapi/nf-memoryapi-getprocessworkingsetsize>.
///
/// {@category kernel32}
int GetProcessWorkingSetSize(
        int hProcess,
        Pointer<IntPtr> lpMinimumWorkingSetSize,
        Pointer<IntPtr> lpMaximumWorkingSetSize) =>
    _GetProcessWorkingSetSize(
        hProcess, lpMinimumWorkingSetSize, lpMaximumWorkingSetSize);

final _GetProcessWorkingSetSize = _kernel32.lookupFunction<
    BOOL Function(HANDLE hProcess, Pointer<IntPtr> lpMinimumWorkingSetSize,
        Pointer<IntPtr> lpMaximumWorkingSetSize),
    int Function(int hProcess, Pointer<IntPtr> lpMinimumWorkingSetSize,
        Pointer<IntPtr> lpMaximumWorkingSetSize)>('GetProcessWorkingSetSize');

/// Retrieves the product type for the operating system on the local computer,
/// and maps the type to the product types supported by the specified operating
/// system.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/sysinfoapi/nf-sysinfoapi-getproductinfo>.
///
/// {@category kernel32}
int GetProductInfo(
        int dwOSMajorVersion,
        int dwOSMinorVersion,
        int dwSpMajorVersion,
        int dwSpMinorVersion,
        Pointer<Uint32> pdwReturnedProductType) =>
    _GetProductInfo(dwOSMajorVersion, dwOSMinorVersion, dwSpMajorVersion,
        dwSpMinorVersion, pdwReturnedProductType);

final _GetProductInfo = _kernel32.lookupFunction<
    BOOL Function(
        Uint32 dwOSMajorVersion,
        Uint32 dwOSMinorVersion,
        Uint32 dwSpMajorVersion,
        Uint32 dwSpMinorVersion,
        Pointer<Uint32> pdwReturnedProductType),
    int Function(
        int dwOSMajorVersion,
        int dwOSMinorVersion,
        int dwSpMajorVersion,
        int dwSpMinorVersion,
        Pointer<Uint32> pdwReturnedProductType)>('GetProductInfo');

/// Attempts to dequeue an I/O completion packet from the specified I/O
/// completion port.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/ioapiset/nf-ioapiset-getqueuedcompletionstatus>.
///
/// {@category kernel32}
int GetQueuedCompletionStatus(
        int completionPort,
        Pointer<Uint32> lpNumberOfBytesTransferred,
        Pointer<IntPtr> lpCompletionKey,
        Pointer<Pointer<OVERLAPPED>> lpOverlapped,
        int dwMilliseconds) =>
    _GetQueuedCompletionStatus(completionPort, lpNumberOfBytesTransferred,
        lpCompletionKey, lpOverlapped, dwMilliseconds);

final _GetQueuedCompletionStatus = _kernel32.lookupFunction<
    BOOL Function(
        HANDLE completionPort,
        Pointer<Uint32> lpNumberOfBytesTransferred,
        Pointer<IntPtr> lpCompletionKey,
        Pointer<Pointer<OVERLAPPED>> lpOverlapped,
        Uint32 dwMilliseconds),
    int Function(
        int completionPort,
        Pointer<Uint32> lpNumberOfBytesTransferred,
        Pointer<IntPtr> lpCompletionKey,
        Pointer<Pointer<OVERLAPPED>> lpOverlapped,
        int dwMilliseconds)>('GetQueuedCompletionStatus');

/// Retrieves multiple completion port entries simultaneously.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/ioapiset/nf-ioapiset-getqueuedcompletionstatusex>.
///
/// {@category kernel32}
int GetQueuedCompletionStatusEx(
        int completionPort,
        Pointer<OVERLAPPED_ENTRY> lpCompletionPortEntries,
        int ulCount,
        Pointer<Uint32> ulNumEntriesRemoved,
        int dwMilliseconds,
        int fAlertable) =>
    _GetQueuedCompletionStatusEx(completionPort, lpCompletionPortEntries,
        ulCount, ulNumEntriesRemoved, dwMilliseconds, fAlertable);

final _GetQueuedCompletionStatusEx = _kernel32.lookupFunction<
    BOOL Function(
        HANDLE completionPort,
        Pointer<OVERLAPPED_ENTRY> lpCompletionPortEntries,
        Uint32 ulCount,
        Pointer<Uint32> ulNumEntriesRemoved,
        Uint32 dwMilliseconds,
        BOOL fAlertable),
    int Function(
        int completionPort,
        Pointer<OVERLAPPED_ENTRY> lpCompletionPortEntries,
        int ulCount,
        Pointer<Uint32> ulNumEntriesRemoved,
        int dwMilliseconds,
        int fAlertable)>('GetQueuedCompletionStatusEx');

/// Retrieves the short path form of the specified path.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-getshortpathnamew>.
///
/// {@category kernel32}
int GetShortPathName(Pointer<Utf16> lpszLongPath, Pointer<Utf16>? lpszShortPath,
        int cchBuffer) =>
    _GetShortPathName(lpszLongPath, lpszShortPath ?? nullptr, cchBuffer);

final _GetShortPathName = _kernel32.lookupFunction<
    Uint32 Function(Pointer<Utf16> lpszLongPath, Pointer<Utf16> lpszShortPath,
        Uint32 cchBuffer),
    int Function(Pointer<Utf16> lpszLongPath, Pointer<Utf16> lpszShortPath,
        int cchBuffer)>('GetShortPathNameW');

/// Retrieves the contents of the STARTUPINFO structure that was specified when
/// the calling process was created.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-getstartupinfow>.
///
/// {@category kernel32}
void GetStartupInfo(Pointer<STARTUPINFO> lpStartupInfo) =>
    _GetStartupInfo(lpStartupInfo);

final _GetStartupInfo = _kernel32.lookupFunction<
    Void Function(Pointer<STARTUPINFO> lpStartupInfo),
    void Function(Pointer<STARTUPINFO> lpStartupInfo)>('GetStartupInfoW');

/// Retrieves a handle to the specified standard device (standard input,
/// standard output, or standard error).
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/console/getstdhandle>.
///
/// {@category kernel32}
int GetStdHandle(int nStdHandle) => _GetStdHandle(nStdHandle);

final _GetStdHandle = _kernel32.lookupFunction<
    HANDLE Function(Uint32 nStdHandle),
    int Function(int nStdHandle)>('GetStdHandle');

/// Returns the language identifier for the system locale.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winnls/nf-winnls-getsystemdefaultlangid>.
///
/// {@category kernel32}
int GetSystemDefaultLangID() => _GetSystemDefaultLangID();

final _GetSystemDefaultLangID =
    _kernel32.lookupFunction<Uint16 Function(), int Function()>(
        'GetSystemDefaultLangID');

/// Retrieves the system default locale name.
///
/// **Note**: It is recommended that applications call GetUserDefaultLocaleName
/// in preference over this function.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winnls/nf-winnls-getsystemdefaultlocalename>.
///
/// {@category kernel32}
int GetSystemDefaultLocaleName(
        Pointer<Utf16> lpLocaleName, int cchLocaleName) =>
    _GetSystemDefaultLocaleName(lpLocaleName, cchLocaleName);

final _GetSystemDefaultLocaleName = _kernel32.lookupFunction<
    Int32 Function(Pointer<Utf16> lpLocaleName, Int32 cchLocaleName),
    int Function(Pointer<Utf16> lpLocaleName,
        int cchLocaleName)>('GetSystemDefaultLocaleName');

/// Retrieves the path of the system directory.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/sysinfoapi/nf-sysinfoapi-getsystemdirectoryw>.
///
/// {@category kernel32}
int GetSystemDirectory(Pointer<Utf16>? lpBuffer, int uSize) =>
    _GetSystemDirectory(lpBuffer ?? nullptr, uSize);

final _GetSystemDirectory = _kernel32.lookupFunction<
    Uint32 Function(Pointer<Utf16> lpBuffer, Uint32 uSize),
    int Function(Pointer<Utf16> lpBuffer, int uSize)>('GetSystemDirectoryW');

/// Retrieves information about the current system.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/sysinfoapi/nf-sysinfoapi-getsysteminfo>.
///
/// {@category kernel32}
void GetSystemInfo(Pointer<SYSTEM_INFO> lpSystemInfo) =>
    _GetSystemInfo(lpSystemInfo);

final _GetSystemInfo = _kernel32.lookupFunction<
    Void Function(Pointer<SYSTEM_INFO> lpSystemInfo),
    void Function(Pointer<SYSTEM_INFO> lpSystemInfo)>('GetSystemInfo');

/// Retrieves the power status of the system.
///
/// The status indicates whether the system is running on AC or DC power,
/// whether the battery is currently charging, how much battery life remains,
/// and if battery saver is on or off.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-getsystempowerstatus>.
///
/// {@category kernel32}
int GetSystemPowerStatus(Pointer<SYSTEM_POWER_STATUS> lpSystemPowerStatus) =>
    _GetSystemPowerStatus(lpSystemPowerStatus);

final _GetSystemPowerStatus = _kernel32.lookupFunction<
        BOOL Function(Pointer<SYSTEM_POWER_STATUS> lpSystemPowerStatus),
        int Function(Pointer<SYSTEM_POWER_STATUS> lpSystemPowerStatus)>(
    'GetSystemPowerStatus');

/// Retrieves the current system date and time in Coordinated Universal Time
/// (UTC) format.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/sysinfoapi/nf-sysinfoapi-getsystemtime>.
///
/// {@category kernel32}
void GetSystemTime(Pointer<SYSTEMTIME> lpSystemTime) =>
    _GetSystemTime(lpSystemTime);

final _GetSystemTime = _kernel32.lookupFunction<
    Void Function(Pointer<SYSTEMTIME> lpSystemTime),
    void Function(Pointer<SYSTEMTIME> lpSystemTime)>('GetSystemTime');

/// Determines whether the system is applying periodic time adjustments to its
/// time-of-day clock, and obtains the value and period of any such adjustments.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/sysinfoapi/nf-sysinfoapi-getsystemtimeadjustment>.
///
/// {@category kernel32}
int GetSystemTimeAdjustment(
        Pointer<Uint32> lpTimeAdjustment,
        Pointer<Uint32> lpTimeIncrement,
        Pointer<BOOL> lpTimeAdjustmentDisabled) =>
    _GetSystemTimeAdjustment(
        lpTimeAdjustment, lpTimeIncrement, lpTimeAdjustmentDisabled);

final _GetSystemTimeAdjustment = _kernel32.lookupFunction<
    BOOL Function(
        Pointer<Uint32> lpTimeAdjustment,
        Pointer<Uint32> lpTimeIncrement,
        Pointer<BOOL> lpTimeAdjustmentDisabled),
    int Function(
        Pointer<Uint32> lpTimeAdjustment,
        Pointer<Uint32> lpTimeIncrement,
        Pointer<BOOL> lpTimeAdjustmentDisabled)>('GetSystemTimeAdjustment');

/// Retrieves system timing information.
///
/// On a multiprocessor system, the values returned are the sum of the
/// designated times across all processors.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-getsystemtimes>.
///
/// {@category kernel32}
int GetSystemTimes(Pointer<FILETIME>? lpIdleTime,
        Pointer<FILETIME>? lpKernelTime, Pointer<FILETIME>? lpUserTime) =>
    _GetSystemTimes(
        lpIdleTime ?? nullptr, lpKernelTime ?? nullptr, lpUserTime ?? nullptr);

final _GetSystemTimes = _kernel32.lookupFunction<
    BOOL Function(Pointer<FILETIME> lpIdleTime, Pointer<FILETIME> lpKernelTime,
        Pointer<FILETIME> lpUserTime),
    int Function(Pointer<FILETIME> lpIdleTime, Pointer<FILETIME> lpKernelTime,
        Pointer<FILETIME> lpUserTime)>('GetSystemTimes');

/// Creates a name for a temporary file.
///
/// If a unique file name is generated, an empty file is created and the handle
/// to it is released; otherwise, only a file name is generated.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-gettempfilenamew>.
///
/// {@category kernel32}
int GetTempFileName(Pointer<Utf16> lpPathName, Pointer<Utf16> lpPrefixString,
        int uUnique, Pointer<Utf16> lpTempFileName) =>
    _GetTempFileName(lpPathName, lpPrefixString, uUnique, lpTempFileName);

final _GetTempFileName = _kernel32.lookupFunction<
    Uint32 Function(Pointer<Utf16> lpPathName, Pointer<Utf16> lpPrefixString,
        Uint32 uUnique, Pointer<Utf16> lpTempFileName),
    int Function(Pointer<Utf16> lpPathName, Pointer<Utf16> lpPrefixString,
        int uUnique, Pointer<Utf16> lpTempFileName)>('GetTempFileNameW');

/// Retrieves the path of the directory designated for temporary files.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-gettemppathw>.
///
/// {@category kernel32}
int GetTempPath(int nBufferLength, Pointer<Utf16>? lpBuffer) =>
    _GetTempPath(nBufferLength, lpBuffer ?? nullptr);

final _GetTempPath = _kernel32.lookupFunction<
    Uint32 Function(Uint32 nBufferLength, Pointer<Utf16> lpBuffer),
    int Function(int nBufferLength, Pointer<Utf16> lpBuffer)>('GetTempPathW');

/// Retrieves the path of the directory designated for temporary files, based on
/// the privileges of the calling process.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-gettemppath2w>.
///
/// {@category kernel32}
int GetTempPath2(int bufferLength, Pointer<Utf16>? buffer) =>
    _GetTempPath2(bufferLength, buffer ?? nullptr);

final _GetTempPath2 = _kernel32.lookupFunction<
    Uint32 Function(Uint32 bufferLength, Pointer<Utf16> buffer),
    int Function(int bufferLength, Pointer<Utf16> buffer)>('GetTempPath2W');

/// Retrieves the thread identifier of the specified thread.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-getthreadid>.
///
/// {@category kernel32}
int GetThreadId(int thread) => _GetThreadId(thread);

final _GetThreadId = _kernel32.lookupFunction<Uint32 Function(HANDLE thread),
    int Function(int thread)>('GetThreadId');

/// Returns the locale identifier of the current locale for the calling thread.
///
/// **Note**: This function can retrieve data that changes between releases, for
/// example, due to a custom locale.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winnls/nf-winnls-getthreadlocale>.
///
/// {@category kernel32}
int GetThreadLocale() => _GetThreadLocale();

final _GetThreadLocale = _kernel32
    .lookupFunction<Uint32 Function(), int Function()>('GetThreadLocale');

/// Retrieves timing information for the specified thread.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-getthreadtimes>.
///
/// {@category kernel32}
int GetThreadTimes(
        int hThread,
        Pointer<FILETIME> lpCreationTime,
        Pointer<FILETIME> lpExitTime,
        Pointer<FILETIME> lpKernelTime,
        Pointer<FILETIME> lpUserTime) =>
    _GetThreadTimes(
        hThread, lpCreationTime, lpExitTime, lpKernelTime, lpUserTime);

final _GetThreadTimes = _kernel32.lookupFunction<
    BOOL Function(
        HANDLE hThread,
        Pointer<FILETIME> lpCreationTime,
        Pointer<FILETIME> lpExitTime,
        Pointer<FILETIME> lpKernelTime,
        Pointer<FILETIME> lpUserTime),
    int Function(
        int hThread,
        Pointer<FILETIME> lpCreationTime,
        Pointer<FILETIME> lpExitTime,
        Pointer<FILETIME> lpKernelTime,
        Pointer<FILETIME> lpUserTime)>('GetThreadTimes');

/// Returns the language identifier of the first user interface language for the
/// current thread.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winnls/nf-winnls-getthreaduilanguage>.
///
/// {@category kernel32}
int GetThreadUILanguage() => _GetThreadUILanguage();

final _GetThreadUILanguage = _kernel32
    .lookupFunction<Uint16 Function(), int Function()>('GetThreadUILanguage');

/// Retrieves the number of milliseconds that have elapsed since the system was
/// started, up to 49.7 days.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/sysinfoapi/nf-sysinfoapi-gettickcount>.
///
/// {@category kernel32}
int GetTickCount() => _GetTickCount();

final _GetTickCount =
    _kernel32.lookupFunction<Uint32 Function(), int Function()>('GetTickCount');

/// Returns the language identifier of the Region Format setting for the current
/// user.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winnls/nf-winnls-getuserdefaultlangid>.
///
/// {@category kernel32}
int GetUserDefaultLangID() => _GetUserDefaultLangID();

final _GetUserDefaultLangID = _kernel32
    .lookupFunction<Uint16 Function(), int Function()>('GetUserDefaultLangID');

/// Returns the locale identifier for the user default locale.
///
/// Caution  If the user default locale is a custom locale, an application
/// cannot accurately tag data with the value or exchange it.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winnls/nf-winnls-getuserdefaultlcid>.
///
/// {@category kernel32}
int GetUserDefaultLCID() => _GetUserDefaultLCID();

final _GetUserDefaultLCID = _kernel32
    .lookupFunction<Uint32 Function(), int Function()>('GetUserDefaultLCID');

/// Retrieves the user default locale name.
///
/// **Note**: The application should call this function in preference to
/// GetUserDefaultLCID if designed to run only on Windows Vista and later.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winnls/nf-winnls-getuserdefaultlocalename>.
///
/// {@category kernel32}
int GetUserDefaultLocaleName(Pointer<Utf16> lpLocaleName, int cchLocaleName) =>
    _GetUserDefaultLocaleName(lpLocaleName, cchLocaleName);

final _GetUserDefaultLocaleName = _kernel32.lookupFunction<
    Int32 Function(Pointer<Utf16> lpLocaleName, Int32 cchLocaleName),
    int Function(Pointer<Utf16> lpLocaleName,
        int cchLocaleName)>('GetUserDefaultLocaleName');

/// With the release of Windows 8.1, the behavior of the GetVersionEx API has
/// changed in the value it will return for the operating system version.
///
/// The value returned by the GetVersionEx function now depends on how the
/// application is manifested.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/sysinfoapi/nf-sysinfoapi-getversionexw>.
///
/// {@category kernel32}
int GetVersionEx(Pointer<OSVERSIONINFO> lpVersionInformation) =>
    _GetVersionEx(lpVersionInformation);

final _GetVersionEx = _kernel32.lookupFunction<
    BOOL Function(Pointer<OSVERSIONINFO> lpVersionInformation),
    int Function(Pointer<OSVERSIONINFO> lpVersionInformation)>('GetVersionExW');

/// Retrieves information about the file system and volume associated with the
/// specified root directory.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-getvolumeinformationw>.
///
/// {@category kernel32}
int GetVolumeInformation(
        Pointer<Utf16>? lpRootPathName,
        Pointer<Utf16>? lpVolumeNameBuffer,
        int nVolumeNameSize,
        Pointer<Uint32>? lpVolumeSerialNumber,
        Pointer<Uint32>? lpMaximumComponentLength,
        Pointer<Uint32>? lpFileSystemFlags,
        Pointer<Utf16>? lpFileSystemNameBuffer,
        int nFileSystemNameSize) =>
    _GetVolumeInformation(
        lpRootPathName ?? nullptr,
        lpVolumeNameBuffer ?? nullptr,
        nVolumeNameSize,
        lpVolumeSerialNumber ?? nullptr,
        lpMaximumComponentLength ?? nullptr,
        lpFileSystemFlags ?? nullptr,
        lpFileSystemNameBuffer ?? nullptr,
        nFileSystemNameSize);

final _GetVolumeInformation = _kernel32.lookupFunction<
    BOOL Function(
        Pointer<Utf16> lpRootPathName,
        Pointer<Utf16> lpVolumeNameBuffer,
        Uint32 nVolumeNameSize,
        Pointer<Uint32> lpVolumeSerialNumber,
        Pointer<Uint32> lpMaximumComponentLength,
        Pointer<Uint32> lpFileSystemFlags,
        Pointer<Utf16> lpFileSystemNameBuffer,
        Uint32 nFileSystemNameSize),
    int Function(
        Pointer<Utf16> lpRootPathName,
        Pointer<Utf16> lpVolumeNameBuffer,
        int nVolumeNameSize,
        Pointer<Uint32> lpVolumeSerialNumber,
        Pointer<Uint32> lpMaximumComponentLength,
        Pointer<Uint32> lpFileSystemFlags,
        Pointer<Utf16> lpFileSystemNameBuffer,
        int nFileSystemNameSize)>('GetVolumeInformationW');

/// Retrieves information about the file system and volume associated with the
/// specified file.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-getvolumeinformationbyhandlew>.
///
/// {@category kernel32}
int GetVolumeInformationByHandle(
        int hFile,
        Pointer<Utf16>? lpVolumeNameBuffer,
        int nVolumeNameSize,
        Pointer<Uint32>? lpVolumeSerialNumber,
        Pointer<Uint32>? lpMaximumComponentLength,
        Pointer<Uint32>? lpFileSystemFlags,
        Pointer<Utf16>? lpFileSystemNameBuffer,
        int nFileSystemNameSize) =>
    _GetVolumeInformationByHandle(
        hFile,
        lpVolumeNameBuffer ?? nullptr,
        nVolumeNameSize,
        lpVolumeSerialNumber ?? nullptr,
        lpMaximumComponentLength ?? nullptr,
        lpFileSystemFlags ?? nullptr,
        lpFileSystemNameBuffer ?? nullptr,
        nFileSystemNameSize);

final _GetVolumeInformationByHandle = _kernel32.lookupFunction<
    BOOL Function(
        HANDLE hFile,
        Pointer<Utf16> lpVolumeNameBuffer,
        Uint32 nVolumeNameSize,
        Pointer<Uint32> lpVolumeSerialNumber,
        Pointer<Uint32> lpMaximumComponentLength,
        Pointer<Uint32> lpFileSystemFlags,
        Pointer<Utf16> lpFileSystemNameBuffer,
        Uint32 nFileSystemNameSize),
    int Function(
        int hFile,
        Pointer<Utf16> lpVolumeNameBuffer,
        int nVolumeNameSize,
        Pointer<Uint32> lpVolumeSerialNumber,
        Pointer<Uint32> lpMaximumComponentLength,
        Pointer<Uint32> lpFileSystemFlags,
        Pointer<Utf16> lpFileSystemNameBuffer,
        int nFileSystemNameSize)>('GetVolumeInformationByHandleW');

/// Retrieves a volume GUID path for the volume that is associated with the
/// specified volume mount point ( drive letter, volume GUID path, or mounted
/// folder).
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-getvolumenameforvolumemountpointw>.
///
/// {@category kernel32}
int GetVolumeNameForVolumeMountPoint(Pointer<Utf16> lpszVolumeMountPoint,
        Pointer<Utf16> lpszVolumeName, int cchBufferLength) =>
    _GetVolumeNameForVolumeMountPoint(
        lpszVolumeMountPoint, lpszVolumeName, cchBufferLength);

final _GetVolumeNameForVolumeMountPoint = _kernel32.lookupFunction<
    BOOL Function(Pointer<Utf16> lpszVolumeMountPoint,
        Pointer<Utf16> lpszVolumeName, Uint32 cchBufferLength),
    int Function(
        Pointer<Utf16> lpszVolumeMountPoint,
        Pointer<Utf16> lpszVolumeName,
        int cchBufferLength)>('GetVolumeNameForVolumeMountPointW');

/// Retrieves the volume mount point where the specified path is mounted.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-getvolumepathnamew>.
///
/// {@category kernel32}
int GetVolumePathName(Pointer<Utf16> lpszFileName,
        Pointer<Utf16> lpszVolumePathName, int cchBufferLength) =>
    _GetVolumePathName(lpszFileName, lpszVolumePathName, cchBufferLength);

final _GetVolumePathName = _kernel32.lookupFunction<
    BOOL Function(Pointer<Utf16> lpszFileName,
        Pointer<Utf16> lpszVolumePathName, Uint32 cchBufferLength),
    int Function(Pointer<Utf16> lpszFileName, Pointer<Utf16> lpszVolumePathName,
        int cchBufferLength)>('GetVolumePathNameW');

/// Retrieves a list of drive letters and mounted folder paths for the specified
/// volume.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-getvolumepathnamesforvolumenamew>.
///
/// {@category kernel32}
int GetVolumePathNamesForVolumeName(
        Pointer<Utf16> lpszVolumeName,
        Pointer<Utf16>? lpszVolumePathNames,
        int cchBufferLength,
        Pointer<Uint32> lpcchReturnLength) =>
    _GetVolumePathNamesForVolumeName(lpszVolumeName,
        lpszVolumePathNames ?? nullptr, cchBufferLength, lpcchReturnLength);

final _GetVolumePathNamesForVolumeName = _kernel32.lookupFunction<
    BOOL Function(
        Pointer<Utf16> lpszVolumeName,
        Pointer<Utf16> lpszVolumePathNames,
        Uint32 cchBufferLength,
        Pointer<Uint32> lpcchReturnLength),
    int Function(
        Pointer<Utf16> lpszVolumeName,
        Pointer<Utf16> lpszVolumePathNames,
        int cchBufferLength,
        Pointer<Uint32> lpcchReturnLength)>('GetVolumePathNamesForVolumeNameW');

/// Allocates the specified number of bytes from the heap.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-globalalloc>.
///
/// {@category kernel32}
HGLOBAL GlobalAlloc(int uFlags, int dwBytes) => _GlobalAlloc(uFlags, dwBytes);

final _GlobalAlloc = _kernel32.lookupFunction<
    HGLOBAL Function(Uint32 uFlags, IntPtr dwBytes),
    HGLOBAL Function(int uFlags, int dwBytes)>('GlobalAlloc');

/// Frees the specified global memory object and invalidates its handle.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-globalfree>.
///
/// {@category kernel32}
HGLOBAL GlobalFree(HGLOBAL? hMem) => _GlobalFree(hMem ?? nullptr);

final _GlobalFree = _kernel32.lookupFunction<HGLOBAL Function(HGLOBAL hMem),
    HGLOBAL Function(HGLOBAL hMem)>('GlobalFree');

/// Locks a global memory object and returns a pointer to the first byte of the
/// object's memory block.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-globallock>.
///
/// {@category kernel32}
Pointer GlobalLock(HGLOBAL hMem) => _GlobalLock(hMem);

final _GlobalLock = _kernel32.lookupFunction<Pointer Function(HGLOBAL hMem),
    Pointer Function(HGLOBAL hMem)>('GlobalLock');

/// Retrieves information about the system's current usage of both physical and
/// virtual memory.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/sysinfoapi/nf-sysinfoapi-globalmemorystatusex>.
///
/// {@category kernel32}
int GlobalMemoryStatusEx(Pointer<MEMORYSTATUSEX> lpBuffer) =>
    _GlobalMemoryStatusEx(lpBuffer);

final _GlobalMemoryStatusEx = _kernel32.lookupFunction<
    BOOL Function(Pointer<MEMORYSTATUSEX> lpBuffer),
    int Function(Pointer<MEMORYSTATUSEX> lpBuffer)>('GlobalMemoryStatusEx');

/// Retrieves the current size of the specified global memory object, in bytes.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-globalsize>.
///
/// {@category kernel32}
int GlobalSize(HGLOBAL hMem) => _GlobalSize(hMem);

final _GlobalSize = _kernel32.lookupFunction<IntPtr Function(HGLOBAL hMem),
    int Function(HGLOBAL hMem)>('GlobalSize');

/// Decrements the lock count associated with a memory object that was allocated
/// with GMEM_MOVEABLE.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-globalunlock>.
///
/// {@category kernel32}
int GlobalUnlock(HGLOBAL hMem) => _GlobalUnlock(hMem);

final _GlobalUnlock = _kernel32.lookupFunction<BOOL Function(HGLOBAL hMem),
    int Function(HGLOBAL hMem)>('GlobalUnlock');

/// Allocates a block of memory from a heap.
///
/// The allocated memory is not movable.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/heapapi/nf-heapapi-heapalloc>.
///
/// {@category kernel32}
Pointer HeapAlloc(int hHeap, int dwFlags, int dwBytes) =>
    _HeapAlloc(hHeap, dwFlags, dwBytes);

final _HeapAlloc = _kernel32.lookupFunction<
    Pointer Function(HANDLE hHeap, Uint32 dwFlags, IntPtr dwBytes),
    Pointer Function(int hHeap, int dwFlags, int dwBytes)>('HeapAlloc');

/// Returns the size of the largest committed free block in the specified heap.
///
/// If the Disable heap coalesce on free global flag is set, this function also
/// coalesces adjacent free blocks of memory in the heap.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/heapapi/nf-heapapi-heapcompact>.
///
/// {@category kernel32}
int HeapCompact(int hHeap, int dwFlags) => _HeapCompact(hHeap, dwFlags);

final _HeapCompact = _kernel32.lookupFunction<
    IntPtr Function(HANDLE hHeap, Uint32 dwFlags),
    int Function(int hHeap, int dwFlags)>('HeapCompact');

/// Creates a private heap object that can be used by the calling process.
///
/// The function reserves space in the virtual address space of the process and
/// allocates physical storage for a specified initial portion of this block.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/heapapi/nf-heapapi-heapcreate>.
///
/// {@category kernel32}
int HeapCreate(int flOptions, int dwInitialSize, int dwMaximumSize) =>
    _HeapCreate(flOptions, dwInitialSize, dwMaximumSize);

final _HeapCreate = _kernel32.lookupFunction<
    HANDLE Function(
        Uint32 flOptions, IntPtr dwInitialSize, IntPtr dwMaximumSize),
    int Function(
        int flOptions, int dwInitialSize, int dwMaximumSize)>('HeapCreate');

/// Destroys the specified heap object.
///
/// It decommits and releases all the pages of a private heap object, and it
/// invalidates the handle to the heap.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/heapapi/nf-heapapi-heapdestroy>.
///
/// {@category kernel32}
int HeapDestroy(int hHeap) => _HeapDestroy(hHeap);

final _HeapDestroy = _kernel32.lookupFunction<BOOL Function(HANDLE hHeap),
    int Function(int hHeap)>('HeapDestroy');

/// Frees a memory block allocated from a heap by the HeapAlloc or HeapReAlloc
/// function.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/heapapi/nf-heapapi-heapfree>.
///
/// {@category kernel32}
int HeapFree(int hHeap, int dwFlags, Pointer? lpMem) =>
    _HeapFree(hHeap, dwFlags, lpMem ?? nullptr);

final _HeapFree = _kernel32.lookupFunction<
    BOOL Function(HANDLE hHeap, Uint32 dwFlags, Pointer lpMem),
    int Function(int hHeap, int dwFlags, Pointer lpMem)>('HeapFree');

/// Attempts to acquire the critical section object, or lock, that is associated
/// with a specified heap.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/heapapi/nf-heapapi-heaplock>.
///
/// {@category kernel32}
int HeapLock(int hHeap) => _HeapLock(hHeap);

final _HeapLock = _kernel32.lookupFunction<BOOL Function(HANDLE hHeap),
    int Function(int hHeap)>('HeapLock');

/// Retrieves information about the specified heap.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/heapapi/nf-heapapi-heapqueryinformation>.
///
/// {@category kernel32}
int HeapQueryInformation(
        int? heapHandle,
        int heapInformationClass,
        Pointer? heapInformation,
        int heapInformationLength,
        Pointer<IntPtr>? returnLength) =>
    _HeapQueryInformation(
        heapHandle ?? 0,
        heapInformationClass,
        heapInformation ?? nullptr,
        heapInformationLength,
        returnLength ?? nullptr);

final _HeapQueryInformation = _kernel32.lookupFunction<
    BOOL Function(
        HANDLE heapHandle,
        Int32 heapInformationClass,
        Pointer heapInformation,
        IntPtr heapInformationLength,
        Pointer<IntPtr> returnLength),
    int Function(
        int heapHandle,
        int heapInformationClass,
        Pointer heapInformation,
        int heapInformationLength,
        Pointer<IntPtr> returnLength)>('HeapQueryInformation');

/// Reallocates a block of memory from a heap.
///
/// This function enables you to resize a memory block and change other memory
/// block properties.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/heapapi/nf-heapapi-heaprealloc>.
///
/// {@category kernel32}
Pointer HeapReAlloc(int hHeap, int dwFlags, Pointer? lpMem, int dwBytes) =>
    _HeapReAlloc(hHeap, dwFlags, lpMem ?? nullptr, dwBytes);

final _HeapReAlloc = _kernel32.lookupFunction<
    Pointer Function(
        HANDLE hHeap, Uint32 dwFlags, Pointer lpMem, IntPtr dwBytes),
    Pointer Function(
        int hHeap, int dwFlags, Pointer lpMem, int dwBytes)>('HeapReAlloc');

/// Enables features for a specified heap.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/heapapi/nf-heapapi-heapsetinformation>.
///
/// {@category kernel32}
int HeapSetInformation(int? heapHandle, int heapInformationClass,
        Pointer? heapInformation, int heapInformationLength) =>
    _HeapSetInformation(heapHandle ?? 0, heapInformationClass,
        heapInformation ?? nullptr, heapInformationLength);

final _HeapSetInformation = _kernel32.lookupFunction<
    BOOL Function(HANDLE heapHandle, Int32 heapInformationClass,
        Pointer heapInformation, IntPtr heapInformationLength),
    int Function(
        int heapHandle,
        int heapInformationClass,
        Pointer heapInformation,
        int heapInformationLength)>('HeapSetInformation');

/// Retrieves the size of a memory block allocated from a heap by the HeapAlloc
/// or HeapReAlloc function.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/heapapi/nf-heapapi-heapsize>.
///
/// {@category kernel32}
int HeapSize(int hHeap, int dwFlags, Pointer lpMem) =>
    _HeapSize(hHeap, dwFlags, lpMem);

final _HeapSize = _kernel32.lookupFunction<
    IntPtr Function(HANDLE hHeap, Uint32 dwFlags, Pointer lpMem),
    int Function(int hHeap, int dwFlags, Pointer lpMem)>('HeapSize');

/// Releases ownership of the critical section object, or lock, that is
/// associated with a specified heap.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/heapapi/nf-heapapi-heapunlock>.
///
/// {@category kernel32}
int HeapUnlock(int hHeap) => _HeapUnlock(hHeap);

final _HeapUnlock = _kernel32.lookupFunction<BOOL Function(HANDLE hHeap),
    int Function(int hHeap)>('HeapUnlock');

/// Validates the specified heap.
///
/// The function scans all the memory blocks in the heap and verifies that the
/// heap control structures maintained by the heap manager are in a consistent
/// state.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/heapapi/nf-heapapi-heapvalidate>.
///
/// {@category kernel32}
int HeapValidate(int hHeap, int dwFlags, Pointer? lpMem) =>
    _HeapValidate(hHeap, dwFlags, lpMem ?? nullptr);

final _HeapValidate = _kernel32.lookupFunction<
    BOOL Function(HANDLE hHeap, Uint32 dwFlags, Pointer lpMem),
    int Function(int hHeap, int dwFlags, Pointer lpMem)>('HeapValidate');

/// Enumerates the memory blocks in the specified heap.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/heapapi/nf-heapapi-heapwalk>.
///
/// {@category kernel32}
int HeapWalk(int hHeap, Pointer<PROCESS_HEAP_ENTRY> lpEntry) =>
    _HeapWalk(hHeap, lpEntry);

final _HeapWalk = _kernel32.lookupFunction<
    BOOL Function(HANDLE hHeap, Pointer<PROCESS_HEAP_ENTRY> lpEntry),
    int Function(int hHeap, Pointer<PROCESS_HEAP_ENTRY> lpEntry)>('HeapWalk');

/// Initializes the specified list of attributes for process and thread
/// creation.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-initializeprocthreadattributelist>.
///
/// {@category kernel32}
int InitializeProcThreadAttributeList(
        LPPROC_THREAD_ATTRIBUTE_LIST? lpAttributeList,
        int dwAttributeCount,
        Pointer<IntPtr> lpSize) =>
    _InitializeProcThreadAttributeList(
        lpAttributeList ?? nullptr, dwAttributeCount, 0, lpSize);

final _InitializeProcThreadAttributeList = _kernel32.lookupFunction<
    BOOL Function(LPPROC_THREAD_ATTRIBUTE_LIST lpAttributeList,
        Uint32 dwAttributeCount, Uint32 dwFlags, Pointer<IntPtr> lpSize),
    int Function(
        LPPROC_THREAD_ATTRIBUTE_LIST lpAttributeList,
        int dwAttributeCount,
        int dwFlags,
        Pointer<IntPtr> lpSize)>('InitializeProcThreadAttributeList');

/// Determines whether the calling process is being debugged by a user-mode
/// debugger.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/debugapi/nf-debugapi-isdebuggerpresent>.
///
/// {@category kernel32}
int IsDebuggerPresent() => _IsDebuggerPresent();

final _IsDebuggerPresent = _kernel32
    .lookupFunction<BOOL Function(), int Function()>('IsDebuggerPresent');

/// Indicates if the OS was booted from a VHD container.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-isnativevhdboot>.
///
/// {@category kernel32}
int IsNativeVhdBoot(Pointer<BOOL> nativeVhdBoot) =>
    _IsNativeVhdBoot(nativeVhdBoot);

final _IsNativeVhdBoot = _kernel32.lookupFunction<
    BOOL Function(Pointer<BOOL> nativeVhdBoot),
    int Function(Pointer<BOOL> nativeVhdBoot)>('IsNativeVhdBoot');

/// Determines whether the process is running in the specified job.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/jobapi/nf-jobapi-isprocessinjob>.
///
/// {@category kernel32}
int IsProcessInJob(int processHandle, int? jobHandle, Pointer<BOOL> result) =>
    _IsProcessInJob(processHandle, jobHandle ?? 0, result);

final _IsProcessInJob = _kernel32.lookupFunction<
    BOOL Function(HANDLE processHandle, HANDLE jobHandle, Pointer<BOOL> result),
    int Function(int processHandle, int jobHandle,
        Pointer<BOOL> result)>('IsProcessInJob');

/// Determines the current state of the computer.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-issystemresumeautomatic>.
///
/// {@category kernel32}
int IsSystemResumeAutomatic() => _IsSystemResumeAutomatic();

final _IsSystemResumeAutomatic = _kernel32
    .lookupFunction<BOOL Function(), int Function()>('IsSystemResumeAutomatic');

/// Determines if the specified locale name is valid for a locale that is
/// installed or supported on the operating system.
///
/// **Note**: An application running only on Windows Vista and later should call
/// this function in preference to IsValidLocale to determine the validity of a
/// supplemental locale.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winnls/nf-winnls-isvalidlocalename>.
///
/// {@category kernel32}
int IsValidLocaleName(Pointer<Utf16> lpLocaleName) =>
    _IsValidLocaleName(lpLocaleName);

final _IsValidLocaleName = _kernel32.lookupFunction<
    BOOL Function(Pointer<Utf16> lpLocaleName),
    int Function(Pointer<Utf16> lpLocaleName)>('IsValidLocaleName');

/// Determines whether the specified process is running under WOW64; also
/// returns additional machine process and architecture information.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wow64apiset/nf-wow64apiset-iswow64process2>.
///
/// {@category kernel32}
int IsWow64Process2(int hProcess, Pointer<Uint16> pProcessMachine,
        Pointer<Uint16>? pNativeMachine) =>
    _IsWow64Process2(hProcess, pProcessMachine, pNativeMachine ?? nullptr);

final _IsWow64Process2 = _kernel32.lookupFunction<
    BOOL Function(HANDLE hProcess, Pointer<Uint16> pProcessMachine,
        Pointer<Uint16> pNativeMachine),
    int Function(int hProcess, Pointer<Uint16> pProcessMachine,
        Pointer<Uint16> pNativeMachine)>('IsWow64Process2');

/// Loads the specified module into the address space of the calling process.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/libloaderapi/nf-libloaderapi-loadlibraryw>.
///
/// {@category kernel32}
int LoadLibrary(Pointer<Utf16> lpLibFileName) => _LoadLibrary(lpLibFileName);

final _LoadLibrary = _kernel32.lookupFunction<
    HMODULE Function(Pointer<Utf16> lpLibFileName),
    int Function(Pointer<Utf16> lpLibFileName)>('LoadLibraryW');

/// Loads the specified module into the address space of the calling process.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/libloaderapi/nf-libloaderapi-loadlibraryexw>.
///
/// {@category kernel32}
int LoadLibraryEx(Pointer<Utf16> lpLibFileName, int dwFlags) =>
    _LoadLibraryEx(lpLibFileName, 0, dwFlags);

final _LoadLibraryEx = _kernel32.lookupFunction<
    HMODULE Function(
        Pointer<Utf16> lpLibFileName, HANDLE hFile, Uint32 dwFlags),
    int Function(Pointer<Utf16> lpLibFileName, int hFile,
        int dwFlags)>('LoadLibraryExW');

/// Retrieves a handle that can be used to obtain a pointer to the first byte of
/// the specified resource in memory.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/libloaderapi/nf-libloaderapi-loadresource>.
///
/// {@category kernel32}
HGLOBAL LoadResource(int? hModule, int hResInfo) =>
    _LoadResource(hModule ?? 0, hResInfo);

final _LoadResource = _kernel32.lookupFunction<
    HGLOBAL Function(HMODULE hModule, HRSRC hResInfo),
    HGLOBAL Function(int hModule, int hResInfo)>('LoadResource');

/// Frees the specified local memory object and invalidates its handle.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-localfree>.
///
/// {@category kernel32}
HLOCAL LocalFree(HLOCAL? hMem) => _LocalFree(hMem ?? nullptr);

final _LocalFree = _kernel32.lookupFunction<HLOCAL Function(HLOCAL hMem),
    HLOCAL Function(HLOCAL hMem)>('LocalFree');

/// Locks the specified file for exclusive access by the calling process.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-lockfile>.
///
/// {@category kernel32}
int LockFile(int hFile, int dwFileOffsetLow, int dwFileOffsetHigh,
        int nNumberOfBytesToLockLow, int nNumberOfBytesToLockHigh) =>
    _LockFile(hFile, dwFileOffsetLow, dwFileOffsetHigh, nNumberOfBytesToLockLow,
        nNumberOfBytesToLockHigh);

final _LockFile = _kernel32.lookupFunction<
    BOOL Function(HANDLE hFile, Uint32 dwFileOffsetLow, Uint32 dwFileOffsetHigh,
        Uint32 nNumberOfBytesToLockLow, Uint32 nNumberOfBytesToLockHigh),
    int Function(int hFile, int dwFileOffsetLow, int dwFileOffsetHigh,
        int nNumberOfBytesToLockLow, int nNumberOfBytesToLockHigh)>('LockFile');

/// Locks the specified file for exclusive access by the calling process.
///
/// This function can operate either synchronously or asynchronously and can
/// request either an exclusive or a shared lock.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-lockfileex>.
///
/// {@category kernel32}
int LockFileEx(int hFile, int dwFlags, int nNumberOfBytesToLockLow,
        int nNumberOfBytesToLockHigh, Pointer<OVERLAPPED> lpOverlapped) =>
    _LockFileEx(hFile, dwFlags, 0, nNumberOfBytesToLockLow,
        nNumberOfBytesToLockHigh, lpOverlapped);

final _LockFileEx = _kernel32.lookupFunction<
    BOOL Function(
        HANDLE hFile,
        Uint32 dwFlags,
        Uint32 dwReserved,
        Uint32 nNumberOfBytesToLockLow,
        Uint32 nNumberOfBytesToLockHigh,
        Pointer<OVERLAPPED> lpOverlapped),
    int Function(
        int hFile,
        int dwFlags,
        int dwReserved,
        int nNumberOfBytesToLockLow,
        int nNumberOfBytesToLockHigh,
        Pointer<OVERLAPPED> lpOverlapped)>('LockFileEx');

/// Retrieves a pointer to the specified resource in memory.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/libloaderapi/nf-libloaderapi-lockresource>.
///
/// {@category kernel32}
Pointer LockResource(HGLOBAL hResData) => _LockResource(hResData);

final _LockResource = _kernel32.lookupFunction<
    Pointer Function(HGLOBAL hResData),
    Pointer Function(HGLOBAL hResData)>('LockResource');

/// Moves an existing file or a directory, including its children.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-movefilew>.
///
/// {@category kernel32}
int MoveFile(Pointer<Utf16> lpExistingFileName, Pointer<Utf16> lpNewFileName) =>
    _MoveFile(lpExistingFileName, lpNewFileName);

final _MoveFile = _kernel32.lookupFunction<
    BOOL Function(
        Pointer<Utf16> lpExistingFileName, Pointer<Utf16> lpNewFileName),
    int Function(Pointer<Utf16> lpExistingFileName,
        Pointer<Utf16> lpNewFileName)>('MoveFileW');

/// Opens an existing named event object.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/synchapi/nf-synchapi-openeventw>.
///
/// {@category kernel32}
int OpenEvent(int dwDesiredAccess, int bInheritHandle, Pointer<Utf16> lpName) =>
    _OpenEvent(dwDesiredAccess, bInheritHandle, lpName);

final _OpenEvent = _kernel32.lookupFunction<
    HANDLE Function(
        Uint32 dwDesiredAccess, BOOL bInheritHandle, Pointer<Utf16> lpName),
    int Function(int dwDesiredAccess, int bInheritHandle,
        Pointer<Utf16> lpName)>('OpenEventW');

/// Opens an existing job object.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/jobapi2/nf-jobapi2-openjobobjectw>.
///
/// {@category kernel32}
int OpenJobObject(
        int dwDesiredAccess, int bInheritHandle, Pointer<Utf16> lpName) =>
    _OpenJobObject(dwDesiredAccess, bInheritHandle, lpName);

final _OpenJobObject = _kernel32.lookupFunction<
    HANDLE Function(
        Uint32 dwDesiredAccess, BOOL bInheritHandle, Pointer<Utf16> lpName),
    int Function(int dwDesiredAccess, int bInheritHandle,
        Pointer<Utf16> lpName)>('OpenJobObjectW');

/// Opens an existing local process object.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-openprocess>.
///
/// {@category kernel32}
int OpenProcess(int dwDesiredAccess, int bInheritHandle, int dwProcessId) =>
    _OpenProcess(dwDesiredAccess, bInheritHandle, dwProcessId);

final _OpenProcess = _kernel32.lookupFunction<
    HANDLE Function(
        Uint32 dwDesiredAccess, BOOL bInheritHandle, Uint32 dwProcessId),
    int Function(int dwDesiredAccess, int bInheritHandle,
        int dwProcessId)>('OpenProcess');

/// Sends a string to the debugger for display.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/debugapi/nf-debugapi-outputdebugstringw>.
///
/// {@category kernel32}
void OutputDebugString(Pointer<Utf16>? lpOutputString) =>
    _OutputDebugString(lpOutputString ?? nullptr);

final _OutputDebugString = _kernel32.lookupFunction<
    Void Function(Pointer<Utf16> lpOutputString),
    void Function(Pointer<Utf16> lpOutputString)>('OutputDebugStringW');

/// Gets the package family name for the specified package full name.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/appmodel/nf-appmodel-packagefamilynamefromfullname>.
///
/// {@category kernel32}
int PackageFamilyNameFromFullName(
        Pointer<Utf16> packageFullName,
        Pointer<Uint32> packageFamilyNameLength,
        Pointer<Utf16>? packageFamilyName) =>
    _PackageFamilyNameFromFullName(
        packageFullName, packageFamilyNameLength, packageFamilyName ?? nullptr);

final _PackageFamilyNameFromFullName = _kernel32.lookupFunction<
    Uint32 Function(
        Pointer<Utf16> packageFullName,
        Pointer<Uint32> packageFamilyNameLength,
        Pointer<Utf16> packageFamilyName),
    int Function(
        Pointer<Utf16> packageFullName,
        Pointer<Uint32> packageFamilyNameLength,
        Pointer<Utf16> packageFamilyName)>('PackageFamilyNameFromFullName');

/// Reads data from the specified console input buffer without removing it from
/// the buffer.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/console/peekconsoleinput>.
///
/// {@category kernel32}
int PeekConsoleInput(int hConsoleInput, Pointer<INPUT_RECORD> lpBuffer,
        int nLength, Pointer<Uint32> lpNumberOfEventsRead) =>
    _PeekConsoleInput(hConsoleInput, lpBuffer, nLength, lpNumberOfEventsRead);

final _PeekConsoleInput = _kernel32.lookupFunction<
    BOOL Function(HANDLE hConsoleInput, Pointer<INPUT_RECORD> lpBuffer,
        Uint32 nLength, Pointer<Uint32> lpNumberOfEventsRead),
    int Function(int hConsoleInput, Pointer<INPUT_RECORD> lpBuffer, int nLength,
        Pointer<Uint32> lpNumberOfEventsRead)>('PeekConsoleInputW');

/// Copies data from a named or anonymous pipe into a buffer without removing it
/// from the pipe.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/namedpipeapi/nf-namedpipeapi-peeknamedpipe>.
///
/// {@category kernel32}
int PeekNamedPipe(
        int hNamedPipe,
        Pointer? lpBuffer,
        int nBufferSize,
        Pointer<Uint32>? lpBytesRead,
        Pointer<Uint32>? lpTotalBytesAvail,
        Pointer<Uint32>? lpBytesLeftThisMessage) =>
    _PeekNamedPipe(
        hNamedPipe,
        lpBuffer ?? nullptr,
        nBufferSize,
        lpBytesRead ?? nullptr,
        lpTotalBytesAvail ?? nullptr,
        lpBytesLeftThisMessage ?? nullptr);

final _PeekNamedPipe = _kernel32.lookupFunction<
    BOOL Function(
        HANDLE hNamedPipe,
        Pointer lpBuffer,
        Uint32 nBufferSize,
        Pointer<Uint32> lpBytesRead,
        Pointer<Uint32> lpTotalBytesAvail,
        Pointer<Uint32> lpBytesLeftThisMessage),
    int Function(
        int hNamedPipe,
        Pointer lpBuffer,
        int nBufferSize,
        Pointer<Uint32> lpBytesRead,
        Pointer<Uint32> lpTotalBytesAvail,
        Pointer<Uint32> lpBytesLeftThisMessage)>('PeekNamedPipe');

/// Posts an I/O completion packet to an I/O completion port.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/ioapiset/nf-ioapiset-postqueuedcompletionstatus>.
///
/// {@category kernel32}
int PostQueuedCompletionStatus(
        int completionPort,
        int dwNumberOfBytesTransferred,
        int dwCompletionKey,
        Pointer<OVERLAPPED>? lpOverlapped) =>
    _PostQueuedCompletionStatus(completionPort, dwNumberOfBytesTransferred,
        dwCompletionKey, lpOverlapped ?? nullptr);

final _PostQueuedCompletionStatus = _kernel32.lookupFunction<
    BOOL Function(HANDLE completionPort, Uint32 dwNumberOfBytesTransferred,
        IntPtr dwCompletionKey, Pointer<OVERLAPPED> lpOverlapped),
    int Function(
        int completionPort,
        int dwNumberOfBytesTransferred,
        int dwCompletionKey,
        Pointer<OVERLAPPED> lpOverlapped)>('PostQueuedCompletionStatus');

/// Discards all characters from the output or input buffer of a specified
/// communications resource.
///
/// It can also terminate pending read or write operations on the resource.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-purgecomm>.
///
/// {@category kernel32}
int PurgeComm(int hFile, int dwFlags) => _PurgeComm(hFile, dwFlags);

final _PurgeComm = _kernel32.lookupFunction<
    BOOL Function(HANDLE hFile, Uint32 dwFlags),
    int Function(int hFile, int dwFlags)>('PurgeComm');

/// Retrieves information about MS-DOS device names.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-querydosdevicew>.
///
/// {@category kernel32}
int QueryDosDevice(Pointer<Utf16>? lpDeviceName, Pointer<Utf16>? lpTargetPath,
        int ucchMax) =>
    _QueryDosDevice(lpDeviceName ?? nullptr, lpTargetPath ?? nullptr, ucchMax);

final _QueryDosDevice = _kernel32.lookupFunction<
    Uint32 Function(Pointer<Utf16> lpDeviceName, Pointer<Utf16> lpTargetPath,
        Uint32 ucchMax),
    int Function(Pointer<Utf16> lpDeviceName, Pointer<Utf16> lpTargetPath,
        int ucchMax)>('QueryDosDeviceW');

/// Retrieves the full name of the executable image for the specified process.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-queryfullprocessimagenamew>.
///
/// {@category kernel32}
int QueryFullProcessImageName(int hProcess, int dwFlags,
        Pointer<Utf16> lpExeName, Pointer<Uint32> lpdwSize) =>
    _QueryFullProcessImageName(hProcess, dwFlags, lpExeName, lpdwSize);

final _QueryFullProcessImageName = _kernel32.lookupFunction<
    BOOL Function(HANDLE hProcess, Uint32 dwFlags, Pointer<Utf16> lpExeName,
        Pointer<Uint32> lpdwSize),
    int Function(int hProcess, int dwFlags, Pointer<Utf16> lpExeName,
        Pointer<Uint32> lpdwSize)>('QueryFullProcessImageNameW');

/// Retrieves limit and job state information from the job object.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/jobapi2/nf-jobapi2-queryinformationjobobject>.
///
/// {@category kernel32}
int QueryInformationJobObject(
        int? hJob,
        int jobObjectInformationClass,
        Pointer lpJobObjectInformation,
        int cbJobObjectInformationLength,
        Pointer<Uint32>? lpReturnLength) =>
    _QueryInformationJobObject(
        hJob ?? 0,
        jobObjectInformationClass,
        lpJobObjectInformation,
        cbJobObjectInformationLength,
        lpReturnLength ?? nullptr);

final _QueryInformationJobObject = _kernel32.lookupFunction<
    BOOL Function(
        HANDLE hJob,
        Int32 jobObjectInformationClass,
        Pointer lpJobObjectInformation,
        Uint32 cbJobObjectInformationLength,
        Pointer<Uint32> lpReturnLength),
    int Function(
        int hJob,
        int jobObjectInformationClass,
        Pointer lpJobObjectInformation,
        int cbJobObjectInformationLength,
        Pointer<Uint32> lpReturnLength)>('QueryInformationJobObject');

/// Gets information about the control of the I/O rate for a job object.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/jobapi2/nf-jobapi2-queryioratecontrolinformationjobobject>.
///
/// {@category kernel32}
int QueryIoRateControlInformationJobObject(
        int? hJob,
        Pointer<Utf16>? volumeName,
        Pointer<Pointer<JOBOBJECT_IO_RATE_CONTROL_INFORMATION>> infoBlocks,
        Pointer<Uint32> infoBlockCount) =>
    _QueryIoRateControlInformationJobObject(
        hJob ?? 0, volumeName ?? nullptr, infoBlocks, infoBlockCount);

final _QueryIoRateControlInformationJobObject = _kernel32.lookupFunction<
        Uint32 Function(
            HANDLE hJob,
            Pointer<Utf16> volumeName,
            Pointer<Pointer<JOBOBJECT_IO_RATE_CONTROL_INFORMATION>> infoBlocks,
            Pointer<Uint32> infoBlockCount),
        int Function(
            int hJob,
            Pointer<Utf16> volumeName,
            Pointer<Pointer<JOBOBJECT_IO_RATE_CONTROL_INFORMATION>> infoBlocks,
            Pointer<Uint32> infoBlockCount)>(
    'QueryIoRateControlInformationJobObject');

/// Retrieves the current value of the performance counter, which is a high
/// resolution (&lt;1us) time stamp that can be used for time-interval
/// measurements.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/profileapi/nf-profileapi-queryperformancecounter>.
///
/// {@category kernel32}
int QueryPerformanceCounter(Pointer<Int64> lpPerformanceCount) =>
    _QueryPerformanceCounter(lpPerformanceCount);

final _QueryPerformanceCounter = _kernel32.lookupFunction<
    BOOL Function(Pointer<Int64> lpPerformanceCount),
    int Function(Pointer<Int64> lpPerformanceCount)>('QueryPerformanceCounter');

/// Retrieves the frequency of the performance counter.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/profileapi/nf-profileapi-queryperformancefrequency>.
///
/// {@category kernel32}
int QueryPerformanceFrequency(Pointer<Int64> lpFrequency) =>
    _QueryPerformanceFrequency(lpFrequency);

final _QueryPerformanceFrequency = _kernel32.lookupFunction<
    BOOL Function(Pointer<Int64> lpFrequency),
    int Function(Pointer<Int64> lpFrequency)>('QueryPerformanceFrequency');

/// Reads character input from the console input buffer and removes it from the
/// buffer.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/console/readconsole>.
///
/// {@category kernel32}
int ReadConsole(
        int hConsoleInput,
        Pointer lpBuffer,
        int nNumberOfCharsToRead,
        Pointer<Uint32> lpNumberOfCharsRead,
        Pointer<CONSOLE_READCONSOLE_CONTROL>? pInputControl) =>
    _ReadConsole(hConsoleInput, lpBuffer, nNumberOfCharsToRead,
        lpNumberOfCharsRead, pInputControl ?? nullptr);

final _ReadConsole = _kernel32.lookupFunction<
    BOOL Function(
        HANDLE hConsoleInput,
        Pointer lpBuffer,
        Uint32 nNumberOfCharsToRead,
        Pointer<Uint32> lpNumberOfCharsRead,
        Pointer<CONSOLE_READCONSOLE_CONTROL> pInputControl),
    int Function(
        int hConsoleInput,
        Pointer lpBuffer,
        int nNumberOfCharsToRead,
        Pointer<Uint32> lpNumberOfCharsRead,
        Pointer<CONSOLE_READCONSOLE_CONTROL> pInputControl)>('ReadConsoleW');

/// Reads data from a console input buffer and removes it from the buffer.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/console/readconsoleinput>.
///
/// {@category kernel32}
int ReadConsoleInput(int hConsoleInput, Pointer<INPUT_RECORD> lpBuffer,
        int nLength, Pointer<Uint32> lpNumberOfEventsRead) =>
    _ReadConsoleInput(hConsoleInput, lpBuffer, nLength, lpNumberOfEventsRead);

final _ReadConsoleInput = _kernel32.lookupFunction<
    BOOL Function(HANDLE hConsoleInput, Pointer<INPUT_RECORD> lpBuffer,
        Uint32 nLength, Pointer<Uint32> lpNumberOfEventsRead),
    int Function(int hConsoleInput, Pointer<INPUT_RECORD> lpBuffer, int nLength,
        Pointer<Uint32> lpNumberOfEventsRead)>('ReadConsoleInputW');

/// Reads data from the specified file or input/output (I/O) device.
///
/// Reads occur at the position specified by the file pointer if supported by
/// the device.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-readfile>.
///
/// {@category kernel32}
int ReadFile(
        int hFile,
        Pointer<Uint8>? lpBuffer,
        int nNumberOfBytesToRead,
        Pointer<Uint32>? lpNumberOfBytesRead,
        Pointer<OVERLAPPED>? lpOverlapped) =>
    _ReadFile(hFile, lpBuffer ?? nullptr, nNumberOfBytesToRead,
        lpNumberOfBytesRead ?? nullptr, lpOverlapped ?? nullptr);

final _ReadFile = _kernel32.lookupFunction<
    BOOL Function(
        HANDLE hFile,
        Pointer<Uint8> lpBuffer,
        Uint32 nNumberOfBytesToRead,
        Pointer<Uint32> lpNumberOfBytesRead,
        Pointer<OVERLAPPED> lpOverlapped),
    int Function(
        int hFile,
        Pointer<Uint8> lpBuffer,
        int nNumberOfBytesToRead,
        Pointer<Uint32> lpNumberOfBytesRead,
        Pointer<OVERLAPPED> lpOverlapped)>('ReadFile');

/// Reads data from the specified file or input/output (I/O) device.
///
/// It reports its completion status asynchronously, calling the specified
/// completion routine when reading is completed or canceled and the calling
/// thread is in an alertable wait state.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-readfileex>.
///
/// {@category kernel32}
int ReadFileEx(
        int hFile,
        Pointer<Uint8>? lpBuffer,
        int nNumberOfBytesToRead,
        Pointer<OVERLAPPED> lpOverlapped,
        Pointer<NativeFunction<LPOVERLAPPED_COMPLETION_ROUTINE>>
            lpCompletionRoutine) =>
    _ReadFileEx(hFile, lpBuffer ?? nullptr, nNumberOfBytesToRead, lpOverlapped,
        lpCompletionRoutine);

final _ReadFileEx = _kernel32.lookupFunction<
    BOOL Function(
        HANDLE hFile,
        Pointer<Uint8> lpBuffer,
        Uint32 nNumberOfBytesToRead,
        Pointer<OVERLAPPED> lpOverlapped,
        Pointer<NativeFunction<LPOVERLAPPED_COMPLETION_ROUTINE>>
            lpCompletionRoutine),
    int Function(
        int hFile,
        Pointer<Uint8> lpBuffer,
        int nNumberOfBytesToRead,
        Pointer<OVERLAPPED> lpOverlapped,
        Pointer<NativeFunction<LPOVERLAPPED_COMPLETION_ROUTINE>>
            lpCompletionRoutine)>('ReadFileEx');

/// Reads data from a file and stores it in an array of buffers.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-readfilescatter>.
///
/// {@category kernel32}
int ReadFileScatter(int hFile, Pointer<FILE_SEGMENT_ELEMENT> aSegmentArray,
        int nNumberOfBytesToRead, Pointer<OVERLAPPED> lpOverlapped) =>
    _ReadFileScatter(
        hFile, aSegmentArray, nNumberOfBytesToRead, nullptr, lpOverlapped);

final _ReadFileScatter = _kernel32.lookupFunction<
    BOOL Function(
        HANDLE hFile,
        Pointer<FILE_SEGMENT_ELEMENT> aSegmentArray,
        Uint32 nNumberOfBytesToRead,
        Pointer<Uint32> lpReserved,
        Pointer<OVERLAPPED> lpOverlapped),
    int Function(
        int hFile,
        Pointer<FILE_SEGMENT_ELEMENT> aSegmentArray,
        int nNumberOfBytesToRead,
        Pointer<Uint32> lpReserved,
        Pointer<OVERLAPPED> lpOverlapped)>('ReadFileScatter');

/// Reads data from an area of memory in a specified process.
///
/// The entire area to be read must be accessible or the operation fails.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/memoryapi/nf-memoryapi-readprocessmemory>.
///
/// {@category kernel32}
int ReadProcessMemory(int hProcess, Pointer lpBaseAddress, Pointer lpBuffer,
        int nSize, Pointer<IntPtr>? lpNumberOfBytesRead) =>
    _ReadProcessMemory(hProcess, lpBaseAddress, lpBuffer, nSize,
        lpNumberOfBytesRead ?? nullptr);

final _ReadProcessMemory = _kernel32.lookupFunction<
    BOOL Function(HANDLE hProcess, Pointer lpBaseAddress, Pointer lpBuffer,
        IntPtr nSize, Pointer<IntPtr> lpNumberOfBytesRead),
    int Function(int hProcess, Pointer lpBaseAddress, Pointer lpBuffer,
        int nSize, Pointer<IntPtr> lpNumberOfBytesRead)>('ReadProcessMemory');

/// Decrements the reference count of the specified activation context.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-releaseactctx>.
///
/// {@category kernel32}
void ReleaseActCtx(int hActCtx) => _ReleaseActCtx(hActCtx);

final _ReleaseActCtx = _kernel32.lookupFunction<Void Function(HANDLE hActCtx),
    void Function(int hActCtx)>('ReleaseActCtx');

/// Deletes an existing empty directory.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-removedirectoryw>.
///
/// {@category kernel32}
int RemoveDirectory(Pointer<Utf16> lpPathName) => _RemoveDirectory(lpPathName);

final _RemoveDirectory = _kernel32.lookupFunction<
    BOOL Function(Pointer<Utf16> lpPathName),
    int Function(Pointer<Utf16> lpPathName)>('RemoveDirectoryW');

/// Removes a directory that was added to the process DLL search path by using
/// AddDllDirectory.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/libloaderapi/nf-libloaderapi-removedlldirectory>.
///
/// {@category kernel32}
int RemoveDllDirectory(Pointer cookie) => _RemoveDllDirectory(cookie);

final _RemoveDllDirectory = _kernel32.lookupFunction<
    BOOL Function(Pointer cookie),
    int Function(Pointer cookie)>('RemoveDllDirectory');

/// Reopens the specified file system object with different access rights,
/// sharing mode, and flags.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-reopenfile>.
///
/// {@category kernel32}
int ReOpenFile(int hOriginalFile, int dwDesiredAccess, int dwShareMode,
        int dwFlagsAndAttributes) =>
    _ReOpenFile(
        hOriginalFile, dwDesiredAccess, dwShareMode, dwFlagsAndAttributes);

final _ReOpenFile = _kernel32.lookupFunction<
    HANDLE Function(HANDLE hOriginalFile, Uint32 dwDesiredAccess,
        Uint32 dwShareMode, Uint32 dwFlagsAndAttributes),
    int Function(int hOriginalFile, int dwDesiredAccess, int dwShareMode,
        int dwFlagsAndAttributes)>('ReOpenFile');

/// Sets the specified event object to the nonsignaled state.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/synchapi/nf-synchapi-resetevent>.
///
/// {@category kernel32}
int ResetEvent(int hEvent) => _ResetEvent(hEvent);

final _ResetEvent = _kernel32.lookupFunction<BOOL Function(HANDLE hEvent),
    int Function(int hEvent)>('ResetEvent');

/// Resizes the internal buffers for a pseudoconsole to the given size.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/console/resizepseudoconsole>.
///
/// {@category kernel32}
int ResizePseudoConsole(int hPC, COORD size) => _ResizePseudoConsole(hPC, size);

final _ResizePseudoConsole = _kernel32.lookupFunction<
    HRESULT Function(HPCON hPC, COORD size),
    int Function(int hPC, COORD size)>('ResizePseudoConsole');

/// Moves a block of data in a screen buffer.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/console/scrollconsolescreenbuffer>.
///
/// {@category kernel32}
int ScrollConsoleScreenBuffer(
        int hConsoleOutput,
        Pointer<SMALL_RECT> lpScrollRectangle,
        Pointer<SMALL_RECT>? lpClipRectangle,
        COORD dwDestinationOrigin,
        Pointer<CHAR_INFO> lpFill) =>
    _ScrollConsoleScreenBuffer(hConsoleOutput, lpScrollRectangle,
        lpClipRectangle ?? nullptr, dwDestinationOrigin, lpFill);

final _ScrollConsoleScreenBuffer = _kernel32.lookupFunction<
    BOOL Function(
        HANDLE hConsoleOutput,
        Pointer<SMALL_RECT> lpScrollRectangle,
        Pointer<SMALL_RECT> lpClipRectangle,
        COORD dwDestinationOrigin,
        Pointer<CHAR_INFO> lpFill),
    int Function(
        int hConsoleOutput,
        Pointer<SMALL_RECT> lpScrollRectangle,
        Pointer<SMALL_RECT> lpClipRectangle,
        COORD dwDestinationOrigin,
        Pointer<CHAR_INFO> lpFill)>('ScrollConsoleScreenBufferW');

/// Suspends character transmission for a specified communications device and
/// places the transmission line in a break state until the ClearCommBreak
/// function is called.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-setcommbreak>.
///
/// {@category kernel32}
int SetCommBreak(int hFile) => _SetCommBreak(hFile);

final _SetCommBreak = _kernel32.lookupFunction<BOOL Function(HANDLE hFile),
    int Function(int hFile)>('SetCommBreak');

/// Sets the current configuration of a communications device.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-setcommconfig>.
///
/// {@category kernel32}
int SetCommConfig(int hCommDev, Pointer<COMMCONFIG> lpCC, int dwSize) =>
    _SetCommConfig(hCommDev, lpCC, dwSize);

final _SetCommConfig = _kernel32.lookupFunction<
    BOOL Function(HANDLE hCommDev, Pointer<COMMCONFIG> lpCC, Uint32 dwSize),
    int Function(
        int hCommDev, Pointer<COMMCONFIG> lpCC, int dwSize)>('SetCommConfig');

/// Specifies a set of events to be monitored for a communications device.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-setcommmask>.
///
/// {@category kernel32}
int SetCommMask(int hFile, int dwEvtMask) => _SetCommMask(hFile, dwEvtMask);

final _SetCommMask = _kernel32.lookupFunction<
    BOOL Function(HANDLE hFile, Uint32 dwEvtMask),
    int Function(int hFile, int dwEvtMask)>('SetCommMask');

/// Configures a communications device according to the specifications in a
/// device-control block (a DCB structure).
///
/// The function reinitializes all hardware and control settings, but it does
/// not empty output or input queues.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-setcommstate>.
///
/// {@category kernel32}
int SetCommState(int hFile, Pointer<DCB> lpDCB) => _SetCommState(hFile, lpDCB);

final _SetCommState = _kernel32.lookupFunction<
    BOOL Function(HANDLE hFile, Pointer<DCB> lpDCB),
    int Function(int hFile, Pointer<DCB> lpDCB)>('SetCommState');

/// Sets the time-out parameters for all read and write operations on a
/// specified communications device.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-setcommtimeouts>.
///
/// {@category kernel32}
int SetCommTimeouts(int hFile, Pointer<COMMTIMEOUTS> lpCommTimeouts) =>
    _SetCommTimeouts(hFile, lpCommTimeouts);

final _SetCommTimeouts = _kernel32.lookupFunction<
    BOOL Function(HANDLE hFile, Pointer<COMMTIMEOUTS> lpCommTimeouts),
    int Function(
        int hFile, Pointer<COMMTIMEOUTS> lpCommTimeouts)>('SetCommTimeouts');

/// Adds or removes an application-defined HandlerRoutine function from the list
/// of handler functions for the calling process.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/console/setconsolectrlhandler>.
///
/// {@category kernel32}
int SetConsoleCtrlHandler(
        Pointer<NativeFunction<PHANDLER_ROUTINE>>? handlerRoutine, int add) =>
    _SetConsoleCtrlHandler(handlerRoutine ?? nullptr, add);

final _SetConsoleCtrlHandler = _kernel32.lookupFunction<
    BOOL Function(
        Pointer<NativeFunction<PHANDLER_ROUTINE>> handlerRoutine, BOOL add),
    int Function(Pointer<NativeFunction<PHANDLER_ROUTINE>> handlerRoutine,
        int add)>('SetConsoleCtrlHandler');

/// Sets the size and visibility of the cursor for the specified console screen
/// buffer.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/console/setconsolecursorinfo>.
///
/// {@category kernel32}
int SetConsoleCursorInfo(
        int hConsoleOutput, Pointer<CONSOLE_CURSOR_INFO> lpConsoleCursorInfo) =>
    _SetConsoleCursorInfo(hConsoleOutput, lpConsoleCursorInfo);

final _SetConsoleCursorInfo = _kernel32.lookupFunction<
        BOOL Function(HANDLE hConsoleOutput,
            Pointer<CONSOLE_CURSOR_INFO> lpConsoleCursorInfo),
        int Function(int hConsoleOutput,
            Pointer<CONSOLE_CURSOR_INFO> lpConsoleCursorInfo)>(
    'SetConsoleCursorInfo');

/// Sets the cursor position in the specified console screen buffer.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/console/setconsolecursorposition>.
///
/// {@category kernel32}
int SetConsoleCursorPosition(int hConsoleOutput, COORD dwCursorPosition) =>
    _SetConsoleCursorPosition(hConsoleOutput, dwCursorPosition);

final _SetConsoleCursorPosition = _kernel32.lookupFunction<
    BOOL Function(HANDLE hConsoleOutput, COORD dwCursorPosition),
    int Function(int hConsoleOutput,
        COORD dwCursorPosition)>('SetConsoleCursorPosition');

/// Sets the display mode of the specified console screen buffer.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/console/setconsoledisplaymode>.
///
/// {@category kernel32}
int SetConsoleDisplayMode(int hConsoleOutput, int dwFlags,
        Pointer<COORD>? lpNewScreenBufferDimensions) =>
    _SetConsoleDisplayMode(
        hConsoleOutput, dwFlags, lpNewScreenBufferDimensions ?? nullptr);

final _SetConsoleDisplayMode = _kernel32.lookupFunction<
    BOOL Function(HANDLE hConsoleOutput, Uint32 dwFlags,
        Pointer<COORD> lpNewScreenBufferDimensions),
    int Function(int hConsoleOutput, int dwFlags,
        Pointer<COORD> lpNewScreenBufferDimensions)>('SetConsoleDisplayMode');

/// Sets the input mode of a console's input buffer or the output mode of a
/// console screen buffer.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/console/setconsolemode>.
///
/// {@category kernel32}
int SetConsoleMode(int hConsoleHandle, int dwMode) =>
    _SetConsoleMode(hConsoleHandle, dwMode);

final _SetConsoleMode = _kernel32.lookupFunction<
    BOOL Function(HANDLE hConsoleHandle, Uint32 dwMode),
    int Function(int hConsoleHandle, int dwMode)>('SetConsoleMode');

/// Sets the attributes of characters written to the console screen buffer by
/// the WriteFile or WriteConsole function, or echoed by the ReadFile or
/// ReadConsole function.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/console/setconsoletextattribute>.
///
/// {@category kernel32}
int SetConsoleTextAttribute(int hConsoleOutput, int wAttributes) =>
    _SetConsoleTextAttribute(hConsoleOutput, wAttributes);

final _SetConsoleTextAttribute = _kernel32.lookupFunction<
    BOOL Function(HANDLE hConsoleOutput, Uint16 wAttributes),
    int Function(
        int hConsoleOutput, int wAttributes)>('SetConsoleTextAttribute');

/// Sets the current size and position of a console screen buffer's window.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/console/setconsolewindowinfo>.
///
/// {@category kernel32}
int SetConsoleWindowInfo(int hConsoleOutput, int bAbsolute,
        Pointer<SMALL_RECT> lpConsoleWindow) =>
    _SetConsoleWindowInfo(hConsoleOutput, bAbsolute, lpConsoleWindow);

final _SetConsoleWindowInfo = _kernel32.lookupFunction<
    BOOL Function(HANDLE hConsoleOutput, BOOL bAbsolute,
        Pointer<SMALL_RECT> lpConsoleWindow),
    int Function(int hConsoleOutput, int bAbsolute,
        Pointer<SMALL_RECT> lpConsoleWindow)>('SetConsoleWindowInfo');

/// Changes the current directory for the current process.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-setcurrentdirectory>.
///
/// {@category kernel32}
int SetCurrentDirectory(Pointer<Utf16> lpPathName) =>
    _SetCurrentDirectory(lpPathName);

final _SetCurrentDirectory = _kernel32.lookupFunction<
    BOOL Function(Pointer<Utf16> lpPathName),
    int Function(Pointer<Utf16> lpPathName)>('SetCurrentDirectoryW');

/// Sets the default configuration for a communications device.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-setdefaultcommconfigw>.
///
/// {@category kernel32}
int SetDefaultCommConfig(
        Pointer<Utf16> lpszName, Pointer<COMMCONFIG> lpCC, int dwSize) =>
    _SetDefaultCommConfig(lpszName, lpCC, dwSize);

final _SetDefaultCommConfig = _kernel32.lookupFunction<
    BOOL Function(
        Pointer<Utf16> lpszName, Pointer<COMMCONFIG> lpCC, Uint32 dwSize),
    int Function(Pointer<Utf16> lpszName, Pointer<COMMCONFIG> lpCC,
        int dwSize)>('SetDefaultCommConfigW');

/// Specifies a default set of directories to search when the calling process
/// loads a DLL.
///
/// This search path is used when LoadLibraryEx is called with no
/// LOAD_LIBRARY_SEARCH flags.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/libloaderapi/nf-libloaderapi-setdefaultdlldirectories>.
///
/// {@category kernel32}
int SetDefaultDllDirectories(int directoryFlags) =>
    _SetDefaultDllDirectories(directoryFlags);

final _SetDefaultDllDirectories = _kernel32.lookupFunction<
    BOOL Function(Uint32 directoryFlags),
    int Function(int directoryFlags)>('SetDefaultDllDirectories');

/// Sets the physical file size for the specified file to the current position
/// of the file pointer.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-setendoffile>.
///
/// {@category kernel32}
int SetEndOfFile(int hFile) => _SetEndOfFile(hFile);

final _SetEndOfFile = _kernel32.lookupFunction<BOOL Function(HANDLE hFile),
    int Function(int hFile)>('SetEndOfFile');

/// Sets the contents of the specified environment variable for the current
/// process.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/processenv/nf-processenv-setenvironmentvariablew>.
///
/// {@category kernel32}
int SetEnvironmentVariable(Pointer<Utf16> lpName, Pointer<Utf16>? lpValue) =>
    _SetEnvironmentVariable(lpName, lpValue ?? nullptr);

final _SetEnvironmentVariable = _kernel32.lookupFunction<
    BOOL Function(Pointer<Utf16> lpName, Pointer<Utf16> lpValue),
    int Function(Pointer<Utf16> lpName,
        Pointer<Utf16> lpValue)>('SetEnvironmentVariableW');

/// Controls whether the system will handle the specified types of serious
/// errors or whether the process will handle them.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/errhandlingapi/nf-errhandlingapi-seterrormode>.
///
/// {@category kernel32}
int SetErrorMode(int uMode) => _SetErrorMode(uMode);

final _SetErrorMode = _kernel32.lookupFunction<Uint32 Function(Uint32 uMode),
    int Function(int uMode)>('SetErrorMode');

/// Sets the specified event object to the signaled state.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/synchapi/nf-synchapi-setevent>.
///
/// {@category kernel32}
int SetEvent(int hEvent) => _SetEvent(hEvent);

final _SetEvent = _kernel32.lookupFunction<BOOL Function(HANDLE hEvent),
    int Function(int hEvent)>('SetEvent');

/// Causes the file I/O functions to use the ANSI character set code page for
/// the current process.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-setfileapistoansi>.
///
/// {@category kernel32}
void SetFileApisToANSI() => _SetFileApisToANSI();

final _SetFileApisToANSI = _kernel32
    .lookupFunction<Void Function(), void Function()>('SetFileApisToANSI');

/// Causes the file I/O functions for the process to use the OEM character set
/// code page.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-setfileapistooem>.
///
/// {@category kernel32}
void SetFileApisToOEM() => _SetFileApisToOEM();

final _SetFileApisToOEM = _kernel32
    .lookupFunction<Void Function(), void Function()>('SetFileApisToOEM');

/// Sets the attributes for a file or directory.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-setfileattributesw>.
///
/// {@category kernel32}
int SetFileAttributes(Pointer<Utf16> lpFileName, int dwFileAttributes) =>
    _SetFileAttributes(lpFileName, dwFileAttributes);

final _SetFileAttributes = _kernel32.lookupFunction<
    BOOL Function(Pointer<Utf16> lpFileName, Uint32 dwFileAttributes),
    int Function(
        Pointer<Utf16> lpFileName, int dwFileAttributes)>('SetFileAttributesW');

/// Sets the file information for the specified file.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-setfileinformationbyhandle>.
///
/// {@category kernel32}
int SetFileInformationByHandle(int hFile, int fileInformationClass,
        Pointer lpFileInformation, int dwBufferSize) =>
    _SetFileInformationByHandle(
        hFile, fileInformationClass, lpFileInformation, dwBufferSize);

final _SetFileInformationByHandle = _kernel32.lookupFunction<
    BOOL Function(HANDLE hFile, Int32 fileInformationClass,
        Pointer lpFileInformation, Uint32 dwBufferSize),
    int Function(int hFile, int fileInformationClass, Pointer lpFileInformation,
        int dwBufferSize)>('SetFileInformationByHandle');

/// Associates a virtual address range with the specified file handle.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-setfileiooverlappedrange>.
///
/// {@category kernel32}
int SetFileIoOverlappedRange(
        int fileHandle, Pointer<Uint8> overlappedRangeStart, int length) =>
    _SetFileIoOverlappedRange(fileHandle, overlappedRangeStart, length);

final _SetFileIoOverlappedRange = _kernel32.lookupFunction<
    BOOL Function(
        HANDLE fileHandle, Pointer<Uint8> overlappedRangeStart, Uint32 length),
    int Function(int fileHandle, Pointer<Uint8> overlappedRangeStart,
        int length)>('SetFileIoOverlappedRange');

/// Moves the file pointer of the specified file.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-setfilepointer>.
///
/// {@category kernel32}
int SetFilePointer(int hFile, int lDistanceToMove,
        Pointer<Int32>? lpDistanceToMoveHigh, int dwMoveMethod) =>
    _SetFilePointer(
        hFile, lDistanceToMove, lpDistanceToMoveHigh ?? nullptr, dwMoveMethod);

final _SetFilePointer = _kernel32.lookupFunction<
    Uint32 Function(HANDLE hFile, Int32 lDistanceToMove,
        Pointer<Int32> lpDistanceToMoveHigh, Uint32 dwMoveMethod),
    int Function(
        int hFile,
        int lDistanceToMove,
        Pointer<Int32> lpDistanceToMoveHigh,
        int dwMoveMethod)>('SetFilePointer');

/// Moves the file pointer of the specified file.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-setfilepointerex>.
///
/// {@category kernel32}
int SetFilePointerEx(int hFile, int liDistanceToMove,
        Pointer<Int64>? lpNewFilePointer, int dwMoveMethod) =>
    _SetFilePointerEx(
        hFile, liDistanceToMove, lpNewFilePointer ?? nullptr, dwMoveMethod);

final _SetFilePointerEx = _kernel32.lookupFunction<
    BOOL Function(HANDLE hFile, Int64 liDistanceToMove,
        Pointer<Int64> lpNewFilePointer, Uint32 dwMoveMethod),
    int Function(int hFile, int liDistanceToMove,
        Pointer<Int64> lpNewFilePointer, int dwMoveMethod)>('SetFilePointerEx');

/// Sets the short name for the specified file.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-setfileshortnamew>.
///
/// {@category kernel32}
int SetFileShortName(int hFile, Pointer<Utf16> lpShortName) =>
    _SetFileShortName(hFile, lpShortName);

final _SetFileShortName = _kernel32.lookupFunction<
    BOOL Function(HANDLE hFile, Pointer<Utf16> lpShortName),
    int Function(int hFile, Pointer<Utf16> lpShortName)>('SetFileShortNameW');

/// Sets the valid data length of the specified file.
///
/// This function is useful in very limited scenarios.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-setfilevaliddata>.
///
/// {@category kernel32}
int SetFileValidData(int hFile, int validDataLength) =>
    _SetFileValidData(hFile, validDataLength);

final _SetFileValidData = _kernel32.lookupFunction<
    BOOL Function(HANDLE hFile, Int64 validDataLength),
    int Function(int hFile, int validDataLength)>('SetFileValidData');

/// Sets the value of the specified firmware environment variable.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-setfirmwareenvironmentvariablew>.
///
/// {@category kernel32}
int SetFirmwareEnvironmentVariable(Pointer<Utf16> lpName, Pointer<Utf16> lpGuid,
        Pointer? pValue, int nSize) =>
    _SetFirmwareEnvironmentVariable(lpName, lpGuid, pValue ?? nullptr, nSize);

final _SetFirmwareEnvironmentVariable = _kernel32.lookupFunction<
    BOOL Function(Pointer<Utf16> lpName, Pointer<Utf16> lpGuid, Pointer pValue,
        Uint32 nSize),
    int Function(Pointer<Utf16> lpName, Pointer<Utf16> lpGuid, Pointer pValue,
        int nSize)>('SetFirmwareEnvironmentVariableW');

/// Sets the value of the specified firmware environment variable and the
/// attributes that indicate how this variable is stored and maintained.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-setfirmwareenvironmentvariableexw>.
///
/// {@category kernel32}
int SetFirmwareEnvironmentVariableEx(Pointer<Utf16> lpName,
        Pointer<Utf16> lpGuid, Pointer? pValue, int nSize, int dwAttributes) =>
    _SetFirmwareEnvironmentVariableEx(
        lpName, lpGuid, pValue ?? nullptr, nSize, dwAttributes);

final _SetFirmwareEnvironmentVariableEx = _kernel32.lookupFunction<
    BOOL Function(Pointer<Utf16> lpName, Pointer<Utf16> lpGuid, Pointer pValue,
        Uint32 nSize, Uint32 dwAttributes),
    int Function(Pointer<Utf16> lpName, Pointer<Utf16> lpGuid, Pointer pValue,
        int nSize, int dwAttributes)>('SetFirmwareEnvironmentVariableExW');

/// Sets certain properties of an object handle.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/handleapi/nf-handleapi-sethandleinformation>.
///
/// {@category kernel32}
int SetHandleInformation(int hObject, int dwMask, int dwFlags) =>
    _SetHandleInformation(hObject, dwMask, dwFlags);

final _SetHandleInformation = _kernel32.lookupFunction<
    BOOL Function(HANDLE hObject, Uint32 dwMask, Uint32 dwFlags),
    int Function(int hObject, int dwMask, int dwFlags)>('SetHandleInformation');

/// Sets limits for a job object.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/jobapi2/nf-jobapi2-setinformationjobobject>.
///
/// {@category kernel32}
int SetInformationJobObject(int hJob, int jobObjectInformationClass,
        Pointer lpJobObjectInformation, int cbJobObjectInformationLength) =>
    _SetInformationJobObject(hJob, jobObjectInformationClass,
        lpJobObjectInformation, cbJobObjectInformationLength);

final _SetInformationJobObject = _kernel32.lookupFunction<
    BOOL Function(HANDLE hJob, Int32 jobObjectInformationClass,
        Pointer lpJobObjectInformation, Uint32 cbJobObjectInformationLength),
    int Function(
        int hJob,
        int jobObjectInformationClass,
        Pointer lpJobObjectInformation,
        int cbJobObjectInformationLength)>('SetInformationJobObject');

/// Sets I/O limits on a job object.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/jobapi2/nf-jobapi2-setioratecontrolinformationjobobject>.
///
/// {@category kernel32}
int SetIoRateControlInformationJobObject(int hJob,
        Pointer<JOBOBJECT_IO_RATE_CONTROL_INFORMATION> ioRateControlInfo) =>
    _SetIoRateControlInformationJobObject(hJob, ioRateControlInfo);

final _SetIoRateControlInformationJobObject = _kernel32.lookupFunction<
        Uint32 Function(HANDLE hJob,
            Pointer<JOBOBJECT_IO_RATE_CONTROL_INFORMATION> ioRateControlInfo),
        int Function(int hJob,
            Pointer<JOBOBJECT_IO_RATE_CONTROL_INFORMATION> ioRateControlInfo)>(
    'SetIoRateControlInformationJobObject');

/// Sets the read mode and the blocking mode of the specified named pipe.
///
/// If the specified handle is to the client end of a named pipe and if the
/// named pipe server process is on a remote computer, the function can also be
/// used to control local buffering.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/namedpipeapi/nf-namedpipeapi-setnamedpipehandlestate>.
///
/// {@category kernel32}
int SetNamedPipeHandleState(
        int hNamedPipe,
        Pointer<Uint32>? lpMode,
        Pointer<Uint32>? lpMaxCollectionCount,
        Pointer<Uint32>? lpCollectDataTimeout) =>
    _SetNamedPipeHandleState(hNamedPipe, lpMode ?? nullptr,
        lpMaxCollectionCount ?? nullptr, lpCollectDataTimeout ?? nullptr);

final _SetNamedPipeHandleState = _kernel32.lookupFunction<
    BOOL Function(
        HANDLE hNamedPipe,
        Pointer<Uint32> lpMode,
        Pointer<Uint32> lpMaxCollectionCount,
        Pointer<Uint32> lpCollectDataTimeout),
    int Function(
        int hNamedPipe,
        Pointer<Uint32> lpMode,
        Pointer<Uint32> lpMaxCollectionCount,
        Pointer<Uint32> lpCollectDataTimeout)>('SetNamedPipeHandleState');

/// Sets a processor affinity mask for the threads of the specified process.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-setprocessaffinitymask>.
///
/// {@category kernel32}
int SetProcessAffinityMask(int hProcess, int dwProcessAffinityMask) =>
    _SetProcessAffinityMask(hProcess, dwProcessAffinityMask);

final _SetProcessAffinityMask = _kernel32.lookupFunction<
    BOOL Function(HANDLE hProcess, IntPtr dwProcessAffinityMask),
    int Function(
        int hProcess, int dwProcessAffinityMask)>('SetProcessAffinityMask');

/// Disables or enables the ability of the system to temporarily boost the
/// priority of the threads of the specified process.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-setprocesspriorityboost>.
///
/// {@category kernel32}
int SetProcessPriorityBoost(int hProcess, int bDisablePriorityBoost) =>
    _SetProcessPriorityBoost(hProcess, bDisablePriorityBoost);

final _SetProcessPriorityBoost = _kernel32.lookupFunction<
    BOOL Function(HANDLE hProcess, BOOL bDisablePriorityBoost),
    int Function(
        int hProcess, int bDisablePriorityBoost)>('SetProcessPriorityBoost');

/// Sets the minimum and maximum working set sizes for the specified process.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/memoryapi/nf-memoryapi-setprocessworkingsetsize>.
///
/// {@category kernel32}
int SetProcessWorkingSetSize(int hProcess, int dwMinimumWorkingSetSize,
        int dwMaximumWorkingSetSize) =>
    _SetProcessWorkingSetSize(
        hProcess, dwMinimumWorkingSetSize, dwMaximumWorkingSetSize);

final _SetProcessWorkingSetSize = _kernel32.lookupFunction<
    BOOL Function(HANDLE hProcess, IntPtr dwMinimumWorkingSetSize,
        IntPtr dwMaximumWorkingSetSize),
    int Function(int hProcess, int dwMinimumWorkingSetSize,
        int dwMaximumWorkingSetSize)>('SetProcessWorkingSetSize');

/// Sets the handle for the specified standard device (standard input, standard
/// output, or standard error).
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/console/setstdhandle>.
///
/// {@category kernel32}
int SetStdHandle(int nStdHandle, int hHandle) =>
    _SetStdHandle(nStdHandle, hHandle);

final _SetStdHandle = _kernel32.lookupFunction<
    BOOL Function(Uint32 nStdHandle, HANDLE hHandle),
    int Function(int nStdHandle, int hHandle)>('SetStdHandle');

/// Sets a processor affinity mask for the specified thread.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-setthreadaffinitymask>.
///
/// {@category kernel32}
int SetThreadAffinityMask(int hThread, int dwThreadAffinityMask) =>
    _SetThreadAffinityMask(hThread, dwThreadAffinityMask);

final _SetThreadAffinityMask = _kernel32.lookupFunction<
    IntPtr Function(HANDLE hThread, IntPtr dwThreadAffinityMask),
    int Function(
        int hThread, int dwThreadAffinityMask)>('SetThreadAffinityMask');

/// Controls whether the system will handle the specified types of serious
/// errors or whether the calling thread will handle them.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/errhandlingapi/nf-errhandlingapi-setthreaderrormode>.
///
/// {@category kernel32}
int SetThreadErrorMode(int dwNewMode, Pointer<Uint32>? lpOldMode) =>
    _SetThreadErrorMode(dwNewMode, lpOldMode ?? nullptr);

final _SetThreadErrorMode = _kernel32.lookupFunction<
    BOOL Function(Uint32 dwNewMode, Pointer<Uint32> lpOldMode),
    int Function(
        int dwNewMode, Pointer<Uint32> lpOldMode)>('SetThreadErrorMode');

/// Enables an application to inform the system that it is in use, thereby
/// preventing the system from entering sleep or turning off the display while
/// the application is running.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-setthreadexecutionstate>.
///
/// {@category kernel32}
int SetThreadExecutionState(int esFlags) => _SetThreadExecutionState(esFlags);

final _SetThreadExecutionState = _kernel32.lookupFunction<
    Uint32 Function(Uint32 esFlags),
    int Function(int esFlags)>('SetThreadExecutionState');

/// Sets the user interface language for the current thread.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winnls/nf-winnls-setthreaduilanguage>.
///
/// {@category kernel32}
int SetThreadUILanguage(int langId) => _SetThreadUILanguage(langId);

final _SetThreadUILanguage = _kernel32.lookupFunction<
    Uint16 Function(Uint16 langId),
    int Function(int langId)>('SetThreadUILanguage');

/// Initializes the communications parameters for a specified communications
/// device.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-setupcomm>.
///
/// {@category kernel32}
int SetupComm(int hFile, int dwInQueue, int dwOutQueue) =>
    _SetupComm(hFile, dwInQueue, dwOutQueue);

final _SetupComm = _kernel32.lookupFunction<
    BOOL Function(HANDLE hFile, Uint32 dwInQueue, Uint32 dwOutQueue),
    int Function(int hFile, int dwInQueue, int dwOutQueue)>('SetupComm');

/// Sets the label of a file system volume.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-setvolumelabelw>.
///
/// {@category kernel32}
int SetVolumeLabel(
        Pointer<Utf16>? lpRootPathName, Pointer<Utf16>? lpVolumeName) =>
    _SetVolumeLabel(lpRootPathName ?? nullptr, lpVolumeName ?? nullptr);

final _SetVolumeLabel = _kernel32.lookupFunction<
    BOOL Function(Pointer<Utf16> lpRootPathName, Pointer<Utf16> lpVolumeName),
    int Function(Pointer<Utf16> lpRootPathName,
        Pointer<Utf16> lpVolumeName)>('SetVolumeLabelW');

/// Retrieves the size, in bytes, of the specified resource.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/libloaderapi/nf-libloaderapi-sizeofresource>.
///
/// {@category kernel32}
int SizeofResource(int? hModule, int hResInfo) =>
    _SizeofResource(hModule ?? 0, hResInfo);

final _SizeofResource = _kernel32.lookupFunction<
    Uint32 Function(HMODULE hModule, HRSRC hResInfo),
    int Function(int hModule, int hResInfo)>('SizeofResource');

/// Suspends the execution of the current thread until the time-out interval
/// elapses.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/synchapi/nf-synchapi-sleep>.
///
/// {@category kernel32}
void Sleep(int dwMilliseconds) => _Sleep(dwMilliseconds);

final _Sleep = _kernel32.lookupFunction<Void Function(Uint32 dwMilliseconds),
    void Function(int dwMilliseconds)>('Sleep');

/// Suspends the current thread until the specified condition is met.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/synchapi/nf-synchapi-sleepex>.
///
/// {@category kernel32}
int SleepEx(int dwMilliseconds, int bAlertable) =>
    _SleepEx(dwMilliseconds, bAlertable);

final _SleepEx = _kernel32.lookupFunction<
    Uint32 Function(Uint32 dwMilliseconds, BOOL bAlertable),
    int Function(int dwMilliseconds, int bAlertable)>('SleepEx');

/// Converts a system time to file time format.
///
/// System time is based on Coordinated Universal Time (UTC).
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/timezoneapi/nf-timezoneapi-systemtimetofiletime>.
///
/// {@category kernel32}
int SystemTimeToFileTime(
        Pointer<SYSTEMTIME> lpSystemTime, Pointer<FILETIME> lpFileTime) =>
    _SystemTimeToFileTime(lpSystemTime, lpFileTime);

final _SystemTimeToFileTime = _kernel32.lookupFunction<
    BOOL Function(
        Pointer<SYSTEMTIME> lpSystemTime, Pointer<FILETIME> lpFileTime),
    int Function(Pointer<SYSTEMTIME> lpSystemTime,
        Pointer<FILETIME> lpFileTime)>('SystemTimeToFileTime');

/// Terminates all processes currently associated with the job.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/jobapi2/nf-jobapi2-terminatejobobject>.
///
/// {@category kernel32}
int TerminateJobObject(int hJob, int uExitCode) =>
    _TerminateJobObject(hJob, uExitCode);

final _TerminateJobObject = _kernel32.lookupFunction<
    BOOL Function(HANDLE hJob, Uint32 uExitCode),
    int Function(int hJob, int uExitCode)>('TerminateJobObject');

/// Terminates the specified process and all of its threads.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-terminateprocess>.
///
/// {@category kernel32}
int TerminateProcess(int hProcess, int uExitCode) =>
    _TerminateProcess(hProcess, uExitCode);

final _TerminateProcess = _kernel32.lookupFunction<
    BOOL Function(HANDLE hProcess, Uint32 uExitCode),
    int Function(int hProcess, int uExitCode)>('TerminateProcess');

/// Terminates a thread.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-terminatethread>.
///
/// {@category kernel32}
int TerminateThread(int hThread, int dwExitCode) =>
    _TerminateThread(hThread, dwExitCode);

final _TerminateThread = _kernel32.lookupFunction<
    BOOL Function(HANDLE hThread, Uint32 dwExitCode),
    int Function(int hThread, int dwExitCode)>('TerminateThread');

/// Combines the functions that write a message to and read a message from the
/// specified named pipe into a single operation.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/namedpipeapi/nf-namedpipeapi-transactnamedpipe>.
///
/// {@category kernel32}
int TransactNamedPipe(
        int hNamedPipe,
        Pointer? lpInBuffer,
        int nInBufferSize,
        Pointer? lpOutBuffer,
        int nOutBufferSize,
        Pointer<Uint32> lpBytesRead,
        Pointer<OVERLAPPED>? lpOverlapped) =>
    _TransactNamedPipe(
        hNamedPipe,
        lpInBuffer ?? nullptr,
        nInBufferSize,
        lpOutBuffer ?? nullptr,
        nOutBufferSize,
        lpBytesRead,
        lpOverlapped ?? nullptr);

final _TransactNamedPipe = _kernel32.lookupFunction<
    BOOL Function(
        HANDLE hNamedPipe,
        Pointer lpInBuffer,
        Uint32 nInBufferSize,
        Pointer lpOutBuffer,
        Uint32 nOutBufferSize,
        Pointer<Uint32> lpBytesRead,
        Pointer<OVERLAPPED> lpOverlapped),
    int Function(
        int hNamedPipe,
        Pointer lpInBuffer,
        int nInBufferSize,
        Pointer lpOutBuffer,
        int nOutBufferSize,
        Pointer<Uint32> lpBytesRead,
        Pointer<OVERLAPPED> lpOverlapped)>('TransactNamedPipe');

/// Transmits a specified character ahead of any pending data in the output
/// buffer of the specified communications device.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-transmitcommchar>.
///
/// {@category kernel32}
int TransmitCommChar(int hFile, int cChar) => _TransmitCommChar(hFile, cChar);

final _TransmitCommChar = _kernel32.lookupFunction<
    BOOL Function(HANDLE hFile, CHAR cChar),
    int Function(int hFile, int cChar)>('TransmitCommChar');

/// Unlocks a region in an open file.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-unlockfile>.
///
/// {@category kernel32}
int UnlockFile(int hFile, int dwFileOffsetLow, int dwFileOffsetHigh,
        int nNumberOfBytesToUnlockLow, int nNumberOfBytesToUnlockHigh) =>
    _UnlockFile(hFile, dwFileOffsetLow, dwFileOffsetHigh,
        nNumberOfBytesToUnlockLow, nNumberOfBytesToUnlockHigh);

final _UnlockFile = _kernel32.lookupFunction<
    BOOL Function(HANDLE hFile, Uint32 dwFileOffsetLow, Uint32 dwFileOffsetHigh,
        Uint32 nNumberOfBytesToUnlockLow, Uint32 nNumberOfBytesToUnlockHigh),
    int Function(
        int hFile,
        int dwFileOffsetLow,
        int dwFileOffsetHigh,
        int nNumberOfBytesToUnlockLow,
        int nNumberOfBytesToUnlockHigh)>('UnlockFile');

/// Unlocks a region in the specified file.
///
/// This function can operate either synchronously or asynchronously.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-unlockfileex>.
///
/// {@category kernel32}
int UnlockFileEx(int hFile, int nNumberOfBytesToUnlockLow,
        int nNumberOfBytesToUnlockHigh, Pointer<OVERLAPPED> lpOverlapped) =>
    _UnlockFileEx(hFile, 0, nNumberOfBytesToUnlockLow,
        nNumberOfBytesToUnlockHigh, lpOverlapped);

final _UnlockFileEx = _kernel32.lookupFunction<
    BOOL Function(
        HANDLE hFile,
        Uint32 dwReserved,
        Uint32 nNumberOfBytesToUnlockLow,
        Uint32 nNumberOfBytesToUnlockHigh,
        Pointer<OVERLAPPED> lpOverlapped),
    int Function(
        int hFile,
        int dwReserved,
        int nNumberOfBytesToUnlockLow,
        int nNumberOfBytesToUnlockHigh,
        Pointer<OVERLAPPED> lpOverlapped)>('UnlockFileEx');

/// Updates the specified attribute in a list of attributes for process and
/// thread creation.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-updateprocthreadattribute>.
///
/// {@category kernel32}
int UpdateProcThreadAttribute(
        LPPROC_THREAD_ATTRIBUTE_LIST lpAttributeList,
        int dwFlags,
        int attribute,
        Pointer? lpValue,
        int cbSize,
        Pointer? lpPreviousValue,
        Pointer<IntPtr>? lpReturnSize) =>
    _UpdateProcThreadAttribute(
        lpAttributeList,
        dwFlags,
        attribute,
        lpValue ?? nullptr,
        cbSize,
        lpPreviousValue ?? nullptr,
        lpReturnSize ?? nullptr);

final _UpdateProcThreadAttribute = _kernel32.lookupFunction<
    BOOL Function(
        LPPROC_THREAD_ATTRIBUTE_LIST lpAttributeList,
        Uint32 dwFlags,
        IntPtr attribute,
        Pointer lpValue,
        IntPtr cbSize,
        Pointer lpPreviousValue,
        Pointer<IntPtr> lpReturnSize),
    int Function(
        LPPROC_THREAD_ATTRIBUTE_LIST lpAttributeList,
        int dwFlags,
        int attribute,
        Pointer lpValue,
        int cbSize,
        Pointer lpPreviousValue,
        Pointer<IntPtr> lpReturnSize)>('UpdateProcThreadAttribute');

/// Adds, deletes, or replaces a resource in a portable executable (PE) file.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-updateresourcew>.
///
/// {@category kernel32}
int UpdateResource(int hUpdate, Pointer<Utf16> lpType, Pointer<Utf16> lpName,
        int wLanguage, Pointer? lpData, int cb) =>
    _UpdateResource(hUpdate, lpType, lpName, wLanguage, lpData ?? nullptr, cb);

final _UpdateResource = _kernel32.lookupFunction<
    BOOL Function(HANDLE hUpdate, Pointer<Utf16> lpType, Pointer<Utf16> lpName,
        Uint16 wLanguage, Pointer lpData, Uint32 cb),
    int Function(int hUpdate, Pointer<Utf16> lpType, Pointer<Utf16> lpName,
        int wLanguage, Pointer lpData, int cb)>('UpdateResourceW');

/// Compares a set of operating system version requirements to the corresponding
/// values for the currently running version of the system.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-verifyversioninfow>.
///
/// {@category kernel32}
int VerifyVersionInfo(Pointer<OSVERSIONINFOEX> lpVersionInformation,
        int dwTypeMask, int dwlConditionMask) =>
    _VerifyVersionInfo(lpVersionInformation, dwTypeMask, dwlConditionMask);

final _VerifyVersionInfo = _kernel32.lookupFunction<
    BOOL Function(Pointer<OSVERSIONINFOEX> lpVersionInformation,
        Uint32 dwTypeMask, Uint64 dwlConditionMask),
    int Function(Pointer<OSVERSIONINFOEX> lpVersionInformation, int dwTypeMask,
        int dwlConditionMask)>('VerifyVersionInfoW');

/// Retrieves a description string for the language associated with a specified
/// binary Microsoft language identifier.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winver/nf-winver-verlanguagenamew>.
///
/// {@category kernel32}
int VerLanguageName(int wLang, Pointer<Utf16> szLang, int cchLang) =>
    _VerLanguageName(wLang, szLang, cchLang);

final _VerLanguageName = _kernel32.lookupFunction<
    Uint32 Function(Uint32 wLang, Pointer<Utf16> szLang, Uint32 cchLang),
    int Function(
        int wLang, Pointer<Utf16> szLang, int cchLang)>('VerLanguageNameW');

/// Sets the bits of a 64-bit value to indicate the comparison operator to use
/// for a specified operating system version attribute.
///
/// This function is used to build the dwlConditionMask parameter of the
/// VerifyVersionInfo function.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winnt/nf-winnt-versetconditionmask>.
///
/// {@category kernel32}
int VerSetConditionMask(int conditionMask, int typeMask, int condition) =>
    _VerSetConditionMask(conditionMask, typeMask, condition);

final _VerSetConditionMask = _kernel32.lookupFunction<
    Uint64 Function(Uint64 conditionMask, Uint32 typeMask, Uint8 condition),
    int Function(
        int conditionMask, int typeMask, int condition)>('VerSetConditionMask');

/// Reserves, commits, or changes the state of a region of pages in the virtual
/// address space of the calling process.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/memoryapi/nf-memoryapi-virtualalloc>.
///
/// {@category kernel32}
Pointer VirtualAlloc(
        Pointer? lpAddress, int dwSize, int flAllocationType, int flProtect) =>
    _VirtualAlloc(lpAddress ?? nullptr, dwSize, flAllocationType, flProtect);

final _VirtualAlloc = _kernel32.lookupFunction<
    Pointer Function(Pointer lpAddress, IntPtr dwSize, Uint32 flAllocationType,
        Uint32 flProtect),
    Pointer Function(Pointer lpAddress, int dwSize, int flAllocationType,
        int flProtect)>('VirtualAlloc');

/// Reserves, commits, or changes the state of a region of memory within the
/// virtual address space of a specified process.
///
/// The function initializes the memory it allocates to zero.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/memoryapi/nf-memoryapi-virtualallocex>.
///
/// {@category kernel32}
Pointer VirtualAllocEx(int hProcess, Pointer? lpAddress, int dwSize,
        int flAllocationType, int flProtect) =>
    _VirtualAllocEx(
        hProcess, lpAddress ?? nullptr, dwSize, flAllocationType, flProtect);

final _VirtualAllocEx = _kernel32.lookupFunction<
    Pointer Function(HANDLE hProcess, Pointer lpAddress, IntPtr dwSize,
        Uint32 flAllocationType, Uint32 flProtect),
    Pointer Function(int hProcess, Pointer lpAddress, int dwSize,
        int flAllocationType, int flProtect)>('VirtualAllocEx');

/// Releases, decommits, or releases and decommits a region of pages within the
/// virtual address space of the calling process.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/memoryapi/nf-memoryapi-virtualfree>.
///
/// {@category kernel32}
int VirtualFree(Pointer lpAddress, int dwSize, int dwFreeType) =>
    _VirtualFree(lpAddress, dwSize, dwFreeType);

final _VirtualFree = _kernel32.lookupFunction<
    BOOL Function(Pointer lpAddress, IntPtr dwSize, Uint32 dwFreeType),
    int Function(Pointer lpAddress, int dwSize, int dwFreeType)>('VirtualFree');

/// Releases, decommits, or releases and decommits a region of memory within the
/// virtual address space of a specified process.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/memoryapi/nf-memoryapi-virtualfreeex>.
///
/// {@category kernel32}
int VirtualFreeEx(
        int hProcess, Pointer lpAddress, int dwSize, int dwFreeType) =>
    _VirtualFreeEx(hProcess, lpAddress, dwSize, dwFreeType);

final _VirtualFreeEx = _kernel32.lookupFunction<
    BOOL Function(
        HANDLE hProcess, Pointer lpAddress, IntPtr dwSize, Uint32 dwFreeType),
    int Function(int hProcess, Pointer lpAddress, int dwSize,
        int dwFreeType)>('VirtualFreeEx');

/// Locks the specified region of the process's virtual address space into
/// physical memory, ensuring that subsequent access to the region will not
/// incur a page fault.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/memoryapi/nf-memoryapi-virtuallock>.
///
/// {@category kernel32}
int VirtualLock(Pointer lpAddress, int dwSize) =>
    _VirtualLock(lpAddress, dwSize);

final _VirtualLock = _kernel32.lookupFunction<
    BOOL Function(Pointer lpAddress, IntPtr dwSize),
    int Function(Pointer lpAddress, int dwSize)>('VirtualLock');

/// Retrieves information about a range of pages in the virtual address space of
/// the calling process.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/memoryapi/nf-memoryapi-virtualquery>.
///
/// {@category kernel32}
int VirtualQuery(Pointer? lpAddress, Pointer<MEMORY_BASIC_INFORMATION> lpBuffer,
        int dwLength) =>
    _VirtualQuery(lpAddress ?? nullptr, lpBuffer, dwLength);

final _VirtualQuery = _kernel32.lookupFunction<
    IntPtr Function(Pointer lpAddress,
        Pointer<MEMORY_BASIC_INFORMATION> lpBuffer, IntPtr dwLength),
    int Function(Pointer lpAddress, Pointer<MEMORY_BASIC_INFORMATION> lpBuffer,
        int dwLength)>('VirtualQuery');

/// Retrieves information about a range of pages within the virtual address
/// space of a specified process.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/memoryapi/nf-memoryapi-virtualqueryex>.
///
/// {@category kernel32}
int VirtualQueryEx(int hProcess, Pointer? lpAddress,
        Pointer<MEMORY_BASIC_INFORMATION> lpBuffer, int dwLength) =>
    _VirtualQueryEx(hProcess, lpAddress ?? nullptr, lpBuffer, dwLength);

final _VirtualQueryEx = _kernel32.lookupFunction<
    IntPtr Function(HANDLE hProcess, Pointer lpAddress,
        Pointer<MEMORY_BASIC_INFORMATION> lpBuffer, IntPtr dwLength),
    int Function(
        int hProcess,
        Pointer lpAddress,
        Pointer<MEMORY_BASIC_INFORMATION> lpBuffer,
        int dwLength)>('VirtualQueryEx');

/// Unlocks a specified range of pages in the virtual address space of a
/// process, enabling the system to swap the pages out to the paging file if
/// necessary.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/memoryapi/nf-memoryapi-virtualunlock>.
///
/// {@category kernel32}
int VirtualUnlock(Pointer lpAddress, int dwSize) =>
    _VirtualUnlock(lpAddress, dwSize);

final _VirtualUnlock = _kernel32.lookupFunction<
    BOOL Function(Pointer lpAddress, IntPtr dwSize),
    int Function(Pointer lpAddress, int dwSize)>('VirtualUnlock');

/// Waits for an event to occur for a specified communications device.
///
/// The set of events that are monitored by this function is contained in the
/// event mask associated with the device handle.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-waitcommevent>.
///
/// {@category kernel32}
int WaitCommEvent(int hFile, Pointer<Uint32> lpEvtMask,
        Pointer<OVERLAPPED>? lpOverlapped) =>
    _WaitCommEvent(hFile, lpEvtMask, lpOverlapped ?? nullptr);

final _WaitCommEvent = _kernel32.lookupFunction<
    BOOL Function(HANDLE hFile, Pointer<Uint32> lpEvtMask,
        Pointer<OVERLAPPED> lpOverlapped),
    int Function(int hFile, Pointer<Uint32> lpEvtMask,
        Pointer<OVERLAPPED> lpOverlapped)>('WaitCommEvent');

/// Waits until the specified object is in the signaled state or the time-out
/// interval elapses.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/synchapi/nf-synchapi-waitforsingleobject>.
///
/// {@category kernel32}
int WaitForSingleObject(int hHandle, int dwMilliseconds) =>
    _WaitForSingleObject(hHandle, dwMilliseconds);

final _WaitForSingleObject = _kernel32.lookupFunction<
    Uint32 Function(HANDLE hHandle, Uint32 dwMilliseconds),
    int Function(int hHandle, int dwMilliseconds)>('WaitForSingleObject');

/// Maps a UTF-16 (wide character) string to a new character string.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/stringapiset/nf-stringapiset-widechartomultibyte>.
///
/// {@category kernel32}
int WideCharToMultiByte(
        int codePage,
        int dwFlags,
        Pointer<Utf16> lpWideCharStr,
        int cchWideChar,
        Pointer<Utf8>? lpMultiByteStr,
        int cbMultiByte,
        Pointer<Utf8>? lpDefaultChar,
        Pointer<BOOL>? lpUsedDefaultChar) =>
    _WideCharToMultiByte(
        codePage,
        dwFlags,
        lpWideCharStr,
        cchWideChar,
        lpMultiByteStr ?? nullptr,
        cbMultiByte,
        lpDefaultChar ?? nullptr,
        lpUsedDefaultChar ?? nullptr);

final _WideCharToMultiByte = _kernel32.lookupFunction<
    Int32 Function(
        Uint32 codePage,
        Uint32 dwFlags,
        Pointer<Utf16> lpWideCharStr,
        Int32 cchWideChar,
        Pointer<Utf8> lpMultiByteStr,
        Int32 cbMultiByte,
        Pointer<Utf8> lpDefaultChar,
        Pointer<BOOL> lpUsedDefaultChar),
    int Function(
        int codePage,
        int dwFlags,
        Pointer<Utf16> lpWideCharStr,
        int cchWideChar,
        Pointer<Utf8> lpMultiByteStr,
        int cbMultiByte,
        Pointer<Utf8> lpDefaultChar,
        Pointer<BOOL> lpUsedDefaultChar)>('WideCharToMultiByte');

/// Suspends the specified WOW64 thread.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-wow64suspendthread>.
///
/// {@category kernel32}
int Wow64SuspendThread(int hThread) => _Wow64SuspendThread(hThread);

final _Wow64SuspendThread = _kernel32.lookupFunction<
    Uint32 Function(HANDLE hThread),
    int Function(int hThread)>('Wow64SuspendThread');

/// Writes a character string to a console screen buffer beginning at the
/// current cursor location.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/console/writeconsole>.
///
/// {@category kernel32}
int WriteConsole(int hConsoleOutput, Pointer lpBuffer,
        int nNumberOfCharsToWrite, Pointer<Uint32>? lpNumberOfCharsWritten) =>
    _WriteConsole(hConsoleOutput, lpBuffer, nNumberOfCharsToWrite,
        lpNumberOfCharsWritten ?? nullptr, nullptr);

final _WriteConsole = _kernel32.lookupFunction<
    BOOL Function(
        HANDLE hConsoleOutput,
        Pointer lpBuffer,
        Uint32 nNumberOfCharsToWrite,
        Pointer<Uint32> lpNumberOfCharsWritten,
        Pointer lpReserved),
    int Function(
        int hConsoleOutput,
        Pointer lpBuffer,
        int nNumberOfCharsToWrite,
        Pointer<Uint32> lpNumberOfCharsWritten,
        Pointer lpReserved)>('WriteConsoleW');

/// Writes data to the specified file or input/output (I/O) device.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-writefile>.
///
/// {@category kernel32}
int WriteFile(
        int hFile,
        Pointer<Uint8>? lpBuffer,
        int nNumberOfBytesToWrite,
        Pointer<Uint32>? lpNumberOfBytesWritten,
        Pointer<OVERLAPPED>? lpOverlapped) =>
    _WriteFile(hFile, lpBuffer ?? nullptr, nNumberOfBytesToWrite,
        lpNumberOfBytesWritten ?? nullptr, lpOverlapped ?? nullptr);

final _WriteFile = _kernel32.lookupFunction<
    BOOL Function(
        HANDLE hFile,
        Pointer<Uint8> lpBuffer,
        Uint32 nNumberOfBytesToWrite,
        Pointer<Uint32> lpNumberOfBytesWritten,
        Pointer<OVERLAPPED> lpOverlapped),
    int Function(
        int hFile,
        Pointer<Uint8> lpBuffer,
        int nNumberOfBytesToWrite,
        Pointer<Uint32> lpNumberOfBytesWritten,
        Pointer<OVERLAPPED> lpOverlapped)>('WriteFile');

/// Writes data to the specified file or input/output (I/O) device.
///
/// It reports its completion status asynchronously, calling the specified
/// completion routine when writing is completed or canceled and the calling
/// thread is in an alertable wait state.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-writefileex>.
///
/// {@category kernel32}
int WriteFileEx(
        int hFile,
        Pointer<Uint8>? lpBuffer,
        int nNumberOfBytesToWrite,
        Pointer<OVERLAPPED> lpOverlapped,
        Pointer<NativeFunction<LPOVERLAPPED_COMPLETION_ROUTINE>>
            lpCompletionRoutine) =>
    _WriteFileEx(hFile, lpBuffer ?? nullptr, nNumberOfBytesToWrite,
        lpOverlapped, lpCompletionRoutine);

final _WriteFileEx = _kernel32.lookupFunction<
    BOOL Function(
        HANDLE hFile,
        Pointer<Uint8> lpBuffer,
        Uint32 nNumberOfBytesToWrite,
        Pointer<OVERLAPPED> lpOverlapped,
        Pointer<NativeFunction<LPOVERLAPPED_COMPLETION_ROUTINE>>
            lpCompletionRoutine),
    int Function(
        int hFile,
        Pointer<Uint8> lpBuffer,
        int nNumberOfBytesToWrite,
        Pointer<OVERLAPPED> lpOverlapped,
        Pointer<NativeFunction<LPOVERLAPPED_COMPLETION_ROUTINE>>
            lpCompletionRoutine)>('WriteFileEx');

/// Retrieves data from an array of buffers and writes the data to a file.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/fileapi/nf-fileapi-writefilegather>.
///
/// {@category kernel32}
int WriteFileGather(int hFile, Pointer<FILE_SEGMENT_ELEMENT> aSegmentArray,
        int nNumberOfBytesToWrite, Pointer<OVERLAPPED> lpOverlapped) =>
    _WriteFileGather(
        hFile, aSegmentArray, nNumberOfBytesToWrite, nullptr, lpOverlapped);

final _WriteFileGather = _kernel32.lookupFunction<
    BOOL Function(
        HANDLE hFile,
        Pointer<FILE_SEGMENT_ELEMENT> aSegmentArray,
        Uint32 nNumberOfBytesToWrite,
        Pointer<Uint32> lpReserved,
        Pointer<OVERLAPPED> lpOverlapped),
    int Function(
        int hFile,
        Pointer<FILE_SEGMENT_ELEMENT> aSegmentArray,
        int nNumberOfBytesToWrite,
        Pointer<Uint32> lpReserved,
        Pointer<OVERLAPPED> lpOverlapped)>('WriteFileGather');

/// Writes data to an area of memory in a specified process.
///
/// The entire area to be written to must be accessible or the operation fails.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/memoryapi/nf-memoryapi-writeprocessmemory>.
///
/// {@category kernel32}
int WriteProcessMemory(int hProcess, Pointer lpBaseAddress, Pointer lpBuffer,
        int nSize, Pointer<IntPtr>? lpNumberOfBytesWritten) =>
    _WriteProcessMemory(hProcess, lpBaseAddress, lpBuffer, nSize,
        lpNumberOfBytesWritten ?? nullptr);

final _WriteProcessMemory = _kernel32.lookupFunction<
    BOOL Function(HANDLE hProcess, Pointer lpBaseAddress, Pointer lpBuffer,
        IntPtr nSize, Pointer<IntPtr> lpNumberOfBytesWritten),
    int Function(
        int hProcess,
        Pointer lpBaseAddress,
        Pointer lpBuffer,
        int nSize,
        Pointer<IntPtr> lpNumberOfBytesWritten)>('WriteProcessMemory');