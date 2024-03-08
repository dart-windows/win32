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

final _comctl32 = DynamicLibrary.open('comctl32.dll');

/// Calls the next handler in a window's subclass chain.
///
/// The last handler in the subclass chain calls the original window procedure
/// for the window.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/commctrl/nf-commctrl-defsubclassproc>.
///
/// {@category comctl32}
int DefSubclassProc(int hWnd, int uMsg, int wParam, int lParam) =>
    _DefSubclassProc(hWnd, uMsg, wParam, lParam);

final _DefSubclassProc = _comctl32.lookupFunction<
    LRESULT Function(HWND hWnd, Uint32 uMsg, WPARAM wParam, LPARAM lParam),
    int Function(
        int hWnd, int uMsg, int wParam, int lParam)>('DefSubclassProc');

/// Draws the specified text in the style of a status window with borders.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/commctrl/nf-commctrl-drawstatustextw>.
///
/// {@category comctl32}
void DrawStatusText(
        int hDC, Pointer<RECT> lprc, Pointer<Utf16> pszText, int uFlags) =>
    _DrawStatusText(hDC, lprc, pszText, uFlags);

final _DrawStatusText = _comctl32.lookupFunction<
    Void Function(
        HDC hDC, Pointer<RECT> lprc, Pointer<Utf16> pszText, Uint32 uFlags),
    void Function(int hDC, Pointer<RECT> lprc, Pointer<Utf16> pszText,
        int uFlags)>('DrawStatusTextW');

/// Ensures that the common control DLL (Comctl32.dll) is loaded, and registers
/// specific common control classes from the DLL.
///
/// An application must call this function before creating a common control.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/commctrl/nf-commctrl-initcommoncontrolsex>.
///
/// {@category comctl32}
int InitCommonControlsEx(Pointer<INITCOMMONCONTROLSEX> picce) =>
    _InitCommonControlsEx(picce);

final _InitCommonControlsEx = _comctl32.lookupFunction<
    BOOL Function(Pointer<INITCOMMONCONTROLSEX> picce),
    int Function(Pointer<INITCOMMONCONTROLSEX> picce)>('InitCommonControlsEx');

/// Removes a subclass callback from a window.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/commctrl/nf-commctrl-removewindowsubclass>.
///
/// {@category comctl32}
int RemoveWindowSubclass(int hWnd,
        Pointer<NativeFunction<SUBCLASSPROC>> pfnSubclass, int uIdSubclass) =>
    _RemoveWindowSubclass(hWnd, pfnSubclass, uIdSubclass);

final _RemoveWindowSubclass = _comctl32.lookupFunction<
    BOOL Function(HWND hWnd, Pointer<NativeFunction<SUBCLASSPROC>> pfnSubclass,
        IntPtr uIdSubclass),
    int Function(int hWnd, Pointer<NativeFunction<SUBCLASSPROC>> pfnSubclass,
        int uIdSubclass)>('RemoveWindowSubclass');

/// Installs or updates a window subclass callback.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/commctrl/nf-commctrl-setwindowsubclass>.
///
/// {@category comctl32}
int SetWindowSubclass(
        int hWnd,
        Pointer<NativeFunction<SUBCLASSPROC>> pfnSubclass,
        int uIdSubclass,
        int dwRefData) =>
    _SetWindowSubclass(hWnd, pfnSubclass, uIdSubclass, dwRefData);

final _SetWindowSubclass = _comctl32.lookupFunction<
    BOOL Function(HWND hWnd, Pointer<NativeFunction<SUBCLASSPROC>> pfnSubclass,
        IntPtr uIdSubclass, IntPtr dwRefData),
    int Function(int hWnd, Pointer<NativeFunction<SUBCLASSPROC>> pfnSubclass,
        int uIdSubclass, int dwRefData)>('SetWindowSubclass');

/// Creates, displays, and operates a task dialog.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/commctrl/nf-commctrl-taskdialog>.
///
/// {@category comctl32}
int TaskDialog(
        int? hwndOwner,
        int? hInstance,
        Pointer<Utf16>? pszWindowTitle,
        Pointer<Utf16>? pszMainInstruction,
        Pointer<Utf16>? pszContent,
        int dwCommonButtons,
        Pointer<Utf16>? pszIcon,
        Pointer<Int32>? pnButton) =>
    _TaskDialog(
        hwndOwner ?? 0,
        hInstance ?? 0,
        pszWindowTitle ?? nullptr,
        pszMainInstruction ?? nullptr,
        pszContent ?? nullptr,
        dwCommonButtons,
        pszIcon ?? nullptr,
        pnButton ?? nullptr);

final _TaskDialog = _comctl32.lookupFunction<
    HRESULT Function(
        HWND hwndOwner,
        HINSTANCE hInstance,
        Pointer<Utf16> pszWindowTitle,
        Pointer<Utf16> pszMainInstruction,
        Pointer<Utf16> pszContent,
        Int32 dwCommonButtons,
        Pointer<Utf16> pszIcon,
        Pointer<Int32> pnButton),
    int Function(
        int hwndOwner,
        int hInstance,
        Pointer<Utf16> pszWindowTitle,
        Pointer<Utf16> pszMainInstruction,
        Pointer<Utf16> pszContent,
        int dwCommonButtons,
        Pointer<Utf16> pszIcon,
        Pointer<Int32> pnButton)>('TaskDialog');

/// Creates, displays, and operates a task dialog.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/commctrl/nf-commctrl-taskdialogindirect>.
///
/// {@category comctl32}
int TaskDialogIndirect(
        Pointer<TASKDIALOGCONFIG> pTaskConfig,
        Pointer<Int32>? pnButton,
        Pointer<Int32>? pnRadioButton,
        Pointer<BOOL>? pfVerificationFlagChecked) =>
    _TaskDialogIndirect(pTaskConfig, pnButton ?? nullptr,
        pnRadioButton ?? nullptr, pfVerificationFlagChecked ?? nullptr);

final _TaskDialogIndirect = _comctl32.lookupFunction<
    HRESULT Function(
        Pointer<TASKDIALOGCONFIG> pTaskConfig,
        Pointer<Int32> pnButton,
        Pointer<Int32> pnRadioButton,
        Pointer<BOOL> pfVerificationFlagChecked),
    int Function(
        Pointer<TASKDIALOGCONFIG> pTaskConfig,
        Pointer<Int32> pnButton,
        Pointer<Int32> pnRadioButton,
        Pointer<BOOL> pfVerificationFlagChecked)>('TaskDialogIndirect');
