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

final _winspool = DynamicLibrary.open('winspool.drv');

/// Deletes a printers spool file if the printer is configured for spooling.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/printdocs/abortprinter>.
///
/// {@category winspool}
int AbortPrinter(int hPrinter) => _AbortPrinter(hPrinter);

final _AbortPrinter = _winspool.lookupFunction<BOOL Function(HANDLE hPrinter),
    int Function(int hPrinter)>('AbortPrinter');

/// Adds a form to the list of available forms that can be selected for the
/// specified printer.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/printdocs/addform>.
///
/// {@category winspool}
int AddForm(int hPrinter, int level, Pointer<Uint8> pForm) =>
    _AddForm(hPrinter, level, pForm);

final _AddForm = _winspool.lookupFunction<
    BOOL Function(HANDLE hPrinter, Uint32 level, Pointer<Uint8> pForm),
    int Function(int hPrinter, int level, Pointer<Uint8> pForm)>('AddFormW');

/// Adds a print job to the list of print jobs that can be scheduled by the
/// print spooler.
///
/// The function retrieves the name of the file you can use to store the job.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/printdocs/addjob>.
///
/// {@category winspool}
int AddJob(int hPrinter, int level, Pointer<Uint8>? pData, int cbBuf,
        Pointer<Uint32> pcbNeeded) =>
    _AddJob(hPrinter, level, pData ?? nullptr, cbBuf, pcbNeeded);

final _AddJob = _winspool.lookupFunction<
    BOOL Function(HANDLE hPrinter, Uint32 level, Pointer<Uint8> pData,
        Uint32 cbBuf, Pointer<Uint32> pcbNeeded),
    int Function(int hPrinter, int level, Pointer<Uint8> pData, int cbBuf,
        Pointer<Uint32> pcbNeeded)>('AddJobW');

/// Adds a printer to the list of supported printers for a specified server.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/printdocs/addprinter>.
///
/// {@category winspool}
int AddPrinter(Pointer<Utf16>? pName, int level, Pointer<Uint8> pPrinter) =>
    _AddPrinter(pName ?? nullptr, level, pPrinter);

final _AddPrinter = _winspool.lookupFunction<
    HANDLE Function(
        Pointer<Utf16> pName, Uint32 level, Pointer<Uint8> pPrinter),
    int Function(Pointer<Utf16> pName, int level,
        Pointer<Uint8> pPrinter)>('AddPrinterW');

/// Adds a connection to the specified printer for the current user.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/printdocs/addprinterconnection>.
///
/// {@category winspool}
int AddPrinterConnection(Pointer<Utf16> pName) => _AddPrinterConnection(pName);

final _AddPrinterConnection = _winspool.lookupFunction<
    BOOL Function(Pointer<Utf16> pName),
    int Function(Pointer<Utf16> pName)>('AddPrinterConnectionW');

/// Adds a connection to the specified printer for the current user and
/// specifies connection details.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/printdocs/addprinterconnection2>.
///
/// {@category winspool}
int AddPrinterConnection2(int? hWnd, Pointer<Utf16> pszName, int dwLevel,
        Pointer pConnectionInfo) =>
    _AddPrinterConnection2(hWnd ?? 0, pszName, dwLevel, pConnectionInfo);

final _AddPrinterConnection2 = _winspool.lookupFunction<
    BOOL Function(HWND hWnd, Pointer<Utf16> pszName, Uint32 dwLevel,
        Pointer pConnectionInfo),
    int Function(int hWnd, Pointer<Utf16> pszName, int dwLevel,
        Pointer pConnectionInfo)>('AddPrinterConnection2W');

/// Displays a printer-configuration dialog box for the specified printer,
/// allowing the user to configure that printer.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/printdocs/advanceddocumentproperties>.
///
/// {@category winspool}
int AdvancedDocumentProperties(
        int hWnd,
        int hPrinter,
        Pointer<Utf16> pDeviceName,
        Pointer<DEVMODE>? pDevModeOutput,
        Pointer<DEVMODE>? pDevModeInput) =>
    _AdvancedDocumentProperties(hWnd, hPrinter, pDeviceName,
        pDevModeOutput ?? nullptr, pDevModeInput ?? nullptr);

final _AdvancedDocumentProperties = _winspool.lookupFunction<
    Int32 Function(HWND hWnd, HANDLE hPrinter, Pointer<Utf16> pDeviceName,
        Pointer<DEVMODE> pDevModeOutput, Pointer<DEVMODE> pDevModeInput),
    int Function(
        int hWnd,
        int hPrinter,
        Pointer<Utf16> pDeviceName,
        Pointer<DEVMODE> pDevModeOutput,
        Pointer<DEVMODE> pDevModeInput)>('AdvancedDocumentPropertiesW');

/// Closes the specified printer object.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/printdocs/closeprinter>.
///
/// {@category winspool}
int ClosePrinter(int hPrinter) => _ClosePrinter(hPrinter);

final _ClosePrinter = _winspool.lookupFunction<BOOL Function(HANDLE hPrinter),
    int Function(int hPrinter)>('ClosePrinter');

/// Closes a handle to a spool file associated with the print job currently
/// submitted by the application.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/printdocs/closespoolfilehandle>.
///
/// {@category winspool}
int CloseSpoolFileHandle(int hPrinter, int hSpoolFile) =>
    _CloseSpoolFileHandle(hPrinter, hSpoolFile);

