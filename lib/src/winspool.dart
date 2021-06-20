// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'callbacks.dart';
import 'combase.dart';
import 'structs.dart';
import 'structs.g.dart';

final _winspool = DynamicLibrary.open('winspool.drv');

/// The CloseSpoolFileHandle function closes a handle to a spool file
/// associated with the print job currently submitted by the application.
///
/// ```c
/// BOOL CloseSpoolFileHandle(
///   _In_ HANDLE hPrinter,
///   _In_ HANDLE hSpoolFile
/// );
/// ```
/// {@category winspool}
int CloseSpoolFileHandle(int hPrinter, int hSpoolFile) {
  final _CloseSpoolFileHandle = _winspool.lookupFunction<
      Int32 Function(IntPtr hPrinter, IntPtr hSpoolFile),
      int Function(int hPrinter, int hSpoolFile)>('CloseSpoolFileHandle');
  return _CloseSpoolFileHandle(hPrinter, hSpoolFile);
}

/// The CommitSpoolData function notifies the print spooler that a
/// specified amount of data has been written to a specified spool file and
/// is ready to be rendered.
///
/// ```c
/// HANDLE CommitSpoolData(
///   _In_ HANDLE hPrinter,
///   _In_ HANDLE hSpoolFile,
///        DWORD  cbCommit
/// );
/// ```
/// {@category winspool}
int CommitSpoolData(int hPrinter, int hSpoolFile, int cbCommit) {
  final _CommitSpoolData = _winspool.lookupFunction<
      IntPtr Function(IntPtr hPrinter, IntPtr hSpoolFile, Uint32 cbCommit),
      int Function(
          int hPrinter, int hSpoolFile, int cbCommit)>('CommitSpoolData');
  return _CommitSpoolData(hPrinter, hSpoolFile, cbCommit);
}

/// The ConfigurePort function displays the port-configuration dialog box
/// for a port on the specified server.
///
/// ```c
/// BOOL ConfigurePortW(
///   _In_ LPTSTR pName,
///   _In_ HWND   hWnd,
///   _In_ LPTSTR pPortName
/// );
/// ```
/// {@category winspool}
int ConfigurePort(Pointer<Utf16> pName, int hWnd, Pointer<Utf16> pPortName) {
  final _ConfigurePort = _winspool.lookupFunction<
      Int32 Function(
          Pointer<Utf16> pName, IntPtr hWnd, Pointer<Utf16> pPortName),
      int Function(Pointer<Utf16> pName, int hWnd,
          Pointer<Utf16> pPortName)>('ConfigurePortW');
  return _ConfigurePort(pName, hWnd, pPortName);
}

/// The ConnectToPrinterDlg function displays a dialog box that lets users
/// browse and connect to printers on a network. If the user selects a
/// printer, the function attempts to create a connection to it; if a
/// suitable driver is not installed on the server, the user is given the
/// option of creating a printer locally.
///
/// ```c
/// HANDLE ConnectToPrinterDlg(
///   _In_ HWND  hwnd,
///   _In_ DWORD Flags
/// );
/// ```
/// {@category winspool}
int ConnectToPrinterDlg(int hwnd, int Flags) {
  final _ConnectToPrinterDlg = _winspool.lookupFunction<
      IntPtr Function(IntPtr hwnd, Uint32 Flags),
      int Function(int hwnd, int Flags)>('ConnectToPrinterDlg');
  return _ConnectToPrinterDlg(hwnd, Flags);
}

/// The DeleteForm function removes a form name from the list of supported
/// forms.
///
/// ```c
/// BOOL DeleteFormW(
///   _In_ HANDLE hPrinter,
///   _In_ LPTSTR pFormName
/// );
/// ```
/// {@category winspool}
int DeleteForm(int hPrinter, Pointer<Utf16> pFormName) {
  final _DeleteForm = _winspool.lookupFunction<
      Int32 Function(IntPtr hPrinter, Pointer<Utf16> pFormName),
      int Function(int hPrinter, Pointer<Utf16> pFormName)>('DeleteFormW');
  return _DeleteForm(hPrinter, pFormName);
}

