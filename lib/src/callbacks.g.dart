// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Dart representations of common callbacks used in the Win32 API.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'structs.g.dart';
import 'types.dart';

// --- MANUALLY PROJECTED CALLBACKS START ---

/// Application-defined callback function for handling incoming MIDI messages.
///
/// MidiInProc is a placeholder for the application-supplied function name. The
/// address of this function can be specified in the callback-address parameter
/// of the midiInOpen function.
typedef MIDIINPROC = Void Function(HMIDIIN hMidiIn, UINT wMsg,
    DWORD_PTR dwInstance, DWORD_PTR dwParam1, DWORD_PTR dwParam2);

/// Application-defined callback function for handling outgoing MIDI messages.
///
/// MidiOutProc is a placeholder for the application-supplied function name. The
/// address of the function can be specified in the callback-address parameter
/// of the midiOutOpen function.
typedef MIDIOUTPROC = Void Function(HMIDIOUT hmo, UINT wMsg,
    DWORD_PTR dwInstance, DWORD_PTR dwParam1, DWORD_PTR dwParam2);

// --- MANUALLY PROJECTED CALLBACKS END ---

/// {@category callback}
typedef DLGPROC = IntPtr Function(
    HWND param0, Uint32 param1, WPARAM param2, LPARAM param3);

/// {@category callback}
typedef DRAWSTATEPROC = BOOL Function(
    HDC hdc, LPARAM lData, WPARAM wData, Int32 cx, Int32 cy);

/// {@category callback}
typedef DTT_CALLBACK_PROC = Int32 Function(HDC hdc, Pointer<Utf16> pszText,
    Int32 cchText, Pointer<RECT> prc, Uint32 dwFlags, LPARAM lParam);

/// {@category callback}
typedef ENUMRESNAMEPROC = BOOL Function(HMODULE hModule, Pointer<Utf16> lpType,
    Pointer<Utf16> lpName, IntPtr lParam);

/// {@category callback}
typedef ENUMRESTYPEPROC = BOOL Function(
    HMODULE hModule, Pointer<Utf16> lpType, IntPtr lParam);

/// {@category callback}
typedef FARPROC = Pointer;

/// {@category callback}
typedef FONTENUMPROC = Int32 Function(Pointer<LOGFONT> param0,
    Pointer<TEXTMETRIC> param1, Uint32 param2, LPARAM param3);

/// {@category callback}
typedef GRAYSTRINGPROC = BOOL Function(HDC param0, LPARAM param1, Int32 param2);

/// {@category callback}
typedef HOOKPROC = LRESULT Function(Int32 code, WPARAM wParam, LPARAM lParam);

/// {@category callback}
typedef LPCCHOOKPROC = IntPtr Function(
    HWND param0, Uint32 param1, WPARAM param2, LPARAM param3);

/// {@category callback}
typedef LPCFHOOKPROC = IntPtr Function(
    HWND param0, Uint32 param1, WPARAM param2, LPARAM param3);

/// {@category callback}
typedef LPEXCEPFINO_DEFERRED_FILLIN = HRESULT Function(
    Pointer<EXCEPINFO> pExcepInfo);

/// {@category callback}
typedef LPFRHOOKPROC = IntPtr Function(
    HWND param0, Uint32 param1, WPARAM param2, LPARAM param3);

/// {@category callback}
typedef LPHANDLER_FUNCTION = Void Function(Uint32 dwControl);

/// {@category callback}
typedef LPHANDLER_FUNCTION_EX = Uint32 Function(Uint32 dwControl,
    Uint32 dwEventType, Pointer lpEventData, Pointer lpContext);

/// {@category callback}
typedef LPOCNCHKPROC = BOOL Function(
    IntPtr param0, IntPtr param1, Pointer param2);

/// {@category callback}
typedef LPOCNCONNPROC = IntPtr Function(IntPtr param0, Pointer<Utf16> param1,
    Pointer<Utf16> param2, Pointer param3);

/// {@category callback}
typedef LPOCNDSCPROC = Void Function(
    IntPtr param0, IntPtr param1, Pointer param2);

/// {@category callback}
typedef LPOFNHOOKPROC = IntPtr Function(
    HWND param0, Uint32 param1, WPARAM param2, LPARAM param3);