final _CloseSpoolFileHandle = _winspool.lookupFunction<
    BOOL Function(HANDLE hPrinter, HANDLE hSpoolFile),
    int Function(int hPrinter, int hSpoolFile)>('CloseSpoolFileHandle');

/// Notifies the print spooler that a specified amount of data has been written
/// to a specified spool file and is ready to be rendered.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/printdocs/commitspooldata>.
///
/// {@category winspool}
int CommitSpoolData(int hPrinter, int hSpoolFile, int cbCommit) =>
    _CommitSpoolData(hPrinter, hSpoolFile, cbCommit);

final _CommitSpoolData = _winspool.lookupFunction<
    HANDLE Function(HANDLE hPrinter, HANDLE hSpoolFile, Uint32 cbCommit),
    int Function(
        int hPrinter, int hSpoolFile, int cbCommit)>('CommitSpoolData');

/// Displays the port-configuration dialog box for a port on the specified
/// server.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/printdocs/configureport>.
///
/// {@category winspool}
int ConfigurePort(Pointer<Utf16>? pName, int hWnd, Pointer<Utf16> pPortName) =>
    _ConfigurePort(pName ?? nullptr, hWnd, pPortName);

final _ConfigurePort = _winspool.lookupFunction<
    BOOL Function(Pointer<Utf16> pName, HWND hWnd, Pointer<Utf16> pPortName),
    int Function(Pointer<Utf16> pName, int hWnd,
        Pointer<Utf16> pPortName)>('ConfigurePortW');

/// Displays a dialog box that lets users browse and connect to printers on a
/// network.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/printdocs/connecttoprinterdlg>.
///
/// {@category winspool}
int ConnectToPrinterDlg(int hwnd, int flags) =>
    _ConnectToPrinterDlg(hwnd, flags);

final _ConnectToPrinterDlg = _winspool.lookupFunction<
    HANDLE Function(HWND hwnd, Uint32 flags),
    int Function(int hwnd, int flags)>('ConnectToPrinterDlg');

/// Removes a form name from the list of supported forms.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/printdocs/deleteform>.
///
/// {@category winspool}
int DeleteForm(int hPrinter, Pointer<Utf16> pFormName) =>
    _DeleteForm(hPrinter, pFormName);

final _DeleteForm = _winspool.lookupFunction<
    BOOL Function(HANDLE hPrinter, Pointer<Utf16> pFormName),
    int Function(int hPrinter, Pointer<Utf16> pFormName)>('DeleteFormW');

/// Deletes the specified printer object.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/printdocs/deleteprinter>.
///
/// {@category winspool}
int DeletePrinter(int hPrinter) => _DeletePrinter(hPrinter);

final _DeletePrinter = _winspool.lookupFunction<BOOL Function(HANDLE hPrinter),
    int Function(int hPrinter)>('DeletePrinter');

/// Deletes a connection to a printer that was established by a call to
/// AddPrinterConnection or ConnectToPrinterDlg.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/printdocs/deleteprinterconnection>.
///
/// {@category winspool}
int DeletePrinterConnection(Pointer<Utf16> pName) =>
    _DeletePrinterConnection(pName);

final _DeletePrinterConnection = _winspool.lookupFunction<
    BOOL Function(Pointer<Utf16> pName),
    int Function(Pointer<Utf16> pName)>('DeletePrinterConnectionW');

/// Deletes specified configuration data for a printer.
///
/// A printers configuration data consists of a set of named and typed values.
/// The DeletePrinterData function deletes one of these values, specified by its
/// value name.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/printdocs/deleteprinterdata>.
///
/// {@category winspool}
int DeletePrinterData(int hPrinter, Pointer<Utf16> pValueName) =>
    _DeletePrinterData(hPrinter, pValueName);

final _DeletePrinterData = _winspool.lookupFunction<
    Uint32 Function(HANDLE hPrinter, Pointer<Utf16> pValueName),
    int Function(
        int hPrinter, Pointer<Utf16> pValueName)>('DeletePrinterDataW');

/// Deletes a specified value from the configuration data for a printer.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/printdocs/deleteprinterdataex>.
///
/// {@category winspool}
int DeletePrinterDataEx(
        int hPrinter, Pointer<Utf16> pKeyName, Pointer<Utf16> pValueName) =>
    _DeletePrinterDataEx(hPrinter, pKeyName, pValueName);

final _DeletePrinterDataEx = _winspool.lookupFunction<
    Uint32 Function(
        HANDLE hPrinter, Pointer<Utf16> pKeyName, Pointer<Utf16> pValueName),
    int Function(int hPrinter, Pointer<Utf16> pKeyName,
        Pointer<Utf16> pValueName)>('DeletePrinterDataExW');

/// Deletes a specified key and all its subkeys for a specified printer.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/printdocs/deleteprinterkey>.
///
/// {@category winspool}
int DeletePrinterKey(int hPrinter, Pointer<Utf16> pKeyName) =>
    _DeletePrinterKey(hPrinter, pKeyName);

final _DeletePrinterKey = _winspool.lookupFunction<
    Uint32 Function(HANDLE hPrinter, Pointer<Utf16> pKeyName),
    int Function(int hPrinter, Pointer<Utf16> pKeyName)>('DeletePrinterKeyW');