/// The DeletePrinterConnection function deletes a connection to a printer
/// that was established by a call to AddPrinterConnection or
/// ConnectToPrinterDlg.
///
/// ```c
/// BOOL DeletePrinterConnectionW(
///   _In_ LPTSTR pName
/// );
/// ```
/// {@category winspool}
int DeletePrinterConnection(Pointer<Utf16> pName) {
  final _DeletePrinterConnection = _winspool.lookupFunction<
      Int32 Function(Pointer<Utf16> pName),
      int Function(Pointer<Utf16> pName)>('DeletePrinterConnectionW');
  return _DeletePrinterConnection(pName);
}

/// The DeletePrinterData function deletes specified configuration data for
/// a printer. A printer's configuration data consists of a set of named
/// and typed values. The DeletePrinterData function deletes one of these
/// values, specified by its value name.
///
/// ```c
/// DWORD DeletePrinterDataW(
///   _In_ HANDLE hPrinter,
///   _In_ LPTSTR pValueName
/// );
/// ```
/// {@category winspool}
int DeletePrinterData(int hPrinter, Pointer<Utf16> pValueName) {
  final _DeletePrinterData = _winspool.lookupFunction<
      Uint32 Function(IntPtr hPrinter, Pointer<Utf16> pValueName),
      int Function(
          int hPrinter, Pointer<Utf16> pValueName)>('DeletePrinterDataW');
  return _DeletePrinterData(hPrinter, pValueName);
}

/// The DeletePrinterDataEx function deletes a specified value from the
/// configuration data for a printer. A printer's configuration data
/// consists of a set of named and typed values stored in a hierarchy of
/// registry keys. The function deletes a specified value under a specified
/// key.
///
/// ```c
/// DWORD DeletePrinterDataExW(
///   _In_ HANDLE  hPrinter,
///   _In_ LPCTSTR pKeyName,
///   _In_ LPCTSTR pValueName
/// );
/// ```
/// {@category winspool}
int DeletePrinterDataEx(
    int hPrinter, Pointer<Utf16> pKeyName, Pointer<Utf16> pValueName) {
  final _DeletePrinterDataEx = _winspool.lookupFunction<
      Uint32 Function(
          IntPtr hPrinter, Pointer<Utf16> pKeyName, Pointer<Utf16> pValueName),
      int Function(int hPrinter, Pointer<Utf16> pKeyName,
          Pointer<Utf16> pValueName)>('DeletePrinterDataExW');
  return _DeletePrinterDataEx(hPrinter, pKeyName, pValueName);
}

/// The DeletePrinterKey function deletes a specified key and all its
/// subkeys for a specified printer.
///
/// ```c
/// DWORD DeletePrinterKeyW(
///   _In_ HANDLE  hPrinter,
///   _In_ LPCTSTR pKeyName
/// );
/// ```
/// {@category winspool}
int DeletePrinterKey(int hPrinter, Pointer<Utf16> pKeyName) {
  final _DeletePrinterKey = _winspool.lookupFunction<
      Uint32 Function(IntPtr hPrinter, Pointer<Utf16> pKeyName),
      int Function(int hPrinter, Pointer<Utf16> pKeyName)>('DeletePrinterKeyW');
  return _DeletePrinterKey(hPrinter, pKeyName);
}