/// {@category callback}
typedef LPOVERLAPPED_COMPLETION_ROUTINE = Void Function(Uint32 dwErrorCode,
    Uint32 dwNumberOfBytesTransfered, Pointer<OVERLAPPED> lpOverlapped);

/// {@category callback}
typedef LPSERVICE_MAIN_FUNCTION = Void Function(
    Uint32 dwNumServicesArgs, Pointer<Pointer<Utf16>> lpServiceArgVectors);

/// {@category callback}
typedef LPTHREAD_START_ROUTINE = Uint32 Function(Pointer lpThreadParameter);

/// {@category callback}
typedef MONITORENUMPROC = BOOL Function(
    HMONITOR param0, HDC param1, Pointer<RECT> param2, LPARAM param3);

/// {@category callback}
typedef MagImageScalingCallback = BOOL Function(
    HWND hwnd,
    Pointer srcdata,
    MAGIMAGEHEADER srcheader,
    Pointer destdata,
    MAGIMAGEHEADER destheader,
    RECT unclipped,
    RECT clipped,
    HRGN dirty);

/// {@category callback}
typedef NEARPROC = Pointer;

/// {@category callback}
typedef PENUM_PAGE_FILE_CALLBACK = BOOL Function(
    Pointer pContext,
    Pointer<ENUM_PAGE_FILE_INFORMATION> pPageFileInfo,
    Pointer<Utf16> lpFilename);

/// {@category callback}
typedef PFNBLUETOOTH_GATT_EVENT_CALLBACK = Void Function(
    Int32 eventType, Pointer eventOutParameter, Pointer context);

/// {@category callback}
typedef PFN_AUTHENTICATION_CALLBACK_EX = BOOL Function(Pointer pvParam,
    Pointer<BLUETOOTH_AUTHENTICATION_CALLBACK_PARAMS> pAuthCallbackParams);

/// {@category callback}
typedef PFN_BLUETOOTH_ENUM_ATTRIBUTES_CALLBACK = BOOL Function(Uint32 uAttribId,
    Pointer<Uint8> pValueStream, Uint32 cbStreamSize, Pointer pvParam);

/// {@category callback}
typedef PFN_DEVICE_CALLBACK = BOOL Function(
    Pointer pvParam, Pointer<BLUETOOTH_DEVICE_INFO> pDevice);

/// {@category callback}
typedef PFN_SC_NOTIFY_CALLBACK = Void Function(Pointer pParameter);

/// {@category callback}
typedef PFTASKDIALOGCALLBACK = HRESULT Function(
    HWND hwnd, Uint32 msg, WPARAM wParam, LPARAM lParam, IntPtr lpRefData);

/// {@category callback}
typedef PHANDLER_ROUTINE = BOOL Function(Uint32 ctrlType);

/// {@category callback}
typedef PROC = Pointer;

/// {@category callback}
typedef PSYM_ENUMERATESYMBOLS_CALLBACK = BOOL Function(
    Pointer<SYMBOL_INFO> pSymInfo, Uint32 symbolSize, Pointer userContext);

/// {@category callback}
typedef SENDASYNCPROC = Void Function(
    HWND param0, Uint32 param1, IntPtr param2, LRESULT param3);

/// {@category callback}
typedef SPNOTIFYCALLBACK = Void Function(WPARAM wParam, LPARAM lParam);

/// {@category callback}
typedef SUBCLASSPROC = LRESULT Function(HWND hWnd, Uint32 uMsg, WPARAM wParam,
    LPARAM lParam, IntPtr uIdSubclass, IntPtr dwRefData);

/// {@category callback}
typedef TIMERPROC = Void Function(
    HWND param0, Uint32 param1, IntPtr param2, Uint32 param3);

/// {@category callback}
typedef WLAN_NOTIFICATION_CALLBACK = Void Function(
    Pointer<L2_NOTIFICATION_DATA> param0, Pointer param1);

/// {@category callback}
typedef WNDENUMPROC = BOOL Function(HWND param0, LPARAM param1);

/// {@category callback}
typedef WNDPROC = LRESULT Function(
    HWND param0, Uint32 param1, WPARAM param2, LPARAM param3);