/// Retrieves or modifies printer initialization information or displays a
/// printer-configuration property sheet for the specified printer.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/printdocs/documentproperties>.
///
/// {@category winspool}
int DocumentProperties(
        int? hWnd,
        int hPrinter,
        Pointer<Utf16> pDeviceName,
        Pointer<DEVMODE>? pDevModeOutput,
        Pointer<DEVMODE>? pDevModeInput,
        int fMode) =>
    _DocumentProperties(hWnd ?? 0, hPrinter, pDeviceName,
        pDevModeOutput ?? nullptr, pDevModeInput ?? nullptr, fMode);

final _DocumentProperties = _winspool.lookupFunction<
    Int32 Function(
        HWND hWnd,
        HANDLE hPrinter,
        Pointer<Utf16> pDeviceName,
        Pointer<DEVMODE> pDevModeOutput,
        Pointer<DEVMODE> pDevModeInput,
        Uint32 fMode),
    int Function(
        int hWnd,
        int hPrinter,
        Pointer<Utf16> pDeviceName,
        Pointer<DEVMODE> pDevModeOutput,
        Pointer<DEVMODE> pDevModeInput,
        int fMode)>('DocumentPropertiesW');

/// Ends a print job for the specified printer.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/printdocs/enddocprinter>.
///
/// {@category winspool}
int EndDocPrinter(int hPrinter) => _EndDocPrinter(hPrinter);

final _EndDocPrinter = _winspool.lookupFunction<BOOL Function(HANDLE hPrinter),
    int Function(int hPrinter)>('EndDocPrinter');

/// Notifies the print spooler that the application is at the end of a page in a
/// print job.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/printdocs/endpageprinter>.
///
/// {@category winspool}
int EndPagePrinter(int hPrinter) => _EndPagePrinter(hPrinter);

final _EndPagePrinter = _winspool.lookupFunction<BOOL Function(HANDLE hPrinter),
    int Function(int hPrinter)>('EndPagePrinter');

/// Enumerates the forms supported by the specified printer.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/printdocs/enumforms>.
///
/// {@category winspool}
int EnumForms(int hPrinter, int level, Pointer<Uint8>? pForm, int cbBuf,
        Pointer<Uint32> pcbNeeded, Pointer<Uint32> pcReturned) =>
    _EnumForms(hPrinter, level, pForm ?? nullptr, cbBuf, pcbNeeded, pcReturned);

final _EnumForms = _winspool.lookupFunction<
    BOOL Function(HANDLE hPrinter, Uint32 level, Pointer<Uint8> pForm,
        Uint32 cbBuf, Pointer<Uint32> pcbNeeded, Pointer<Uint32> pcReturned),
    int Function(int hPrinter, int level, Pointer<Uint8> pForm, int cbBuf,
        Pointer<Uint32> pcbNeeded, Pointer<Uint32> pcReturned)>('EnumFormsW');

/// Retrieves information about a specified set of print jobs for a specified
/// printer.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/printdocs/enumjobs>.
///
/// {@category winspool}
int EnumJobs(
        int hPrinter,
        int firstJob,
        int noJobs,
        int level,
        Pointer<Uint8>? pJob,
        int cbBuf,
        Pointer<Uint32> pcbNeeded,
        Pointer<Uint32> pcReturned) =>
    _EnumJobs(hPrinter, firstJob, noJobs, level, pJob ?? nullptr, cbBuf,
        pcbNeeded, pcReturned);

final _EnumJobs = _winspool.lookupFunction<
    BOOL Function(
        HANDLE hPrinter,
        Uint32 firstJob,
        Uint32 noJobs,
        Uint32 level,
        Pointer<Uint8> pJob,
        Uint32 cbBuf,
        Pointer<Uint32> pcbNeeded,
        Pointer<Uint32> pcReturned),
    int Function(
        int hPrinter,
        int firstJob,
        int noJobs,
        int level,
        Pointer<Uint8> pJob,
        int cbBuf,
        Pointer<Uint32> pcbNeeded,
        Pointer<Uint32> pcReturned)>('EnumJobsW');

/// Enumerates configuration data for a specified printer.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/printdocs/enumprinterdata>.
///
/// {@category winspool}
int EnumPrinterData(
        int hPrinter,
        int dwIndex,
        Pointer<Utf16> pValueName,
        int cbValueName,
        Pointer<Uint32> pcbValueName,
        Pointer<Uint32>? pType,
        Pointer<Uint8>? pData,
        int cbData,
        Pointer<Uint32>? pcbData) =>
    _EnumPrinterData(hPrinter, dwIndex, pValueName, cbValueName, pcbValueName,
        pType ?? nullptr, pData ?? nullptr, cbData, pcbData ?? nullptr);

final _EnumPrinterData = _winspool.lookupFunction<
    Uint32 Function(
        HANDLE hPrinter,
        Uint32 dwIndex,
        Pointer<Utf16> pValueName,
        Uint32 cbValueName,
        Pointer<Uint32> pcbValueName,
        Pointer<Uint32> pType,
        Pointer<Uint8> pData,
        Uint32 cbData,
        Pointer<Uint32> pcbData),
    int Function(
        int hPrinter,
        int dwIndex,
        Pointer<Utf16> pValueName,
        int cbValueName,
        Pointer<Uint32> pcbValueName,
        Pointer<Uint32> pType,
        Pointer<Uint8> pData,
        int cbData,
        Pointer<Uint32> pcbData)>('EnumPrinterDataW');