/// The DocumentProperties function retrieves or modifies printer
/// initialization information or displays a printer-configuration property
/// sheet for the specified printer.
///
/// ```c
/// LONG DocumentPropertiesW(
///   _In_  HWND     hWnd,
///   _In_  HANDLE   hPrinter,
///   _In_  LPTSTR   pDeviceName,
///   _Out_ PDEVMODE pDevModeOutput,
///   _In_  PDEVMODE pDevModeInput,
///   _In_  DWORD    fMode
/// );
/// ```
/// {@category winspool}
int DocumentProperties(
    int hWnd,
    int hPrinter,
    Pointer<Utf16> pDeviceName,
    Pointer<DEVMODE> pDevModeOutput,
    Pointer<DEVMODE> pDevModeInput,
    int fMode) {
  final _DocumentProperties = _winspool.lookupFunction<
      Int32 Function(
          IntPtr hWnd,
          IntPtr hPrinter,
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
  return _DocumentProperties(
      hWnd, hPrinter, pDeviceName, pDevModeOutput, pDevModeInput, fMode);
}

/// The EnumForms function enumerates the forms supported by the specified
/// printer.
///
/// ```c
/// BOOL EnumFormsW(
///   _In_  HANDLE  hPrinter,
///   _In_  DWORD   Level,
///   _Out_ LPBYTE  pForm,
///   _In_  DWORD   cbBuf,
///   _Out_ LPDWORD pcbNeeded,
///   _Out_ LPDWORD pcReturned
/// );
/// ```
/// {@category winspool}
int EnumForms(int hPrinter, int Level, Pointer<Uint8> pForm, int cbBuf,
    Pointer<Uint32> pcbNeeded, Pointer<Uint32> pcReturned) {
  final _EnumForms = _winspool.lookupFunction<
      Int32 Function(IntPtr hPrinter, Uint32 Level, Pointer<Uint8> pForm,
          Uint32 cbBuf, Pointer<Uint32> pcbNeeded, Pointer<Uint32> pcReturned),
      int Function(int hPrinter, int Level, Pointer<Uint8> pForm, int cbBuf,
          Pointer<Uint32> pcbNeeded, Pointer<Uint32> pcReturned)>('EnumFormsW');
  return _EnumForms(hPrinter, Level, pForm, cbBuf, pcbNeeded, pcReturned);
}

/// The EnumJobs function retrieves information about a specified set of
/// print jobs for a specified printer.
///
/// ```c
/// BOOL EnumJobsW(
///   _In_  HANDLE  hPrinter,
///   _In_  DWORD   FirstJob,
///   _In_  DWORD   NoJobs,
///   _In_  DWORD   Level,
///   _Out_ LPBYTE  pJob,
///   _In_  DWORD   cbBuf,
///   _Out_ LPDWORD pcbNeeded,
///   _Out_ LPDWORD pcReturned
/// );
/// ```
/// {@category winspool}
int EnumJobs(
    int hPrinter,
    int FirstJob,
    int NoJobs,
    int Level,
    Pointer<Uint8> pJob,
    int cbBuf,
    Pointer<Uint32> pcbNeeded,
    Pointer<Uint32> pcReturned) {
  final _EnumJobs = _winspool.lookupFunction<
      Int32 Function(
          IntPtr hPrinter,
          Uint32 FirstJob,
          Uint32 NoJobs,
          Uint32 Level,
          Pointer<Uint8> pJob,
          Uint32 cbBuf,
          Pointer<Uint32> pcbNeeded,
          Pointer<Uint32> pcReturned),
      int Function(
          int hPrinter,
          int FirstJob,
          int NoJobs,
          int Level,
          Pointer<Uint8> pJob,
          int cbBuf,
          Pointer<Uint32> pcbNeeded,
          Pointer<Uint32> pcReturned)>('EnumJobsW');
  return _EnumJobs(
      hPrinter, FirstJob, NoJobs, Level, pJob, cbBuf, pcbNeeded, pcReturned);
}

/// The EnumPrinterData function enumerates configuration data for a
/// specified printer.
///
/// ```c
/// DWORD EnumPrinterDataW(
///   _In_  HANDLE  hPrinter,
///   _In_  DWORD   dwIndex,
///   _Out_ LPTSTR  pValueName,
///   _In_  DWORD   cbValueName,
///   _Out_ LPDWORD pcbValueName,
///   _Out_ LPDWORD pType,
///   _Out_ LPBYTE  pData,
///   _In_  DWORD   cbData,
///   _Out_ LPDWORD pcbData
/// );
/// ```
/// {@category winspool}
int EnumPrinterData(
    int hPrinter,
    int dwIndex,
    Pointer<Utf16> pValueName,
    int cbValueName,
    Pointer<Uint32> pcbValueName,
    Pointer<Uint32> pType,
    Pointer<Uint8> pData,
    int cbData,
    Pointer<Uint32> pcbData) {
  final _EnumPrinterData = _winspool.lookupFunction<
      Uint32 Function(
          IntPtr hPrinter,
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
  return _EnumPrinterData(hPrinter, dwIndex, pValueName, cbValueName,
      pcbValueName, pType, pData, cbData, pcbData);
}

/// The EnumPrinterDataEx function enumerates all value names and data for
/// a specified printer and key.
///
/// ```c
/// DWORD EnumPrinterDataExW(
///   _In_  HANDLE  hPrinter,
///   _In_  LPCTSTR pKeyName,
///   _Out_ LPBYTE  pEnumValues,
///   _In_  DWORD   cbEnumValues,
///   _Out_ LPDWORD pcbEnumValues,
///   _Out_ LPDWORD pnEnumValues
/// );
/// ```
/// {@category winspool}
int EnumPrinterDataEx(
    int hPrinter,
    Pointer<Utf16> pKeyName,
    Pointer<Uint8> pEnumValues,
    int cbEnumValues,
    Pointer<Uint32> pcbEnumValues,
    Pointer<Uint32> pnEnumValues) {
  final _EnumPrinterDataEx = _winspool.lookupFunction<
      Uint32 Function(
          IntPtr hPrinter,
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
  return _EnumPrinterDataEx(hPrinter, pKeyName, pEnumValues, cbEnumValues,
      pcbEnumValues, pnEnumValues);
}

/// The EnumPrinterKey function enumerates the subkeys of a specified key
/// for a specified printer.
///
/// ```c
/// DWORD EnumPrinterKeyW(
///   _In_  HANDLE  hPrinter,
///   _In_  LPCTSTR pKeyName,
///   _Out_ LPTSTR  pSubkey,
///   _In_  DWORD   cbSubkey,
///   _Out_ LPDWORD pcbSubkey
/// );
/// ```
/// {@category winspool}
int EnumPrinterKey(int hPrinter, Pointer<Utf16> pKeyName,
    Pointer<Utf16> pSubkey, int cbSubkey, Pointer<Uint32> pcbSubkey) {
  final _EnumPrinterKey = _winspool.lookupFunction<
      Uint32 Function(IntPtr hPrinter, Pointer<Utf16> pKeyName,
          Pointer<Utf16> pSubkey, Uint32 cbSubkey, Pointer<Uint32> pcbSubkey),
      int Function(
          int hPrinter,
          Pointer<Utf16> pKeyName,
          Pointer<Utf16> pSubkey,
          int cbSubkey,
          Pointer<Uint32> pcbSubkey)>('EnumPrinterKeyW');
  return _EnumPrinterKey(hPrinter, pKeyName, pSubkey, cbSubkey, pcbSubkey);
}

/// The FlushPrinter function sends a buffer to the printer in order to
/// clear it from a transient state.
///
/// ```c
/// BOOL FlushPrinter(
///   _In_  HANDLE  hPrinter,
///   _In_  LPVOID  pBuf,
///   _In_  DWORD   cbBuf,
///   _Out_ LPDWORD pcWritten,
///   _In_  DWORD   cSleep
/// );
/// ```
/// {@category winspool}
int FlushPrinter(int hPrinter, Pointer pBuf, int cbBuf,
    Pointer<Uint32> pcWritten, int cSleep) {
  final _FlushPrinter = _winspool.lookupFunction<
      Int32 Function(IntPtr hPrinter, Pointer pBuf, Uint32 cbBuf,
          Pointer<Uint32> pcWritten, Uint32 cSleep),
      int Function(int hPrinter, Pointer pBuf, int cbBuf,
          Pointer<Uint32> pcWritten, int cSleep)>('FlushPrinter');
  return _FlushPrinter(hPrinter, pBuf, cbBuf, pcWritten, cSleep);
}

/// The GetDefaultPrinter function retrieves the printer name of the
/// default printer for the current user on the local computer.
///
/// ```c
/// BOOL GetDefaultPrinterW(
///   _In_    LPTSTR  pszBuffer,
///   _Inout_ LPDWORD pcchBuffer
/// );
/// ```
/// {@category winspool}
int GetDefaultPrinter(Pointer<Utf16> pszBuffer, Pointer<Uint32> pcchBuffer) {
  final _GetDefaultPrinter = _winspool.lookupFunction<
      Int32 Function(Pointer<Utf16> pszBuffer, Pointer<Uint32> pcchBuffer),
      int Function(Pointer<Utf16> pszBuffer,
          Pointer<Uint32> pcchBuffer)>('GetDefaultPrinterW');
  return _GetDefaultPrinter(pszBuffer, pcchBuffer);
}

/// The GetJob function retrieves information about a specified print job.
///
/// ```c
/// BOOL GetJobW(
///   _In_  HANDLE  hPrinter,
///   _In_  DWORD   JobId,
///   _In_  DWORD   Level,
///   _Out_ LPBYTE  pJob,
///   _In_  DWORD   cbBuf,
///   _Out_ LPDWORD pcbNeeded
/// );
/// ```
/// {@category winspool}
int GetJob(int hPrinter, int JobId, int Level, Pointer<Uint8> pJob, int cbBuf,
    Pointer<Uint32> pcbNeeded) {
  final _GetJob = _winspool.lookupFunction<
      Int32 Function(IntPtr hPrinter, Uint32 JobId, Uint32 Level,
          Pointer<Uint8> pJob, Uint32 cbBuf, Pointer<Uint32> pcbNeeded),
      int Function(int hPrinter, int JobId, int Level, Pointer<Uint8> pJob,
          int cbBuf, Pointer<Uint32> pcbNeeded)>('GetJobW');
  return _GetJob(hPrinter, JobId, Level, pJob, cbBuf, pcbNeeded);
}

/// The GetPrinter function retrieves information about a specified
/// printer.
///
/// ```c
/// BOOL GetPrinterW(
///   _In_  HANDLE  hPrinter,
///   _In_  DWORD   Level,
///   _Out_ LPBYTE  pPrinter,
///   _In_  DWORD   cbBuf,
///   _Out_ LPDWORD pcbNeeded
/// );
/// ```
/// {@category winspool}
int GetPrinter(int hPrinter, int Level, Pointer<Uint8> pPrinter, int cbBuf,
    Pointer<Uint32> pcbNeeded) {
  final _GetPrinter = _winspool.lookupFunction<
      Int32 Function(IntPtr hPrinter, Uint32 Level, Pointer<Uint8> pPrinter,
          Uint32 cbBuf, Pointer<Uint32> pcbNeeded),
      int Function(int hPrinter, int Level, Pointer<Uint8> pPrinter, int cbBuf,
          Pointer<Uint32> pcbNeeded)>('GetPrinterW');
  return _GetPrinter(hPrinter, Level, pPrinter, cbBuf, pcbNeeded);
}

/// The GetPrinterData function retrieves configuration data for the
/// specified printer or print server.
///
/// ```c
/// DWORD GetPrinterDataW(
///   _In_  HANDLE  hPrinter,
///   _In_  LPTSTR  pValueName,
///   _Out_ LPDWORD pType,
///   _Out_ LPBYTE  pData,
///   _In_  DWORD   nSize,
///   _Out_ LPDWORD pcbNeeded
/// );
/// ```
/// {@category winspool}
int GetPrinterData(
    int hPrinter,
    Pointer<Utf16> pValueName,
    Pointer<Uint32> pType,
    Pointer<Uint8> pData,
    int nSize,
    Pointer<Uint32> pcbNeeded) {
  final _GetPrinterData = _winspool.lookupFunction<
      Uint32 Function(
          IntPtr hPrinter,
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
  return _GetPrinterData(hPrinter, pValueName, pType, pData, nSize, pcbNeeded);
}

/// The GetPrinterDataEx function retrieves configuration data for the
/// specified printer or print server. GetPrinterDataEx can retrieve values
/// that the SetPrinterData function stored. In addition, GetPrinterDataEx
/// can retrieve values that the SetPrinterDataEx function stored under a
/// specified key.
///
/// ```c
/// DWORD GetPrinterDataExW(
///   _In_  HANDLE  hPrinter,
///   _In_  LPCTSTR pKeyName,
///   _In_  LPCTSTR pValueName,
///   _Out_ LPDWORD pType,
///   _Out_ LPBYTE  pData,
///   _In_  DWORD   nSize,
///   _Out_ LPDWORD pcbNeeded
/// );
/// ```
/// {@category winspool}
int GetPrinterDataEx(
    int hPrinter,
    Pointer<Utf16> pKeyName,
    Pointer<Utf16> pValueName,
    Pointer<Uint32> pType,
    Pointer<Uint8> pData,
    int nSize,
    Pointer<Uint32> pcbNeeded) {
  final _GetPrinterDataEx = _winspool.lookupFunction<
      Uint32 Function(
          IntPtr hPrinter,
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
  return _GetPrinterDataEx(
      hPrinter, pKeyName, pValueName, pType, pData, nSize, pcbNeeded);
}

/// The GetPrintExecutionData retrieves the current print context.
///
/// ```c
/// BOOL WINAPI GetPrintExecutionData(
///   _Out_ PRINT_EXECUTION_DATA *pData
/// );
/// ```
/// {@category winspool}
int GetPrintExecutionData(Pointer<PRINT_EXECUTION_DATA> pData) {
  final _GetPrintExecutionData = _winspool.lookupFunction<
      Int32 Function(Pointer<PRINT_EXECUTION_DATA> pData),
      int Function(
          Pointer<PRINT_EXECUTION_DATA> pData)>('GetPrintExecutionData');
  return _GetPrintExecutionData(pData);
}

/// The IsValidDevmode function verifies that the contents of a DEVMODE
/// structure are valid.
///
/// ```c
/// BOOL IsValidDevmodeW(
/// _In_ PDEVMODE pDevmode,
///        size_t   DevmodeSize
/// );
/// ```
/// {@category winspool}
int IsValidDevmode(Pointer<DEVMODE> pDevmode, int DevmodeSize) {
  final _IsValidDevmode = _winspool.lookupFunction<
      Int32 Function(Pointer<DEVMODE> pDevmode, IntPtr DevmodeSize),
      int Function(
          Pointer<DEVMODE> pDevmode, int DevmodeSize)>('IsValidDevmodeW');
  return _IsValidDevmode(pDevmode, DevmodeSize);
}

/// The OpenPrinter function retrieves a handle to the specified printer or
/// print server or other types of handles in the print subsystem.
///
/// ```c
/// BOOL OpenPrinterW(
///   _In_  LPTSTR             pPrinterName,
///   _Out_ LPHANDLE           phPrinter,
///   _In_  LPPRINTER_DEFAULTS pDefault
/// );
/// ```
/// {@category winspool}
int OpenPrinter(Pointer<Utf16> pPrinterName, Pointer<IntPtr> phPrinter,
    Pointer<PRINTER_DEFAULTS> pDefault) {
  final _OpenPrinter = _winspool.lookupFunction<
      Int32 Function(Pointer<Utf16> pPrinterName, Pointer<IntPtr> phPrinter,
          Pointer<PRINTER_DEFAULTS> pDefault),
      int Function(Pointer<Utf16> pPrinterName, Pointer<IntPtr> phPrinter,
          Pointer<PRINTER_DEFAULTS> pDefault)>('OpenPrinterW');
  return _OpenPrinter(pPrinterName, phPrinter, pDefault);
}

/// The PrinterProperties function displays a printer-properties property
/// sheet for the specified printer.
///
/// ```c
/// BOOL PrinterProperties(
///   _In_ HWND   hWnd,
///   _In_ HANDLE hPrinter
/// );
/// ```
/// {@category winspool}
int PrinterProperties(int hWnd, int hPrinter) {
  final _PrinterProperties = _winspool.lookupFunction<
      Int32 Function(IntPtr hWnd, IntPtr hPrinter),
      int Function(int hWnd, int hPrinter)>('PrinterProperties');
  return _PrinterProperties(hWnd, hPrinter);
}

/// The ResetPrinter function specifies the data type and device mode
/// values to be used for printing documents submitted by the
/// StartDocPrinter function. These values can be overridden by using the
/// SetJob function after document printing has started.
///
/// ```c
/// BOOL ResetPrinterW(
///   _In_ HANDLE             hPrinter,
///   _In_ LPPRINTER_DEFAULTS pDefault
/// );
/// ```
/// {@category winspool}
int ResetPrinter(int hPrinter, Pointer<PRINTER_DEFAULTS> pDefault) {
  final _ResetPrinter = _winspool.lookupFunction<
      Int32 Function(IntPtr hPrinter, Pointer<PRINTER_DEFAULTS> pDefault),
      int Function(
          int hPrinter, Pointer<PRINTER_DEFAULTS> pDefault)>('ResetPrinterW');
  return _ResetPrinter(hPrinter, pDefault);
}

/// The SetDefaultPrinter function sets the printer name of the default
/// printer for the current user on the local computer.
///
/// ```c
/// BOOL SetDefaultPrinterW(
///   _In_ LPCTSTR pszPrinter
/// );
/// ```
/// {@category winspool}
int SetDefaultPrinter(Pointer<Utf16> pszPrinter) {
  final _SetDefaultPrinter = _winspool.lookupFunction<
      Int32 Function(Pointer<Utf16> pszPrinter),
      int Function(Pointer<Utf16> pszPrinter)>('SetDefaultPrinterW');
  return _SetDefaultPrinter(pszPrinter);
}

/// The SetForm function sets the form information for the specified
/// printer.
///
/// ```c
/// BOOL SetFormW(
///   _In_ HANDLE hPrinter,
///   _In_ LPTSTR pFormName,
///   _In_ DWORD  Level,
///   _In_ LPTSTR pForm
/// );
/// ```
/// {@category winspool}
int SetForm(
    int hPrinter, Pointer<Utf16> pFormName, int Level, Pointer<Uint8> pForm) {
  final _SetForm = _winspool.lookupFunction<
      Int32 Function(IntPtr hPrinter, Pointer<Utf16> pFormName, Uint32 Level,
          Pointer<Uint8> pForm),
      int Function(int hPrinter, Pointer<Utf16> pFormName, int Level,
          Pointer<Uint8> pForm)>('SetFormW');
  return _SetForm(hPrinter, pFormName, Level, pForm);
}

/// The SetJob function pauses, resumes, cancels, or restarts a print job
/// on a specified printer. You can also use the SetJob function to set
/// print job parameters, such as the print job priority and the document
/// name.
///
/// ```c
/// BOOL SetJobW(
///   _In_ HANDLE hPrinter,
///   _In_ DWORD  JobId,
///   _In_ DWORD  Level,
///   _In_ LPBYTE pJob,
///   _In_ DWORD  Command
/// );
/// ```
/// {@category winspool}
int SetJob(
    int hPrinter, int JobId, int Level, Pointer<Uint8> pJob, int Command) {
  final _SetJob = _winspool.lookupFunction<
      Int32 Function(IntPtr hPrinter, Uint32 JobId, Uint32 Level,
          Pointer<Uint8> pJob, Uint32 Command),
      int Function(int hPrinter, int JobId, int Level, Pointer<Uint8> pJob,
          int Command)>('SetJobW');
  return _SetJob(hPrinter, JobId, Level, pJob, Command);
}

/// The SetPort function sets the status associated with a printer port.
///
/// ```c
/// BOOL SetPortW(
///   _In_ LPTSTR pName,
///   _In_ LPTSTR pPortName,
///   _In_ DWORD  dwLevel,
///   _In_ LPBYTE pPortInfo
/// );
/// ```
/// {@category winspool}
int SetPort(Pointer<Utf16> pName, Pointer<Utf16> pPortName, int dwLevel,
    Pointer<Uint8> pPortInfo) {
  final _SetPort = _winspool.lookupFunction<
      Int32 Function(Pointer<Utf16> pName, Pointer<Utf16> pPortName,
          Uint32 dwLevel, Pointer<Uint8> pPortInfo),
      int Function(Pointer<Utf16> pName, Pointer<Utf16> pPortName, int dwLevel,
          Pointer<Uint8> pPortInfo)>('SetPortW');
  return _SetPort(pName, pPortName, dwLevel, pPortInfo);
}

/// The SetPrinter function sets the data for a specified printer or sets
/// the state of the specified printer by pausing printing, resuming
/// printing, or clearing all print jobs.
///
/// ```c
/// BOOL SetPrinterW(
///   _In_ HANDLE hPrinter,
///   _In_ DWORD  Level,
///   _In_ LPBYTE pPrinter,
///   _In_ DWORD  Command
/// );
/// ```
/// {@category winspool}
int SetPrinter(int hPrinter, int Level, Pointer<Uint8> pPrinter, int Command) {
  final _SetPrinter = _winspool.lookupFunction<
      Int32 Function(IntPtr hPrinter, Uint32 Level, Pointer<Uint8> pPrinter,
          Uint32 Command),
      int Function(int hPrinter, int Level, Pointer<Uint8> pPrinter,
          int Command)>('SetPrinterW');
  return _SetPrinter(hPrinter, Level, pPrinter, Command);
}

/// The SetPrinterData function sets the configuration data for a printer
/// or print server.
///
/// ```c
/// DWORD SetPrinterDataW(
///   _In_ HANDLE hPrinter,
///   _In_ LPTSTR pValueName,
///   _In_ DWORD  Type,
///   _In_ LPBYTE pData,
///   _In_ DWORD  cbData
/// );
/// ```
/// {@category winspool}
int SetPrinterData(int hPrinter, Pointer<Utf16> pValueName, int Type,
    Pointer<Uint8> pData, int cbData) {
  final _SetPrinterData = _winspool.lookupFunction<
      Uint32 Function(IntPtr hPrinter, Pointer<Utf16> pValueName, Uint32 Type,
          Pointer<Uint8> pData, Uint32 cbData),
      int Function(int hPrinter, Pointer<Utf16> pValueName, int Type,
          Pointer<Uint8> pData, int cbData)>('SetPrinterDataW');
  return _SetPrinterData(hPrinter, pValueName, Type, pData, cbData);
}

/// The SetPrinterDataEx function sets the configuration data for a printer
/// or print server. The function stores the configuration data under the
/// printer's registry key.
///
/// ```c
/// DWORD SetPrinterDataExW(
///   _In_ HANDLE  hPrinter,
///   _In_ LPCTSTR pKeyName,
///   _In_ LPCTSTR pValueName,
///   _In_ DWORD   Type,
///   _In_ LPBYTE  pData,
///   _In_ DWORD   cbData
/// );
/// ```
/// {@category winspool}
int SetPrinterDataEx(int hPrinter, Pointer<Utf16> pKeyName,
    Pointer<Utf16> pValueName, int Type, Pointer<Uint8> pData, int cbData) {
  final _SetPrinterDataEx = _winspool.lookupFunction<
      Uint32 Function(
          IntPtr hPrinter,
          Pointer<Utf16> pKeyName,
          Pointer<Utf16> pValueName,
          Uint32 Type,
          Pointer<Uint8> pData,
          Uint32 cbData),
      int Function(
          int hPrinter,
          Pointer<Utf16> pKeyName,
          Pointer<Utf16> pValueName,
          int Type,
          Pointer<Uint8> pData,
          int cbData)>('SetPrinterDataExW');
  return _SetPrinterDataEx(hPrinter, pKeyName, pValueName, Type, pData, cbData);
}

/// The StartDocPrinter function notifies the print spooler that a document
/// is to be spooled for printing.
///
/// ```c
/// DWORD StartDocPrinterW(
///   _In_ HANDLE hPrinter,
///   _In_ DWORD  Level,
///   _In_ LPBYTE pDocInfo
/// );
/// ```
/// {@category winspool}
int StartDocPrinter(int hPrinter, int Level, Pointer<DOC_INFO_1> pDocInfo) {
  final _StartDocPrinter = _winspool.lookupFunction<
      Uint32 Function(
          IntPtr hPrinter, Uint32 Level, Pointer<DOC_INFO_1> pDocInfo),
      int Function(int hPrinter, int Level,
          Pointer<DOC_INFO_1> pDocInfo)>('StartDocPrinterW');
  return _StartDocPrinter(hPrinter, Level, pDocInfo);
}