/// Enumerates all value names and data for a specified printer and key.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/printdocs/enumprinterdataex>.
///
/// {@category winspool}
int EnumPrinterDataEx(
        int hPrinter,
        Pointer<Utf16> pKeyName,
        Pointer<Uint8>? pEnumValues,
        int cbEnumValues,
        Pointer<Uint32> pcbEnumValues,
        Pointer<Uint32> pnEnumValues) =>
    _EnumPrinterDataEx(hPrinter, pKeyName, pEnumValues ?? nullptr, cbEnumValues,
        pcbEnumValues, pnEnumValues);

final _EnumPrinterDataEx = _winspool.lookupFunction<
    Uint32 Function(
        HANDLE hPrinter,
        Pointer<Utf16> pKeyName,
        Pointer<Uint8> pEnumValues,
        Uint32 cbEnumValues,
        Pointer<Uint32> pcbEnumValues,
        Pointer<Uint32> pnEnumValues),
    int Function(
        int hPrinter,
        Pointer<Utf16> pKeyName,
        Pointer<Uint8> pEnumValues,
        int cbEnumValues,
        Pointer<Uint32> pcbEnumValues,
        Pointer<Uint32> pnEnumValues)>('EnumPrinterDataExW');

/// Enumerates the subkeys of a specified key for a specified printer.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/printdocs/enumprinterkey>.
///
/// {@category winspool}
int EnumPrinterKey(int hPrinter, Pointer<Utf16> pKeyName,
        Pointer<Utf16>? pSubkey, int cbSubkey, Pointer<Uint32> pcbSubkey) =>
    _EnumPrinterKey(
        hPrinter, pKeyName, pSubkey ?? nullptr, cbSubkey, pcbSubkey);

final _EnumPrinterKey = _winspool.lookupFunction<
    Uint32 Function(HANDLE hPrinter, Pointer<Utf16> pKeyName,
        Pointer<Utf16> pSubkey, Uint32 cbSubkey, Pointer<Uint32> pcbSubkey),
    int Function(int hPrinter, Pointer<Utf16> pKeyName, Pointer<Utf16> pSubkey,
        int cbSubkey, Pointer<Uint32> pcbSubkey)>('EnumPrinterKeyW');

/// Enumerates available printers, print servers, domains, or print providers.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/printdocs/enumprinters>.
///
/// {@category winspool}
int EnumPrinters(
        int flags,
        Pointer<Utf16>? name,
        int level,
        Pointer<Uint8>? pPrinterEnum,
        int cbBuf,
        Pointer<Uint32> pcbNeeded,
        Pointer<Uint32> pcReturned) =>
    _EnumPrinters(flags, name ?? nullptr, level, pPrinterEnum ?? nullptr, cbBuf,
        pcbNeeded, pcReturned);

final _EnumPrinters = _winspool.lookupFunction<
    BOOL Function(
        Uint32 flags,
        Pointer<Utf16> name,
        Uint32 level,
        Pointer<Uint8> pPrinterEnum,
        Uint32 cbBuf,
        Pointer<Uint32> pcbNeeded,
        Pointer<Uint32> pcReturned),
    int Function(
        int flags,
        Pointer<Utf16> name,
        int level,
        Pointer<Uint8> pPrinterEnum,
        int cbBuf,
        Pointer<Uint32> pcbNeeded,
        Pointer<Uint32> pcReturned)>('EnumPrintersW');

/// Closes a change notification object created by calling the
/// FindFirstPrinterChangeNotification function.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/printdocs/findcloseprinterchangenotification>.
///
/// {@category winspool}
int FindClosePrinterChangeNotification(int hChange) =>
    _FindClosePrinterChangeNotification(hChange);

final _FindClosePrinterChangeNotification = _winspool.lookupFunction<
    BOOL Function(HANDLE hChange),
    int Function(int hChange)>('FindClosePrinterChangeNotification');

/// Creates a change notification object and returns a handle to the object.
///
/// You can then use this handle in a call to one of the wait functions to
/// monitor changes to the printer or print server.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/printdocs/findfirstprinterchangenotification>.
///
/// {@category winspool}
int FindFirstPrinterChangeNotification(int hPrinter, int fdwFilter,
        int fdwOptions, Pointer? pPrinterNotifyOptions) =>
    _FindFirstPrinterChangeNotification(
        hPrinter, fdwFilter, fdwOptions, pPrinterNotifyOptions ?? nullptr);

final _FindFirstPrinterChangeNotification = _winspool.lookupFunction<
    HANDLE Function(HANDLE hPrinter, Uint32 fdwFilter, Uint32 fdwOptions,
        Pointer pPrinterNotifyOptions),
    int Function(int hPrinter, int fdwFilter, int fdwOptions,
        Pointer pPrinterNotifyOptions)>('FindFirstPrinterChangeNotification');

/// Retrieves information about the most recent change notification for a change
/// notification object associated with a printer or print server.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/printdocs/findnextprinterchangenotification>.
///
/// {@category winspool}
int FindNextPrinterChangeNotification(int hChange, Pointer<Uint32>? pdwChange,
        Pointer<Pointer>? ppPrinterNotifyInfo) =>
    _FindNextPrinterChangeNotification(
        hChange, pdwChange ?? nullptr, nullptr, ppPrinterNotifyInfo ?? nullptr);

final _FindNextPrinterChangeNotification = _winspool.lookupFunction<
    BOOL Function(HANDLE hChange, Pointer<Uint32> pdwChange, Pointer pvReserved,
        Pointer<Pointer> ppPrinterNotifyInfo),
    int Function(
        int hChange,
        Pointer<Uint32> pdwChange,
        Pointer pvReserved,
        Pointer<Pointer>
            ppPrinterNotifyInfo)>('FindNextPrinterChangeNotification');

/// Sends a buffer to the printer in order to clear it from a transient state.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/printdocs/flushprinter>.
///
/// {@category winspool}
int FlushPrinter(int hPrinter, Pointer? pBuf, int cbBuf,
        Pointer<Uint32> pcWritten, int cSleep) =>
    _FlushPrinter(hPrinter, pBuf ?? nullptr, cbBuf, pcWritten, cSleep);

final _FlushPrinter = _winspool.lookupFunction<
    BOOL Function(HANDLE hPrinter, Pointer pBuf, Uint32 cbBuf,
        Pointer<Uint32> pcWritten, Uint32 cSleep),
    int Function(int hPrinter, Pointer pBuf, int cbBuf,
        Pointer<Uint32> pcWritten, int cSleep)>('FlushPrinter');

/// Frees a system-allocated buffer created by the
/// FindNextPrinterChangeNotification function.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/printdocs/freeprinternotifyinfo>.
///
/// {@category winspool}
int FreePrinterNotifyInfo(Pointer<PRINTER_NOTIFY_INFO> pPrinterNotifyInfo) =>
    _FreePrinterNotifyInfo(pPrinterNotifyInfo);

final _FreePrinterNotifyInfo = _winspool.lookupFunction<
        BOOL Function(Pointer<PRINTER_NOTIFY_INFO> pPrinterNotifyInfo),
        int Function(Pointer<PRINTER_NOTIFY_INFO> pPrinterNotifyInfo)>(
    'FreePrinterNotifyInfo');

/// Retrieves the printer name of the default printer for the current user on
/// the local computer.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/printdocs/getdefaultprinter>.
///
/// {@category winspool}
int GetDefaultPrinter(Pointer<Utf16>? pszBuffer, Pointer<Uint32> pcchBuffer) =>
    _GetDefaultPrinter(pszBuffer ?? nullptr, pcchBuffer);

final _GetDefaultPrinter = _winspool.lookupFunction<
    BOOL Function(Pointer<Utf16> pszBuffer, Pointer<Uint32> pcchBuffer),
    int Function(Pointer<Utf16> pszBuffer,
        Pointer<Uint32> pcchBuffer)>('GetDefaultPrinterW');

/// Retrieves information about a specified form.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/printdocs/getform>.
///
/// {@category winspool}
int GetForm(int hPrinter, Pointer<Utf16> pFormName, int level,
        Pointer<Uint8>? pForm, int cbBuf, Pointer<Uint32> pcbNeeded) =>
    _GetForm(hPrinter, pFormName, level, pForm ?? nullptr, cbBuf, pcbNeeded);

final _GetForm = _winspool.lookupFunction<
    BOOL Function(HANDLE hPrinter, Pointer<Utf16> pFormName, Uint32 level,
        Pointer<Uint8> pForm, Uint32 cbBuf, Pointer<Uint32> pcbNeeded),
    int Function(
        int hPrinter,
        Pointer<Utf16> pFormName,
        int level,
        Pointer<Uint8> pForm,
        int cbBuf,
        Pointer<Uint32> pcbNeeded)>('GetFormW');

/// Retrieves information about a specified print job.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/printdocs/getjob>.
///
/// {@category winspool}
int GetJob(int hPrinter, int jobId, int level, Pointer<Uint8>? pJob, int cbBuf,
        Pointer<Uint32> pcbNeeded) =>
    _GetJob(hPrinter, jobId, level, pJob ?? nullptr, cbBuf, pcbNeeded);

final _GetJob = _winspool.lookupFunction<
    BOOL Function(HANDLE hPrinter, Uint32 jobId, Uint32 level,
        Pointer<Uint8> pJob, Uint32 cbBuf, Pointer<Uint32> pcbNeeded),
    int Function(int hPrinter, int jobId, int level, Pointer<Uint8> pJob,
        int cbBuf, Pointer<Uint32> pcbNeeded)>('GetJobW');

/// Retrieves information about a specified printer.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/printdocs/getprinter>.
///
/// {@category winspool}
int GetPrinter(int hPrinter, int level, Pointer<Uint8>? pPrinter, int cbBuf,
        Pointer<Uint32> pcbNeeded) =>
    _GetPrinter(hPrinter, level, pPrinter ?? nullptr, cbBuf, pcbNeeded);

final _GetPrinter = _winspool.lookupFunction<
    BOOL Function(HANDLE hPrinter, Uint32 level, Pointer<Uint8> pPrinter,
        Uint32 cbBuf, Pointer<Uint32> pcbNeeded),
    int Function(int hPrinter, int level, Pointer<Uint8> pPrinter, int cbBuf,
        Pointer<Uint32> pcbNeeded)>('GetPrinterW');

/// Retrieves configuration data for the specified printer or print server.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/printdocs/getprinterdata>.
///
/// {@category winspool}
int GetPrinterData(
        int hPrinter,
        Pointer<Utf16> pValueName,
        Pointer<Uint32>? pType,
        Pointer<Uint8>? pData,
        int nSize,
        Pointer<Uint32> pcbNeeded) =>
    _GetPrinterData(hPrinter, pValueName, pType ?? nullptr, pData ?? nullptr,
        nSize, pcbNeeded);

final _GetPrinterData = _winspool.lookupFunction<
    Uint32 Function(
        HANDLE hPrinter,
        Pointer<Utf16> pValueName,
        Pointer<Uint32> pType,
        Pointer<Uint8> pData,
        Uint32 nSize,
        Pointer<Uint32> pcbNeeded),
    int Function(
        int hPrinter,
        Pointer<Utf16> pValueName,
        Pointer<Uint32> pType,
        Pointer<Uint8> pData,
        int nSize,
        Pointer<Uint32> pcbNeeded)>('GetPrinterDataW');

/// Retrieves configuration data for the specified printer or print server.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/printdocs/getprinterdataex>.
///
/// {@category winspool}
int GetPrinterDataEx(
        int hPrinter,
        Pointer<Utf16> pKeyName,
        Pointer<Utf16> pValueName,
        Pointer<Uint32>? pType,
        Pointer<Uint8>? pData,
        int nSize,
        Pointer<Uint32> pcbNeeded) =>
    _GetPrinterDataEx(hPrinter, pKeyName, pValueName, pType ?? nullptr,
        pData ?? nullptr, nSize, pcbNeeded);

final _GetPrinterDataEx = _winspool.lookupFunction<
    Uint32 Function(
        HANDLE hPrinter,
        Pointer<Utf16> pKeyName,
        Pointer<Utf16> pValueName,
        Pointer<Uint32> pType,
        Pointer<Uint8> pData,
        Uint32 nSize,
        Pointer<Uint32> pcbNeeded),
    int Function(
        int hPrinter,
        Pointer<Utf16> pKeyName,
        Pointer<Utf16> pValueName,
        Pointer<Uint32> pType,
        Pointer<Uint8> pData,
        int nSize,
        Pointer<Uint32> pcbNeeded)>('GetPrinterDataExW');

/// The GetPrintExecutionData retrieves the current print context.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/printdocs/getprintexecutiondata>.
///
/// {@category winspool}
int GetPrintExecutionData(Pointer<PRINT_EXECUTION_DATA> pData) =>
    _GetPrintExecutionData(pData);

final _GetPrintExecutionData = _winspool.lookupFunction<
    BOOL Function(Pointer<PRINT_EXECUTION_DATA> pData),
    int Function(Pointer<PRINT_EXECUTION_DATA> pData)>('GetPrintExecutionData');

/// Retrieves a handle for the spool file associated with the job currently
/// submitted by the application.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/printdocs/getspoolfilehandle>.
///
/// {@category winspool}
int GetSpoolFileHandle(int hPrinter) => _GetSpoolFileHandle(hPrinter);

final _GetSpoolFileHandle = _winspool.lookupFunction<
    HANDLE Function(HANDLE hPrinter),
    int Function(int hPrinter)>('GetSpoolFileHandle');

/// Verifies that the contents of a DEVMODE structure are valid.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/printdocs/isvaliddevmode>.
///
/// {@category winspool}
int IsValidDevmode(Pointer<DEVMODE>? pDevmode, int devmodeSize) =>
    _IsValidDevmode(pDevmode ?? nullptr, devmodeSize);

final _IsValidDevmode = _winspool.lookupFunction<
    BOOL Function(Pointer<DEVMODE> pDevmode, IntPtr devmodeSize),
    int Function(
        Pointer<DEVMODE> pDevmode, int devmodeSize)>('IsValidDevmodeW');

/// Retrieves a handle to the specified printer or print server or other types
/// of handles in the print subsystem.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/printdocs/openprinter>.
///
/// {@category winspool}
int OpenPrinter(Pointer<Utf16>? pPrinterName, Pointer<HANDLE> phPrinter,
        Pointer<PRINTER_DEFAULTS>? pDefault) =>
    _OpenPrinter(pPrinterName ?? nullptr, phPrinter, pDefault ?? nullptr);

final _OpenPrinter = _winspool.lookupFunction<
    BOOL Function(Pointer<Utf16> pPrinterName, Pointer<HANDLE> phPrinter,
        Pointer<PRINTER_DEFAULTS> pDefault),
    int Function(Pointer<Utf16> pPrinterName, Pointer<HANDLE> phPrinter,
        Pointer<PRINTER_DEFAULTS> pDefault)>('OpenPrinterW');

/// Retrieves a handle to the specified printer, print server, or other types of
/// handles in the print subsystem, while setting some of the printer options.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/printdocs/openprinter2>.
///
/// {@category winspool}
int OpenPrinter2(
        Pointer<Utf16>? pPrinterName,
        Pointer<HANDLE> phPrinter,
        Pointer<PRINTER_DEFAULTS>? pDefault,
        Pointer<PRINTER_OPTIONS>? pOptions) =>
    _OpenPrinter2(pPrinterName ?? nullptr, phPrinter, pDefault ?? nullptr,
        pOptions ?? nullptr);

final _OpenPrinter2 = _winspool.lookupFunction<
    BOOL Function(Pointer<Utf16> pPrinterName, Pointer<HANDLE> phPrinter,
        Pointer<PRINTER_DEFAULTS> pDefault, Pointer<PRINTER_OPTIONS> pOptions),
    int Function(
        Pointer<Utf16> pPrinterName,
        Pointer<HANDLE> phPrinter,
        Pointer<PRINTER_DEFAULTS> pDefault,
        Pointer<PRINTER_OPTIONS> pOptions)>('OpenPrinter2W');

/// Displays a printer-properties property sheet for the specified printer.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/printdocs/printerproperties>.
///
/// {@category winspool}
int PrinterProperties(int hWnd, int hPrinter) =>
    _PrinterProperties(hWnd, hPrinter);

final _PrinterProperties = _winspool.lookupFunction<
    BOOL Function(HWND hWnd, HANDLE hPrinter),
    int Function(int hWnd, int hPrinter)>('PrinterProperties');

/// Retrieves data from the specified printer.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/printdocs/readprinter>.
///
/// {@category winspool}
int ReadPrinter(
        int hPrinter, Pointer pBuf, int cbBuf, Pointer<Uint32> pNoBytesRead) =>
    _ReadPrinter(hPrinter, pBuf, cbBuf, pNoBytesRead);

final _ReadPrinter = _winspool.lookupFunction<
    BOOL Function(HANDLE hPrinter, Pointer pBuf, Uint32 cbBuf,
        Pointer<Uint32> pNoBytesRead),
    int Function(int hPrinter, Pointer pBuf, int cbBuf,
        Pointer<Uint32> pNoBytesRead)>('ReadPrinter');

/// Reports to the Print Spooler service whether an XPS print job is in the
/// spooling or the rendering phase and what part of the processing is currently
/// underway.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/printdocs/reportjobprocessingprogress>.
///
/// {@category winspool}
int ReportJobProcessingProgress(
        int printerHandle, int jobId, int jobOperation, int jobProgress) =>
    _ReportJobProcessingProgress(
        printerHandle, jobId, jobOperation, jobProgress);

final _ReportJobProcessingProgress = _winspool.lookupFunction<
    HRESULT Function(HANDLE printerHandle, Uint32 jobId, Int32 jobOperation,
        Int32 jobProgress),
    int Function(int printerHandle, int jobId, int jobOperation,
        int jobProgress)>('ReportJobProcessingProgress');

/// Specifies the data type and device mode values to be used for printing
/// documents submitted by the StartDocPrinter function.
///
/// These values can be overridden by using the SetJob function after document
/// printing has started.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/printdocs/resetprinter>.
///
/// {@category winspool}
int ResetPrinter(int hPrinter, Pointer<PRINTER_DEFAULTS>? pDefault) =>
    _ResetPrinter(hPrinter, pDefault ?? nullptr);

final _ResetPrinter = _winspool.lookupFunction<
    BOOL Function(HANDLE hPrinter, Pointer<PRINTER_DEFAULTS> pDefault),
    int Function(
        int hPrinter, Pointer<PRINTER_DEFAULTS> pDefault)>('ResetPrinterW');

/// Requests that the print spooler schedule a specified print job for printing.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/printdocs/schedulejob>.
///
/// {@category winspool}
int ScheduleJob(int hPrinter, int jobId) => _ScheduleJob(hPrinter, jobId);

final _ScheduleJob = _winspool.lookupFunction<
    BOOL Function(HANDLE hPrinter, Uint32 jobId),
    int Function(int hPrinter, int jobId)>('ScheduleJob');

/// Sets the printer name of the default printer for the current user on the
/// local computer.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/printdocs/setdefaultprinter>.
///
/// {@category winspool}
int SetDefaultPrinter(Pointer<Utf16>? pszPrinter) =>
    _SetDefaultPrinter(pszPrinter ?? nullptr);

final _SetDefaultPrinter = _winspool.lookupFunction<
    BOOL Function(Pointer<Utf16> pszPrinter),
    int Function(Pointer<Utf16> pszPrinter)>('SetDefaultPrinterW');

/// Sets the form information for the specified printer.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/printdocs/setform>.
///
/// {@category winspool}
int SetForm(int hPrinter, Pointer<Utf16> pFormName, int level,
        Pointer<Uint8> pForm) =>
    _SetForm(hPrinter, pFormName, level, pForm);

final _SetForm = _winspool.lookupFunction<
    BOOL Function(HANDLE hPrinter, Pointer<Utf16> pFormName, Uint32 level,
        Pointer<Uint8> pForm),
    int Function(int hPrinter, Pointer<Utf16> pFormName, int level,
        Pointer<Uint8> pForm)>('SetFormW');

/// Pauses, resumes, cancels, or restarts a print job on a specified printer.
///
/// You can also use the SetJob function to set print job parameters, such as
/// the print job priority and the document name.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/printdocs/setjob>.
///
/// {@category winspool}
int SetJob(int hPrinter, int jobId, int level, int command) =>
    _SetJob(hPrinter, jobId, level, nullptr, command);

final _SetJob = _winspool.lookupFunction<
    BOOL Function(HANDLE hPrinter, Uint32 jobId, Uint32 level,
        Pointer<Uint8> pJob, Uint32 command),
    int Function(int hPrinter, int jobId, int level, Pointer<Uint8> pJob,
        int command)>('SetJobW');

/// Sets the status associated with a printer port.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/printdocs/setport>.
///
/// {@category winspool}
int SetPort(Pointer<Utf16>? pName, Pointer<Utf16> pPortName, int dwLevel,
        Pointer<Uint8> pPortInfo) =>
    _SetPort(pName ?? nullptr, pPortName, dwLevel, pPortInfo);

final _SetPort = _winspool.lookupFunction<
    BOOL Function(Pointer<Utf16> pName, Pointer<Utf16> pPortName,
        Uint32 dwLevel, Pointer<Uint8> pPortInfo),
    int Function(Pointer<Utf16> pName, Pointer<Utf16> pPortName, int dwLevel,
        Pointer<Uint8> pPortInfo)>('SetPortW');

/// Sets the data for a specified printer or sets the state of the specified
/// printer by pausing printing, resuming printing, or clearing all print jobs.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/printdocs/setprinter>.
///
/// {@category winspool}
int SetPrinter(
        int hPrinter, int level, Pointer<Uint8>? pPrinter, int command) =>
    _SetPrinter(hPrinter, level, pPrinter ?? nullptr, command);

final _SetPrinter = _winspool.lookupFunction<
    BOOL Function(
        HANDLE hPrinter, Uint32 level, Pointer<Uint8> pPrinter, Uint32 command),
    int Function(int hPrinter, int level, Pointer<Uint8> pPrinter,
        int command)>('SetPrinterW');

/// Sets the configuration data for a printer or print server.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/printdocs/setprinterdata>.
///
/// {@category winspool}
int SetPrinterData(int hPrinter, Pointer<Utf16> pValueName, int type,
        Pointer<Uint8> pData, int cbData) =>
    _SetPrinterData(hPrinter, pValueName, type, pData, cbData);

final _SetPrinterData = _winspool.lookupFunction<
    Uint32 Function(HANDLE hPrinter, Pointer<Utf16> pValueName, Uint32 type,
        Pointer<Uint8> pData, Uint32 cbData),
    int Function(int hPrinter, Pointer<Utf16> pValueName, int type,
        Pointer<Uint8> pData, int cbData)>('SetPrinterDataW');

/// Sets the configuration data for a printer or print server.
///
/// The function stores the configuration data under the printers registry key.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/printdocs/setprinterdataex>.
///
/// {@category winspool}
int SetPrinterDataEx(
        int hPrinter,
        Pointer<Utf16> pKeyName,
        Pointer<Utf16> pValueName,
        int type,
        Pointer<Uint8> pData,
        int cbData) =>
    _SetPrinterDataEx(hPrinter, pKeyName, pValueName, type, pData, cbData);

final _SetPrinterDataEx = _winspool.lookupFunction<
    Uint32 Function(
        HANDLE hPrinter,
        Pointer<Utf16> pKeyName,
        Pointer<Utf16> pValueName,
        Uint32 type,
        Pointer<Uint8> pData,
        Uint32 cbData),
    int Function(
        int hPrinter,
        Pointer<Utf16> pKeyName,
        Pointer<Utf16> pValueName,
        int type,
        Pointer<Uint8> pData,
        int cbData)>('SetPrinterDataExW');

/// Notifies the print spooler that a document is to be spooled for printing.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/printdocs/startdocprinter>.
///
/// {@category winspool}
int StartDocPrinter(int hPrinter, int level, Pointer<DOC_INFO_1> pDocInfo) =>
    _StartDocPrinter(hPrinter, level, pDocInfo);

final _StartDocPrinter = _winspool.lookupFunction<
    Uint32 Function(
        HANDLE hPrinter, Uint32 level, Pointer<DOC_INFO_1> pDocInfo),
    int Function(int hPrinter, int level,
        Pointer<DOC_INFO_1> pDocInfo)>('StartDocPrinterW');

/// Notifies the spooler that a page is about to be printed on the specified
/// printer.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/printdocs/startpageprinter>.
///
/// {@category winspool}
int StartPagePrinter(int hPrinter) => _StartPagePrinter(hPrinter);

final _StartPagePrinter = _winspool.lookupFunction<
    BOOL Function(HANDLE hPrinter),
    int Function(int hPrinter)>('StartPagePrinter');

/// Notifies the print spooler that data should be written to the specified
/// printer.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/printdocs/writeprinter>.
///
/// {@category winspool}
int WritePrinter(
        int hPrinter, Pointer pBuf, int cbBuf, Pointer<Uint32> pcWritten) =>
    _WritePrinter(hPrinter, pBuf, cbBuf, pcWritten);

final _WritePrinter = _winspool.lookupFunction<
    BOOL Function(
        HANDLE hPrinter, Pointer pBuf, Uint32 cbBuf, Pointer<Uint32> pcWritten),
    int Function(int hPrinter, Pointer pBuf, int cbBuf,
        Pointer<Uint32> pcWritten)>('WritePrinter');
