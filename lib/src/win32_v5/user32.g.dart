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

final _user32 = DynamicLibrary.open('user32.dll');

/// Sets the input locale identifier (formerly called the keyboard layout
/// handle) for the calling thread or the current process.
///
/// The input locale identifier specifies a locale as well as the physical
/// layout of the keyboard.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-activatekeyboardlayout>.
///
/// {@category user32}
int ActivateKeyboardLayout(int hkl, int flags) =>
    _ActivateKeyboardLayout(hkl, flags);

final _ActivateKeyboardLayout = _user32.lookupFunction<
    HKL Function(HKL hkl, Uint32 flags),
    int Function(int hkl, int flags)>('ActivateKeyboardLayout');

/// Places the given window in the system-maintained clipboard format listener
/// list.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-addclipboardformatlistener>.
///
/// {@category user32}
int AddClipboardFormatListener(int hwnd) => _AddClipboardFormatListener(hwnd);

final _AddClipboardFormatListener =
    _user32.lookupFunction<BOOL Function(HWND hwnd), int Function(int hwnd)>(
        'AddClipboardFormatListener');

/// Calculates the required size of the window rectangle, based on the desired
/// client-rectangle size.
///
/// The window rectangle can then be passed to the CreateWindow function to
/// create a window whose client area is the desired size.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-adjustwindowrect>.
///
/// {@category user32}
int AdjustWindowRect(Pointer<RECT> lpRect, int dwStyle, int bMenu) =>
    _AdjustWindowRect(lpRect, dwStyle, bMenu);

final _AdjustWindowRect = _user32.lookupFunction<
    BOOL Function(Pointer<RECT> lpRect, Uint32 dwStyle, BOOL bMenu),
    int Function(
        Pointer<RECT> lpRect, int dwStyle, int bMenu)>('AdjustWindowRect');

/// Calculates the required size of the window rectangle, based on the desired
/// size of the client rectangle.
///
/// The window rectangle can then be passed to the CreateWindowEx function to
/// create a window whose client area is the desired size.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-adjustwindowrectex>.
///
/// {@category user32}
int AdjustWindowRectEx(
        Pointer<RECT> lpRect, int dwStyle, int bMenu, int dwExStyle) =>
    _AdjustWindowRectEx(lpRect, dwStyle, bMenu, dwExStyle);

final _AdjustWindowRectEx = _user32.lookupFunction<
    BOOL Function(
        Pointer<RECT> lpRect, Uint32 dwStyle, BOOL bMenu, Uint32 dwExStyle),
    int Function(Pointer<RECT> lpRect, int dwStyle, int bMenu,
        int dwExStyle)>('AdjustWindowRectEx');

/// Calculates the required size of the window rectangle, based on the desired
/// size of the client rectangle and the provided DPI.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-adjustwindowrectexfordpi>.
///
/// {@category user32}
int AdjustWindowRectExForDpi(
        Pointer<RECT> lpRect, int dwStyle, int bMenu, int dwExStyle, int dpi) =>
    _AdjustWindowRectExForDpi(lpRect, dwStyle, bMenu, dwExStyle, dpi);

final _AdjustWindowRectExForDpi = _user32.lookupFunction<
    BOOL Function(Pointer<RECT> lpRect, Uint32 dwStyle, BOOL bMenu,
        Uint32 dwExStyle, Uint32 dpi),
    int Function(Pointer<RECT> lpRect, int dwStyle, int bMenu, int dwExStyle,
        int dpi)>('AdjustWindowRectExForDpi');

/// Enables the specified process to set the foreground window using the
/// SetForegroundWindow function.
///
/// The calling process must already be able to set the foreground window.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-allowsetforegroundwindow>.
///
/// {@category user32}
int AllowSetForegroundWindow(int dwProcessId) =>
    _AllowSetForegroundWindow(dwProcessId);

final _AllowSetForegroundWindow = _user32.lookupFunction<
    BOOL Function(Uint32 dwProcessId),
    int Function(int dwProcessId)>('AllowSetForegroundWindow');

/// Enables you to produce special effects when showing or hiding windows.
///
/// There are four types of animation: roll, slide, collapse or expand, and
/// alpha-blended fade.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-animatewindow>.
///
/// {@category user32}
int AnimateWindow(int hWnd, int dwTime, int dwFlags) =>
    _AnimateWindow(hWnd, dwTime, dwFlags);

final _AnimateWindow = _user32.lookupFunction<
    BOOL Function(HWND hWnd, Uint32 dwTime, Uint32 dwFlags),
    int Function(int hWnd, int dwTime, int dwFlags)>('AnimateWindow');

/// Indicates whether an owned, visible, top-level pop-up, or overlapped window
/// exists on the screen.
///
/// The function searches the entire screen, not just the calling application's
/// client area.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-anypopup>.
///
/// {@category user32}
int AnyPopup() => _AnyPopup();

final _AnyPopup =
    _user32.lookupFunction<BOOL Function(), int Function()>('AnyPopup');

/// Appends a new item to the end of the specified menu bar, drop-down menu,
/// submenu, or shortcut menu.
///
/// You can use this function to specify the content, appearance, and behavior
/// of the menu item.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-appendmenuw>.
///
/// {@category user32}
int AppendMenu(
        int hMenu, int uFlags, int uIDNewItem, Pointer<Utf16>? lpNewItem) =>
    _AppendMenu(hMenu, uFlags, uIDNewItem, lpNewItem ?? nullptr);

final _AppendMenu = _user32.lookupFunction<
    BOOL Function(HMENU hMenu, Uint32 uFlags, IntPtr uIDNewItem,
        Pointer<Utf16> lpNewItem),
    int Function(int hMenu, int uFlags, int uIDNewItem,
        Pointer<Utf16> lpNewItem)>('AppendMenuW');

/// Determines whether two DPI_AWARENESS_CONTEXT values are identical.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-aredpiawarenesscontextsequal>.
///
/// {@category user32}
int AreDpiAwarenessContextsEqual(int dpiContextA, int dpiContextB) =>
    _AreDpiAwarenessContextsEqual(dpiContextA, dpiContextB);

final _AreDpiAwarenessContextsEqual = _user32.lookupFunction<
    BOOL Function(
        DPI_AWARENESS_CONTEXT dpiContextA, DPI_AWARENESS_CONTEXT dpiContextB),
    int Function(
        int dpiContextA, int dpiContextB)>('AreDpiAwarenessContextsEqual');

/// Arranges all the minimized (iconic) child windows of the specified parent
/// window.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-arrangeiconicwindows>.
///
/// {@category user32}
int ArrangeIconicWindows(int hWnd) => _ArrangeIconicWindows(hWnd);

final _ArrangeIconicWindows =
    _user32.lookupFunction<Uint32 Function(HWND hWnd), int Function(int hWnd)>(
        'ArrangeIconicWindows');

/// Attaches or detaches the input processing mechanism of one thread to that of
/// another thread.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-attachthreadinput>.
///
/// {@category user32}
int AttachThreadInput(int idAttach, int idAttachTo, int fAttach) =>
    _AttachThreadInput(idAttach, idAttachTo, fAttach);

final _AttachThreadInput = _user32.lookupFunction<
    BOOL Function(Uint32 idAttach, Uint32 idAttachTo, BOOL fAttach),
    int Function(
        int idAttach, int idAttachTo, int fAttach)>('AttachThreadInput');

/// Allocates memory for a multiple-window- position structure and returns the
/// handle to the structure.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-begindeferwindowpos>.
///
/// {@category user32}
int BeginDeferWindowPos(int nNumWindows) => _BeginDeferWindowPos(nNumWindows);

final _BeginDeferWindowPos = _user32.lookupFunction<
    HDWP Function(Int32 nNumWindows),
    int Function(int nNumWindows)>('BeginDeferWindowPos');

/// Prepares the specified window for painting and fills a PAINTSTRUCT structure
/// with information about the painting.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-beginpaint>.
///
/// {@category user32}
int BeginPaint(int hWnd, Pointer<PAINTSTRUCT> lpPaint) =>
    _BeginPaint(hWnd, lpPaint);

final _BeginPaint = _user32.lookupFunction<
    HDC Function(HWND hWnd, Pointer<PAINTSTRUCT> lpPaint),
    int Function(int hWnd, Pointer<PAINTSTRUCT> lpPaint)>('BeginPaint');

/// Blocks keyboard and mouse input events from reaching applications.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-blockinput>.
///
/// {@category user32}
int BlockInput(int fBlockIt) => _BlockInput(fBlockIt);

final _BlockInput = _user32.lookupFunction<BOOL Function(BOOL fBlockIt),
    int Function(int fBlockIt)>('BlockInput');

/// Brings the specified window to the top of the Z order.
///
/// If the window is a top-level window, it is activated. If the window is a
/// child window, the top-level parent window associated with the child window
/// is activated.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-bringwindowtotop>.
///
/// {@category user32}
int BringWindowToTop(int hWnd) => _BringWindowToTop(hWnd);

final _BringWindowToTop =
    _user32.lookupFunction<BOOL Function(HWND hWnd), int Function(int hWnd)>(
        'BringWindowToTop');

/// Sends a message to the specified recipients.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-broadcastsystemmessagew>.
///
/// {@category user32}
int BroadcastSystemMessage(
        int flags, Pointer<Uint32>? lpInfo, int msg, int wParam, int lParam) =>
    _BroadcastSystemMessage(flags, lpInfo ?? nullptr, msg, wParam, lParam);

final _BroadcastSystemMessage = _user32.lookupFunction<
    Int32 Function(Uint32 flags, Pointer<Uint32> lpInfo, Uint32 msg,
        WPARAM wParam, LPARAM lParam),
    int Function(int flags, Pointer<Uint32> lpInfo, int msg, int wParam,
        int lParam)>('BroadcastSystemMessageW');

/// Sends a message to the specified recipients.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-broadcastsystemmessageexw>.
///
/// {@category user32}
int BroadcastSystemMessageEx(int flags, Pointer<Uint32>? lpInfo, int msg,
        int wParam, int lParam, Pointer<BSMINFO>? pbsmInfo) =>
    _BroadcastSystemMessageEx(
        flags, lpInfo ?? nullptr, msg, wParam, lParam, pbsmInfo ?? nullptr);

final _BroadcastSystemMessageEx = _user32.lookupFunction<
    Int32 Function(Uint32 flags, Pointer<Uint32> lpInfo, Uint32 msg,
        WPARAM wParam, LPARAM lParam, Pointer<BSMINFO> pbsmInfo),
    int Function(int flags, Pointer<Uint32> lpInfo, int msg, int wParam,
        int lParam, Pointer<BSMINFO> pbsmInfo)>('BroadcastSystemMessageExW');

/// Calculates an appropriate pop-up window position using the specified anchor
/// point, pop-up window size, flags, and the optional exclude rectangle.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-calculatepopupwindowposition>.
///
/// {@category user32}
int CalculatePopupWindowPosition(
        Pointer<POINT> anchorPoint,
        Pointer<SIZE> windowSize,
        int flags,
        Pointer<RECT>? excludeRect,
        Pointer<RECT> popupWindowPosition) =>
    _CalculatePopupWindowPosition(anchorPoint, windowSize, flags,
        excludeRect ?? nullptr, popupWindowPosition);

final _CalculatePopupWindowPosition = _user32.lookupFunction<
    BOOL Function(
        Pointer<POINT> anchorPoint,
        Pointer<SIZE> windowSize,
        Uint32 flags,
        Pointer<RECT> excludeRect,
        Pointer<RECT> popupWindowPosition),
    int Function(
        Pointer<POINT> anchorPoint,
        Pointer<SIZE> windowSize,
        int flags,
        Pointer<RECT> excludeRect,
        Pointer<RECT> popupWindowPosition)>('CalculatePopupWindowPosition');

/// Passes the specified message and hook code to the hook procedures associated
/// with the WH_SYSMSGFILTER and WH_MSGFILTER hooks.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-callmsgfilterw>.
///
/// {@category user32}
int CallMsgFilter(Pointer<MSG> lpMsg, int nCode) =>
    _CallMsgFilter(lpMsg, nCode);

final _CallMsgFilter = _user32.lookupFunction<
    BOOL Function(Pointer<MSG> lpMsg, Int32 nCode),
    int Function(Pointer<MSG> lpMsg, int nCode)>('CallMsgFilterW');

/// Passes the hook information to the next hook procedure in the current hook
/// chain.
///
/// A hook procedure can call this function either before or after processing
/// the hook information.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-callnexthookex>.
///
/// {@category user32}
int CallNextHookEx(int? hhk, int nCode, int wParam, int lParam) =>
    _CallNextHookEx(hhk ?? 0, nCode, wParam, lParam);

final _CallNextHookEx = _user32.lookupFunction<
    LRESULT Function(HHOOK hhk, Int32 nCode, WPARAM wParam, LPARAM lParam),
    int Function(int hhk, int nCode, int wParam, int lParam)>('CallNextHookEx');

/// Passes message information to the specified window procedure.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-callwindowprocw>.
///
/// {@category user32}
int CallWindowProc(Pointer<NativeFunction<WNDPROC>> lpPrevWndFunc, int hWnd,
        int msg, int wParam, int lParam) =>
    _CallWindowProc(lpPrevWndFunc, hWnd, msg, wParam, lParam);

final _CallWindowProc = _user32.lookupFunction<
    LRESULT Function(Pointer<NativeFunction<WNDPROC>> lpPrevWndFunc, HWND hWnd,
        Uint32 msg, WPARAM wParam, LPARAM lParam),
    int Function(Pointer<NativeFunction<WNDPROC>> lpPrevWndFunc, int hWnd,
        int msg, int wParam, int lParam)>('CallWindowProcW');

/// Cascades the specified child windows of the specified parent window.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-cascadewindows>.
///
/// {@category user32}
int CascadeWindows(int? hwndParent, int wHow, Pointer<RECT>? lpRect, int cKids,
        Pointer<HWND>? lpKids) =>
    _CascadeWindows(
        hwndParent ?? 0, wHow, lpRect ?? nullptr, cKids, lpKids ?? nullptr);

final _CascadeWindows = _user32.lookupFunction<
    Uint16 Function(HWND hwndParent, Uint32 wHow, Pointer<RECT> lpRect,
        Uint32 cKids, Pointer<HWND> lpKids),
    int Function(int hwndParent, int wHow, Pointer<RECT> lpRect, int cKids,
        Pointer<HWND> lpKids)>('CascadeWindows');

/// Removes a specified window from the chain of clipboard viewers.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-changeclipboardchain>.
///
/// {@category user32}
int ChangeClipboardChain(int hWndRemove, int hWndNewNext) =>
    _ChangeClipboardChain(hWndRemove, hWndNewNext);

final _ChangeClipboardChain = _user32.lookupFunction<
    BOOL Function(HWND hWndRemove, HWND hWndNewNext),
    int Function(int hWndRemove, int hWndNewNext)>('ChangeClipboardChain');

/// Changes the settings of the default display device to the specified graphics
/// mode.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-changedisplaysettingsw>.
///
/// {@category user32}
int ChangeDisplaySettings(Pointer<DEVMODE>? lpDevMode, int dwFlags) =>
    _ChangeDisplaySettings(lpDevMode ?? nullptr, dwFlags);

final _ChangeDisplaySettings = _user32.lookupFunction<
    Int32 Function(Pointer<DEVMODE> lpDevMode, Uint32 dwFlags),
    int Function(
        Pointer<DEVMODE> lpDevMode, int dwFlags)>('ChangeDisplaySettingsW');

/// Changes the settings of the specified display device to the specified
/// graphics mode.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-changedisplaysettingsexw>.
///
/// {@category user32}
int ChangeDisplaySettingsEx(Pointer<Utf16>? lpszDeviceName,
        Pointer<DEVMODE>? lpDevMode, int dwflags, Pointer? lParam) =>
    _ChangeDisplaySettingsEx(lpszDeviceName ?? nullptr, lpDevMode ?? nullptr, 0,
        dwflags, lParam ?? nullptr);

final _ChangeDisplaySettingsEx = _user32.lookupFunction<
    Int32 Function(Pointer<Utf16> lpszDeviceName, Pointer<DEVMODE> lpDevMode,
        HWND hwnd, Uint32 dwflags, Pointer lParam),
    int Function(Pointer<Utf16> lpszDeviceName, Pointer<DEVMODE> lpDevMode,
        int hwnd, int dwflags, Pointer lParam)>('ChangeDisplaySettingsExW');

/// Adds or removes a message from the User Interface Privilege Isolation (UIPI)
/// message filter.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-changewindowmessagefilter>.
///
/// {@category user32}
int ChangeWindowMessageFilter(int message, int dwFlag) =>
    _ChangeWindowMessageFilter(message, dwFlag);

final _ChangeWindowMessageFilter = _user32.lookupFunction<
    BOOL Function(Uint32 message, Uint32 dwFlag),
    int Function(int message, int dwFlag)>('ChangeWindowMessageFilter');

/// Modifies the User Interface Privilege Isolation (UIPI) message filter for a
/// specified window.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-changewindowmessagefilterex>.
///
/// {@category user32}
int ChangeWindowMessageFilterEx(int hwnd, int message, int action,
        Pointer<CHANGEFILTERSTRUCT>? pChangeFilterStruct) =>
    _ChangeWindowMessageFilterEx(
        hwnd, message, action, pChangeFilterStruct ?? nullptr);

final _ChangeWindowMessageFilterEx = _user32.lookupFunction<
        BOOL Function(HWND hwnd, Uint32 message, Uint32 action,
            Pointer<CHANGEFILTERSTRUCT> pChangeFilterStruct),
        int Function(int hwnd, int message, int action,
            Pointer<CHANGEFILTERSTRUCT> pChangeFilterStruct)>(
    'ChangeWindowMessageFilterEx');

/// Changes the check state of a button control.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-checkdlgbutton>.
///
/// {@category user32}
int CheckDlgButton(int hDlg, int nIDButton, int uCheck) =>
    _CheckDlgButton(hDlg, nIDButton, uCheck);

final _CheckDlgButton = _user32.lookupFunction<
    BOOL Function(HWND hDlg, Int32 nIDButton, Uint32 uCheck),
    int Function(int hDlg, int nIDButton, int uCheck)>('CheckDlgButton');

/// Adds a check mark to (checks) a specified radio button in a group and
/// removes a check mark from (clears) all other radio buttons in the group.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-checkradiobutton>.
///
/// {@category user32}
int CheckRadioButton(
        int hDlg, int nIDFirstButton, int nIDLastButton, int nIDCheckButton) =>
    _CheckRadioButton(hDlg, nIDFirstButton, nIDLastButton, nIDCheckButton);

final _CheckRadioButton = _user32.lookupFunction<
    BOOL Function(HWND hDlg, Int32 nIDFirstButton, Int32 nIDLastButton,
        Int32 nIDCheckButton),
    int Function(int hDlg, int nIDFirstButton, int nIDLastButton,
        int nIDCheckButton)>('CheckRadioButton');

/// Determines which, if any, of the child windows belonging to a parent window
/// contains the specified point.
///
/// The search is restricted to immediate child windows. Grandchildren, and
/// deeper descendant windows are not searched.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-childwindowfrompoint>.
///
/// {@category user32}
int ChildWindowFromPoint(int hWndParent, POINT point) =>
    _ChildWindowFromPoint(hWndParent, point);

final _ChildWindowFromPoint = _user32.lookupFunction<
    HWND Function(HWND hWndParent, POINT point),
    int Function(int hWndParent, POINT point)>('ChildWindowFromPoint');

/// Determines which, if any, of the child windows belonging to the specified
/// parent window contains the specified point.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-childwindowfrompointex>.
///
/// {@category user32}
int ChildWindowFromPointEx(int hwnd, POINT pt, int flags) =>
    _ChildWindowFromPointEx(hwnd, pt, flags);

final _ChildWindowFromPointEx = _user32.lookupFunction<
    HWND Function(HWND hwnd, POINT pt, Uint32 flags),
    int Function(int hwnd, POINT pt, int flags)>('ChildWindowFromPointEx');

/// Converts the client-area coordinates of a specified point to screen
/// coordinates.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-clienttoscreen>.
///
/// {@category user32}
int ClientToScreen(int hWnd, Pointer<POINT> lpPoint) =>
    _ClientToScreen(hWnd, lpPoint);

final _ClientToScreen = _user32.lookupFunction<
    BOOL Function(HWND hWnd, Pointer<POINT> lpPoint),
    int Function(int hWnd, Pointer<POINT> lpPoint)>('ClientToScreen');

/// Confines the cursor to a rectangular area on the screen.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-clipcursor>.
///
/// {@category user32}
int ClipCursor(Pointer<RECT>? lpRect) => _ClipCursor(lpRect ?? nullptr);

final _ClipCursor = _user32.lookupFunction<BOOL Function(Pointer<RECT> lpRect),
    int Function(Pointer<RECT> lpRect)>('ClipCursor');

/// Closes the clipboard.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-closeclipboard>.
///
/// {@category user32}
int CloseClipboard() => _CloseClipboard();

final _CloseClipboard =
    _user32.lookupFunction<BOOL Function(), int Function()>('CloseClipboard');

/// Closes resources associated with a gesture information handle.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-closegestureinfohandle>.
///
/// {@category user32}
int CloseGestureInfoHandle(int hGestureInfo) =>
    _CloseGestureInfoHandle(hGestureInfo);

final _CloseGestureInfoHandle = _user32.lookupFunction<
    BOOL Function(HGESTUREINFO hGestureInfo),
    int Function(int hGestureInfo)>('CloseGestureInfoHandle');

/// Closes a touch input handle, frees process memory associated with it, and
/// invalidates the handle.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-closetouchinputhandle>.
///
/// {@category user32}
int CloseTouchInputHandle(int hTouchInput) =>
    _CloseTouchInputHandle(hTouchInput);

final _CloseTouchInputHandle = _user32.lookupFunction<
    BOOL Function(HTOUCHINPUT hTouchInput),
    int Function(int hTouchInput)>('CloseTouchInputHandle');

/// Minimizes (but does not destroy) the specified window.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-closewindow>.
///
/// {@category user32}
int CloseWindow(int hWnd) => _CloseWindow(hWnd);

final _CloseWindow =
    _user32.lookupFunction<BOOL Function(HWND hWnd), int Function(int hWnd)>(
        'CloseWindow');

/// Copies the specified accelerator table.
///
/// This function is used to obtain the accelerator-table data that corresponds
/// to an accelerator-table handle, or to determine the size of the
/// accelerator-table data.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-copyacceleratortablew>.
///
/// {@category user32}
int CopyAcceleratorTable(
        int hAccelSrc, Pointer<ACCEL>? lpAccelDst, int cAccelEntries) =>
    _CopyAcceleratorTable(hAccelSrc, lpAccelDst ?? nullptr, cAccelEntries);

final _CopyAcceleratorTable = _user32.lookupFunction<
    Int32 Function(
        HACCEL hAccelSrc, Pointer<ACCEL> lpAccelDst, Int32 cAccelEntries),
    int Function(int hAccelSrc, Pointer<ACCEL> lpAccelDst,
        int cAccelEntries)>('CopyAcceleratorTableW');

/// Copies the specified icon from another module to the current module.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-copyicon>.
///
/// {@category user32}
int CopyIcon(int hIcon) => _CopyIcon(hIcon);

final _CopyIcon = _user32.lookupFunction<HICON Function(HICON hIcon),
    int Function(int hIcon)>('CopyIcon');

/// Creates a new image (icon, cursor, or bitmap) and copies the attributes of
/// the specified image to the new one.
///
/// If necessary, the function stretches the bits to fit the desired size of the
/// new image.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-copyimage>.
///
/// {@category user32}
int CopyImage(int h, int type, int cx, int cy, int flags) =>
    _CopyImage(h, type, cx, cy, flags);

final _CopyImage = _user32.lookupFunction<
    HANDLE Function(HANDLE h, Uint32 type, Int32 cx, Int32 cy, Uint32 flags),
    int Function(int h, int type, int cx, int cy, int flags)>('CopyImage');

/// Copies the coordinates of one rectangle to another.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-copyrect>.
///
/// {@category user32}
int CopyRect(Pointer<RECT> lprcDst, Pointer<RECT> lprcSrc) =>
    _CopyRect(lprcDst, lprcSrc);

final _CopyRect = _user32.lookupFunction<
    BOOL Function(Pointer<RECT> lprcDst, Pointer<RECT> lprcSrc),
    int Function(Pointer<RECT> lprcDst, Pointer<RECT> lprcSrc)>('CopyRect');

/// Retrieves the number of different data formats currently on the clipboard.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-countclipboardformats>.
///
/// {@category user32}
int CountClipboardFormats() => _CountClipboardFormats();

final _CountClipboardFormats = _user32
    .lookupFunction<Int32 Function(), int Function()>('CountClipboardFormats');

/// Creates an accelerator table.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-createacceleratortablew>.
///
/// {@category user32}
int CreateAcceleratorTable(Pointer<ACCEL> paccel, int cAccel) =>
    _CreateAcceleratorTable(paccel, cAccel);

final _CreateAcceleratorTable = _user32.lookupFunction<
    HACCEL Function(Pointer<ACCEL> paccel, Int32 cAccel),
    int Function(Pointer<ACCEL> paccel, int cAccel)>('CreateAcceleratorTableW');

/// Creates a new shape for the system caret and assigns ownership of the caret
/// to the specified window.
///
/// The caret shape can be a line, a block, or a bitmap.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-createcaret>.
///
/// {@category user32}
int CreateCaret(int hWnd, int? hBitmap, int nWidth, int nHeight) =>
    _CreateCaret(hWnd, hBitmap ?? 0, nWidth, nHeight);

final _CreateCaret = _user32.lookupFunction<
    BOOL Function(HWND hWnd, HBITMAP hBitmap, Int32 nWidth, Int32 nHeight),
    int Function(
        int hWnd, int hBitmap, int nWidth, int nHeight)>('CreateCaret');

/// Creates a cursor having the specified size, bit patterns, and hot spot.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-createcursor>.
///
/// {@category user32}
int CreateCursor(int? hInst, int xHotSpot, int yHotSpot, int nWidth,
        int nHeight, Pointer pvANDPlane, Pointer pvXORPlane) =>
    _CreateCursor(hInst ?? 0, xHotSpot, yHotSpot, nWidth, nHeight, pvANDPlane,
        pvXORPlane);

final _CreateCursor = _user32.lookupFunction<
    HCURSOR Function(HINSTANCE hInst, Int32 xHotSpot, Int32 yHotSpot,
        Int32 nWidth, Int32 nHeight, Pointer pvANDPlane, Pointer pvXORPlane),
    int Function(int hInst, int xHotSpot, int yHotSpot, int nWidth, int nHeight,
        Pointer pvANDPlane, Pointer pvXORPlane)>('CreateCursor');

/// Creates a new desktop, associates it with the current window station of the
/// calling process, and assigns it to the calling thread.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-createdesktopw>.
///
/// {@category user32}
int CreateDesktop(Pointer<Utf16> lpszDesktop, int dwFlags, int dwDesiredAccess,
        Pointer<SECURITY_ATTRIBUTES>? lpsa) =>
    _CreateDesktop(lpszDesktop, nullptr, nullptr, dwFlags, dwDesiredAccess,
        lpsa ?? nullptr);

final _CreateDesktop = _user32.lookupFunction<
    HDESK Function(
        Pointer<Utf16> lpszDesktop,
        Pointer<Utf16> lpszDevice,
        Pointer<DEVMODE> pDevmode,
        Uint32 dwFlags,
        Uint32 dwDesiredAccess,
        Pointer<SECURITY_ATTRIBUTES> lpsa),
    int Function(
        Pointer<Utf16> lpszDesktop,
        Pointer<Utf16> lpszDevice,
        Pointer<DEVMODE> pDevmode,
        int dwFlags,
        int dwDesiredAccess,
        Pointer<SECURITY_ATTRIBUTES> lpsa)>('CreateDesktopW');

/// Creates a new desktop with the specified heap, associates it with the
/// current window station of the calling process, and assigns it to the calling
/// thread.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-createdesktopexw>.
///
/// {@category user32}
int CreateDesktopEx(
        Pointer<Utf16> lpszDesktop,
        int dwFlags,
        int dwDesiredAccess,
        Pointer<SECURITY_ATTRIBUTES>? lpsa,
        int ulHeapSize) =>
    _CreateDesktopEx(lpszDesktop, nullptr, nullptr, dwFlags, dwDesiredAccess,
        lpsa ?? nullptr, ulHeapSize, nullptr);

final _CreateDesktopEx = _user32.lookupFunction<
    HDESK Function(
        Pointer<Utf16> lpszDesktop,
        Pointer<Utf16> lpszDevice,
        Pointer<DEVMODE> pDevmode,
        Uint32 dwFlags,
        Uint32 dwDesiredAccess,
        Pointer<SECURITY_ATTRIBUTES> lpsa,
        Uint32 ulHeapSize,
        Pointer pvoid),
    int Function(
        Pointer<Utf16> lpszDesktop,
        Pointer<Utf16> lpszDevice,
        Pointer<DEVMODE> pDevmode,
        int dwFlags,
        int dwDesiredAccess,
        Pointer<SECURITY_ATTRIBUTES> lpsa,
        int ulHeapSize,
        Pointer pvoid)>('CreateDesktopExW');

/// Creates a modeless dialog box from a dialog box template in memory.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-createdialogindirectparamw>.
///
/// {@category user32}
int CreateDialogIndirectParam(
        int? hInstance,
        Pointer<DLGTEMPLATE> lpTemplate,
        int? hWndParent,
        Pointer<NativeFunction<DLGPROC>>? lpDialogFunc,
        int dwInitParam) =>
    _CreateDialogIndirectParam(hInstance ?? 0, lpTemplate, hWndParent ?? 0,
        lpDialogFunc ?? nullptr, dwInitParam);

final _CreateDialogIndirectParam = _user32.lookupFunction<
    HWND Function(
        HINSTANCE hInstance,
        Pointer<DLGTEMPLATE> lpTemplate,
        HWND hWndParent,
        Pointer<NativeFunction<DLGPROC>> lpDialogFunc,
        LPARAM dwInitParam),
    int Function(
        int hInstance,
        Pointer<DLGTEMPLATE> lpTemplate,
        int hWndParent,
        Pointer<NativeFunction<DLGPROC>> lpDialogFunc,
        int dwInitParam)>('CreateDialogIndirectParamW');

/// Creates an icon that has the specified size, colors, and bit patterns.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-createicon>.
///
/// {@category user32}
int CreateIcon(int? hInstance, int nWidth, int nHeight, int cPlanes,
        int cBitsPixel, Pointer<Uint8> lpbANDbits, Pointer<Uint8> lpbXORbits) =>
    _CreateIcon(hInstance ?? 0, nWidth, nHeight, cPlanes, cBitsPixel,
        lpbANDbits, lpbXORbits);

final _CreateIcon = _user32.lookupFunction<
    HICON Function(
        HINSTANCE hInstance,
        Int32 nWidth,
        Int32 nHeight,
        Uint8 cPlanes,
        Uint8 cBitsPixel,
        Pointer<Uint8> lpbANDbits,
        Pointer<Uint8> lpbXORbits),
    int Function(
        int hInstance,
        int nWidth,
        int nHeight,
        int cPlanes,
        int cBitsPixel,
        Pointer<Uint8> lpbANDbits,
        Pointer<Uint8> lpbXORbits)>('CreateIcon');

/// Creates an icon or cursor from resource bits describing the icon.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-createiconfromresource>.
///
/// {@category user32}
int CreateIconFromResource(
        Pointer<Uint8> presbits, int dwResSize, int fIcon, int dwVer) =>
    _CreateIconFromResource(presbits, dwResSize, fIcon, dwVer);

final _CreateIconFromResource = _user32.lookupFunction<
    HICON Function(
        Pointer<Uint8> presbits, Uint32 dwResSize, BOOL fIcon, Uint32 dwVer),
    int Function(Pointer<Uint8> presbits, int dwResSize, int fIcon,
        int dwVer)>('CreateIconFromResource');

/// Creates an icon or cursor from resource bits describing the icon.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-createiconfromresourceex>.
///
/// {@category user32}
int CreateIconFromResourceEx(Pointer<Uint8> presbits, int dwResSize, int fIcon,
        int dwVer, int cxDesired, int cyDesired, int flags) =>
    _CreateIconFromResourceEx(
        presbits, dwResSize, fIcon, dwVer, cxDesired, cyDesired, flags);

final _CreateIconFromResourceEx = _user32.lookupFunction<
    HICON Function(Pointer<Uint8> presbits, Uint32 dwResSize, BOOL fIcon,
        Uint32 dwVer, Int32 cxDesired, Int32 cyDesired, Uint32 flags),
    int Function(Pointer<Uint8> presbits, int dwResSize, int fIcon, int dwVer,
        int cxDesired, int cyDesired, int flags)>('CreateIconFromResourceEx');

/// Creates an icon or cursor from an ICONINFO structure.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-createiconindirect>.
///
/// {@category user32}
int CreateIconIndirect(Pointer<ICONINFO> piconinfo) =>
    _CreateIconIndirect(piconinfo);

final _CreateIconIndirect = _user32.lookupFunction<
    HICON Function(Pointer<ICONINFO> piconinfo),
    int Function(Pointer<ICONINFO> piconinfo)>('CreateIconIndirect');

/// Creates a multiple-document interface (MDI) child window.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-createmdiwindoww>.
///
/// {@category user32}
int CreateMDIWindow(
        Pointer<Utf16> lpClassName,
        Pointer<Utf16> lpWindowName,
        int dwStyle,
        int x,
        int y,
        int nWidth,
        int nHeight,
        int? hWndParent,
        int? hInstance,
        int lParam) =>
    _CreateMDIWindow(lpClassName, lpWindowName, dwStyle, x, y, nWidth, nHeight,
        hWndParent ?? 0, hInstance ?? 0, lParam);

final _CreateMDIWindow = _user32.lookupFunction<
    HWND Function(
        Pointer<Utf16> lpClassName,
        Pointer<Utf16> lpWindowName,
        Uint32 dwStyle,
        Int32 x,
        Int32 y,
        Int32 nWidth,
        Int32 nHeight,
        HWND hWndParent,
        HINSTANCE hInstance,
        LPARAM lParam),
    int Function(
        Pointer<Utf16> lpClassName,
        Pointer<Utf16> lpWindowName,
        int dwStyle,
        int x,
        int y,
        int nWidth,
        int nHeight,
        int hWndParent,
        int hInstance,
        int lParam)>('CreateMDIWindowW');

/// Creates a menu.
///
/// The menu is initially empty, but it can be filled with menu items by using
/// the InsertMenuItem, AppendMenu, and InsertMenu functions.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-createmenu>.
///
/// {@category user32}
int CreateMenu() => _CreateMenu();

final _CreateMenu =
    _user32.lookupFunction<HMENU Function(), int Function()>('CreateMenu');

/// Creates a drop-down menu, submenu, or shortcut menu.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-createpopupmenu>.
///
/// {@category user32}
int CreatePopupMenu() => _CreatePopupMenu();

final _CreatePopupMenu =
    _user32.lookupFunction<HMENU Function(), int Function()>('CreatePopupMenu');

/// Creates an overlapped, pop-up, or child window with an extended window
/// style; otherwise, this function is identical to the CreateWindow function.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-createwindowexw>.
///
/// {@category user32}
int CreateWindowEx(
        int dwExStyle,
        Pointer<Utf16>? lpClassName,
        Pointer<Utf16>? lpWindowName,
        int dwStyle,
        int x,
        int y,
        int nWidth,
        int nHeight,
        int? hWndParent,
        int? hMenu,
        int? hInstance,
        Pointer? lpParam) =>
    _CreateWindowEx(
        dwExStyle,
        lpClassName ?? nullptr,
        lpWindowName ?? nullptr,
        dwStyle,
        x,
        y,
        nWidth,
        nHeight,
        hWndParent ?? 0,
        hMenu ?? 0,
        hInstance ?? 0,
        lpParam ?? nullptr);

final _CreateWindowEx = _user32.lookupFunction<
    HWND Function(
        Uint32 dwExStyle,
        Pointer<Utf16> lpClassName,
        Pointer<Utf16> lpWindowName,
        Uint32 dwStyle,
        Int32 x,
        Int32 y,
        Int32 nWidth,
        Int32 nHeight,
        HWND hWndParent,
        HMENU hMenu,
        HINSTANCE hInstance,
        Pointer lpParam),
    int Function(
        int dwExStyle,
        Pointer<Utf16> lpClassName,
        Pointer<Utf16> lpWindowName,
        int dwStyle,
        int x,
        int y,
        int nWidth,
        int nHeight,
        int hWndParent,
        int hMenu,
        int hInstance,
        Pointer lpParam)>('CreateWindowExW');

/// Creates a window station object, associates it with the calling process, and
/// assigns it to the current session.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-createwindowstationw>.
///
/// {@category user32}
int CreateWindowStation(Pointer<Utf16>? lpwinsta, int dwFlags,
        int dwDesiredAccess, Pointer<SECURITY_ATTRIBUTES>? lpsa) =>
    _CreateWindowStation(
        lpwinsta ?? nullptr, dwFlags, dwDesiredAccess, lpsa ?? nullptr);

final _CreateWindowStation = _user32.lookupFunction<
    HWINSTA Function(Pointer<Utf16> lpwinsta, Uint32 dwFlags,
        Uint32 dwDesiredAccess, Pointer<SECURITY_ATTRIBUTES> lpsa),
    int Function(Pointer<Utf16> lpwinsta, int dwFlags, int dwDesiredAccess,
        Pointer<SECURITY_ATTRIBUTES> lpsa)>('CreateWindowStationW');

/// Updates the specified multiple-window — position structure for the specified
/// window.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-deferwindowpos>.
///
/// {@category user32}
int DeferWindowPos(int hWinPosInfo, int hWnd, int? hWndInsertAfter, int x,
        int y, int cx, int cy, int uFlags) =>
    _DeferWindowPos(
        hWinPosInfo, hWnd, hWndInsertAfter ?? 0, x, y, cx, cy, uFlags);

final _DeferWindowPos = _user32.lookupFunction<
    HDWP Function(HDWP hWinPosInfo, HWND hWnd, HWND hWndInsertAfter, Int32 x,
        Int32 y, Int32 cx, Int32 cy, Uint32 uFlags),
    int Function(int hWinPosInfo, int hWnd, int hWndInsertAfter, int x, int y,
        int cx, int cy, int uFlags)>('DeferWindowPos');

/// Provides default processing for any window message that the window procedure
/// of a multiple-document interface (MDI) child window does not process.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-defmdichildprocw>.
///
/// {@category user32}
int DefMDIChildProc(int hWnd, int uMsg, int wParam, int lParam) =>
    _DefMDIChildProc(hWnd, uMsg, wParam, lParam);

final _DefMDIChildProc = _user32.lookupFunction<
    LRESULT Function(HWND hWnd, Uint32 uMsg, WPARAM wParam, LPARAM lParam),
    int Function(
        int hWnd, int uMsg, int wParam, int lParam)>('DefMDIChildProcW');

/// Verifies that the size of the RAWINPUTHEADER structure is correct.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-defrawinputproc>.
///
/// {@category user32}
int DefRawInputProc(
        Pointer<Pointer<RAWINPUT>> paRawInput, int nInput, int cbSizeHeader) =>
    _DefRawInputProc(paRawInput, nInput, cbSizeHeader);

final _DefRawInputProc = _user32.lookupFunction<
    LRESULT Function(Pointer<Pointer<RAWINPUT>> paRawInput, Int32 nInput,
        Uint32 cbSizeHeader),
    int Function(Pointer<Pointer<RAWINPUT>> paRawInput, int nInput,
        int cbSizeHeader)>('DefRawInputProc');

/// Calls the default window procedure to provide default processing for any
/// window messages that an application does not process.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-defwindowprocw>.
///
/// {@category user32}
int DefWindowProc(int hWnd, int msg, int wParam, int lParam) =>
    _DefWindowProc(hWnd, msg, wParam, lParam);

final _DefWindowProc = _user32.lookupFunction<
    LRESULT Function(HWND hWnd, Uint32 msg, WPARAM wParam, LPARAM lParam),
    int Function(int hWnd, int msg, int wParam, int lParam)>('DefWindowProcW');

/// Deletes an item from the specified menu.
///
/// If the menu item opens a menu or submenu, this function destroys the handle
/// to the menu or submenu and frees the memory used by the menu or submenu.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-deletemenu>.
///
/// {@category user32}
int DeleteMenu(int hMenu, int uPosition, int uFlags) =>
    _DeleteMenu(hMenu, uPosition, uFlags);

final _DeleteMenu = _user32.lookupFunction<
    BOOL Function(HMENU hMenu, Uint32 uPosition, Uint32 uFlags),
    int Function(int hMenu, int uPosition, int uFlags)>('DeleteMenu');

/// Destroys an accelerator table.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-destroyacceleratortable>.
///
/// {@category user32}
int DestroyAcceleratorTable(int hAccel) => _DestroyAcceleratorTable(hAccel);

final _DestroyAcceleratorTable = _user32.lookupFunction<
    BOOL Function(HACCEL hAccel),
    int Function(int hAccel)>('DestroyAcceleratorTable');

/// Destroys the caret's current shape, frees the caret from the window, and
/// removes the caret from the screen.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-destroycaret>.
///
/// {@category user32}
int DestroyCaret() => _DestroyCaret();

final _DestroyCaret =
    _user32.lookupFunction<BOOL Function(), int Function()>('DestroyCaret');

/// Destroys a cursor and frees any memory the cursor occupied.
///
/// Do not use this function to destroy a shared cursor.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-destroycursor>.
///
/// {@category user32}
int DestroyCursor(int hCursor) => _DestroyCursor(hCursor);

final _DestroyCursor = _user32.lookupFunction<BOOL Function(HCURSOR hCursor),
    int Function(int hCursor)>('DestroyCursor');

/// Destroys an icon and frees any memory the icon occupied.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-destroyicon>.
///
/// {@category user32}
int DestroyIcon(int hIcon) => _DestroyIcon(hIcon);

final _DestroyIcon =
    _user32.lookupFunction<BOOL Function(HICON hIcon), int Function(int hIcon)>(
        'DestroyIcon');

/// Destroys the specified menu and frees any memory that the menu occupies.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-destroymenu>.
///
/// {@category user32}
int DestroyMenu(int hMenu) => _DestroyMenu(hMenu);

final _DestroyMenu =
    _user32.lookupFunction<BOOL Function(HMENU hMenu), int Function(int hMenu)>(
        'DestroyMenu');

/// Destroys the specified window.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-destroywindow>.
///
/// {@category user32}
int DestroyWindow(int hWnd) => _DestroyWindow(hWnd);

final _DestroyWindow =
    _user32.lookupFunction<BOOL Function(HWND hWnd), int Function(int hWnd)>(
        'DestroyWindow');

/// Creates a modal dialog box from a dialog box template in memory.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-dialogboxindirectparamw>.
///
/// {@category user32}
int DialogBoxIndirectParam(
        int? hInstance,
        Pointer<DLGTEMPLATE> hDialogTemplate,
        int? hWndParent,
        Pointer<NativeFunction<DLGPROC>>? lpDialogFunc,
        int dwInitParam) =>
    _DialogBoxIndirectParam(hInstance ?? 0, hDialogTemplate, hWndParent ?? 0,
        lpDialogFunc ?? nullptr, dwInitParam);

final _DialogBoxIndirectParam = _user32.lookupFunction<
    IntPtr Function(
        HINSTANCE hInstance,
        Pointer<DLGTEMPLATE> hDialogTemplate,
        HWND hWndParent,
        Pointer<NativeFunction<DLGPROC>> lpDialogFunc,
        LPARAM dwInitParam),
    int Function(
        int hInstance,
        Pointer<DLGTEMPLATE> hDialogTemplate,
        int hWndParent,
        Pointer<NativeFunction<DLGPROC>> lpDialogFunc,
        int dwInitParam)>('DialogBoxIndirectParamW');

/// Disables the window ghosting feature for the calling GUI process.
///
/// Window ghosting is a Windows Manager feature that lets the user minimize,
/// move, or close the main window of an application that is not responding.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-disableprocesswindowsghosting>.
///
/// {@category user32}
void DisableProcessWindowsGhosting() => _DisableProcessWindowsGhosting();

final _DisableProcessWindowsGhosting =
    _user32.lookupFunction<Void Function(), void Function()>(
        'DisableProcessWindowsGhosting');

/// Dispatches a message to a window procedure.
///
/// It is typically used to dispatch a message retrieved by the GetMessage
/// function.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-dispatchmessagew>.
///
/// {@category user32}
int DispatchMessage(Pointer<MSG> lpMsg) => _DispatchMessage(lpMsg);

final _DispatchMessage = _user32.lookupFunction<
    LRESULT Function(Pointer<MSG> lpMsg),
    int Function(Pointer<MSG> lpMsg)>('DispatchMessageW');

/// Captures the mouse and tracks its movement until the user releases the left
/// button, presses the ESC key, or moves the mouse outside the drag rectangle
/// around the specified point.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-dragdetect>.
///
/// {@category user32}
int DragDetect(int hwnd, POINT pt) => _DragDetect(hwnd, pt);

final _DragDetect = _user32.lookupFunction<BOOL Function(HWND hwnd, POINT pt),
    int Function(int hwnd, POINT pt)>('DragDetect');

/// Animates the caption of a window to indicate the opening of an icon or the
/// minimizing or maximizing of a window.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-drawanimatedrects>.
///
/// {@category user32}
int DrawAnimatedRects(
        int? hwnd, int idAni, Pointer<RECT> lprcFrom, Pointer<RECT> lprcTo) =>
    _DrawAnimatedRects(hwnd ?? 0, idAni, lprcFrom, lprcTo);

final _DrawAnimatedRects = _user32.lookupFunction<
    BOOL Function(
        HWND hwnd, Int32 idAni, Pointer<RECT> lprcFrom, Pointer<RECT> lprcTo),
    int Function(int hwnd, int idAni, Pointer<RECT> lprcFrom,
        Pointer<RECT> lprcTo)>('DrawAnimatedRects');

/// Draws a window caption.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-drawcaption>.
///
/// {@category user32}
int DrawCaption(int hwnd, int hdc, Pointer<RECT> lprect, int flags) =>
    _DrawCaption(hwnd, hdc, lprect, flags);

final _DrawCaption = _user32.lookupFunction<
    BOOL Function(HWND hwnd, HDC hdc, Pointer<RECT> lprect, Uint32 flags),
    int Function(
        int hwnd, int hdc, Pointer<RECT> lprect, int flags)>('DrawCaption');

/// Draws one or more edges of rectangle.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-drawedge>.
///
/// {@category user32}
int DrawEdge(int hdc, Pointer<RECT> qrc, int edge, int grfFlags) =>
    _DrawEdge(hdc, qrc, edge, grfFlags);

final _DrawEdge = _user32.lookupFunction<
    BOOL Function(HDC hdc, Pointer<RECT> qrc, Uint32 edge, Uint32 grfFlags),
    int Function(
        int hdc, Pointer<RECT> qrc, int edge, int grfFlags)>('DrawEdge');

/// Draws a rectangle in the style used to indicate that the rectangle has the
/// focus.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-drawfocusrect>.
///
/// {@category user32}
int DrawFocusRect(int hDC, Pointer<RECT> lprc) => _DrawFocusRect(hDC, lprc);

final _DrawFocusRect = _user32.lookupFunction<
    BOOL Function(HDC hDC, Pointer<RECT> lprc),
    int Function(int hDC, Pointer<RECT> lprc)>('DrawFocusRect');

/// Draws a frame control of the specified type and style.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-drawframecontrol>.
///
/// {@category user32}
int DrawFrameControl(
        int param0, Pointer<RECT> param1, int param2, int param3) =>
    _DrawFrameControl(param0, param1, param2, param3);

final _DrawFrameControl = _user32.lookupFunction<
    BOOL Function(
        HDC param0, Pointer<RECT> param1, Uint32 param2, Uint32 param3),
    int Function(int param0, Pointer<RECT> param1, int param2,
        int param3)>('DrawFrameControl');

/// Draws an icon or cursor into the specified device context.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-drawicon>.
///
/// {@category user32}
int DrawIcon(int hDC, int x, int y, int hIcon) => _DrawIcon(hDC, x, y, hIcon);

final _DrawIcon = _user32.lookupFunction<
    BOOL Function(HDC hDC, Int32 x, Int32 y, HICON hIcon),
    int Function(int hDC, int x, int y, int hIcon)>('DrawIcon');

/// Displays an image and applies a visual effect to indicate a state, such as a
/// disabled or default state.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-drawstatew>.
///
/// {@category user32}
int DrawState(
        int hdc,
        int? hbrFore,
        Pointer<NativeFunction<DRAWSTATEPROC>>? qfnCallBack,
        int lData,
        int wData,
        int x,
        int y,
        int cx,
        int cy,
        int uFlags) =>
    _DrawState(hdc, hbrFore ?? 0, qfnCallBack ?? nullptr, lData, wData, x, y,
        cx, cy, uFlags);

final _DrawState = _user32.lookupFunction<
    BOOL Function(
        HDC hdc,
        HBRUSH hbrFore,
        Pointer<NativeFunction<DRAWSTATEPROC>> qfnCallBack,
        LPARAM lData,
        WPARAM wData,
        Int32 x,
        Int32 y,
        Int32 cx,
        Int32 cy,
        Uint32 uFlags),
    int Function(
        int hdc,
        int hbrFore,
        Pointer<NativeFunction<DRAWSTATEPROC>> qfnCallBack,
        int lData,
        int wData,
        int x,
        int y,
        int cx,
        int cy,
        int uFlags)>('DrawStateW');

/// Draws formatted text in the specified rectangle.
///
/// It formats the text according to the specified method (expanding tabs,
/// justifying characters, breaking lines, and so forth).
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-drawtextw>.
///
/// {@category user32}
int DrawText(int hdc, Pointer<Utf16> lpchText, int cchText, Pointer<RECT> lprc,
        int format) =>
    _DrawText(hdc, lpchText, cchText, lprc, format);

final _DrawText = _user32.lookupFunction<
    Int32 Function(HDC hdc, Pointer<Utf16> lpchText, Int32 cchText,
        Pointer<RECT> lprc, Uint32 format),
    int Function(int hdc, Pointer<Utf16> lpchText, int cchText,
        Pointer<RECT> lprc, int format)>('DrawTextW');

/// Draws formatted text in the specified rectangle.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-drawtextexw>.
///
/// {@category user32}
int DrawTextEx(int hdc, Pointer<Utf16> lpchText, int cchText,
        Pointer<RECT> lprc, int format, Pointer<DRAWTEXTPARAMS>? lpdtp) =>
    _DrawTextEx(hdc, lpchText, cchText, lprc, format, lpdtp ?? nullptr);

final _DrawTextEx = _user32.lookupFunction<
    Int32 Function(HDC hdc, Pointer<Utf16> lpchText, Int32 cchText,
        Pointer<RECT> lprc, Uint32 format, Pointer<DRAWTEXTPARAMS> lpdtp),
    int Function(
        int hdc,
        Pointer<Utf16> lpchText,
        int cchText,
        Pointer<RECT> lprc,
        int format,
        Pointer<DRAWTEXTPARAMS> lpdtp)>('DrawTextExW');

/// Empties the clipboard and frees handles to data in the clipboard.
///
/// The function then assigns ownership of the clipboard to the window that
/// currently has the clipboard open.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-emptyclipboard>.
///
/// {@category user32}
int EmptyClipboard() => _EmptyClipboard();

final _EmptyClipboard =
    _user32.lookupFunction<BOOL Function(), int Function()>('EmptyClipboard');

/// Enables, disables, or grays the specified menu item.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-enablemenuitem>.
///
/// {@category user32}
int EnableMenuItem(int hMenu, int uIDEnableItem, int uEnable) =>
    _EnableMenuItem(hMenu, uIDEnableItem, uEnable);

final _EnableMenuItem = _user32.lookupFunction<
    BOOL Function(HMENU hMenu, Uint32 uIDEnableItem, Uint32 uEnable),
    int Function(int hMenu, int uIDEnableItem, int uEnable)>('EnableMenuItem');

/// Enables the mouse to act as a pointer input device and send WM_POINTER
/// messages.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-enablemouseinpointer>.
///
/// {@category user32}
int EnableMouseInPointer(int fEnable) => _EnableMouseInPointer(fEnable);

final _EnableMouseInPointer = _user32.lookupFunction<
    BOOL Function(BOOL fEnable),
    int Function(int fEnable)>('EnableMouseInPointer');

/// In high-DPI displays, enables automatic display scaling of the non-client
/// area portions of the specified top-level window.
///
/// Must be called during the initialization of that window.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-enablenonclientdpiscaling>.
///
/// {@category user32}
int EnableNonClientDpiScaling(int hwnd) => _EnableNonClientDpiScaling(hwnd);

final _EnableNonClientDpiScaling =
    _user32.lookupFunction<BOOL Function(HWND hwnd), int Function(int hwnd)>(
        'EnableNonClientDpiScaling');

/// Enables or disables one or both scroll bar arrows.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-enablescrollbar>.
///
/// {@category user32}
int EnableScrollBar(int hWnd, int wSBflags, int wArrows) =>
    _EnableScrollBar(hWnd, wSBflags, wArrows);

final _EnableScrollBar = _user32.lookupFunction<
    BOOL Function(HWND hWnd, Uint32 wSBflags, Uint32 wArrows),
    int Function(int hWnd, int wSBflags, int wArrows)>('EnableScrollBar');

/// Enables or disables mouse and keyboard input to the specified window or
/// control.
///
/// When input is disabled, the window does not receive input such as mouse
/// clicks and key presses. When input is enabled, the window receives all
/// input.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-enablewindow>.
///
/// {@category user32}
int EnableWindow(int hWnd, int bEnable) => _EnableWindow(hWnd, bEnable);

final _EnableWindow = _user32.lookupFunction<
    BOOL Function(HWND hWnd, BOOL bEnable),
    int Function(int hWnd, int bEnable)>('EnableWindow');

/// Simultaneously updates the position and size of one or more windows in a
/// single screen-refreshing cycle.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-enddeferwindowpos>.
///
/// {@category user32}
int EndDeferWindowPos(int hWinPosInfo) => _EndDeferWindowPos(hWinPosInfo);

final _EndDeferWindowPos = _user32.lookupFunction<
    BOOL Function(HDWP hWinPosInfo),
    int Function(int hWinPosInfo)>('EndDeferWindowPos');

/// Destroys a modal dialog box, causing the system to end any processing for
/// the dialog box.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-enddialog>.
///
/// {@category user32}
int EndDialog(int hDlg, int nResult) => _EndDialog(hDlg, nResult);

final _EndDialog = _user32.lookupFunction<
    BOOL Function(HWND hDlg, IntPtr nResult),
    int Function(int hDlg, int nResult)>('EndDialog');

/// Ends the calling thread's active menu.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-endmenu>.
///
/// {@category user32}
int EndMenu() => _EndMenu();

final _EndMenu =
    _user32.lookupFunction<BOOL Function(), int Function()>('EndMenu');

/// Marks the end of painting in the specified window.
///
/// This function is required for each call to the BeginPaint function, but only
/// after painting is complete.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-endpaint>.
///
/// {@category user32}
int EndPaint(int hWnd, Pointer<PAINTSTRUCT> lpPaint) =>
    _EndPaint(hWnd, lpPaint);

final _EndPaint = _user32.lookupFunction<
    BOOL Function(HWND hWnd, Pointer<PAINTSTRUCT> lpPaint),
    int Function(int hWnd, Pointer<PAINTSTRUCT> lpPaint)>('EndPaint');

/// Enumerates the child windows that belong to the specified parent window by
/// passing the handle to each child window, in turn, to an application-defined
/// callback function.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-enumchildwindows>.
///
/// {@category user32}
int EnumChildWindows(int? hWndParent,
        Pointer<NativeFunction<WNDENUMPROC>> lpEnumFunc, int lParam) =>
    _EnumChildWindows(hWndParent ?? 0, lpEnumFunc, lParam);

final _EnumChildWindows = _user32.lookupFunction<
    BOOL Function(HWND hWndParent,
        Pointer<NativeFunction<WNDENUMPROC>> lpEnumFunc, LPARAM lParam),
    int Function(
        int hWndParent,
        Pointer<NativeFunction<WNDENUMPROC>> lpEnumFunc,
        int lParam)>('EnumChildWindows');

/// Enumerates the data formats currently available on the clipboard.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-enumclipboardformats>.
///
/// {@category user32}
int EnumClipboardFormats(int format) => _EnumClipboardFormats(format);

final _EnumClipboardFormats = _user32.lookupFunction<
    Uint32 Function(Uint32 format),
    int Function(int format)>('EnumClipboardFormats');

/// Enumerates all top-level windows associated with the specified desktop.
///
/// It passes the handle to each window, in turn, to an application-defined
/// callback function.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-enumdesktopwindows>.
///
/// {@category user32}
int EnumDesktopWindows(
        int? hDesktop, Pointer<NativeFunction<WNDENUMPROC>> lpfn, int lParam) =>
    _EnumDesktopWindows(hDesktop ?? 0, lpfn, lParam);

final _EnumDesktopWindows = _user32.lookupFunction<
    BOOL Function(HDESK hDesktop, Pointer<NativeFunction<WNDENUMPROC>> lpfn,
        LPARAM lParam),
    int Function(int hDesktop, Pointer<NativeFunction<WNDENUMPROC>> lpfn,
        int lParam)>('EnumDesktopWindows');

/// Lets you obtain information about the display devices in the current
/// session.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-enumdisplaydevicesw>.
///
/// {@category user32}
int EnumDisplayDevices(Pointer<Utf16>? lpDevice, int iDevNum,
        Pointer<DISPLAY_DEVICE> lpDisplayDevice, int dwFlags) =>
    _EnumDisplayDevices(lpDevice ?? nullptr, iDevNum, lpDisplayDevice, dwFlags);

final _EnumDisplayDevices = _user32.lookupFunction<
    BOOL Function(Pointer<Utf16> lpDevice, Uint32 iDevNum,
        Pointer<DISPLAY_DEVICE> lpDisplayDevice, Uint32 dwFlags),
    int Function(
        Pointer<Utf16> lpDevice,
        int iDevNum,
        Pointer<DISPLAY_DEVICE> lpDisplayDevice,
        int dwFlags)>('EnumDisplayDevicesW');

/// Enumerates display monitors (including invisible pseudo-monitors associated
/// with the mirroring drivers) that intersect a region formed by the
/// intersection of a specified clipping rectangle and the visible region of a
/// device context.
///
/// EnumDisplayMonitors calls an application-defined MonitorEnumProc callback
/// function once for each monitor that is enumerated. Note that
/// GetSystemMetrics (SM_CMONITORS) counts only the display monitors.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-enumdisplaymonitors>.
///
/// {@category user32}
int EnumDisplayMonitors(int? hdc, Pointer<RECT>? lprcClip,
        Pointer<NativeFunction<MONITORENUMPROC>> lpfnEnum, int dwData) =>
    _EnumDisplayMonitors(hdc ?? 0, lprcClip ?? nullptr, lpfnEnum, dwData);

final _EnumDisplayMonitors = _user32.lookupFunction<
    BOOL Function(HDC hdc, Pointer<RECT> lprcClip,
        Pointer<NativeFunction<MONITORENUMPROC>> lpfnEnum, LPARAM dwData),
    int Function(
        int hdc,
        Pointer<RECT> lprcClip,
        Pointer<NativeFunction<MONITORENUMPROC>> lpfnEnum,
        int dwData)>('EnumDisplayMonitors');

/// Retrieves information about one of the graphics modes for a display device.
///
/// To retrieve information for all the graphics modes of a display device, make
/// a series of calls to this function.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-enumdisplaysettingsw>.
///
/// {@category user32}
int EnumDisplaySettings(Pointer<Utf16>? lpszDeviceName, int iModeNum,
        Pointer<DEVMODE> lpDevMode) =>
    _EnumDisplaySettings(lpszDeviceName ?? nullptr, iModeNum, lpDevMode);

final _EnumDisplaySettings = _user32.lookupFunction<
    BOOL Function(Pointer<Utf16> lpszDeviceName, Uint32 iModeNum,
        Pointer<DEVMODE> lpDevMode),
    int Function(Pointer<Utf16> lpszDeviceName, int iModeNum,
        Pointer<DEVMODE> lpDevMode)>('EnumDisplaySettingsW');

/// Retrieves information about one of the graphics modes for a display device.
///
/// To retrieve information for all the graphics modes for a display device,
/// make a series of calls to this function.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-enumdisplaysettingsexw>.
///
/// {@category user32}
int EnumDisplaySettingsEx(Pointer<Utf16>? lpszDeviceName, int iModeNum,
        Pointer<DEVMODE> lpDevMode, int dwFlags) =>
    _EnumDisplaySettingsEx(
        lpszDeviceName ?? nullptr, iModeNum, lpDevMode, dwFlags);

final _EnumDisplaySettingsEx = _user32.lookupFunction<
    BOOL Function(Pointer<Utf16> lpszDeviceName, Uint32 iModeNum,
        Pointer<DEVMODE> lpDevMode, Uint32 dwFlags),
    int Function(Pointer<Utf16> lpszDeviceName, int iModeNum,
        Pointer<DEVMODE> lpDevMode, int dwFlags)>('EnumDisplaySettingsExW');

/// Enumerates all nonchild windows associated with a thread by passing the
/// handle to each window, in turn, to an application-defined callback function.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-enumthreadwindows>.
///
/// {@category user32}
int EnumThreadWindows(int dwThreadId, Pointer<NativeFunction<WNDENUMPROC>> lpfn,
        int lParam) =>
    _EnumThreadWindows(dwThreadId, lpfn, lParam);

final _EnumThreadWindows = _user32.lookupFunction<
    BOOL Function(Uint32 dwThreadId, Pointer<NativeFunction<WNDENUMPROC>> lpfn,
        LPARAM lParam),
    int Function(int dwThreadId, Pointer<NativeFunction<WNDENUMPROC>> lpfn,
        int lParam)>('EnumThreadWindows');

/// Enumerates all top-level windows on the screen by passing the handle to each
/// window, in turn, to an application-defined callback function.
///
/// EnumWindows continues until the last top-level window is enumerated or the
/// callback function returns FALSE.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-enumwindows>.
///
/// {@category user32}
int EnumWindows(Pointer<NativeFunction<WNDENUMPROC>> lpEnumFunc, int lParam) =>
    _EnumWindows(lpEnumFunc, lParam);

final _EnumWindows = _user32.lookupFunction<
    BOOL Function(
        Pointer<NativeFunction<WNDENUMPROC>> lpEnumFunc, LPARAM lParam),
    int Function(Pointer<NativeFunction<WNDENUMPROC>> lpEnumFunc,
        int lParam)>('EnumWindows');

/// Determines whether the two specified rectangles are equal by comparing the
/// coordinates of their upper-left and lower-right corners.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-equalrect>.
///
/// {@category user32}
int EqualRect(Pointer<RECT> lprc1, Pointer<RECT> lprc2) =>
    _EqualRect(lprc1, lprc2);

final _EqualRect = _user32.lookupFunction<
    BOOL Function(Pointer<RECT> lprc1, Pointer<RECT> lprc2),
    int Function(Pointer<RECT> lprc1, Pointer<RECT> lprc2)>('EqualRect');

/// Prevents drawing within invalid areas of a window by excluding an updated
/// region in the window from a clipping region.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-excludeupdatergn>.
///
/// {@category user32}
int ExcludeUpdateRgn(int hDC, int hWnd) => _ExcludeUpdateRgn(hDC, hWnd);

final _ExcludeUpdateRgn = _user32.lookupFunction<
    Int32 Function(HDC hDC, HWND hWnd),
    int Function(int hDC, int hWnd)>('ExcludeUpdateRgn');

/// Fills a rectangle by using the specified brush.
///
/// This function includes the left and top borders, but excludes the right and
/// bottom borders of the rectangle.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-fillrect>.
///
/// {@category user32}
int FillRect(int hDC, Pointer<RECT> lprc, int hbr) => _FillRect(hDC, lprc, hbr);

final _FillRect = _user32.lookupFunction<
    Int32 Function(HDC hDC, Pointer<RECT> lprc, HBRUSH hbr),
    int Function(int hDC, Pointer<RECT> lprc, int hbr)>('FillRect');

/// Retrieves a handle to the top-level window whose class name and window name
/// match the specified strings.
///
/// This function does not search child windows. This function does not perform
/// a case-sensitive search.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-findwindoww>.
///
/// {@category user32}
int FindWindow(Pointer<Utf16>? lpClassName, Pointer<Utf16>? lpWindowName) =>
    _FindWindow(lpClassName ?? nullptr, lpWindowName ?? nullptr);

final _FindWindow = _user32.lookupFunction<
    HWND Function(Pointer<Utf16> lpClassName, Pointer<Utf16> lpWindowName),
    int Function(Pointer<Utf16> lpClassName,
        Pointer<Utf16> lpWindowName)>('FindWindowW');

/// Retrieves a handle to a window whose class name and window name match the
/// specified strings.
///
/// The function searches child windows, beginning with the one following the
/// specified child window. This function does not perform a case-sensitive
/// search.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-findwindowexw>.
///
/// {@category user32}
int FindWindowEx(int? hWndParent, int? hWndChildAfter,
        Pointer<Utf16>? lpszClass, Pointer<Utf16>? lpszWindow) =>
    _FindWindowEx(hWndParent ?? 0, hWndChildAfter ?? 0, lpszClass ?? nullptr,
        lpszWindow ?? nullptr);

final _FindWindowEx = _user32.lookupFunction<
    HWND Function(HWND hWndParent, HWND hWndChildAfter,
        Pointer<Utf16> lpszClass, Pointer<Utf16> lpszWindow),
    int Function(int hWndParent, int hWndChildAfter, Pointer<Utf16> lpszClass,
        Pointer<Utf16> lpszWindow)>('FindWindowExW');

/// Draws a border around the specified rectangle by using the specified brush.
///
/// The width and height of the border are always one logical unit.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-framerect>.
///
/// {@category user32}
int FrameRect(int hDC, Pointer<RECT> lprc, int hbr) =>
    _FrameRect(hDC, lprc, hbr);

final _FrameRect = _user32.lookupFunction<
    Int32 Function(HDC hDC, Pointer<RECT> lprc, HBRUSH hbr),
    int Function(int hDC, Pointer<RECT> lprc, int hbr)>('FrameRect');

/// Retrieves the window handle to the active window attached to the calling
/// thread's message queue.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getactivewindow>.
///
/// {@category user32}
int GetActiveWindow() => _GetActiveWindow();

final _GetActiveWindow =
    _user32.lookupFunction<HWND Function(), int Function()>('GetActiveWindow');

/// Retrieves status information for the specified window if it is the
/// application-switching (ALT+TAB) window.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getalttabinfow>.
///
/// {@category user32}
int GetAltTabInfo(int? hwnd, int iItem, Pointer<ALTTABINFO> pati,
        Pointer<Utf16>? pszItemText, int cchItemText) =>
    _GetAltTabInfo(hwnd ?? 0, iItem, pati, pszItemText ?? nullptr, cchItemText);

final _GetAltTabInfo = _user32.lookupFunction<
    BOOL Function(HWND hwnd, Int32 iItem, Pointer<ALTTABINFO> pati,
        Pointer<Utf16> pszItemText, Uint32 cchItemText),
    int Function(int hwnd, int iItem, Pointer<ALTTABINFO> pati,
        Pointer<Utf16> pszItemText, int cchItemText)>('GetAltTabInfoW');

/// Retrieves the handle to the ancestor of the specified window.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getancestor>.
///
/// {@category user32}
int GetAncestor(int hwnd, int gaFlags) => _GetAncestor(hwnd, gaFlags);

final _GetAncestor = _user32.lookupFunction<
    HWND Function(HWND hwnd, Uint32 gaFlags),
    int Function(int hwnd, int gaFlags)>('GetAncestor');

/// Determines whether a key is up or down at the time the function is called,
/// and whether the key was pressed after a previous call to GetAsyncKeyState.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getasynckeystate>.
///
/// {@category user32}
int GetAsyncKeyState(int vKey) => _GetAsyncKeyState(vKey);

final _GetAsyncKeyState =
    _user32.lookupFunction<Int16 Function(Int32 vKey), int Function(int vKey)>(
        'GetAsyncKeyState');

/// Retrieves the DPI_AWARENESS value from a DPI_AWARENESS_CONTEXT.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getawarenessfromdpiawarenesscontext>.
///
/// {@category user32}
int GetAwarenessFromDpiAwarenessContext(int value) =>
    _GetAwarenessFromDpiAwarenessContext(value);

final _GetAwarenessFromDpiAwarenessContext = _user32.lookupFunction<
    Int32 Function(DPI_AWARENESS_CONTEXT value),
    int Function(int value)>('GetAwarenessFromDpiAwarenessContext');

/// Retrieves a handle to the window (if any) that has captured the mouse.
///
/// Only one window at a time can capture the mouse; this window receives mouse
/// input whether or not the cursor is within its borders.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getcapture>.
///
/// {@category user32}
int GetCapture() => _GetCapture();

final _GetCapture =
    _user32.lookupFunction<HWND Function(), int Function()>('GetCapture');

/// Retrieves the time required to invert the caret's pixels.
///
/// The user can set this value.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getcaretblinktime>.
///
/// {@category user32}
int GetCaretBlinkTime() => _GetCaretBlinkTime();

final _GetCaretBlinkTime = _user32
    .lookupFunction<Uint32 Function(), int Function()>('GetCaretBlinkTime');

/// Copies the caret's position to the specified POINT structure.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getcaretpos>.
///
/// {@category user32}
int GetCaretPos(Pointer<POINT> lpPoint) => _GetCaretPos(lpPoint);

final _GetCaretPos = _user32.lookupFunction<
    BOOL Function(Pointer<POINT> lpPoint),
    int Function(Pointer<POINT> lpPoint)>('GetCaretPos');

/// Retrieves information about a window class.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getclassinfow>.
///
/// {@category user32}
int GetClassInfo(int? hInstance, Pointer<Utf16> lpClassName,
        Pointer<WNDCLASS> lpWndClass) =>
    _GetClassInfo(hInstance ?? 0, lpClassName, lpWndClass);

final _GetClassInfo = _user32.lookupFunction<
    BOOL Function(HINSTANCE hInstance, Pointer<Utf16> lpClassName,
        Pointer<WNDCLASS> lpWndClass),
    int Function(int hInstance, Pointer<Utf16> lpClassName,
        Pointer<WNDCLASS> lpWndClass)>('GetClassInfoW');

/// Retrieves information about a window class, including a handle to the small
/// icon associated with the window class.
///
/// The GetClassInfo function does not retrieve a handle to the small icon.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getclassinfoexw>.
///
/// {@category user32}
int GetClassInfoEx(
        int? hInstance, Pointer<Utf16> lpszClass, Pointer<WNDCLASSEX> lpwcx) =>
    _GetClassInfoEx(hInstance ?? 0, lpszClass, lpwcx);

final _GetClassInfoEx = _user32.lookupFunction<
    BOOL Function(HINSTANCE hInstance, Pointer<Utf16> lpszClass,
        Pointer<WNDCLASSEX> lpwcx),
    int Function(int hInstance, Pointer<Utf16> lpszClass,
        Pointer<WNDCLASSEX> lpwcx)>('GetClassInfoExW');

/// Retrieves the specified value from the WNDCLASSEX structure associated with
/// the specified window.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getclasslongptrw>.
///
/// {@category user32}
int GetClassLongPtr(int hWnd, int nIndex) => _GetClassLongPtr(hWnd, nIndex);

final _GetClassLongPtr = _user32.lookupFunction<
    IntPtr Function(HWND hWnd, Int32 nIndex),
    int Function(int hWnd, int nIndex)>('GetClassLongPtrW');

/// Retrieves the name of the class to which the specified window belongs.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getclassnamew>.
///
/// {@category user32}
int GetClassName(int hWnd, Pointer<Utf16> lpClassName, int nMaxCount) =>
    _GetClassName(hWnd, lpClassName, nMaxCount);

final _GetClassName = _user32.lookupFunction<
    Int32 Function(HWND hWnd, Pointer<Utf16> lpClassName, Int32 nMaxCount),
    int Function(
        int hWnd, Pointer<Utf16> lpClassName, int nMaxCount)>('GetClassNameW');

/// Retrieves the coordinates of a window's client area.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getclientrect>.
///
/// {@category user32}
int GetClientRect(int hWnd, Pointer<RECT> lpRect) =>
    _GetClientRect(hWnd, lpRect);

final _GetClientRect = _user32.lookupFunction<
    BOOL Function(HWND hWnd, Pointer<RECT> lpRect),
    int Function(int hWnd, Pointer<RECT> lpRect)>('GetClientRect');

/// Retrieves data from the clipboard in a specified format.
///
/// The clipboard must have been opened previously.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getclipboarddata>.
///
/// {@category user32}
int GetClipboardData(int uFormat) => _GetClipboardData(uFormat);

final _GetClipboardData = _user32.lookupFunction<
    HANDLE Function(Uint32 uFormat),
    int Function(int uFormat)>('GetClipboardData');

/// Retrieves from the clipboard the name of the specified registered format.
///
/// The function copies the name to the specified buffer.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getclipboardformatnamew>.
///
/// {@category user32}
int GetClipboardFormatName(
        int format, Pointer<Utf16> lpszFormatName, int cchMaxCount) =>
    _GetClipboardFormatName(format, lpszFormatName, cchMaxCount);

final _GetClipboardFormatName = _user32.lookupFunction<
    Int32 Function(
        Uint32 format, Pointer<Utf16> lpszFormatName, Int32 cchMaxCount),
    int Function(int format, Pointer<Utf16> lpszFormatName,
        int cchMaxCount)>('GetClipboardFormatNameW');

/// Retrieves the window handle of the current owner of the clipboard.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getclipboardowner>.
///
/// {@category user32}
int GetClipboardOwner() => _GetClipboardOwner();

final _GetClipboardOwner = _user32
    .lookupFunction<HWND Function(), int Function()>('GetClipboardOwner');

/// Retrieves the clipboard sequence number for the current window station.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getclipboardsequencenumber>.
///
/// {@category user32}
int GetClipboardSequenceNumber() => _GetClipboardSequenceNumber();

final _GetClipboardSequenceNumber =
    _user32.lookupFunction<Uint32 Function(), int Function()>(
        'GetClipboardSequenceNumber');

/// Retrieves the handle to the first window in the clipboard viewer chain.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getclipboardviewer>.
///
/// {@category user32}
int GetClipboardViewer() => _GetClipboardViewer();

final _GetClipboardViewer = _user32
    .lookupFunction<HWND Function(), int Function()>('GetClipboardViewer');

/// Retrieves the screen coordinates of the rectangular area to which the cursor
/// is confined.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getclipcursor>.
///
/// {@category user32}
int GetClipCursor(Pointer<RECT> lpRect) => _GetClipCursor(lpRect);

final _GetClipCursor = _user32.lookupFunction<
    BOOL Function(Pointer<RECT> lpRect),
    int Function(Pointer<RECT> lpRect)>('GetClipCursor');

/// Retrieves a handle to the current cursor.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getcursor>.
///
/// {@category user32}
int GetCursor() => _GetCursor();

final _GetCursor =
    _user32.lookupFunction<HCURSOR Function(), int Function()>('GetCursor');

/// Retrieves information about the global cursor.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getcursorinfo>.
///
/// {@category user32}
int GetCursorInfo(Pointer<CURSORINFO> pci) => _GetCursorInfo(pci);

final _GetCursorInfo = _user32.lookupFunction<
    BOOL Function(Pointer<CURSORINFO> pci),
    int Function(Pointer<CURSORINFO> pci)>('GetCursorInfo');

/// Retrieves the position of the mouse cursor, in screen coordinates.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getcursorpos>.
///
/// {@category user32}
int GetCursorPos(Pointer<POINT> lpPoint) => _GetCursorPos(lpPoint);

final _GetCursorPos = _user32.lookupFunction<
    BOOL Function(Pointer<POINT> lpPoint),
    int Function(Pointer<POINT> lpPoint)>('GetCursorPos');

/// Retrieves a handle to a device context (DC) for the client area of a
/// specified window or for the entire screen.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getdc>.
///
/// {@category user32}
int GetDC(int? hWnd) => _GetDC(hWnd ?? 0);

final _GetDC = _user32
    .lookupFunction<HDC Function(HWND hWnd), int Function(int hWnd)>('GetDC');

/// Retrieves a handle to a device context (DC) for the client area of a
/// specified window or for the entire screen.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getdcex>.
///
/// {@category user32}
int GetDCEx(int? hWnd, int? hrgnClip, int flags) =>
    _GetDCEx(hWnd ?? 0, hrgnClip ?? 0, flags);

final _GetDCEx = _user32.lookupFunction<
    HDC Function(HWND hWnd, HRGN hrgnClip, Uint32 flags),
    int Function(int hWnd, int hrgnClip, int flags)>('GetDCEx');

/// Retrieves a handle to the desktop window.
///
/// The desktop window covers the entire screen. The desktop window is the area
/// on top of which other windows are painted.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getdesktopwindow>.
///
/// {@category user32}
int GetDesktopWindow() => _GetDesktopWindow();

final _GetDesktopWindow =
    _user32.lookupFunction<HWND Function(), int Function()>('GetDesktopWindow');

/// Retrieves the system's dialog base units, which are the average width and
/// height of characters in the system font.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getdialogbaseunits>.
///
/// {@category user32}
int GetDialogBaseUnits() => _GetDialogBaseUnits();

final _GetDialogBaseUnits = _user32
    .lookupFunction<Int32 Function(), int Function()>('GetDialogBaseUnits');

/// Retrieves and per-monitor DPI scaling behavior overrides of a child window
/// in a dialog.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getdialogcontroldpichangebehavior>.
///
/// {@category user32}
int GetDialogControlDpiChangeBehavior(int hWnd) =>
    _GetDialogControlDpiChangeBehavior(hWnd);

final _GetDialogControlDpiChangeBehavior =
    _user32.lookupFunction<Int32 Function(HWND hWnd), int Function(int hWnd)>(
        'GetDialogControlDpiChangeBehavior');

/// Returns the flags that might have been set on a given dialog by an earlier
/// call to SetDialogDpiChangeBehavior.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getdialogdpichangebehavior>.
///
/// {@category user32}
int GetDialogDpiChangeBehavior(int hDlg) => _GetDialogDpiChangeBehavior(hDlg);

final _GetDialogDpiChangeBehavior =
    _user32.lookupFunction<Int32 Function(HWND hDlg), int Function(int hDlg)>(
        'GetDialogDpiChangeBehavior');

/// Retrieves the screen auto-rotation preferences for the current process.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getdisplayautorotationpreferences>.
///
/// {@category user32}
int GetDisplayAutoRotationPreferences(Pointer<Int32> pOrientation) =>
    _GetDisplayAutoRotationPreferences(pOrientation);

final _GetDisplayAutoRotationPreferences = _user32.lookupFunction<
    BOOL Function(Pointer<Int32> pOrientation),
    int Function(
        Pointer<Int32> pOrientation)>('GetDisplayAutoRotationPreferences');

/// Retrieves a handle to a control in the specified dialog box.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getdlgitem>.
///
/// {@category user32}
int GetDlgItem(int? hDlg, int nIDDlgItem) => _GetDlgItem(hDlg ?? 0, nIDDlgItem);

final _GetDlgItem = _user32.lookupFunction<
    HWND Function(HWND hDlg, Int32 nIDDlgItem),
    int Function(int hDlg, int nIDDlgItem)>('GetDlgItem');

/// Translates the text of a specified control in a dialog box into an integer
/// value.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getdlgitemint>.
///
/// {@category user32}
int GetDlgItemInt(
        int hDlg, int nIDDlgItem, Pointer<BOOL>? lpTranslated, int bSigned) =>
    _GetDlgItemInt(hDlg, nIDDlgItem, lpTranslated ?? nullptr, bSigned);

final _GetDlgItemInt = _user32.lookupFunction<
    Uint32 Function(
        HWND hDlg, Int32 nIDDlgItem, Pointer<BOOL> lpTranslated, BOOL bSigned),
    int Function(int hDlg, int nIDDlgItem, Pointer<BOOL> lpTranslated,
        int bSigned)>('GetDlgItemInt');

/// Retrieves the title or text associated with a control in a dialog box.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getdlgitemtextw>.
///
/// {@category user32}
int GetDlgItemText(
        int hDlg, int nIDDlgItem, Pointer<Utf16> lpString, int cchMax) =>
    _GetDlgItemText(hDlg, nIDDlgItem, lpString, cchMax);

final _GetDlgItemText = _user32.lookupFunction<
    Uint32 Function(
        HWND hDlg, Int32 nIDDlgItem, Pointer<Utf16> lpString, Int32 cchMax),
    int Function(int hDlg, int nIDDlgItem, Pointer<Utf16> lpString,
        int cchMax)>('GetDlgItemTextW');

/// Retrieves the current double-click time for the mouse.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getdoubleclicktime>.
///
/// {@category user32}
int GetDoubleClickTime() => _GetDoubleClickTime();

final _GetDoubleClickTime = _user32
    .lookupFunction<Uint32 Function(), int Function()>('GetDoubleClickTime');

/// Returns the system DPI.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getdpiforsystem>.
///
/// {@category user32}
int GetDpiForSystem() => _GetDpiForSystem();

final _GetDpiForSystem = _user32
    .lookupFunction<Uint32 Function(), int Function()>('GetDpiForSystem');

/// Returns the dots per inch (dpi) value for the specified window.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getdpiforwindow>.
///
/// {@category user32}
int GetDpiForWindow(int hwnd) => _GetDpiForWindow(hwnd);

final _GetDpiForWindow =
    _user32.lookupFunction<Uint32 Function(HWND hwnd), int Function(int hwnd)>(
        'GetDpiForWindow');

/// Retrieves the DPI from a given DPI_AWARENESS_CONTEXT handle.
///
/// This enables you to determine the DPI of a thread without needed to examine
/// a window created within that thread.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getdpifromdpiawarenesscontext>.
///
/// {@category user32}
int GetDpiFromDpiAwarenessContext(int value) =>
    _GetDpiFromDpiAwarenessContext(value);

final _GetDpiFromDpiAwarenessContext = _user32.lookupFunction<
    Uint32 Function(DPI_AWARENESS_CONTEXT value),
    int Function(int value)>('GetDpiFromDpiAwarenessContext');

/// Retrieves the handle to the window that has the keyboard focus, if the
/// window is attached to the calling thread's message queue.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getfocus>.
///
/// {@category user32}
int GetFocus() => _GetFocus();

final _GetFocus =
    _user32.lookupFunction<HWND Function(), int Function()>('GetFocus');

/// Retrieves a handle to the foreground window (the window with which the user
/// is currently working).
///
/// The system assigns a slightly higher priority to the thread that creates the
/// foreground window than it does to other threads.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getforegroundwindow>.
///
/// {@category user32}
int GetForegroundWindow() => _GetForegroundWindow();

final _GetForegroundWindow = _user32
    .lookupFunction<HWND Function(), int Function()>('GetForegroundWindow');

/// Retrieves the configuration for which Windows Touch gesture messages are
/// sent from a window.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getgestureconfig>.
///
/// {@category user32}
int GetGestureConfig(int hwnd, int dwFlags, Pointer<Uint32> pcIDs,
        Pointer<GESTURECONFIG> pGestureConfig, int cbSize) =>
    _GetGestureConfig(hwnd, 0, dwFlags, pcIDs, pGestureConfig, cbSize);

final _GetGestureConfig = _user32.lookupFunction<
    BOOL Function(
        HWND hwnd,
        Uint32 dwReserved,
        Uint32 dwFlags,
        Pointer<Uint32> pcIDs,
        Pointer<GESTURECONFIG> pGestureConfig,
        Uint32 cbSize),
    int Function(int hwnd, int dwReserved, int dwFlags, Pointer<Uint32> pcIDs,
        Pointer<GESTURECONFIG> pGestureConfig, int cbSize)>('GetGestureConfig');

/// Retrieves additional information about a gesture from its GESTUREINFO
/// handle.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getgestureextraargs>.
///
/// {@category user32}
int GetGestureExtraArgs(
        int hGestureInfo, int cbExtraArgs, Pointer<Uint8> pExtraArgs) =>
    _GetGestureExtraArgs(hGestureInfo, cbExtraArgs, pExtraArgs);

final _GetGestureExtraArgs = _user32.lookupFunction<
    BOOL Function(HGESTUREINFO hGestureInfo, Uint32 cbExtraArgs,
        Pointer<Uint8> pExtraArgs),
    int Function(int hGestureInfo, int cbExtraArgs,
        Pointer<Uint8> pExtraArgs)>('GetGestureExtraArgs');

/// Retrieves a GESTUREINFO structure given a handle to the gesture information.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getgestureinfo>.
///
/// {@category user32}
int GetGestureInfo(int hGestureInfo, Pointer<GESTUREINFO> pGestureInfo) =>
    _GetGestureInfo(hGestureInfo, pGestureInfo);

final _GetGestureInfo = _user32.lookupFunction<
    BOOL Function(HGESTUREINFO hGestureInfo, Pointer<GESTUREINFO> pGestureInfo),
    int Function(
        int hGestureInfo, Pointer<GESTUREINFO> pGestureInfo)>('GetGestureInfo');

/// Retrieves information about the active window or a specified GUI thread.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getguithreadinfo>.
///
/// {@category user32}
int GetGUIThreadInfo(int idThread, Pointer<GUITHREADINFO> pgui) =>
    _GetGUIThreadInfo(idThread, pgui);

final _GetGUIThreadInfo = _user32.lookupFunction<
    BOOL Function(Uint32 idThread, Pointer<GUITHREADINFO> pgui),
    int Function(
        int idThread, Pointer<GUITHREADINFO> pgui)>('GetGUIThreadInfo');

/// Retrieves information about the specified icon or cursor.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-geticoninfo>.
///
/// {@category user32}
int GetIconInfo(int hIcon, Pointer<ICONINFO> piconinfo) =>
    _GetIconInfo(hIcon, piconinfo);

final _GetIconInfo = _user32.lookupFunction<
    BOOL Function(HICON hIcon, Pointer<ICONINFO> piconinfo),
    int Function(int hIcon, Pointer<ICONINFO> piconinfo)>('GetIconInfo');

/// Retrieves information about the specified icon or cursor.
///
/// GetIconInfoEx extends GetIconInfo by using the newer ICONINFOEX structure.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-geticoninfoexw>.
///
/// {@category user32}
int GetIconInfoEx(int hicon, Pointer<ICONINFOEX> piconinfo) =>
    _GetIconInfoEx(hicon, piconinfo);

final _GetIconInfoEx = _user32.lookupFunction<
    BOOL Function(HICON hicon, Pointer<ICONINFOEX> piconinfo),
    int Function(int hicon, Pointer<ICONINFOEX> piconinfo)>('GetIconInfoExW');

/// Determines whether there are mouse-button or keyboard messages in the
/// calling thread's message queue.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getinputstate>.
///
/// {@category user32}
int GetInputState() => _GetInputState();

final _GetInputState =
    _user32.lookupFunction<BOOL Function(), int Function()>('GetInputState');

/// Retrieves the active input locale identifier (formerly called the keyboard
/// layout).
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getkeyboardlayout>.
///
/// {@category user32}
int GetKeyboardLayout(int idThread) => _GetKeyboardLayout(idThread);

final _GetKeyboardLayout = _user32.lookupFunction<HKL Function(Uint32 idThread),
    int Function(int idThread)>('GetKeyboardLayout');

/// Retrieves the input locale identifiers (formerly called keyboard layout
/// handles) corresponding to the current set of input locales in the system.
///
/// The function copies the identifiers to the specified buffer.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getkeyboardlayoutlist>.
///
/// {@category user32}
int GetKeyboardLayoutList(int nBuff, Pointer<HKL>? lpList) =>
    _GetKeyboardLayoutList(nBuff, lpList ?? nullptr);

final _GetKeyboardLayoutList = _user32.lookupFunction<
    Int32 Function(Int32 nBuff, Pointer<HKL> lpList),
    int Function(int nBuff, Pointer<HKL> lpList)>('GetKeyboardLayoutList');

/// Retrieves the name of the active input locale identifier (formerly called
/// the keyboard layout) for the system.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getkeyboardlayoutnamew>.
///
/// {@category user32}
int GetKeyboardLayoutName(Pointer<Utf16> pwszKLID) =>
    _GetKeyboardLayoutName(pwszKLID);

final _GetKeyboardLayoutName = _user32.lookupFunction<
    BOOL Function(Pointer<Utf16> pwszKLID),
    int Function(Pointer<Utf16> pwszKLID)>('GetKeyboardLayoutNameW');

/// Copies the status of the 256 virtual keys to the specified buffer.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getkeyboardstate>.
///
/// {@category user32}
int GetKeyboardState(Pointer<Uint8> lpKeyState) =>
    _GetKeyboardState(lpKeyState);

final _GetKeyboardState = _user32.lookupFunction<
    BOOL Function(Pointer<Uint8> lpKeyState),
    int Function(Pointer<Uint8> lpKeyState)>('GetKeyboardState');

/// Retrieves information about the current keyboard.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getkeyboardtype>.
///
/// {@category user32}
int GetKeyboardType(int nTypeFlag) => _GetKeyboardType(nTypeFlag);

final _GetKeyboardType = _user32.lookupFunction<Int32 Function(Int32 nTypeFlag),
    int Function(int nTypeFlag)>('GetKeyboardType');

/// Retrieves a string that represents the name of a key.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getkeynametextw>.
///
/// {@category user32}
int GetKeyNameText(int lParam, Pointer<Utf16> lpString, int cchSize) =>
    _GetKeyNameText(lParam, lpString, cchSize);

final _GetKeyNameText = _user32.lookupFunction<
    Int32 Function(Int32 lParam, Pointer<Utf16> lpString, Int32 cchSize),
    int Function(
        int lParam, Pointer<Utf16> lpString, int cchSize)>('GetKeyNameTextW');

/// Retrieves the status of the specified virtual key.
///
/// The status specifies whether the key is up, down, or toggled (on,
/// off—alternating each time the key is pressed).
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getkeystate>.
///
/// {@category user32}
int GetKeyState(int nVirtKey) => _GetKeyState(nVirtKey);

final _GetKeyState = _user32.lookupFunction<Int16 Function(Int32 nVirtKey),
    int Function(int nVirtKey)>('GetKeyState');

/// Retrieves the time of the last input event.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getlastinputinfo>.
///
/// {@category user32}
int GetLastInputInfo(Pointer<LASTINPUTINFO> plii) => _GetLastInputInfo(plii);

final _GetLastInputInfo = _user32.lookupFunction<
    BOOL Function(Pointer<LASTINPUTINFO> plii),
    int Function(Pointer<LASTINPUTINFO> plii)>('GetLastInputInfo');

/// Retrieves the opacity and transparency color key of a layered window.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getlayeredwindowattributes>.
///
/// {@category user32}
int GetLayeredWindowAttributes(int hwnd, Pointer<COLORREF>? pcrKey,
        Pointer<Uint8>? pbAlpha, Pointer<Uint32>? pdwFlags) =>
    _GetLayeredWindowAttributes(
        hwnd, pcrKey ?? nullptr, pbAlpha ?? nullptr, pdwFlags ?? nullptr);

final _GetLayeredWindowAttributes = _user32.lookupFunction<
    BOOL Function(HWND hwnd, Pointer<COLORREF> pcrKey, Pointer<Uint8> pbAlpha,
        Pointer<Uint32> pdwFlags),
    int Function(int hwnd, Pointer<COLORREF> pcrKey, Pointer<Uint8> pbAlpha,
        Pointer<Uint32> pdwFlags)>('GetLayeredWindowAttributes');

/// Retrieves a handle to the menu assigned to the specified window.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getmenu>.
///
/// {@category user32}
int GetMenu(int hWnd) => _GetMenu(hWnd);

final _GetMenu =
    _user32.lookupFunction<HMENU Function(HWND hWnd), int Function(int hWnd)>(
        'GetMenu');

/// Retrieves information about the specified menu bar.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getmenubarinfo>.
///
/// {@category user32}
int GetMenuBarInfo(
        int hwnd, int idObject, int idItem, Pointer<MENUBARINFO> pmbi) =>
    _GetMenuBarInfo(hwnd, idObject, idItem, pmbi);

final _GetMenuBarInfo = _user32.lookupFunction<
    BOOL Function(
        HWND hwnd, Int32 idObject, Int32 idItem, Pointer<MENUBARINFO> pmbi),
    int Function(int hwnd, int idObject, int idItem,
        Pointer<MENUBARINFO> pmbi)>('GetMenuBarInfo');

/// Determines the default menu item on the specified menu.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getmenudefaultitem>.
///
/// {@category user32}
int GetMenuDefaultItem(int hMenu, int fByPos, int gmdiFlags) =>
    _GetMenuDefaultItem(hMenu, fByPos, gmdiFlags);

final _GetMenuDefaultItem = _user32.lookupFunction<
    Uint32 Function(HMENU hMenu, Uint32 fByPos, Uint32 gmdiFlags),
    int Function(int hMenu, int fByPos, int gmdiFlags)>('GetMenuDefaultItem');

/// Retrieves information about a specified menu.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getmenuinfo>.
///
/// {@category user32}
int GetMenuInfo(int param0, Pointer<MENUINFO> param1) =>
    _GetMenuInfo(param0, param1);

final _GetMenuInfo = _user32.lookupFunction<
    BOOL Function(HMENU param0, Pointer<MENUINFO> param1),
    int Function(int param0, Pointer<MENUINFO> param1)>('GetMenuInfo');

/// Determines the number of items in the specified menu.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getmenuitemcount>.
///
/// {@category user32}
int GetMenuItemCount(int? hMenu) => _GetMenuItemCount(hMenu ?? 0);

final _GetMenuItemCount = _user32.lookupFunction<Int32 Function(HMENU hMenu),
    int Function(int hMenu)>('GetMenuItemCount');

/// Retrieves the menu item identifier of a menu item located at the specified
/// position in a menu.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getmenuitemid>.
///
/// {@category user32}
int GetMenuItemID(int hMenu, int nPos) => _GetMenuItemID(hMenu, nPos);

final _GetMenuItemID = _user32.lookupFunction<
    Uint32 Function(HMENU hMenu, Int32 nPos),
    int Function(int hMenu, int nPos)>('GetMenuItemID');

/// Retrieves information about a menu item.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getmenuiteminfow>.
///
/// {@category user32}
int GetMenuItemInfo(
        int hmenu, int item, int fByPosition, Pointer<MENUITEMINFO> lpmii) =>
    _GetMenuItemInfo(hmenu, item, fByPosition, lpmii);

final _GetMenuItemInfo = _user32.lookupFunction<
    BOOL Function(HMENU hmenu, Uint32 item, BOOL fByPosition,
        Pointer<MENUITEMINFO> lpmii),
    int Function(int hmenu, int item, int fByPosition,
        Pointer<MENUITEMINFO> lpmii)>('GetMenuItemInfoW');

/// Retrieves the bounding rectangle for the specified menu item.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getmenuitemrect>.
///
/// {@category user32}
int GetMenuItemRect(int? hWnd, int hMenu, int uItem, Pointer<RECT> lprcItem) =>
    _GetMenuItemRect(hWnd ?? 0, hMenu, uItem, lprcItem);

final _GetMenuItemRect = _user32.lookupFunction<
    BOOL Function(HWND hWnd, HMENU hMenu, Uint32 uItem, Pointer<RECT> lprcItem),
    int Function(int hWnd, int hMenu, int uItem,
        Pointer<RECT> lprcItem)>('GetMenuItemRect');

/// Retrieves the menu flags associated with the specified menu item.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getmenustate>.
///
/// {@category user32}
int GetMenuState(int hMenu, int uId, int uFlags) =>
    _GetMenuState(hMenu, uId, uFlags);

final _GetMenuState = _user32.lookupFunction<
    Uint32 Function(HMENU hMenu, Uint32 uId, Uint32 uFlags),
    int Function(int hMenu, int uId, int uFlags)>('GetMenuState');

/// Copies the text string of the specified menu item into the specified buffer.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getmenustringw>.
///
/// {@category user32}
int GetMenuString(int hMenu, int uIDItem, Pointer<Utf16>? lpString, int cchMax,
        int flags) =>
    _GetMenuString(hMenu, uIDItem, lpString ?? nullptr, cchMax, flags);

final _GetMenuString = _user32.lookupFunction<
    Int32 Function(HMENU hMenu, Uint32 uIDItem, Pointer<Utf16> lpString,
        Int32 cchMax, Uint32 flags),
    int Function(int hMenu, int uIDItem, Pointer<Utf16> lpString, int cchMax,
        int flags)>('GetMenuStringW');

/// Retrieves a message from the calling thread's message queue.
///
/// The function dispatches incoming sent messages until a posted message is
/// available for retrieval.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getmessagew>.
///
/// {@category user32}
int GetMessage(
        Pointer<MSG> lpMsg, int? hWnd, int wMsgFilterMin, int wMsgFilterMax) =>
    _GetMessage(lpMsg, hWnd ?? 0, wMsgFilterMin, wMsgFilterMax);

final _GetMessage = _user32.lookupFunction<
    BOOL Function(Pointer<MSG> lpMsg, HWND hWnd, Uint32 wMsgFilterMin,
        Uint32 wMsgFilterMax),
    int Function(Pointer<MSG> lpMsg, int hWnd, int wMsgFilterMin,
        int wMsgFilterMax)>('GetMessageW');

/// Retrieves the extra message information for the current thread.
///
/// Extra message information is an application- or driver-defined value
/// associated with the current thread's message queue.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getmessageextrainfo>.
///
/// {@category user32}
int GetMessageExtraInfo() => _GetMessageExtraInfo();

final _GetMessageExtraInfo = _user32
    .lookupFunction<LPARAM Function(), int Function()>('GetMessageExtraInfo');

/// Retrieves the cursor position for the last message retrieved by the
/// GetMessage function.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getmessagepos>.
///
/// {@category user32}
int GetMessagePos() => _GetMessagePos();

final _GetMessagePos =
    _user32.lookupFunction<Uint32 Function(), int Function()>('GetMessagePos');

/// Retrieves the message time for the last message retrieved by the GetMessage
/// function.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getmessagetime>.
///
/// {@category user32}
int GetMessageTime() => _GetMessageTime();

final _GetMessageTime =
    _user32.lookupFunction<Int32 Function(), int Function()>('GetMessageTime');

/// Retrieves information about a display monitor.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getmonitorinfow>.
///
/// {@category user32}
int GetMonitorInfo(int hMonitor, Pointer<MONITORINFO> lpmi) =>
    _GetMonitorInfo(hMonitor, lpmi);

final _GetMonitorInfo = _user32.lookupFunction<
    BOOL Function(HMONITOR hMonitor, Pointer<MONITORINFO> lpmi),
    int Function(int hMonitor, Pointer<MONITORINFO> lpmi)>('GetMonitorInfoW');

/// Retrieves a history of up to 64 previous coordinates of the mouse or pen.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getmousemovepointsex>.
///
/// {@category user32}
int GetMouseMovePointsEx(int cbSize, Pointer<MOUSEMOVEPOINT> lppt,
        Pointer<MOUSEMOVEPOINT> lpptBuf, int nBufPoints, int resolution) =>
    _GetMouseMovePointsEx(cbSize, lppt, lpptBuf, nBufPoints, resolution);

final _GetMouseMovePointsEx = _user32.lookupFunction<
    Int32 Function(Uint32 cbSize, Pointer<MOUSEMOVEPOINT> lppt,
        Pointer<MOUSEMOVEPOINT> lpptBuf, Int32 nBufPoints, Uint32 resolution),
    int Function(
        int cbSize,
        Pointer<MOUSEMOVEPOINT> lppt,
        Pointer<MOUSEMOVEPOINT> lpptBuf,
        int nBufPoints,
        int resolution)>('GetMouseMovePointsEx');

/// Retrieves a handle to the first control in a group of controls that precedes
/// (or follows) the specified control in a dialog box.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getnextdlggroupitem>.
///
/// {@category user32}
int GetNextDlgGroupItem(int hDlg, int? hCtl, int bPrevious) =>
    _GetNextDlgGroupItem(hDlg, hCtl ?? 0, bPrevious);

final _GetNextDlgGroupItem = _user32.lookupFunction<
    HWND Function(HWND hDlg, HWND hCtl, BOOL bPrevious),
    int Function(int hDlg, int hCtl, int bPrevious)>('GetNextDlgGroupItem');

/// Retrieves a handle to the first control that has the WS_TABSTOP style that
/// precedes (or follows) the specified control.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getnextdlgtabitem>.
///
/// {@category user32}
int GetNextDlgTabItem(int hDlg, int? hCtl, int bPrevious) =>
    _GetNextDlgTabItem(hDlg, hCtl ?? 0, bPrevious);

final _GetNextDlgTabItem = _user32.lookupFunction<
    HWND Function(HWND hDlg, HWND hCtl, BOOL bPrevious),
    int Function(int hDlg, int hCtl, int bPrevious)>('GetNextDlgTabItem');

/// Retrieves the handle to the window that currently has the clipboard open.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getopenclipboardwindow>.
///
/// {@category user32}
int GetOpenClipboardWindow() => _GetOpenClipboardWindow();

final _GetOpenClipboardWindow = _user32
    .lookupFunction<HWND Function(), int Function()>('GetOpenClipboardWindow');

/// Retrieves a handle to the specified window's parent or owner.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getparent>.
///
/// {@category user32}
int GetParent(int hWnd) => _GetParent(hWnd);

final _GetParent =
    _user32.lookupFunction<HWND Function(HWND hWnd), int Function(int hWnd)>(
        'GetParent');

/// Retrieves the position of the cursor in physical coordinates.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getphysicalcursorpos>.
///
/// {@category user32}
int GetPhysicalCursorPos(Pointer<POINT> lpPoint) =>
    _GetPhysicalCursorPos(lpPoint);

final _GetPhysicalCursorPos = _user32.lookupFunction<
    BOOL Function(Pointer<POINT> lpPoint),
    int Function(Pointer<POINT> lpPoint)>('GetPhysicalCursorPos');

/// Retrieves the cursor identifier associated with the specified pointer.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getpointercursorid>.
///
/// {@category user32}
int GetPointerCursorId(int pointerId, Pointer<Uint32> cursorId) =>
    _GetPointerCursorId(pointerId, cursorId);

final _GetPointerCursorId = _user32.lookupFunction<
    BOOL Function(Uint32 pointerId, Pointer<Uint32> cursorId),
    int Function(
        int pointerId, Pointer<Uint32> cursorId)>('GetPointerCursorId');

/// Gets the entire frame of information for the specified pointers associated
/// with the current message.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getpointerframeinfo>.
///
/// {@category user32}
int GetPointerFrameInfo(int pointerId, Pointer<Uint32> pointerCount,
        Pointer<POINTER_INFO>? pointerInfo) =>
    _GetPointerFrameInfo(pointerId, pointerCount, pointerInfo ?? nullptr);

final _GetPointerFrameInfo = _user32.lookupFunction<
    BOOL Function(Uint32 pointerId, Pointer<Uint32> pointerCount,
        Pointer<POINTER_INFO> pointerInfo),
    int Function(int pointerId, Pointer<Uint32> pointerCount,
        Pointer<POINTER_INFO> pointerInfo)>('GetPointerFrameInfo');

/// Gets the entire frame of information (including coalesced input frames) for
/// the specified pointers associated with the current message.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getpointerframeinfohistory>.
///
/// {@category user32}
int GetPointerFrameInfoHistory(int pointerId, Pointer<Uint32> entriesCount,
        Pointer<Uint32> pointerCount, Pointer<POINTER_INFO>? pointerInfo) =>
    _GetPointerFrameInfoHistory(
        pointerId, entriesCount, pointerCount, pointerInfo ?? nullptr);

final _GetPointerFrameInfoHistory = _user32.lookupFunction<
    BOOL Function(Uint32 pointerId, Pointer<Uint32> entriesCount,
        Pointer<Uint32> pointerCount, Pointer<POINTER_INFO> pointerInfo),
    int Function(
        int pointerId,
        Pointer<Uint32> entriesCount,
        Pointer<Uint32> pointerCount,
        Pointer<POINTER_INFO> pointerInfo)>('GetPointerFrameInfoHistory');

/// Gets the entire frame of pen-based information for the specified pointers
/// (of type PT_PEN) associated with the current message.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getpointerframepeninfo>.
///
/// {@category user32}
int GetPointerFramePenInfo(int pointerId, Pointer<Uint32> pointerCount,
        Pointer<POINTER_PEN_INFO>? penInfo) =>
    _GetPointerFramePenInfo(pointerId, pointerCount, penInfo ?? nullptr);

final _GetPointerFramePenInfo = _user32.lookupFunction<
    BOOL Function(Uint32 pointerId, Pointer<Uint32> pointerCount,
        Pointer<POINTER_PEN_INFO> penInfo),
    int Function(int pointerId, Pointer<Uint32> pointerCount,
        Pointer<POINTER_PEN_INFO> penInfo)>('GetPointerFramePenInfo');

/// Gets the entire frame of pen-based information (including coalesced input
/// frames) for the specified pointers (of type PT_PEN) associated with the
/// current message.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getpointerframepeninfohistory>.
///
/// {@category user32}
int GetPointerFramePenInfoHistory(int pointerId, Pointer<Uint32> entriesCount,
        Pointer<Uint32> pointerCount, Pointer<POINTER_PEN_INFO>? penInfo) =>
    _GetPointerFramePenInfoHistory(
        pointerId, entriesCount, pointerCount, penInfo ?? nullptr);

final _GetPointerFramePenInfoHistory = _user32.lookupFunction<
    BOOL Function(Uint32 pointerId, Pointer<Uint32> entriesCount,
        Pointer<Uint32> pointerCount, Pointer<POINTER_PEN_INFO> penInfo),
    int Function(
        int pointerId,
        Pointer<Uint32> entriesCount,
        Pointer<Uint32> pointerCount,
        Pointer<POINTER_PEN_INFO> penInfo)>('GetPointerFramePenInfoHistory');

/// Gets the entire frame of touch-based information for the specified pointers
/// (of type PT_TOUCH) associated with the current message.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getpointerframetouchinfo>.
///
/// {@category user32}
int GetPointerFrameTouchInfo(int pointerId, Pointer<Uint32> pointerCount,
        Pointer<POINTER_TOUCH_INFO>? touchInfo) =>
    _GetPointerFrameTouchInfo(pointerId, pointerCount, touchInfo ?? nullptr);

final _GetPointerFrameTouchInfo = _user32.lookupFunction<
    BOOL Function(Uint32 pointerId, Pointer<Uint32> pointerCount,
        Pointer<POINTER_TOUCH_INFO> touchInfo),
    int Function(int pointerId, Pointer<Uint32> pointerCount,
        Pointer<POINTER_TOUCH_INFO> touchInfo)>('GetPointerFrameTouchInfo');

/// Gets the entire frame of touch-based information (including coalesced input
/// frames) for the specified pointers (of type PT_TOUCH) associated with the
/// current message.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getpointerframetouchinfohistory>.
///
/// {@category user32}
int GetPointerFrameTouchInfoHistory(int pointerId, Pointer<Uint32> entriesCount,
        Pointer<Uint32> pointerCount, Pointer<POINTER_TOUCH_INFO>? touchInfo) =>
    _GetPointerFrameTouchInfoHistory(
        pointerId, entriesCount, pointerCount, touchInfo ?? nullptr);

final _GetPointerFrameTouchInfoHistory = _user32.lookupFunction<
    BOOL Function(Uint32 pointerId, Pointer<Uint32> entriesCount,
        Pointer<Uint32> pointerCount, Pointer<POINTER_TOUCH_INFO> touchInfo),
    int Function(
        int pointerId,
        Pointer<Uint32> entriesCount,
        Pointer<Uint32> pointerCount,
        Pointer<POINTER_TOUCH_INFO>
            touchInfo)>('GetPointerFrameTouchInfoHistory');

/// Gets the information for the specified pointer associated with the current
/// message.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getpointerinfo>.
///
/// {@category user32}
int GetPointerInfo(int pointerId, Pointer<POINTER_INFO> pointerInfo) =>
    _GetPointerInfo(pointerId, pointerInfo);

final _GetPointerInfo = _user32.lookupFunction<
    BOOL Function(Uint32 pointerId, Pointer<POINTER_INFO> pointerInfo),
    int Function(
        int pointerId, Pointer<POINTER_INFO> pointerInfo)>('GetPointerInfo');

/// Gets the information associated with the individual inputs, if any, that
/// were coalesced into the current message for the specified pointer.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getpointerinfohistory>.
///
/// {@category user32}
int GetPointerInfoHistory(int pointerId, Pointer<Uint32> entriesCount,
        Pointer<POINTER_INFO>? pointerInfo) =>
    _GetPointerInfoHistory(pointerId, entriesCount, pointerInfo ?? nullptr);

final _GetPointerInfoHistory = _user32.lookupFunction<
    BOOL Function(Uint32 pointerId, Pointer<Uint32> entriesCount,
        Pointer<POINTER_INFO> pointerInfo),
    int Function(int pointerId, Pointer<Uint32> entriesCount,
        Pointer<POINTER_INFO> pointerInfo)>('GetPointerInfoHistory');

/// Gets one or more transforms for the pointer information coordinates
/// associated with the current message.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getpointerinputtransform>.
///
/// {@category user32}
int GetPointerInputTransform(int pointerId, int historyCount,
        Pointer<INPUT_TRANSFORM> inputTransform) =>
    _GetPointerInputTransform(pointerId, historyCount, inputTransform);

final _GetPointerInputTransform = _user32.lookupFunction<
    BOOL Function(Uint32 pointerId, Uint32 historyCount,
        Pointer<INPUT_TRANSFORM> inputTransform),
    int Function(int pointerId, int historyCount,
        Pointer<INPUT_TRANSFORM> inputTransform)>('GetPointerInputTransform');

/// Gets the pen-based information for the specified pointer (of type PT_PEN)
/// associated with the current message.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getpointerpeninfo>.
///
/// {@category user32}
int GetPointerPenInfo(int pointerId, Pointer<POINTER_PEN_INFO> penInfo) =>
    _GetPointerPenInfo(pointerId, penInfo);

final _GetPointerPenInfo = _user32.lookupFunction<
    BOOL Function(Uint32 pointerId, Pointer<POINTER_PEN_INFO> penInfo),
    int Function(
        int pointerId, Pointer<POINTER_PEN_INFO> penInfo)>('GetPointerPenInfo');

/// Gets the pen-based information associated with the individual inputs, if
/// any, that were coalesced into the current message for the specified pointer
/// (of type PT_PEN).
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getpointerpeninfohistory>.
///
/// {@category user32}
int GetPointerPenInfoHistory(int pointerId, Pointer<Uint32> entriesCount,
        Pointer<POINTER_PEN_INFO>? penInfo) =>
    _GetPointerPenInfoHistory(pointerId, entriesCount, penInfo ?? nullptr);

final _GetPointerPenInfoHistory = _user32.lookupFunction<
    BOOL Function(Uint32 pointerId, Pointer<Uint32> entriesCount,
        Pointer<POINTER_PEN_INFO> penInfo),
    int Function(int pointerId, Pointer<Uint32> entriesCount,
        Pointer<POINTER_PEN_INFO> penInfo)>('GetPointerPenInfoHistory');

/// Gets the touch-based information for the specified pointer (of type
/// PT_TOUCH) associated with the current message.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getpointertouchinfo>.
///
/// {@category user32}
int GetPointerTouchInfo(int pointerId, Pointer<POINTER_TOUCH_INFO> touchInfo) =>
    _GetPointerTouchInfo(pointerId, touchInfo);

final _GetPointerTouchInfo = _user32.lookupFunction<
    BOOL Function(Uint32 pointerId, Pointer<POINTER_TOUCH_INFO> touchInfo),
    int Function(int pointerId,
        Pointer<POINTER_TOUCH_INFO> touchInfo)>('GetPointerTouchInfo');

/// Gets the touch-based information associated with the individual inputs, if
/// any, that were coalesced into the current message for the specified pointer
/// (of type PT_TOUCH).
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getpointertouchinfohistory>.
///
/// {@category user32}
int GetPointerTouchInfoHistory(int pointerId, Pointer<Uint32> entriesCount,
        Pointer<POINTER_TOUCH_INFO>? touchInfo) =>
    _GetPointerTouchInfoHistory(pointerId, entriesCount, touchInfo ?? nullptr);

final _GetPointerTouchInfoHistory = _user32.lookupFunction<
    BOOL Function(Uint32 pointerId, Pointer<Uint32> entriesCount,
        Pointer<POINTER_TOUCH_INFO> touchInfo),
    int Function(int pointerId, Pointer<Uint32> entriesCount,
        Pointer<POINTER_TOUCH_INFO> touchInfo)>('GetPointerTouchInfoHistory');

/// Retrieves the pointer type for a specified pointer.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getpointertype>.
///
/// {@category user32}
int GetPointerType(int pointerId, Pointer<Int32> pointerType) =>
    _GetPointerType(pointerId, pointerType);

final _GetPointerType = _user32.lookupFunction<
    BOOL Function(Uint32 pointerId, Pointer<Int32> pointerType),
    int Function(int pointerId, Pointer<Int32> pointerType)>('GetPointerType');

/// Retrieves the first available clipboard format in the specified list.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getpriorityclipboardformat>.
///
/// {@category user32}
int GetPriorityClipboardFormat(
        Pointer<Uint32> paFormatPriorityList, int cFormats) =>
    _GetPriorityClipboardFormat(paFormatPriorityList, cFormats);

final _GetPriorityClipboardFormat = _user32.lookupFunction<
    Int32 Function(Pointer<Uint32> paFormatPriorityList, Int32 cFormats),
    int Function(Pointer<Uint32> paFormatPriorityList,
        int cFormats)>('GetPriorityClipboardFormat');

/// Retrieves a handle to the current window station for the calling process.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getprocesswindowstation>.
///
/// {@category user32}
int GetProcessWindowStation() => _GetProcessWindowStation();

final _GetProcessWindowStation =
    _user32.lookupFunction<HWINSTA Function(), int Function()>(
        'GetProcessWindowStation');

/// Retrieves a data handle from the property list of the specified window.
///
/// The character string identifies the handle to be retrieved. The string and
/// handle must have been added to the property list by a previous call to the
/// SetProp function.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getpropw>.
///
/// {@category user32}
int GetProp(int hWnd, Pointer<Utf16> lpString) => _GetProp(hWnd, lpString);

final _GetProp = _user32.lookupFunction<
    HANDLE Function(HWND hWnd, Pointer<Utf16> lpString),
    int Function(int hWnd, Pointer<Utf16> lpString)>('GetPropW');

/// Performs a buffered read of the raw input data.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getrawinputbuffer>.
///
/// {@category user32}
int GetRawInputBuffer(
        Pointer<RAWINPUT>? pData, Pointer<Uint32> pcbSize, int cbSizeHeader) =>
    _GetRawInputBuffer(pData ?? nullptr, pcbSize, cbSizeHeader);

final _GetRawInputBuffer = _user32.lookupFunction<
    Uint32 Function(
        Pointer<RAWINPUT> pData, Pointer<Uint32> pcbSize, Uint32 cbSizeHeader),
    int Function(Pointer<RAWINPUT> pData, Pointer<Uint32> pcbSize,
        int cbSizeHeader)>('GetRawInputBuffer');

/// Retrieves the raw input from the specified device.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getrawinputdata>.
///
/// {@category user32}
int GetRawInputData(int hRawInput, int uiCommand, Pointer? pData,
        Pointer<Uint32> pcbSize, int cbSizeHeader) =>
    _GetRawInputData(
        hRawInput, uiCommand, pData ?? nullptr, pcbSize, cbSizeHeader);

final _GetRawInputData = _user32.lookupFunction<
    Uint32 Function(HRAWINPUT hRawInput, Uint32 uiCommand, Pointer pData,
        Pointer<Uint32> pcbSize, Uint32 cbSizeHeader),
    int Function(int hRawInput, int uiCommand, Pointer pData,
        Pointer<Uint32> pcbSize, int cbSizeHeader)>('GetRawInputData');

/// Retrieves information about the raw input device.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getrawinputdeviceinfow>.
///
/// {@category user32}
int GetRawInputDeviceInfo(
        int? hDevice, int uiCommand, Pointer? pData, Pointer<Uint32> pcbSize) =>
    _GetRawInputDeviceInfo(hDevice ?? 0, uiCommand, pData ?? nullptr, pcbSize);

final _GetRawInputDeviceInfo = _user32.lookupFunction<
    Uint32 Function(HANDLE hDevice, Uint32 uiCommand, Pointer pData,
        Pointer<Uint32> pcbSize),
    int Function(int hDevice, int uiCommand, Pointer pData,
        Pointer<Uint32> pcbSize)>('GetRawInputDeviceInfoW');

/// Enumerates the raw input devices attached to the system.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getrawinputdevicelist>.
///
/// {@category user32}
int GetRawInputDeviceList(Pointer<RAWINPUTDEVICELIST>? pRawInputDeviceList,
        Pointer<Uint32> puiNumDevices, int cbSize) =>
    _GetRawInputDeviceList(
        pRawInputDeviceList ?? nullptr, puiNumDevices, cbSize);

final _GetRawInputDeviceList = _user32.lookupFunction<
    Uint32 Function(Pointer<RAWINPUTDEVICELIST> pRawInputDeviceList,
        Pointer<Uint32> puiNumDevices, Uint32 cbSize),
    int Function(Pointer<RAWINPUTDEVICELIST> pRawInputDeviceList,
        Pointer<Uint32> puiNumDevices, int cbSize)>('GetRawInputDeviceList');

/// Retrieves the information about the raw input devices for the current
/// application.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getregisteredrawinputdevices>.
///
/// {@category user32}
int GetRegisteredRawInputDevices(Pointer<RAWINPUTDEVICE>? pRawInputDevices,
        Pointer<Uint32> puiNumDevices, int cbSize) =>
    _GetRegisteredRawInputDevices(
        pRawInputDevices ?? nullptr, puiNumDevices, cbSize);

final _GetRegisteredRawInputDevices = _user32.lookupFunction<
    Uint32 Function(Pointer<RAWINPUTDEVICE> pRawInputDevices,
        Pointer<Uint32> puiNumDevices, Uint32 cbSize),
    int Function(
        Pointer<RAWINPUTDEVICE> pRawInputDevices,
        Pointer<Uint32> puiNumDevices,
        int cbSize)>('GetRegisteredRawInputDevices');

/// Retrieves information about the specified scroll bar.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getscrollbarinfo>.
///
/// {@category user32}
int GetScrollBarInfo(int hwnd, int idObject, Pointer<SCROLLBARINFO> psbi) =>
    _GetScrollBarInfo(hwnd, idObject, psbi);

final _GetScrollBarInfo = _user32.lookupFunction<
    BOOL Function(HWND hwnd, Int32 idObject, Pointer<SCROLLBARINFO> psbi),
    int Function(int hwnd, int idObject,
        Pointer<SCROLLBARINFO> psbi)>('GetScrollBarInfo');

/// Retrieves the parameters of a scroll bar, including the minimum and maximum
/// scrolling positions, the page size, and the position of the scroll box
/// (thumb).
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getscrollinfo>.
///
/// {@category user32}
int GetScrollInfo(int hwnd, int nBar, Pointer<SCROLLINFO> lpsi) =>
    _GetScrollInfo(hwnd, nBar, lpsi);

final _GetScrollInfo = _user32.lookupFunction<
    BOOL Function(HWND hwnd, Int32 nBar, Pointer<SCROLLINFO> lpsi),
    int Function(
        int hwnd, int nBar, Pointer<SCROLLINFO> lpsi)>('GetScrollInfo');

/// Retrieves a handle to the Shell's desktop window.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getshellwindow>.
///
/// {@category user32}
int GetShellWindow() => _GetShellWindow();

final _GetShellWindow =
    _user32.lookupFunction<HWND Function(), int Function()>('GetShellWindow');

/// Retrieves a handle to the drop-down menu or submenu activated by the
/// specified menu item.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getsubmenu>.
///
/// {@category user32}
int GetSubMenu(int hMenu, int nPos) => _GetSubMenu(hMenu, nPos);

final _GetSubMenu = _user32.lookupFunction<
    HMENU Function(HMENU hMenu, Int32 nPos),
    int Function(int hMenu, int nPos)>('GetSubMenu');

/// Retrieves the current color of the specified display element.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getsyscolor>.
///
/// {@category user32}
int GetSysColor(int nIndex) => _GetSysColor(nIndex);

final _GetSysColor = _user32.lookupFunction<Uint32 Function(Int32 nIndex),
    int Function(int nIndex)>('GetSysColor');

/// Retrieves a handle identifying a logical brush that corresponds to the
/// specified color index.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getsyscolorbrush>.
///
/// {@category user32}
int GetSysColorBrush(int nIndex) => _GetSysColorBrush(nIndex);

final _GetSysColorBrush = _user32.lookupFunction<HBRUSH Function(Int32 nIndex),
    int Function(int nIndex)>('GetSysColorBrush');

/// Retrieves the system DPI associated with a given process.
///
/// This is useful for avoiding compatibility issues that arise from sharing
/// DPI-sensitive information between multiple system-aware processes with
/// different system DPI values.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getsystemdpiforprocess>.
///
/// {@category user32}
int GetSystemDpiForProcess(int hProcess) => _GetSystemDpiForProcess(hProcess);

final _GetSystemDpiForProcess = _user32.lookupFunction<
    Uint32 Function(HANDLE hProcess),
    int Function(int hProcess)>('GetSystemDpiForProcess');

/// Enables the application to access the window menu (also known as the system
/// menu or the control menu) for copying and modifying.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getsystemmenu>.
///
/// {@category user32}
int GetSystemMenu(int hWnd, int bRevert) => _GetSystemMenu(hWnd, bRevert);

final _GetSystemMenu = _user32.lookupFunction<
    HMENU Function(HWND hWnd, BOOL bRevert),
    int Function(int hWnd, int bRevert)>('GetSystemMenu');

/// Retrieves the specified system metric or system configuration setting.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getsystemmetrics>.
///
/// {@category user32}
int GetSystemMetrics(int nIndex) => _GetSystemMetrics(nIndex);

final _GetSystemMetrics = _user32.lookupFunction<Int32 Function(Int32 nIndex),
    int Function(int nIndex)>('GetSystemMetrics');

/// Retrieves the specified system metric or system configuration setting taking
/// into account a provided DPI.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getsystemmetricsfordpi>.
///
/// {@category user32}
int GetSystemMetricsForDpi(int nIndex, int dpi) =>
    _GetSystemMetricsForDpi(nIndex, dpi);

final _GetSystemMetricsForDpi = _user32.lookupFunction<
    Int32 Function(Int32 nIndex, Uint32 dpi),
    int Function(int nIndex, int dpi)>('GetSystemMetricsForDpi');

/// Computes the width and height of a character string.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-gettabbedtextextentw>.
///
/// {@category user32}
int GetTabbedTextExtent(int hdc, Pointer<Utf16> lpString, int chCount,
        int nTabPositions, Pointer<Int32>? lpnTabStopPositions) =>
    _GetTabbedTextExtent(
        hdc, lpString, chCount, nTabPositions, lpnTabStopPositions ?? nullptr);

final _GetTabbedTextExtent = _user32.lookupFunction<
    Uint32 Function(HDC hdc, Pointer<Utf16> lpString, Int32 chCount,
        Int32 nTabPositions, Pointer<Int32> lpnTabStopPositions),
    int Function(
        int hdc,
        Pointer<Utf16> lpString,
        int chCount,
        int nTabPositions,
        Pointer<Int32> lpnTabStopPositions)>('GetTabbedTextExtentW');

/// Retrieves a handle to the desktop assigned to the specified thread.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getthreaddesktop>.
///
/// {@category user32}
int GetThreadDesktop(int dwThreadId) => _GetThreadDesktop(dwThreadId);

final _GetThreadDesktop = _user32.lookupFunction<
    HDESK Function(Uint32 dwThreadId),
    int Function(int dwThreadId)>('GetThreadDesktop');

/// Gets the DPI_AWARENESS_CONTEXT for the current thread.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getthreaddpiawarenesscontext>.
///
/// {@category user32}
int GetThreadDpiAwarenessContext() => _GetThreadDpiAwarenessContext();

final _GetThreadDpiAwarenessContext =
    _user32.lookupFunction<DPI_AWARENESS_CONTEXT Function(), int Function()>(
        'GetThreadDpiAwarenessContext');

/// Retrieves the DPI_HOSTING_BEHAVIOR from the current thread.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getthreaddpihostingbehavior>.
///
/// {@category user32}
int GetThreadDpiHostingBehavior() => _GetThreadDpiHostingBehavior();

final _GetThreadDpiHostingBehavior =
    _user32.lookupFunction<Int32 Function(), int Function()>(
        'GetThreadDpiHostingBehavior');

/// Retrieves information about the specified title bar.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-gettitlebarinfo>.
///
/// {@category user32}
int GetTitleBarInfo(int hwnd, Pointer<TITLEBARINFO> pti) =>
    _GetTitleBarInfo(hwnd, pti);

final _GetTitleBarInfo = _user32.lookupFunction<
    BOOL Function(HWND hwnd, Pointer<TITLEBARINFO> pti),
    int Function(int hwnd, Pointer<TITLEBARINFO> pti)>('GetTitleBarInfo');

/// Examines the Z order of the child windows associated with the specified
/// parent window and retrieves a handle to the child window at the top of the Z
/// order.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-gettopwindow>.
///
/// {@category user32}
int GetTopWindow(int? hWnd) => _GetTopWindow(hWnd ?? 0);

final _GetTopWindow =
    _user32.lookupFunction<HWND Function(HWND hWnd), int Function(int hWnd)>(
        'GetTopWindow');

/// Retrieves detailed information about touch inputs associated with a
/// particular touch input handle.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-gettouchinputinfo>.
///
/// {@category user32}
int GetTouchInputInfo(int hTouchInput, int cInputs, Pointer<TOUCHINPUT> pInputs,
        int cbSize) =>
    _GetTouchInputInfo(hTouchInput, cInputs, pInputs, cbSize);

final _GetTouchInputInfo = _user32.lookupFunction<
    BOOL Function(HTOUCHINPUT hTouchInput, Uint32 cInputs,
        Pointer<TOUCHINPUT> pInputs, Int32 cbSize),
    int Function(int hTouchInput, int cInputs, Pointer<TOUCHINPUT> pInputs,
        int cbSize)>('GetTouchInputInfo');

/// Gets pointer data before it has gone through touch prediction processing.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getunpredictedmessagepos>.
///
/// {@category user32}
int GetUnpredictedMessagePos() => _GetUnpredictedMessagePos();

final _GetUnpredictedMessagePos =
    _user32.lookupFunction<Uint32 Function(), int Function()>(
        'GetUnpredictedMessagePos');

/// Retrieves the currently supported clipboard formats.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getupdatedclipboardformats>.
///
/// {@category user32}
int GetUpdatedClipboardFormats(Pointer<Uint32> lpuiFormats, int cFormats,
        Pointer<Uint32> pcFormatsOut) =>
    _GetUpdatedClipboardFormats(lpuiFormats, cFormats, pcFormatsOut);

final _GetUpdatedClipboardFormats = _user32.lookupFunction<
    BOOL Function(Pointer<Uint32> lpuiFormats, Uint32 cFormats,
        Pointer<Uint32> pcFormatsOut),
    int Function(Pointer<Uint32> lpuiFormats, int cFormats,
        Pointer<Uint32> pcFormatsOut)>('GetUpdatedClipboardFormats');

/// Retrieves the coordinates of the smallest rectangle that completely encloses
/// the update region of the specified window.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getupdaterect>.
///
/// {@category user32}
int GetUpdateRect(int hWnd, Pointer<RECT>? lpRect, int bErase) =>
    _GetUpdateRect(hWnd, lpRect ?? nullptr, bErase);

final _GetUpdateRect = _user32.lookupFunction<
    BOOL Function(HWND hWnd, Pointer<RECT> lpRect, BOOL bErase),
    int Function(int hWnd, Pointer<RECT> lpRect, int bErase)>('GetUpdateRect');

/// Retrieves the update region of a window by copying it into the specified
/// region.
///
/// The coordinates of the update region are relative to the upper-left corner
/// of the window (that is, they are client coordinates).
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getupdatergn>.
///
/// {@category user32}
int GetUpdateRgn(int hWnd, int hRgn, int bErase) =>
    _GetUpdateRgn(hWnd, hRgn, bErase);

final _GetUpdateRgn = _user32.lookupFunction<
    Int32 Function(HWND hWnd, HRGN hRgn, BOOL bErase),
    int Function(int hWnd, int hRgn, int bErase)>('GetUpdateRgn');

/// Retrieves information about the specified window station or desktop object.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getuserobjectinformationw>.
///
/// {@category user32}
int GetUserObjectInformation(int hObj, int nIndex, Pointer? pvInfo, int nLength,
        Pointer<Uint32>? lpnLengthNeeded) =>
    _GetUserObjectInformation(
        hObj, nIndex, pvInfo ?? nullptr, nLength, lpnLengthNeeded ?? nullptr);

final _GetUserObjectInformation = _user32.lookupFunction<
    BOOL Function(HANDLE hObj, Int32 nIndex, Pointer pvInfo, Uint32 nLength,
        Pointer<Uint32> lpnLengthNeeded),
    int Function(int hObj, int nIndex, Pointer pvInfo, int nLength,
        Pointer<Uint32> lpnLengthNeeded)>('GetUserObjectInformationW');

/// Retrieves a handle to a window that has the specified relationship (Z-Order
/// or owner) to the specified window.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getwindow>.
///
/// {@category user32}
int GetWindow(int hWnd, int uCmd) => _GetWindow(hWnd, uCmd);

final _GetWindow = _user32.lookupFunction<HWND Function(HWND hWnd, Uint32 uCmd),
    int Function(int hWnd, int uCmd)>('GetWindow');

/// Retrieves the device context (DC) for the entire window, including title
/// bar, menus, and scroll bars.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getwindowdc>.
///
/// {@category user32}
int GetWindowDC(int? hWnd) => _GetWindowDC(hWnd ?? 0);

final _GetWindowDC =
    _user32.lookupFunction<HDC Function(HWND hWnd), int Function(int hWnd)>(
        'GetWindowDC');

/// Retrieves the current display affinity setting, from any process, for a
/// given window.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getwindowdisplayaffinity>.
///
/// {@category user32}
int GetWindowDisplayAffinity(int hWnd, Pointer<Uint32> pdwAffinity) =>
    _GetWindowDisplayAffinity(hWnd, pdwAffinity);

final _GetWindowDisplayAffinity = _user32.lookupFunction<
    BOOL Function(HWND hWnd, Pointer<Uint32> pdwAffinity),
    int Function(
        int hWnd, Pointer<Uint32> pdwAffinity)>('GetWindowDisplayAffinity');

/// Returns the DPI_AWARENESS_CONTEXT associated with a window.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getwindowdpiawarenesscontext>.
///
/// {@category user32}
int GetWindowDpiAwarenessContext(int hwnd) =>
    _GetWindowDpiAwarenessContext(hwnd);

final _GetWindowDpiAwarenessContext = _user32.lookupFunction<
    DPI_AWARENESS_CONTEXT Function(HWND hwnd),
    int Function(int hwnd)>('GetWindowDpiAwarenessContext');

/// Returns the DPI_HOSTING_BEHAVIOR of the specified window.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getwindowdpihostingbehavior>.
///
/// {@category user32}
int GetWindowDpiHostingBehavior(int hwnd) => _GetWindowDpiHostingBehavior(hwnd);

final _GetWindowDpiHostingBehavior =
    _user32.lookupFunction<Int32 Function(HWND hwnd), int Function(int hwnd)>(
        'GetWindowDpiHostingBehavior');

/// Retrieves information about the specified window.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getwindowinfo>.
///
/// {@category user32}
int GetWindowInfo(int hwnd, Pointer<WINDOWINFO> pwi) =>
    _GetWindowInfo(hwnd, pwi);

final _GetWindowInfo = _user32.lookupFunction<
    BOOL Function(HWND hwnd, Pointer<WINDOWINFO> pwi),
    int Function(int hwnd, Pointer<WINDOWINFO> pwi)>('GetWindowInfo');

/// Retrieves information about the specified window.
///
/// The function also retrieves the value at a specified offset into the extra
/// window memory.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getwindowlongptrw>.
///
/// {@category user32}
int GetWindowLongPtr(int hWnd, int nIndex) => _GetWindowLongPtr(hWnd, nIndex);

final _GetWindowLongPtr = _user32.lookupFunction<
    IntPtr Function(HWND hWnd, Int32 nIndex),
    int Function(int hWnd, int nIndex)>('GetWindowLongPtrW');

/// Retrieves the full path and file name of the module associated with the
/// specified window handle.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getwindowmodulefilenamew>.
///
/// {@category user32}
int GetWindowModuleFileName(
        int hwnd, Pointer<Utf16> pszFileName, int cchFileNameMax) =>
    _GetWindowModuleFileName(hwnd, pszFileName, cchFileNameMax);

final _GetWindowModuleFileName = _user32.lookupFunction<
    Uint32 Function(
        HWND hwnd, Pointer<Utf16> pszFileName, Uint32 cchFileNameMax),
    int Function(int hwnd, Pointer<Utf16> pszFileName,
        int cchFileNameMax)>('GetWindowModuleFileNameW');

/// Retrieves the show state and the restored, minimized, and maximized
/// positions of the specified window.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getwindowplacement>.
///
/// {@category user32}
int GetWindowPlacement(int hWnd, Pointer<WINDOWPLACEMENT> lpwndpl) =>
    _GetWindowPlacement(hWnd, lpwndpl);

final _GetWindowPlacement = _user32.lookupFunction<
    BOOL Function(HWND hWnd, Pointer<WINDOWPLACEMENT> lpwndpl),
    int Function(
        int hWnd, Pointer<WINDOWPLACEMENT> lpwndpl)>('GetWindowPlacement');

/// Retrieves the dimensions of the bounding rectangle of the specified window.
///
/// The dimensions are given in screen coordinates that are relative to the
/// upper-left corner of the screen.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getwindowrect>.
///
/// {@category user32}
int GetWindowRect(int hWnd, Pointer<RECT> lpRect) =>
    _GetWindowRect(hWnd, lpRect);

final _GetWindowRect = _user32.lookupFunction<
    BOOL Function(HWND hWnd, Pointer<RECT> lpRect),
    int Function(int hWnd, Pointer<RECT> lpRect)>('GetWindowRect');

/// Obtains a copy of the window region of a window.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getwindowrgn>.
///
/// {@category user32}
int GetWindowRgn(int hWnd, int hRgn) => _GetWindowRgn(hWnd, hRgn);

final _GetWindowRgn = _user32.lookupFunction<
    Int32 Function(HWND hWnd, HRGN hRgn),
    int Function(int hWnd, int hRgn)>('GetWindowRgn');

/// Retrieves the dimensions of the tightest bounding rectangle for the window
/// region of a window.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getwindowrgnbox>.
///
/// {@category user32}
int GetWindowRgnBox(int hWnd, Pointer<RECT> lprc) =>
    _GetWindowRgnBox(hWnd, lprc);

final _GetWindowRgnBox = _user32.lookupFunction<
    Int32 Function(HWND hWnd, Pointer<RECT> lprc),
    int Function(int hWnd, Pointer<RECT> lprc)>('GetWindowRgnBox');

/// Copies the text of the specified window's title bar (if it has one) into a
/// buffer.
///
/// If the specified window is a control, the text of the control is copied.
/// However, GetWindowText cannot retrieve the text of a control in another
/// application.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getwindowtextw>.
///
/// {@category user32}
int GetWindowText(int hWnd, Pointer<Utf16> lpString, int nMaxCount) =>
    _GetWindowText(hWnd, lpString, nMaxCount);

final _GetWindowText = _user32.lookupFunction<
    Int32 Function(HWND hWnd, Pointer<Utf16> lpString, Int32 nMaxCount),
    int Function(
        int hWnd, Pointer<Utf16> lpString, int nMaxCount)>('GetWindowTextW');

/// Retrieves the length, in characters, of the specified window's title bar
/// text (if the window has a title bar).
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getwindowtextlengthw>.
///
/// {@category user32}
int GetWindowTextLength(int hWnd) => _GetWindowTextLength(hWnd);

final _GetWindowTextLength =
    _user32.lookupFunction<Int32 Function(HWND hWnd), int Function(int hWnd)>(
        'GetWindowTextLengthW');

/// Retrieves the identifier of the thread that created the specified window
/// and, optionally, the identifier of the process that created the window.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getwindowthreadprocessid>.
///
/// {@category user32}
int GetWindowThreadProcessId(int hWnd, Pointer<Uint32>? lpdwProcessId) =>
    _GetWindowThreadProcessId(hWnd, lpdwProcessId ?? nullptr);

final _GetWindowThreadProcessId = _user32.lookupFunction<
    Uint32 Function(HWND hWnd, Pointer<Uint32> lpdwProcessId),
    int Function(
        int hWnd, Pointer<Uint32> lpdwProcessId)>('GetWindowThreadProcessId');

/// Draws gray text at the specified location.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-graystringw>.
///
/// {@category user32}
int GrayString(
        int hDC,
        int? hBrush,
        Pointer<NativeFunction<GRAYSTRINGPROC>>? lpOutputFunc,
        int lpData,
        int nCount,
        int x,
        int y,
        int nWidth,
        int nHeight) =>
    _GrayString(hDC, hBrush ?? 0, lpOutputFunc ?? nullptr, lpData, nCount, x, y,
        nWidth, nHeight);

final _GrayString = _user32.lookupFunction<
    BOOL Function(
        HDC hDC,
        HBRUSH hBrush,
        Pointer<NativeFunction<GRAYSTRINGPROC>> lpOutputFunc,
        LPARAM lpData,
        Int32 nCount,
        Int32 x,
        Int32 y,
        Int32 nWidth,
        Int32 nHeight),
    int Function(
        int hDC,
        int hBrush,
        Pointer<NativeFunction<GRAYSTRINGPROC>> lpOutputFunc,
        int lpData,
        int nCount,
        int x,
        int y,
        int nWidth,
        int nHeight)>('GrayStringW');

/// Removes the caret from the screen.
///
/// Hiding a caret does not destroy its current shape or invalidate the
/// insertion point.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-hidecaret>.
///
/// {@category user32}
int HideCaret(int? hWnd) => _HideCaret(hWnd ?? 0);

final _HideCaret =
    _user32.lookupFunction<BOOL Function(HWND hWnd), int Function(int hWnd)>(
        'HideCaret');

/// Adds or removes highlighting from an item in a menu bar.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-hilitemenuitem>.
///
/// {@category user32}
int HiliteMenuItem(int hWnd, int hMenu, int uIDHiliteItem, int uHilite) =>
    _HiliteMenuItem(hWnd, hMenu, uIDHiliteItem, uHilite);

final _HiliteMenuItem = _user32.lookupFunction<
    BOOL Function(HWND hWnd, HMENU hMenu, Uint32 uIDHiliteItem, Uint32 uHilite),
    int Function(
        int hWnd, int hMenu, int uIDHiliteItem, int uHilite)>('HiliteMenuItem');

/// Increases or decreases the width and height of the specified rectangle.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-inflaterect>.
///
/// {@category user32}
int InflateRect(Pointer<RECT> lprc, int dx, int dy) =>
    _InflateRect(lprc, dx, dy);

final _InflateRect = _user32.lookupFunction<
    BOOL Function(Pointer<RECT> lprc, Int32 dx, Int32 dy),
    int Function(Pointer<RECT> lprc, int dx, int dy)>('InflateRect');

/// Determines whether the current window procedure is processing a message that
/// was sent from another thread (in the same process or a different process) by
/// a call to the SendMessage function.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-insendmessage>.
///
/// {@category user32}
int InSendMessage() => _InSendMessage();

final _InSendMessage =
    _user32.lookupFunction<BOOL Function(), int Function()>('InSendMessage');

/// Determines whether the current window procedure is processing a message that
/// was sent from another thread (in the same process or a different process).
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-insendmessageex>.
///
/// {@category user32}
int InSendMessageEx() => _InSendMessageEx(nullptr);

final _InSendMessageEx = _user32.lookupFunction<
    Uint32 Function(Pointer lpReserved),
    int Function(Pointer lpReserved)>('InSendMessageEx');

/// Inserts a new menu item into a menu, moving other items down the menu.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-insertmenuw>.
///
/// {@category user32}
int InsertMenu(int hMenu, int uPosition, int uFlags, int uIDNewItem,
        Pointer<Utf16>? lpNewItem) =>
    _InsertMenu(hMenu, uPosition, uFlags, uIDNewItem, lpNewItem ?? nullptr);

final _InsertMenu = _user32.lookupFunction<
    BOOL Function(HMENU hMenu, Uint32 uPosition, Uint32 uFlags,
        IntPtr uIDNewItem, Pointer<Utf16> lpNewItem),
    int Function(int hMenu, int uPosition, int uFlags, int uIDNewItem,
        Pointer<Utf16> lpNewItem)>('InsertMenuW');

/// Inserts a new menu item at the specified position in a menu.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-insertmenuitemw>.
///
/// {@category user32}
int InsertMenuItem(
        int hmenu, int item, int fByPosition, Pointer<MENUITEMINFO> lpmi) =>
    _InsertMenuItem(hmenu, item, fByPosition, lpmi);

final _InsertMenuItem = _user32.lookupFunction<
    BOOL Function(
        HMENU hmenu, Uint32 item, BOOL fByPosition, Pointer<MENUITEMINFO> lpmi),
    int Function(int hmenu, int item, int fByPosition,
        Pointer<MENUITEMINFO> lpmi)>('InsertMenuItemW');

/// Calculates the intersection of two source rectangles and places the
/// coordinates of the intersection rectangle into the destination rectangle.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-intersectrect>.
///
/// {@category user32}
int IntersectRect(Pointer<RECT> lprcDst, Pointer<RECT> lprcSrc1,
        Pointer<RECT> lprcSrc2) =>
    _IntersectRect(lprcDst, lprcSrc1, lprcSrc2);

final _IntersectRect = _user32.lookupFunction<
    BOOL Function(
        Pointer<RECT> lprcDst, Pointer<RECT> lprcSrc1, Pointer<RECT> lprcSrc2),
    int Function(Pointer<RECT> lprcDst, Pointer<RECT> lprcSrc1,
        Pointer<RECT> lprcSrc2)>('IntersectRect');

/// Adds a rectangle to the specified window's update region.
///
/// The update region represents the portion of the window's client area that
/// must be redrawn.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-invalidaterect>.
///
/// {@category user32}
int InvalidateRect(int? hWnd, Pointer<RECT>? lpRect, int bErase) =>
    _InvalidateRect(hWnd ?? 0, lpRect ?? nullptr, bErase);

final _InvalidateRect = _user32.lookupFunction<
    BOOL Function(HWND hWnd, Pointer<RECT> lpRect, BOOL bErase),
    int Function(int hWnd, Pointer<RECT> lpRect, int bErase)>('InvalidateRect');

/// Invalidates the client area within the specified region by adding it to the
/// current update region of a window.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-invalidatergn>.
///
/// {@category user32}
int InvalidateRgn(int hWnd, int? hRgn, int bErase) =>
    _InvalidateRgn(hWnd, hRgn ?? 0, bErase);

final _InvalidateRgn = _user32.lookupFunction<
    BOOL Function(HWND hWnd, HRGN hRgn, BOOL bErase),
    int Function(int hWnd, int hRgn, int bErase)>('InvalidateRgn');

/// Inverts a rectangle in a window by performing a logical NOT operation on the
/// color values for each pixel in the rectangle's interior.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-invertrect>.
///
/// {@category user32}
int InvertRect(int hDC, Pointer<RECT> lprc) => _InvertRect(hDC, lprc);

final _InvertRect = _user32.lookupFunction<
    BOOL Function(HDC hDC, Pointer<RECT> lprc),
    int Function(int hDC, Pointer<RECT> lprc)>('InvertRect');

/// Determines whether a window is a child window or descendant window of a
/// specified parent window.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-ischild>.
///
/// {@category user32}
int IsChild(int hWndParent, int hWnd) => _IsChild(hWndParent, hWnd);

final _IsChild = _user32.lookupFunction<
    BOOL Function(HWND hWndParent, HWND hWnd),
    int Function(int hWndParent, int hWnd)>('IsChild');

/// Determines whether the clipboard contains data in the specified format.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-isclipboardformatavailable>.
///
/// {@category user32}
int IsClipboardFormatAvailable(int format) =>
    _IsClipboardFormatAvailable(format);

final _IsClipboardFormatAvailable = _user32.lookupFunction<
    BOOL Function(Uint32 format),
    int Function(int format)>('IsClipboardFormatAvailable');

/// Determines whether a message is intended for the specified dialog box and,
/// if it is, processes the message.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-isdialogmessagew>.
///
/// {@category user32}
int IsDialogMessage(int hDlg, Pointer<MSG> lpMsg) =>
    _IsDialogMessage(hDlg, lpMsg);

final _IsDialogMessage = _user32.lookupFunction<
    BOOL Function(HWND hDlg, Pointer<MSG> lpMsg),
    int Function(int hDlg, Pointer<MSG> lpMsg)>('IsDialogMessageW');

/// Determines whether a button control is checked or whether a three-state
/// button control is checked, unchecked, or indeterminate.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-isdlgbuttonchecked>.
///
/// {@category user32}
int IsDlgButtonChecked(int hDlg, int nIDButton) =>
    _IsDlgButtonChecked(hDlg, nIDButton);

final _IsDlgButtonChecked = _user32.lookupFunction<
    Uint32 Function(HWND hDlg, Int32 nIDButton),
    int Function(int hDlg, int nIDButton)>('IsDlgButtonChecked');

/// Determines whether the calling thread is already a GUI thread.
///
/// It can also optionally convert the thread to a GUI thread.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-isguithread>.
///
/// {@category user32}
int IsGUIThread(int bConvert) => _IsGUIThread(bConvert);

final _IsGUIThread = _user32.lookupFunction<BOOL Function(BOOL bConvert),
    int Function(int bConvert)>('IsGUIThread');

/// Determines whether the system considers that a specified application is not
/// responding.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-ishungappwindow>.
///
/// {@category user32}
int IsHungAppWindow(int hwnd) => _IsHungAppWindow(hwnd);

final _IsHungAppWindow =
    _user32.lookupFunction<BOOL Function(HWND hwnd), int Function(int hwnd)>(
        'IsHungAppWindow');

/// Determines whether the specified window is minimized (iconic).
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-isiconic>.
///
/// {@category user32}
int IsIconic(int hWnd) => _IsIconic(hWnd);

final _IsIconic =
    _user32.lookupFunction<BOOL Function(HWND hWnd), int Function(int hWnd)>(
        'IsIconic');

/// Determines whether the process belongs to a Windows Store app.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-isimmersiveprocess>.
///
/// {@category user32}
int IsImmersiveProcess(int hProcess) => _IsImmersiveProcess(hProcess);

final _IsImmersiveProcess = _user32.lookupFunction<
    BOOL Function(HANDLE hProcess),
    int Function(int hProcess)>('IsImmersiveProcess');

/// Determines whether a handle is a menu handle.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-ismenu>.
///
/// {@category user32}
int IsMenu(int hMenu) => _IsMenu(hMenu);

final _IsMenu =
    _user32.lookupFunction<BOOL Function(HMENU hMenu), int Function(int hMenu)>(
        'IsMenu');

/// Indicates whether EnableMouseInPointer is set for the mouse to act as a
/// pointer input device and send WM_POINTER messages.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-ismouseinpointerenabled>.
///
/// {@category user32}
int IsMouseInPointerEnabled() => _IsMouseInPointerEnabled();

final _IsMouseInPointerEnabled = _user32
    .lookupFunction<BOOL Function(), int Function()>('IsMouseInPointerEnabled');

/// Determines whether the current process is dots per inch (dpi) aware such
/// that it adjusts the sizes of UI elements to compensate for the dpi setting.
///
/// **Note:** This function may be altered or unavailable in the newer versions
/// of Windows. Use GetProcessDPIAwareness instead.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-isprocessdpiaware>.
///
/// {@category user32}
int IsProcessDPIAware() => _IsProcessDPIAware();

final _IsProcessDPIAware = _user32
    .lookupFunction<BOOL Function(), int Function()>('IsProcessDPIAware');

/// Determines whether the specified rectangle is empty.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-isrectempty>.
///
/// {@category user32}
int IsRectEmpty(Pointer<RECT> lprc) => _IsRectEmpty(lprc);

final _IsRectEmpty = _user32.lookupFunction<BOOL Function(Pointer<RECT> lprc),
    int Function(Pointer<RECT> lprc)>('IsRectEmpty');

/// Checks whether a specified window is touch-capable and, optionally,
/// retrieves the modifier flags set for the window's touch capability.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-istouchwindow>.
///
/// {@category user32}
int IsTouchWindow(int hwnd, Pointer<Uint32>? pulFlags) =>
    _IsTouchWindow(hwnd, pulFlags ?? nullptr);

final _IsTouchWindow = _user32.lookupFunction<
    BOOL Function(HWND hwnd, Pointer<Uint32> pulFlags),
    int Function(int hwnd, Pointer<Uint32> pulFlags)>('IsTouchWindow');

/// Determines if a specified DPI_AWARENESS_CONTEXT is valid and supported by
/// the current system.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-isvaliddpiawarenesscontext>.
///
/// {@category user32}
int IsValidDpiAwarenessContext(int value) => _IsValidDpiAwarenessContext(value);

final _IsValidDpiAwarenessContext = _user32.lookupFunction<
    BOOL Function(DPI_AWARENESS_CONTEXT value),
    int Function(int value)>('IsValidDpiAwarenessContext');

/// Determines whether the specified window handle identifies an existing
/// window.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-iswindow>.
///
/// {@category user32}
int IsWindow(int? hWnd) => _IsWindow(hWnd ?? 0);

final _IsWindow =
    _user32.lookupFunction<BOOL Function(HWND hWnd), int Function(int hWnd)>(
        'IsWindow');

/// Determines whether the specified window is enabled for mouse and keyboard
/// input.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-iswindowenabled>.
///
/// {@category user32}
int IsWindowEnabled(int hWnd) => _IsWindowEnabled(hWnd);

final _IsWindowEnabled =
    _user32.lookupFunction<BOOL Function(HWND hWnd), int Function(int hWnd)>(
        'IsWindowEnabled');

/// Determines whether the specified window is a native Unicode window.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-iswindowunicode>.
///
/// {@category user32}
int IsWindowUnicode(int hWnd) => _IsWindowUnicode(hWnd);

final _IsWindowUnicode =
    _user32.lookupFunction<BOOL Function(HWND hWnd), int Function(int hWnd)>(
        'IsWindowUnicode');

/// Determines the visibility state of the specified window.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-iswindowvisible>.
///
/// {@category user32}
int IsWindowVisible(int hWnd) => _IsWindowVisible(hWnd);

final _IsWindowVisible =
    _user32.lookupFunction<BOOL Function(HWND hWnd), int Function(int hWnd)>(
        'IsWindowVisible');

/// Determines whether the last message read from the current thread's queue
/// originated from a WOW64 process.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-iswow64message>.
///
/// {@category user32}
int IsWow64Message() => _IsWow64Message();

final _IsWow64Message =
    _user32.lookupFunction<BOOL Function(), int Function()>('IsWow64Message');

/// Determines whether a window is maximized.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-iszoomed>.
///
/// {@category user32}
int IsZoomed(int hWnd) => _IsZoomed(hWnd);

final _IsZoomed =
    _user32.lookupFunction<BOOL Function(HWND hWnd), int Function(int hWnd)>(
        'IsZoomed');

/// Destroys the specified timer.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-killtimer>.
///
/// {@category user32}
int KillTimer(int? hWnd, int uIDEvent) => _KillTimer(hWnd ?? 0, uIDEvent);

final _KillTimer = _user32.lookupFunction<
    BOOL Function(HWND hWnd, IntPtr uIDEvent),
    int Function(int hWnd, int uIDEvent)>('KillTimer');

/// Loads the specified accelerator table.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-loadacceleratorsw>.
///
/// {@category user32}
int LoadAccelerators(int? hInstance, Pointer<Utf16> lpTableName) =>
    _LoadAccelerators(hInstance ?? 0, lpTableName);

final _LoadAccelerators = _user32.lookupFunction<
    HACCEL Function(HINSTANCE hInstance, Pointer<Utf16> lpTableName),
    int Function(
        int hInstance, Pointer<Utf16> lpTableName)>('LoadAcceleratorsW');

/// Loads the specified cursor resource from the executable (.EXE) file
/// associated with an application instance.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-loadcursorw>.
///
/// {@category user32}
int LoadCursor(int? hInstance, Pointer<Utf16> lpCursorName) =>
    _LoadCursor(hInstance ?? 0, lpCursorName);

final _LoadCursor = _user32.lookupFunction<
    HCURSOR Function(HINSTANCE hInstance, Pointer<Utf16> lpCursorName),
    int Function(int hInstance, Pointer<Utf16> lpCursorName)>('LoadCursorW');

/// Creates a cursor based on data contained in a file.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-loadcursorfromfilew>.
///
/// {@category user32}
int LoadCursorFromFile(Pointer<Utf16> lpFileName) =>
    _LoadCursorFromFile(lpFileName);

final _LoadCursorFromFile = _user32.lookupFunction<
    HCURSOR Function(Pointer<Utf16> lpFileName),
    int Function(Pointer<Utf16> lpFileName)>('LoadCursorFromFileW');

/// Loads the specified icon resource from the executable (.exe) file associated
/// with an application instance.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-loadiconw>.
///
/// {@category user32}
int LoadIcon(int? hInstance, Pointer<Utf16> lpIconName) =>
    _LoadIcon(hInstance ?? 0, lpIconName);

final _LoadIcon = _user32.lookupFunction<
    HICON Function(HINSTANCE hInstance, Pointer<Utf16> lpIconName),
    int Function(int hInstance, Pointer<Utf16> lpIconName)>('LoadIconW');

/// Loads an icon, cursor, animated cursor, or bitmap.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-loadimagew>.
///
/// {@category user32}
int LoadImage(int? hInst, Pointer<Utf16> name, int type, int cx, int cy,
        int fuLoad) =>
    _LoadImage(hInst ?? 0, name, type, cx, cy, fuLoad);

final _LoadImage = _user32.lookupFunction<
    HANDLE Function(HINSTANCE hInst, Pointer<Utf16> name, Uint32 type, Int32 cx,
        Int32 cy, Uint32 fuLoad),
    int Function(int hInst, Pointer<Utf16> name, int type, int cx, int cy,
        int fuLoad)>('LoadImageW');

/// Loads a new input locale identifier (formerly called the keyboard layout)
/// into the system.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-loadkeyboardlayoutw>.
///
/// {@category user32}
int LoadKeyboardLayout(Pointer<Utf16> pwszKLID, int flags) =>
    _LoadKeyboardLayout(pwszKLID, flags);

final _LoadKeyboardLayout = _user32.lookupFunction<
    HKL Function(Pointer<Utf16> pwszKLID, Uint32 flags),
    int Function(Pointer<Utf16> pwszKLID, int flags)>('LoadKeyboardLayoutW');

/// Loads the specified menu resource from the executable (.exe) file associated
/// with an application instance.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-loadmenuw>.
///
/// {@category user32}
int LoadMenu(int? hInstance, Pointer<Utf16> lpMenuName) =>
    _LoadMenu(hInstance ?? 0, lpMenuName);

final _LoadMenu = _user32.lookupFunction<
    HMENU Function(HINSTANCE hInstance, Pointer<Utf16> lpMenuName),
    int Function(int hInstance, Pointer<Utf16> lpMenuName)>('LoadMenuW');

/// Loads the specified menu template in memory.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-loadmenuindirectw>.
///
/// {@category user32}
int LoadMenuIndirect(Pointer lpMenuTemplate) =>
    _LoadMenuIndirect(lpMenuTemplate);

final _LoadMenuIndirect = _user32.lookupFunction<
    HMENU Function(Pointer lpMenuTemplate),
    int Function(Pointer lpMenuTemplate)>('LoadMenuIndirectW');

/// Loads a string resource from the executable file associated with a specified
/// module, copies the string into a buffer, and appends a terminating null
/// character.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-loadstringw>.
///
/// {@category user32}
int LoadString(
        int? hInstance, int uID, Pointer<Utf16> lpBuffer, int cchBufferMax) =>
    _LoadString(hInstance ?? 0, uID, lpBuffer, cchBufferMax);

final _LoadString = _user32.lookupFunction<
    Int32 Function(HINSTANCE hInstance, Uint32 uID, Pointer<Utf16> lpBuffer,
        Int32 cchBufferMax),
    int Function(int hInstance, int uID, Pointer<Utf16> lpBuffer,
        int cchBufferMax)>('LoadStringW');

/// The foreground process can call the LockSetForegroundWindow function to
/// disable calls to the SetForegroundWindow function.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-locksetforegroundwindow>.
///
/// {@category user32}
int LockSetForegroundWindow(int uLockCode) =>
    _LockSetForegroundWindow(uLockCode);

final _LockSetForegroundWindow = _user32.lookupFunction<
    BOOL Function(Uint32 uLockCode),
    int Function(int uLockCode)>('LockSetForegroundWindow');

/// Disables or enables drawing in the specified window.
///
/// Only one window can be locked at a time.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-lockwindowupdate>.
///
/// {@category user32}
int LockWindowUpdate(int? hWndLock) => _LockWindowUpdate(hWndLock ?? 0);

final _LockWindowUpdate = _user32.lookupFunction<BOOL Function(HWND hWndLock),
    int Function(int hWndLock)>('LockWindowUpdate');

/// Locks the workstation's display.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-lockworkstation>.
///
/// {@category user32}
int LockWorkStation() => _LockWorkStation();

final _LockWorkStation =
    _user32.lookupFunction<BOOL Function(), int Function()>('LockWorkStation');

/// Converts the logical coordinates of a point in a window to physical
/// coordinates.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-logicaltophysicalpoint>.
///
/// {@category user32}
int LogicalToPhysicalPoint(int hWnd, Pointer<POINT> lpPoint) =>
    _LogicalToPhysicalPoint(hWnd, lpPoint);

final _LogicalToPhysicalPoint = _user32.lookupFunction<
    BOOL Function(HWND hWnd, Pointer<POINT> lpPoint),
    int Function(int hWnd, Pointer<POINT> lpPoint)>('LogicalToPhysicalPoint');

/// Converts a point in a window from logical coordinates into physical
/// coordinates, regardless of the dots per inch (dpi) awareness of the caller.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-logicaltophysicalpointforpermonitordpi>.
///
/// {@category user32}
int LogicalToPhysicalPointForPerMonitorDPI(int? hWnd, Pointer<POINT> lpPoint) =>
    _LogicalToPhysicalPointForPerMonitorDPI(hWnd ?? 0, lpPoint);

final _LogicalToPhysicalPointForPerMonitorDPI = _user32.lookupFunction<
    BOOL Function(HWND hWnd, Pointer<POINT> lpPoint),
    int Function(int hWnd,
        Pointer<POINT> lpPoint)>('LogicalToPhysicalPointForPerMonitorDPI');

/// Searches through icon or cursor data for the icon or cursor that best fits
/// the current display device.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-lookupiconidfromdirectory>.
///
/// {@category user32}
int LookupIconIdFromDirectory(Pointer<Uint8> presbits, int fIcon) =>
    _LookupIconIdFromDirectory(presbits, fIcon);

final _LookupIconIdFromDirectory = _user32.lookupFunction<
    Int32 Function(Pointer<Uint8> presbits, BOOL fIcon),
    int Function(
        Pointer<Uint8> presbits, int fIcon)>('LookupIconIdFromDirectory');

/// Searches through icon or cursor data for the icon or cursor that best fits
/// the current display device.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-lookupiconidfromdirectoryex>.
///
/// {@category user32}
int LookupIconIdFromDirectoryEx(Pointer<Uint8> presbits, int fIcon,
        int cxDesired, int cyDesired, int flags) =>
    _LookupIconIdFromDirectoryEx(presbits, fIcon, cxDesired, cyDesired, flags);

final _LookupIconIdFromDirectoryEx = _user32.lookupFunction<
    Int32 Function(Pointer<Uint8> presbits, BOOL fIcon, Int32 cxDesired,
        Int32 cyDesired, Uint32 flags),
    int Function(Pointer<Uint8> presbits, int fIcon, int cxDesired,
        int cyDesired, int flags)>('LookupIconIdFromDirectoryEx');

/// Converts the specified dialog box units to screen units (pixels).
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-mapdialogrect>.
///
/// {@category user32}
int MapDialogRect(int hDlg, Pointer<RECT> lpRect) =>
    _MapDialogRect(hDlg, lpRect);

final _MapDialogRect = _user32.lookupFunction<
    BOOL Function(HWND hDlg, Pointer<RECT> lpRect),
    int Function(int hDlg, Pointer<RECT> lpRect)>('MapDialogRect');

/// Translates (maps) a virtual-key code into a scan code or character value, or
/// translates a scan code into a virtual-key code.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-mapvirtualkeyw>.
///
/// {@category user32}
int MapVirtualKey(int uCode, int uMapType) => _MapVirtualKey(uCode, uMapType);

final _MapVirtualKey = _user32.lookupFunction<
    Uint32 Function(Uint32 uCode, Uint32 uMapType),
    int Function(int uCode, int uMapType)>('MapVirtualKeyW');

/// Translates (maps) a virtual-key code into a scan code or character value, or
/// translates a scan code into a virtual-key code.
///
/// The function translates the codes using the input language and an input
/// locale identifier.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-mapvirtualkeyexw>.
///
/// {@category user32}
int MapVirtualKeyEx(int uCode, int uMapType, int? dwhkl) =>
    _MapVirtualKeyEx(uCode, uMapType, dwhkl ?? 0);

final _MapVirtualKeyEx = _user32.lookupFunction<
    Uint32 Function(Uint32 uCode, Uint32 uMapType, HKL dwhkl),
    int Function(int uCode, int uMapType, int dwhkl)>('MapVirtualKeyExW');

/// Converts (maps) a set of points from a coordinate space relative to one
/// window to a coordinate space relative to another window.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-mapwindowpoints>.
///
/// {@category user32}
int MapWindowPoints(
        int? hWndFrom, int? hWndTo, Pointer<POINT> lpPoints, int cPoints) =>
    _MapWindowPoints(hWndFrom ?? 0, hWndTo ?? 0, lpPoints, cPoints);

final _MapWindowPoints = _user32.lookupFunction<
    Int32 Function(
        HWND hWndFrom, HWND hWndTo, Pointer<POINT> lpPoints, Uint32 cPoints),
    int Function(int hWndFrom, int hWndTo, Pointer<POINT> lpPoints,
        int cPoints)>('MapWindowPoints');

/// Determines which menu item, if any, is at the specified location.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-menuitemfrompoint>.
///
/// {@category user32}
int MenuItemFromPoint(int? hWnd, int hMenu, POINT ptScreen) =>
    _MenuItemFromPoint(hWnd ?? 0, hMenu, ptScreen);

final _MenuItemFromPoint = _user32.lookupFunction<
    Int32 Function(HWND hWnd, HMENU hMenu, POINT ptScreen),
    int Function(int hWnd, int hMenu, POINT ptScreen)>('MenuItemFromPoint');

/// Displays a modal dialog box that contains a system icon, a set of buttons,
/// and a brief application-specific message, such as status or error
/// information.
///
/// The message box returns an integer value that indicates which button the
/// user clicked.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-messageboxw>.
///
/// {@category user32}
int MessageBox(int? hWnd, Pointer<Utf16>? lpText, Pointer<Utf16>? lpCaption,
        int uType) =>
    _MessageBox(hWnd ?? 0, lpText ?? nullptr, lpCaption ?? nullptr, uType);

final _MessageBox = _user32.lookupFunction<
    Int32 Function(HWND hWnd, Pointer<Utf16> lpText, Pointer<Utf16> lpCaption,
        Uint32 uType),
    int Function(int hWnd, Pointer<Utf16> lpText, Pointer<Utf16> lpCaption,
        int uType)>('MessageBoxW');

/// Creates, displays, and operates a message box.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-messageboxexw>.
///
/// {@category user32}
int MessageBoxEx(int? hWnd, Pointer<Utf16>? lpText, Pointer<Utf16>? lpCaption,
        int uType, int wLanguageId) =>
    _MessageBoxEx(
        hWnd ?? 0, lpText ?? nullptr, lpCaption ?? nullptr, uType, wLanguageId);

final _MessageBoxEx = _user32.lookupFunction<
    Int32 Function(HWND hWnd, Pointer<Utf16> lpText, Pointer<Utf16> lpCaption,
        Uint32 uType, Uint16 wLanguageId),
    int Function(int hWnd, Pointer<Utf16> lpText, Pointer<Utf16> lpCaption,
        int uType, int wLanguageId)>('MessageBoxExW');

/// Changes an existing menu item.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-modifymenuw>.
///
/// {@category user32}
int ModifyMenu(int hMnu, int uPosition, int uFlags, int uIDNewItem,
        Pointer<Utf16>? lpNewItem) =>
    _ModifyMenu(hMnu, uPosition, uFlags, uIDNewItem, lpNewItem ?? nullptr);

final _ModifyMenu = _user32.lookupFunction<
    BOOL Function(HMENU hMnu, Uint32 uPosition, Uint32 uFlags,
        IntPtr uIDNewItem, Pointer<Utf16> lpNewItem),
    int Function(int hMnu, int uPosition, int uFlags, int uIDNewItem,
        Pointer<Utf16> lpNewItem)>('ModifyMenuW');

/// Retrieves a handle to the display monitor that contains a specified point.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-monitorfrompoint>.
///
/// {@category user32}
int MonitorFromPoint(POINT pt, int dwFlags) => _MonitorFromPoint(pt, dwFlags);

final _MonitorFromPoint = _user32.lookupFunction<
    HMONITOR Function(POINT pt, Uint32 dwFlags),
    int Function(POINT pt, int dwFlags)>('MonitorFromPoint');

/// Retrieves a handle to the display monitor that has the largest area of
/// intersection with a specified rectangle.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-monitorfromrect>.
///
/// {@category user32}
int MonitorFromRect(Pointer<RECT> lprc, int dwFlags) =>
    _MonitorFromRect(lprc, dwFlags);

final _MonitorFromRect = _user32.lookupFunction<
    HMONITOR Function(Pointer<RECT> lprc, Uint32 dwFlags),
    int Function(Pointer<RECT> lprc, int dwFlags)>('MonitorFromRect');

/// Retrieves a handle to the display monitor that has the largest area of
/// intersection with the bounding rectangle of a specified window.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-monitorfromwindow>.
///
/// {@category user32}
int MonitorFromWindow(int hwnd, int dwFlags) =>
    _MonitorFromWindow(hwnd, dwFlags);

final _MonitorFromWindow = _user32.lookupFunction<
    HMONITOR Function(HWND hwnd, Uint32 dwFlags),
    int Function(int hwnd, int dwFlags)>('MonitorFromWindow');

/// Changes the position and dimensions of the specified window.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-movewindow>.
///
/// {@category user32}
int MoveWindow(int hWnd, int x, int y, int nWidth, int nHeight, int bRepaint) =>
    _MoveWindow(hWnd, x, y, nWidth, nHeight, bRepaint);

final _MoveWindow = _user32.lookupFunction<
    BOOL Function(HWND hWnd, Int32 x, Int32 y, Int32 nWidth, Int32 nHeight,
        BOOL bRepaint),
    int Function(int hWnd, int x, int y, int nWidth, int nHeight,
        int bRepaint)>('MoveWindow');

/// Waits until one or all of the specified objects are in the signaled state or
/// the time-out interval elapses.
///
/// The objects can include input event objects.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-msgwaitformultipleobjects>.
///
/// {@category user32}
int MsgWaitForMultipleObjects(int nCount, Pointer<HANDLE>? pHandles,
        int fWaitAll, int dwMilliseconds, int dwWakeMask) =>
    _MsgWaitForMultipleObjects(
        nCount, pHandles ?? nullptr, fWaitAll, dwMilliseconds, dwWakeMask);

final _MsgWaitForMultipleObjects = _user32.lookupFunction<
    Uint32 Function(Uint32 nCount, Pointer<HANDLE> pHandles, BOOL fWaitAll,
        Uint32 dwMilliseconds, Uint32 dwWakeMask),
    int Function(int nCount, Pointer<HANDLE> pHandles, int fWaitAll,
        int dwMilliseconds, int dwWakeMask)>('MsgWaitForMultipleObjects');

/// Waits until one or all of the specified objects are in the signaled state,
/// an I/O completion routine or asynchronous procedure call (APC) is queued to
/// the thread, or the time-out interval elapses.
///
/// The array of objects can include input event objects.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-msgwaitformultipleobjectsex>.
///
/// {@category user32}
int MsgWaitForMultipleObjectsEx(int nCount, Pointer<HANDLE>? pHandles,
        int dwMilliseconds, int dwWakeMask, int dwFlags) =>
    _MsgWaitForMultipleObjectsEx(
        nCount, pHandles ?? nullptr, dwMilliseconds, dwWakeMask, dwFlags);

final _MsgWaitForMultipleObjectsEx = _user32.lookupFunction<
    Uint32 Function(Uint32 nCount, Pointer<HANDLE> pHandles,
        Uint32 dwMilliseconds, Uint32 dwWakeMask, Uint32 dwFlags),
    int Function(int nCount, Pointer<HANDLE> pHandles, int dwMilliseconds,
        int dwWakeMask, int dwFlags)>('MsgWaitForMultipleObjectsEx');

/// Signals the system that a predefined event occurred.
///
/// If any client applications have registered a hook function for the event,
/// the system calls the client's hook function.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-notifywinevent>.
///
/// {@category user32}
void NotifyWinEvent(int event, int hwnd, int idObject, int idChild) =>
    _NotifyWinEvent(event, hwnd, idObject, idChild);

final _NotifyWinEvent = _user32.lookupFunction<
    Void Function(Uint32 event, HWND hwnd, Int32 idObject, Int32 idChild),
    void Function(
        int event, int hwnd, int idObject, int idChild)>('NotifyWinEvent');

/// Maps OEMASCII codes 0 through 0x0FF into the OEM scan codes and shift
/// states.
///
/// The function provides information that allows a program to send OEM text to
/// another program by simulating keyboard input.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-oemkeyscan>.
///
/// {@category user32}
int OemKeyScan(int wOemChar) => _OemKeyScan(wOemChar);

final _OemKeyScan = _user32.lookupFunction<Uint32 Function(Uint16 wOemChar),
    int Function(int wOemChar)>('OemKeyScan');

/// Moves the specified rectangle by the specified offsets.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-offsetrect>.
///
/// {@category user32}
int OffsetRect(Pointer<RECT> lprc, int dx, int dy) => _OffsetRect(lprc, dx, dy);

final _OffsetRect = _user32.lookupFunction<
    BOOL Function(Pointer<RECT> lprc, Int32 dx, Int32 dy),
    int Function(Pointer<RECT> lprc, int dx, int dy)>('OffsetRect');

/// Opens the clipboard for examination and prevents other applications from
/// modifying the clipboard content.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-openclipboard>.
///
/// {@category user32}
int OpenClipboard(int? hWndNewOwner) => _OpenClipboard(hWndNewOwner ?? 0);

final _OpenClipboard = _user32.lookupFunction<BOOL Function(HWND hWndNewOwner),
    int Function(int hWndNewOwner)>('OpenClipboard');

/// Opens the specified desktop object.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-opendesktopw>.
///
/// {@category user32}
int OpenDesktop(Pointer<Utf16> lpszDesktop, int dwFlags, int fInherit,
        int dwDesiredAccess) =>
    _OpenDesktop(lpszDesktop, dwFlags, fInherit, dwDesiredAccess);

final _OpenDesktop = _user32.lookupFunction<
    HDESK Function(Pointer<Utf16> lpszDesktop, Uint32 dwFlags, BOOL fInherit,
        Uint32 dwDesiredAccess),
    int Function(Pointer<Utf16> lpszDesktop, int dwFlags, int fInherit,
        int dwDesiredAccess)>('OpenDesktopW');

/// Restores a minimized (iconic) window to its previous size and position; it
/// then activates the window.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-openicon>.
///
/// {@category user32}
int OpenIcon(int hWnd) => _OpenIcon(hWnd);

final _OpenIcon =
    _user32.lookupFunction<BOOL Function(HWND hWnd), int Function(int hWnd)>(
        'OpenIcon');

/// Opens the desktop that receives user input.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-openinputdesktop>.
///
/// {@category user32}
int OpenInputDesktop(int dwFlags, int fInherit, int dwDesiredAccess) =>
    _OpenInputDesktop(dwFlags, fInherit, dwDesiredAccess);

final _OpenInputDesktop = _user32.lookupFunction<
    HDESK Function(Uint32 dwFlags, BOOL fInherit, Uint32 dwDesiredAccess),
    int Function(
        int dwFlags, int fInherit, int dwDesiredAccess)>('OpenInputDesktop');

/// Opens the specified window station.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-openwindowstationw>.
///
/// {@category user32}
int OpenWindowStation(
        Pointer<Utf16> lpszWinSta, int fInherit, int dwDesiredAccess) =>
    _OpenWindowStation(lpszWinSta, fInherit, dwDesiredAccess);

final _OpenWindowStation = _user32.lookupFunction<
    HWINSTA Function(
        Pointer<Utf16> lpszWinSta, BOOL fInherit, Uint32 dwDesiredAccess),
    int Function(Pointer<Utf16> lpszWinSta, int fInherit,
        int dwDesiredAccess)>('OpenWindowStationW');

/// Fills the clipping region in the specified device context with the desktop
/// pattern or wallpaper.
///
/// The function is provided primarily for shell desktops.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-paintdesktop>.
///
/// {@category user32}
int PaintDesktop(int hdc) => _PaintDesktop(hdc);

final _PaintDesktop =
    _user32.lookupFunction<BOOL Function(HDC hdc), int Function(int hdc)>(
        'PaintDesktop');

/// Dispatches incoming nonqueued messages, checks the thread message queue for
/// a posted message, and retrieves the message (if any exist).
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-peekmessagew>.
///
/// {@category user32}
int PeekMessage(Pointer<MSG> lpMsg, int? hWnd, int wMsgFilterMin,
        int wMsgFilterMax, int wRemoveMsg) =>
    _PeekMessage(lpMsg, hWnd ?? 0, wMsgFilterMin, wMsgFilterMax, wRemoveMsg);

final _PeekMessage = _user32.lookupFunction<
    BOOL Function(Pointer<MSG> lpMsg, HWND hWnd, Uint32 wMsgFilterMin,
        Uint32 wMsgFilterMax, Uint32 wRemoveMsg),
    int Function(Pointer<MSG> lpMsg, int hWnd, int wMsgFilterMin,
        int wMsgFilterMax, int wRemoveMsg)>('PeekMessageW');

/// Converts the physical coordinates of a point in a window to logical
/// coordinates.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-physicaltologicalpoint>.
///
/// {@category user32}
int PhysicalToLogicalPoint(int hWnd, Pointer<POINT> lpPoint) =>
    _PhysicalToLogicalPoint(hWnd, lpPoint);

final _PhysicalToLogicalPoint = _user32.lookupFunction<
    BOOL Function(HWND hWnd, Pointer<POINT> lpPoint),
    int Function(int hWnd, Pointer<POINT> lpPoint)>('PhysicalToLogicalPoint');

/// Converts a point in a window from physical coordinates into logical
/// coordinates, regardless of the dots per inch (dpi) awareness of the caller.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-physicaltologicalpointforpermonitordpi>.
///
/// {@category user32}
int PhysicalToLogicalPointForPerMonitorDPI(int? hWnd, Pointer<POINT> lpPoint) =>
    _PhysicalToLogicalPointForPerMonitorDPI(hWnd ?? 0, lpPoint);

final _PhysicalToLogicalPointForPerMonitorDPI = _user32.lookupFunction<
    BOOL Function(HWND hWnd, Pointer<POINT> lpPoint),
    int Function(int hWnd,
        Pointer<POINT> lpPoint)>('PhysicalToLogicalPointForPerMonitorDPI');

/// Places (posts) a message in the message queue associated with the thread
/// that created the specified window and returns without waiting for the thread
/// to process the message.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-postmessagew>.
///
/// {@category user32}
int PostMessage(int? hWnd, int msg, int wParam, int lParam) =>
    _PostMessage(hWnd ?? 0, msg, wParam, lParam);

final _PostMessage = _user32.lookupFunction<
    BOOL Function(HWND hWnd, Uint32 msg, WPARAM wParam, LPARAM lParam),
    int Function(int hWnd, int msg, int wParam, int lParam)>('PostMessageW');

/// Indicates to the system that a thread has made a request to terminate
/// (quit).
///
/// It is typically used in response to a WM_DESTROY message.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-postquitmessage>.
///
/// {@category user32}
void PostQuitMessage(int nExitCode) => _PostQuitMessage(nExitCode);

final _PostQuitMessage = _user32.lookupFunction<Void Function(Int32 nExitCode),
    void Function(int nExitCode)>('PostQuitMessage');

/// Posts a message to the message queue of the specified thread.
///
/// It returns without waiting for the thread to process the message.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-postthreadmessagew>.
///
/// {@category user32}
int PostThreadMessage(int idThread, int msg, int wParam, int lParam) =>
    _PostThreadMessage(idThread, msg, wParam, lParam);

final _PostThreadMessage = _user32.lookupFunction<
    BOOL Function(Uint32 idThread, Uint32 msg, WPARAM wParam, LPARAM lParam),
    int Function(
        int idThread, int msg, int wParam, int lParam)>('PostThreadMessageW');

/// Copies a visual window into the specified device context (DC), typically a
/// printer DC.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-printwindow>.
///
/// {@category user32}
int PrintWindow(int hwnd, int hdcBlt, int nFlags) =>
    _PrintWindow(hwnd, hdcBlt, nFlags);

final _PrintWindow = _user32.lookupFunction<
    BOOL Function(HWND hwnd, HDC hdcBlt, Uint32 nFlags),
    int Function(int hwnd, int hdcBlt, int nFlags)>('PrintWindow');

/// Creates an array of handles to icons that are extracted from a specified
/// file.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-privateextracticonsw>.
///
/// {@category user32}
int PrivateExtractIcons(
        Pointer<Utf16> szFileName,
        int nIconIndex,
        int cxIcon,
        int cyIcon,
        Pointer<HICON>? phicon,
        Pointer<Uint32>? piconid,
        int nIcons,
        int flags) =>
    _PrivateExtractIcons(szFileName, nIconIndex, cxIcon, cyIcon,
        phicon ?? nullptr, piconid ?? nullptr, nIcons, flags);

final _PrivateExtractIcons = _user32.lookupFunction<
    Uint32 Function(
        Pointer<Utf16> szFileName,
        Int32 nIconIndex,
        Int32 cxIcon,
        Int32 cyIcon,
        Pointer<HICON> phicon,
        Pointer<Uint32> piconid,
        Uint32 nIcons,
        Uint32 flags),
    int Function(
        Pointer<Utf16> szFileName,
        int nIconIndex,
        int cxIcon,
        int cyIcon,
        Pointer<HICON> phicon,
        Pointer<Uint32> piconid,
        int nIcons,
        int flags)>('PrivateExtractIconsW');

/// Determines whether the specified point lies within the specified rectangle.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-ptinrect>.
///
/// {@category user32}
int PtInRect(Pointer<RECT> lprc, POINT pt) => _PtInRect(lprc, pt);

final _PtInRect = _user32.lookupFunction<
    BOOL Function(Pointer<RECT> lprc, POINT pt),
    int Function(Pointer<RECT> lprc, POINT pt)>('PtInRect');

/// Updates the specified rectangle or region in a window's client area.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-redrawwindow>.
///
/// {@category user32}
int RedrawWindow(
        int? hWnd, Pointer<RECT>? lprcUpdate, int? hrgnUpdate, int flags) =>
    _RedrawWindow(hWnd ?? 0, lprcUpdate ?? nullptr, hrgnUpdate ?? 0, flags);

final _RedrawWindow = _user32.lookupFunction<
    BOOL Function(
        HWND hWnd, Pointer<RECT> lprcUpdate, HRGN hrgnUpdate, Uint32 flags),
    int Function(int hWnd, Pointer<RECT> lprcUpdate, int hrgnUpdate,
        int flags)>('RedrawWindow');

/// Registers a window class for subsequent use in calls to the CreateWindow or
/// CreateWindowEx function.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-registerclassw>.
///
/// {@category user32}
int RegisterClass(Pointer<WNDCLASS> lpWndClass) => _RegisterClass(lpWndClass);

final _RegisterClass = _user32.lookupFunction<
    Uint16 Function(Pointer<WNDCLASS> lpWndClass),
    int Function(Pointer<WNDCLASS> lpWndClass)>('RegisterClassW');

/// Registers a window class for subsequent use in calls to the CreateWindow or
/// CreateWindowEx function.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-registerclassexw>.
///
/// {@category user32}
int RegisterClassEx(Pointer<WNDCLASSEX> param0) => _RegisterClassEx(param0);

final _RegisterClassEx = _user32.lookupFunction<
    Uint16 Function(Pointer<WNDCLASSEX> param0),
    int Function(Pointer<WNDCLASSEX> param0)>('RegisterClassExW');

/// Registers a new clipboard format.
///
/// This format can then be used as a valid clipboard format.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-registerclipboardformatw>.
///
/// {@category user32}
int RegisterClipboardFormat(Pointer<Utf16> lpszFormat) =>
    _RegisterClipboardFormat(lpszFormat);

final _RegisterClipboardFormat = _user32.lookupFunction<
    Uint32 Function(Pointer<Utf16> lpszFormat),
    int Function(Pointer<Utf16> lpszFormat)>('RegisterClipboardFormatW');

/// Defines a system-wide hot key.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-registerhotkey>.
///
/// {@category user32}
int RegisterHotKey(int? hWnd, int id, int fsModifiers, int vk) =>
    _RegisterHotKey(hWnd ?? 0, id, fsModifiers, vk);

final _RegisterHotKey = _user32.lookupFunction<
    BOOL Function(HWND hWnd, Int32 id, Uint32 fsModifiers, Uint32 vk),
    int Function(int hWnd, int id, int fsModifiers, int vk)>('RegisterHotKey');

/// Registers the application to receive power setting notifications for the
/// specific power setting event.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-registerpowersettingnotification>.
///
/// {@category user32}
int RegisterPowerSettingNotification(
        int hRecipient, Pointer<GUID> powerSettingGuid, int flags) =>
    _RegisterPowerSettingNotification(hRecipient, powerSettingGuid, flags);

final _RegisterPowerSettingNotification = _user32.lookupFunction<
    HPOWERNOTIFY Function(
        HANDLE hRecipient, Pointer<GUID> powerSettingGuid, Uint32 flags),
    int Function(int hRecipient, Pointer<GUID> powerSettingGuid,
        int flags)>('RegisterPowerSettingNotification');

/// Registers the devices that supply the raw input data.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-registerrawinputdevices>.
///
/// {@category user32}
int RegisterRawInputDevices(Pointer<RAWINPUTDEVICE> pRawInputDevices,
        int uiNumDevices, int cbSize) =>
    _RegisterRawInputDevices(pRawInputDevices, uiNumDevices, cbSize);

final _RegisterRawInputDevices = _user32.lookupFunction<
    BOOL Function(Pointer<RAWINPUTDEVICE> pRawInputDevices, Uint32 uiNumDevices,
        Uint32 cbSize),
    int Function(Pointer<RAWINPUTDEVICE> pRawInputDevices, int uiNumDevices,
        int cbSize)>('RegisterRawInputDevices');

/// Registers a window to process the WM_TOUCHHITTESTING notification.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-registertouchhittestingwindow>.
///
/// {@category user32}
int RegisterTouchHitTestingWindow(int hwnd, int value) =>
    _RegisterTouchHitTestingWindow(hwnd, value);

final _RegisterTouchHitTestingWindow = _user32.lookupFunction<
    BOOL Function(HWND hwnd, Uint32 value),
    int Function(int hwnd, int value)>('RegisterTouchHitTestingWindow');

/// Registers a window as being touch-capable.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-registertouchwindow>.
///
/// {@category user32}
int RegisterTouchWindow(int hwnd, int ulFlags) =>
    _RegisterTouchWindow(hwnd, ulFlags);

final _RegisterTouchWindow = _user32.lookupFunction<
    BOOL Function(HWND hwnd, Uint32 ulFlags),
    int Function(int hwnd, int ulFlags)>('RegisterTouchWindow');

/// Defines a new window message that is guaranteed to be unique throughout the
/// system.
///
/// The message value can be used when sending or posting messages.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-registerwindowmessagew>.
///
/// {@category user32}
int RegisterWindowMessage(Pointer<Utf16> lpString) =>
    _RegisterWindowMessage(lpString);

final _RegisterWindowMessage = _user32.lookupFunction<
    Uint32 Function(Pointer<Utf16> lpString),
    int Function(Pointer<Utf16> lpString)>('RegisterWindowMessageW');

/// Releases the mouse capture from a window in the current thread and restores
/// normal mouse input processing.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-releasecapture>.
///
/// {@category user32}
int ReleaseCapture() => _ReleaseCapture();

final _ReleaseCapture =
    _user32.lookupFunction<BOOL Function(), int Function()>('ReleaseCapture');

/// Releases a device context (DC), freeing it for use by other applications.
///
/// The effect of the ReleaseDC function depends on the type of DC. It frees
/// only common and window DCs. It has no effect on class or private DCs.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-releasedc>.
///
/// {@category user32}
int ReleaseDC(int? hWnd, int hDC) => _ReleaseDC(hWnd ?? 0, hDC);

final _ReleaseDC = _user32.lookupFunction<Int32 Function(HWND hWnd, HDC hDC),
    int Function(int hWnd, int hDC)>('ReleaseDC');

/// Removes the given window from the system-maintained clipboard format
/// listener list.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-removeclipboardformatlistener>.
///
/// {@category user32}
int RemoveClipboardFormatListener(int hwnd) =>
    _RemoveClipboardFormatListener(hwnd);

final _RemoveClipboardFormatListener =
    _user32.lookupFunction<BOOL Function(HWND hwnd), int Function(int hwnd)>(
        'RemoveClipboardFormatListener');

/// Deletes a menu item or detaches a submenu from the specified menu.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-removemenu>.
///
/// {@category user32}
int RemoveMenu(int hMenu, int uPosition, int uFlags) =>
    _RemoveMenu(hMenu, uPosition, uFlags);

final _RemoveMenu = _user32.lookupFunction<
    BOOL Function(HMENU hMenu, Uint32 uPosition, Uint32 uFlags),
    int Function(int hMenu, int uPosition, int uFlags)>('RemoveMenu');

/// Removes an entry from the property list of the specified window.
///
/// The specified character string identifies the entry to be removed.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-removepropw>.
///
/// {@category user32}
int RemoveProp(int hWnd, Pointer<Utf16> lpString) =>
    _RemoveProp(hWnd, lpString);

final _RemoveProp = _user32.lookupFunction<
    HANDLE Function(HWND hWnd, Pointer<Utf16> lpString),
    int Function(int hWnd, Pointer<Utf16> lpString)>('RemovePropW');

/// Replies to a message sent from another thread by the SendMessage function.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-replymessage>.
///
/// {@category user32}
int ReplyMessage(int lResult) => _ReplyMessage(lResult);

final _ReplyMessage = _user32.lookupFunction<BOOL Function(LRESULT lResult),
    int Function(int lResult)>('ReplyMessage');

/// Converts the screen coordinates of a specified point on the screen to
/// client-area coordinates.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-screentoclient>.
///
/// {@category user32}
int ScreenToClient(int hWnd, Pointer<POINT> lpPoint) =>
    _ScreenToClient(hWnd, lpPoint);

final _ScreenToClient = _user32.lookupFunction<
    BOOL Function(HWND hWnd, Pointer<POINT> lpPoint),
    int Function(int hWnd, Pointer<POINT> lpPoint)>('ScreenToClient');

/// Scrolls a rectangle of bits horizontally and vertically.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-scrolldc>.
///
/// {@category user32}
int ScrollDC(int hDC, int dx, int dy, Pointer<RECT>? lprcScroll,
        Pointer<RECT>? lprcClip, int? hrgnUpdate, Pointer<RECT>? lprcUpdate) =>
    _ScrollDC(hDC, dx, dy, lprcScroll ?? nullptr, lprcClip ?? nullptr,
        hrgnUpdate ?? 0, lprcUpdate ?? nullptr);

final _ScrollDC = _user32.lookupFunction<
    BOOL Function(HDC hDC, Int32 dx, Int32 dy, Pointer<RECT> lprcScroll,
        Pointer<RECT> lprcClip, HRGN hrgnUpdate, Pointer<RECT> lprcUpdate),
    int Function(
        int hDC,
        int dx,
        int dy,
        Pointer<RECT> lprcScroll,
        Pointer<RECT> lprcClip,
        int hrgnUpdate,
        Pointer<RECT> lprcUpdate)>('ScrollDC');

/// Scrolls the contents of the specified window's client area.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-scrollwindow>.
///
/// {@category user32}
int ScrollWindow(int hWnd, int xAmount, int yAmount, Pointer<RECT>? lpRect,
        Pointer<RECT>? lpClipRect) =>
    _ScrollWindow(
        hWnd, xAmount, yAmount, lpRect ?? nullptr, lpClipRect ?? nullptr);

final _ScrollWindow = _user32.lookupFunction<
    BOOL Function(HWND hWnd, Int32 xAmount, Int32 yAmount, Pointer<RECT> lpRect,
        Pointer<RECT> lpClipRect),
    int Function(int hWnd, int xAmount, int yAmount, Pointer<RECT> lpRect,
        Pointer<RECT> lpClipRect)>('ScrollWindow');

/// Scrolls the contents of the specified window's client area.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-scrollwindowex>.
///
/// {@category user32}
int ScrollWindowEx(
        int hWnd,
        int dx,
        int dy,
        Pointer<RECT>? prcScroll,
        Pointer<RECT>? prcClip,
        int? hrgnUpdate,
        Pointer<RECT>? prcUpdate,
        int flags) =>
    _ScrollWindowEx(hWnd, dx, dy, prcScroll ?? nullptr, prcClip ?? nullptr,
        hrgnUpdate ?? 0, prcUpdate ?? nullptr, flags);

final _ScrollWindowEx = _user32.lookupFunction<
    Int32 Function(
        HWND hWnd,
        Int32 dx,
        Int32 dy,
        Pointer<RECT> prcScroll,
        Pointer<RECT> prcClip,
        HRGN hrgnUpdate,
        Pointer<RECT> prcUpdate,
        Uint32 flags),
    int Function(
        int hWnd,
        int dx,
        int dy,
        Pointer<RECT> prcScroll,
        Pointer<RECT> prcClip,
        int hrgnUpdate,
        Pointer<RECT> prcUpdate,
        int flags)>('ScrollWindowEx');

/// Sends a message to the specified control in a dialog box.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-senddlgitemmessagew>.
///
/// {@category user32}
int SendDlgItemMessage(
        int hDlg, int nIDDlgItem, int msg, int wParam, int lParam) =>
    _SendDlgItemMessage(hDlg, nIDDlgItem, msg, wParam, lParam);

final _SendDlgItemMessage = _user32.lookupFunction<
    LRESULT Function(
        HWND hDlg, Int32 nIDDlgItem, Uint32 msg, WPARAM wParam, LPARAM lParam),
    int Function(int hDlg, int nIDDlgItem, int msg, int wParam,
        int lParam)>('SendDlgItemMessageW');

/// Synthesizes keystrokes, mouse motions, and button clicks.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-sendinput>.
///
/// {@category user32}
int SendInput(int cInputs, Pointer<INPUT> pInputs, int cbSize) =>
    _SendInput(cInputs, pInputs, cbSize);

final _SendInput = _user32.lookupFunction<
    Uint32 Function(Uint32 cInputs, Pointer<INPUT> pInputs, Int32 cbSize),
    int Function(int cInputs, Pointer<INPUT> pInputs, int cbSize)>('SendInput');

/// Sends the specified message to a window or windows.
///
/// The SendMessage function calls the window procedure for the specified window
/// and does not return until the window procedure has processed the message.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-sendmessagew>.
///
/// {@category user32}
int SendMessage(int hWnd, int msg, int? wParam, int? lParam) =>
    _SendMessage(hWnd, msg, wParam ?? 0, lParam ?? 0);

final _SendMessage = _user32.lookupFunction<
    LRESULT Function(HWND hWnd, Uint32 msg, WPARAM wParam, LPARAM lParam),
    int Function(int hWnd, int msg, int wParam, int lParam)>('SendMessageW');

/// Sends the specified message to a window or windows.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-sendmessagecallbackw>.
///
/// {@category user32}
int SendMessageCallback(int hWnd, int msg, int wParam, int lParam,
        Pointer<NativeFunction<SENDASYNCPROC>> lpResultCallBack, int dwData) =>
    _SendMessageCallback(hWnd, msg, wParam, lParam, lpResultCallBack, dwData);

final _SendMessageCallback = _user32.lookupFunction<
    BOOL Function(HWND hWnd, Uint32 msg, WPARAM wParam, LPARAM lParam,
        Pointer<NativeFunction<SENDASYNCPROC>> lpResultCallBack, IntPtr dwData),
    int Function(
        int hWnd,
        int msg,
        int wParam,
        int lParam,
        Pointer<NativeFunction<SENDASYNCPROC>> lpResultCallBack,
        int dwData)>('SendMessageCallbackW');

/// Sends the specified message to one or more windows.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-sendmessagetimeoutw>.
///
/// {@category user32}
int SendMessageTimeout(int hWnd, int msg, int wParam, int lParam, int fuFlags,
        int uTimeout, Pointer<IntPtr>? lpdwResult) =>
    _SendMessageTimeout(
        hWnd, msg, wParam, lParam, fuFlags, uTimeout, lpdwResult ?? nullptr);

final _SendMessageTimeout = _user32.lookupFunction<
    LRESULT Function(HWND hWnd, Uint32 msg, WPARAM wParam, LPARAM lParam,
        Uint32 fuFlags, Uint32 uTimeout, Pointer<IntPtr> lpdwResult),
    int Function(int hWnd, int msg, int wParam, int lParam, int fuFlags,
        int uTimeout, Pointer<IntPtr> lpdwResult)>('SendMessageTimeoutW');

/// Sends the specified message to a window or windows.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-sendnotifymessagew>.
///
/// {@category user32}
int SendNotifyMessage(int hWnd, int msg, int wParam, int lParam) =>
    _SendNotifyMessage(hWnd, msg, wParam, lParam);

final _SendNotifyMessage = _user32.lookupFunction<
    BOOL Function(HWND hWnd, Uint32 msg, WPARAM wParam, LPARAM lParam),
    int Function(
        int hWnd, int msg, int wParam, int lParam)>('SendNotifyMessageW');

/// Activates a window.
///
/// The window must be attached to the calling thread's message queue.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setactivewindow>.
///
/// {@category user32}
int SetActiveWindow(int hWnd) => _SetActiveWindow(hWnd);

final _SetActiveWindow =
    _user32.lookupFunction<HWND Function(HWND hWnd), int Function(int hWnd)>(
        'SetActiveWindow');

/// Sets the mouse capture to the specified window belonging to the current
/// thread.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setcapture>.
///
/// {@category user32}
int SetCapture(int hWnd) => _SetCapture(hWnd);

final _SetCapture =
    _user32.lookupFunction<HWND Function(HWND hWnd), int Function(int hWnd)>(
        'SetCapture');

/// Sets the caret blink time to the specified number of milliseconds.
///
/// The blink time is the elapsed time, in milliseconds, required to invert the
/// caret's pixels.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setcaretblinktime>.
///
/// {@category user32}
int SetCaretBlinkTime(int uMSeconds) => _SetCaretBlinkTime(uMSeconds);

final _SetCaretBlinkTime = _user32.lookupFunction<
    BOOL Function(Uint32 uMSeconds),
    int Function(int uMSeconds)>('SetCaretBlinkTime');

/// Moves the caret to the specified coordinates.
///
/// If the window that owns the caret was created with the CS_OWNDC class style,
/// then the specified coordinates are subject to the mapping mode of the device
/// context associated with that window.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setcaretpos>.
///
/// {@category user32}
int SetCaretPos(int x, int y) => _SetCaretPos(x, y);

final _SetCaretPos = _user32.lookupFunction<BOOL Function(Int32 x, Int32 y),
    int Function(int x, int y)>('SetCaretPos');

/// Places data on the clipboard in a specified clipboard format.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setclipboarddata>.
///
/// {@category user32}
int SetClipboardData(int uFormat, int? hMem) =>
    _SetClipboardData(uFormat, hMem ?? 0);

final _SetClipboardData = _user32.lookupFunction<
    HANDLE Function(Uint32 uFormat, HANDLE hMem),
    int Function(int uFormat, int hMem)>('SetClipboardData');

/// Adds the specified window to the chain of clipboard viewers.
///
/// Clipboard viewer windows receive a WM_DRAWCLIPBOARD message whenever the
/// content of the clipboard changes. This function is used for backward
/// compatibility with earlier versions of Windows.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setclipboardviewer>.
///
/// {@category user32}
int SetClipboardViewer(int hWndNewViewer) => _SetClipboardViewer(hWndNewViewer);

final _SetClipboardViewer = _user32.lookupFunction<
    HWND Function(HWND hWndNewViewer),
    int Function(int hWndNewViewer)>('SetClipboardViewer');

/// Creates a timer with the specified time-out value and coalescing tolerance
/// delay.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setcoalescabletimer>.
///
/// {@category user32}
int SetCoalescableTimer(int? hWnd, int nIDEvent, int uElapse,
        Pointer<NativeFunction<TIMERPROC>>? lpTimerFunc, int uToleranceDelay) =>
    _SetCoalescableTimer(
        hWnd ?? 0, nIDEvent, uElapse, lpTimerFunc ?? nullptr, uToleranceDelay);

final _SetCoalescableTimer = _user32.lookupFunction<
    IntPtr Function(HWND hWnd, IntPtr nIDEvent, Uint32 uElapse,
        Pointer<NativeFunction<TIMERPROC>> lpTimerFunc, Uint32 uToleranceDelay),
    int Function(
        int hWnd,
        int nIDEvent,
        int uElapse,
        Pointer<NativeFunction<TIMERPROC>> lpTimerFunc,
        int uToleranceDelay)>('SetCoalescableTimer');

/// Sets the cursor shape.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setcursor>.
///
/// {@category user32}
int SetCursor(int? hCursor) => _SetCursor(hCursor ?? 0);

final _SetCursor = _user32.lookupFunction<HCURSOR Function(HCURSOR hCursor),
    int Function(int hCursor)>('SetCursor');

/// Moves the cursor to the specified screen coordinates.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setcursorpos>.
///
/// {@category user32}
int SetCursorPos(int x, int y) => _SetCursorPos(x, y);

final _SetCursorPos = _user32.lookupFunction<BOOL Function(Int32 x, Int32 y),
    int Function(int x, int y)>('SetCursorPos');

/// Overrides the default per-monitor DPI scaling behavior of a child window in
/// a dialog.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setdialogcontroldpichangebehavior>.
///
/// {@category user32}
int SetDialogControlDpiChangeBehavior(int hWnd, int mask, int values) =>
    _SetDialogControlDpiChangeBehavior(hWnd, mask, values);

final _SetDialogControlDpiChangeBehavior = _user32.lookupFunction<
    BOOL Function(HWND hWnd, Int32 mask, Int32 values),
    int Function(
        int hWnd, int mask, int values)>('SetDialogControlDpiChangeBehavior');

/// Dialogs in Per-Monitor v2 contexts are automatically DPI scaled.
///
/// This method lets you customize their DPI change behavior.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setdialogdpichangebehavior>.
///
/// {@category user32}
int SetDialogDpiChangeBehavior(int hDlg, int mask, int values) =>
    _SetDialogDpiChangeBehavior(hDlg, mask, values);

final _SetDialogDpiChangeBehavior = _user32.lookupFunction<
    BOOL Function(HWND hDlg, Int32 mask, Int32 values),
    int Function(int hDlg, int mask, int values)>('SetDialogDpiChangeBehavior');

/// Sets the screen auto-rotation preferences for the current process.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setdisplayautorotationpreferences>.
///
/// {@category user32}
int SetDisplayAutoRotationPreferences(int orientation) =>
    _SetDisplayAutoRotationPreferences(orientation);

final _SetDisplayAutoRotationPreferences = _user32.lookupFunction<
    BOOL Function(Int32 orientation),
    int Function(int orientation)>('SetDisplayAutoRotationPreferences');

/// Modifies the display topology, source, and target modes by exclusively
/// enabling the specified paths in the current session.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setdisplayconfig>.
///
/// {@category user32}
int SetDisplayConfig(
        int numPathArrayElements,
        Pointer<DISPLAYCONFIG_PATH_INFO>? pathArray,
        int numModeInfoArrayElements,
        Pointer<DISPLAYCONFIG_MODE_INFO>? modeInfoArray,
        int flags) =>
    _SetDisplayConfig(numPathArrayElements, pathArray ?? nullptr,
        numModeInfoArrayElements, modeInfoArray ?? nullptr, flags);

final _SetDisplayConfig = _user32.lookupFunction<
    Int32 Function(
        Uint32 numPathArrayElements,
        Pointer<DISPLAYCONFIG_PATH_INFO> pathArray,
        Uint32 numModeInfoArrayElements,
        Pointer<DISPLAYCONFIG_MODE_INFO> modeInfoArray,
        Uint32 flags),
    int Function(
        int numPathArrayElements,
        Pointer<DISPLAYCONFIG_PATH_INFO> pathArray,
        int numModeInfoArrayElements,
        Pointer<DISPLAYCONFIG_MODE_INFO> modeInfoArray,
        int flags)>('SetDisplayConfig');

/// Sets the text of a control in a dialog box to the string representation of a
/// specified integer value.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setdlgitemint>.
///
/// {@category user32}
int SetDlgItemInt(int hDlg, int nIDDlgItem, int uValue, int bSigned) =>
    _SetDlgItemInt(hDlg, nIDDlgItem, uValue, bSigned);

final _SetDlgItemInt = _user32.lookupFunction<
    BOOL Function(HWND hDlg, Int32 nIDDlgItem, Uint32 uValue, BOOL bSigned),
    int Function(
        int hDlg, int nIDDlgItem, int uValue, int bSigned)>('SetDlgItemInt');

/// Sets the title or text of a control in a dialog box.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setdlgitemtextw>.
///
/// {@category user32}
int SetDlgItemText(int hDlg, int nIDDlgItem, Pointer<Utf16> lpString) =>
    _SetDlgItemText(hDlg, nIDDlgItem, lpString);

final _SetDlgItemText = _user32.lookupFunction<
    BOOL Function(HWND hDlg, Int32 nIDDlgItem, Pointer<Utf16> lpString),
    int Function(
        int hDlg, int nIDDlgItem, Pointer<Utf16> lpString)>('SetDlgItemTextW');

/// Sets the double-click time for the mouse.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setdoubleclicktime>.
///
/// {@category user32}
int SetDoubleClickTime(int param0) => _SetDoubleClickTime(param0);

final _SetDoubleClickTime = _user32.lookupFunction<BOOL Function(Uint32 param0),
    int Function(int param0)>('SetDoubleClickTime');

/// Sets the keyboard focus to the specified window.
///
/// The window must be attached to the calling thread's message queue.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setfocus>.
///
/// {@category user32}
int SetFocus(int? hWnd) => _SetFocus(hWnd ?? 0);

final _SetFocus =
    _user32.lookupFunction<HWND Function(HWND hWnd), int Function(int hWnd)>(
        'SetFocus');

/// Brings the thread that created the specified window into the foreground and
/// activates the window.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setforegroundwindow>.
///
/// {@category user32}
int SetForegroundWindow(int hWnd) => _SetForegroundWindow(hWnd);

final _SetForegroundWindow =
    _user32.lookupFunction<BOOL Function(HWND hWnd), int Function(int hWnd)>(
        'SetForegroundWindow');

/// Configures the messages that are sent from a window for Windows Touch
/// gestures.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setgestureconfig>.
///
/// {@category user32}
int SetGestureConfig(int hwnd, int cIDs, Pointer<GESTURECONFIG> pGestureConfig,
        int cbSize) =>
    _SetGestureConfig(hwnd, 0, cIDs, pGestureConfig, cbSize);

final _SetGestureConfig = _user32.lookupFunction<
    BOOL Function(HWND hwnd, Uint32 dwReserved, Uint32 cIDs,
        Pointer<GESTURECONFIG> pGestureConfig, Uint32 cbSize),
    int Function(int hwnd, int dwReserved, int cIDs,
        Pointer<GESTURECONFIG> pGestureConfig, int cbSize)>('SetGestureConfig');

/// Copies an array of keyboard key states into the calling thread's keyboard
/// input-state table.
///
/// This is the same table accessed by the GetKeyboardState and GetKeyState
/// functions. Changes made to this table do not affect keyboard input to any
/// other thread.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setkeyboardstate>.
///
/// {@category user32}
int SetKeyboardState(Pointer<Uint8> lpKeyState) =>
    _SetKeyboardState(lpKeyState);

final _SetKeyboardState = _user32.lookupFunction<
    BOOL Function(Pointer<Uint8> lpKeyState),
    int Function(Pointer<Uint8> lpKeyState)>('SetKeyboardState');

/// Sets the opacity and transparency color key of a layered window.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setlayeredwindowattributes>.
///
/// {@category user32}
int SetLayeredWindowAttributes(int hwnd, int crKey, int bAlpha, int dwFlags) =>
    _SetLayeredWindowAttributes(hwnd, crKey, bAlpha, dwFlags);

final _SetLayeredWindowAttributes = _user32.lookupFunction<
    BOOL Function(HWND hwnd, COLORREF crKey, Uint8 bAlpha, Uint32 dwFlags),
    int Function(int hwnd, int crKey, int bAlpha,
        int dwFlags)>('SetLayeredWindowAttributes');

/// Assigns a new menu to the specified window.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setmenu>.
///
/// {@category user32}
int SetMenu(int hWnd, int? hMenu) => _SetMenu(hWnd, hMenu ?? 0);

final _SetMenu = _user32.lookupFunction<BOOL Function(HWND hWnd, HMENU hMenu),
    int Function(int hWnd, int hMenu)>('SetMenu');

/// Sets the default menu item for the specified menu.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setmenudefaultitem>.
///
/// {@category user32}
int SetMenuDefaultItem(int hMenu, int uItem, int fByPos) =>
    _SetMenuDefaultItem(hMenu, uItem, fByPos);

final _SetMenuDefaultItem = _user32.lookupFunction<
    BOOL Function(HMENU hMenu, Uint32 uItem, Uint32 fByPos),
    int Function(int hMenu, int uItem, int fByPos)>('SetMenuDefaultItem');

/// Sets information for a specified menu.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setmenuinfo>.
///
/// {@category user32}
int SetMenuInfo(int param0, Pointer<MENUINFO> param1) =>
    _SetMenuInfo(param0, param1);

final _SetMenuInfo = _user32.lookupFunction<
    BOOL Function(HMENU param0, Pointer<MENUINFO> param1),
    int Function(int param0, Pointer<MENUINFO> param1)>('SetMenuInfo');

/// Associates the specified bitmap with a menu item.
///
/// Whether the menu item is selected or clear, the system displays the
/// appropriate bitmap next to the menu item.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setmenuitembitmaps>.
///
/// {@category user32}
int SetMenuItemBitmaps(int hMenu, int uPosition, int uFlags,
        int? hBitmapUnchecked, int? hBitmapChecked) =>
    _SetMenuItemBitmaps(
        hMenu, uPosition, uFlags, hBitmapUnchecked ?? 0, hBitmapChecked ?? 0);

final _SetMenuItemBitmaps = _user32.lookupFunction<
    BOOL Function(HMENU hMenu, Uint32 uPosition, Uint32 uFlags,
        HBITMAP hBitmapUnchecked, HBITMAP hBitmapChecked),
    int Function(int hMenu, int uPosition, int uFlags, int hBitmapUnchecked,
        int hBitmapChecked)>('SetMenuItemBitmaps');

/// Changes information about a menu item.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setmenuiteminfow>.
///
/// {@category user32}
int SetMenuItemInfo(
        int hmenu, int item, int fByPositon, Pointer<MENUITEMINFO> lpmii) =>
    _SetMenuItemInfo(hmenu, item, fByPositon, lpmii);

final _SetMenuItemInfo = _user32.lookupFunction<
    BOOL Function(
        HMENU hmenu, Uint32 item, BOOL fByPositon, Pointer<MENUITEMINFO> lpmii),
    int Function(int hmenu, int item, int fByPositon,
        Pointer<MENUITEMINFO> lpmii)>('SetMenuItemInfoW');

/// Sets the extra message information for the current thread.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setmessageextrainfo>.
///
/// {@category user32}
int SetMessageExtraInfo(int lParam) => _SetMessageExtraInfo(lParam);

final _SetMessageExtraInfo = _user32.lookupFunction<
    LPARAM Function(LPARAM lParam),
    int Function(int lParam)>('SetMessageExtraInfo');

/// Changes the parent window of the specified child window.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setparent>.
///
/// {@category user32}
int SetParent(int hWndChild, int? hWndNewParent) =>
    _SetParent(hWndChild, hWndNewParent ?? 0);

final _SetParent = _user32.lookupFunction<
    HWND Function(HWND hWndChild, HWND hWndNewParent),
    int Function(int hWndChild, int hWndNewParent)>('SetParent');

/// Sets the position of the cursor in physical coordinates.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setphysicalcursorpos>.
///
/// {@category user32}
int SetPhysicalCursorPos(int x, int y) => _SetPhysicalCursorPos(x, y);

final _SetPhysicalCursorPos = _user32.lookupFunction<
    BOOL Function(Int32 x, Int32 y),
    int Function(int x, int y)>('SetPhysicalCursorPos');

/// Sets the process-default DPI awareness to system-DPI awareness.
///
/// **Note:** This function may be altered or unavailable in the newer versions
/// of Windows. Use SetProcessDpiAwareness instead.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setprocessdpiaware>.
///
/// {@category user32}
int SetProcessDPIAware() => _SetProcessDPIAware();

final _SetProcessDPIAware = _user32
    .lookupFunction<BOOL Function(), int Function()>('SetProcessDPIAware');

/// Sets the current process to a specified dots per inch (dpi) awareness
/// context.
///
/// The DPI awareness contexts are from the DPI_AWARENESS_CONTEXT value.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setprocessdpiawarenesscontext>.
///
/// {@category user32}
int SetProcessDpiAwarenessContext(int value) =>
    _SetProcessDpiAwarenessContext(value);

final _SetProcessDpiAwarenessContext = _user32.lookupFunction<
    BOOL Function(DPI_AWARENESS_CONTEXT value),
    int Function(int value)>('SetProcessDpiAwarenessContext');

/// Adds a new entry or changes an existing entry in the property list of the
/// specified window.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setpropw>.
///
/// {@category user32}
int SetProp(int hWnd, Pointer<Utf16> lpString, int? hData) =>
    _SetProp(hWnd, lpString, hData ?? 0);

final _SetProp = _user32.lookupFunction<
    BOOL Function(HWND hWnd, Pointer<Utf16> lpString, HANDLE hData),
    int Function(int hWnd, Pointer<Utf16> lpString, int hData)>('SetPropW');

/// Sets the coordinates of the specified rectangle.
///
/// This is equivalent to assigning the left, top, right, and bottom arguments
/// to the appropriate members of the RECT structure.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setrect>.
///
/// {@category user32}
int SetRect(Pointer<RECT> lprc, int xLeft, int yTop, int xRight, int yBottom) =>
    _SetRect(lprc, xLeft, yTop, xRight, yBottom);

final _SetRect = _user32.lookupFunction<
    BOOL Function(Pointer<RECT> lprc, Int32 xLeft, Int32 yTop, Int32 xRight,
        Int32 yBottom),
    int Function(Pointer<RECT> lprc, int xLeft, int yTop, int xRight,
        int yBottom)>('SetRect');

/// Creates an empty rectangle in which all coordinates are set to zero.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setrectempty>.
///
/// {@category user32}
int SetRectEmpty(Pointer<RECT> lprc) => _SetRectEmpty(lprc);

final _SetRectEmpty = _user32.lookupFunction<BOOL Function(Pointer<RECT> lprc),
    int Function(Pointer<RECT> lprc)>('SetRectEmpty');

/// Sets the parameters of a scroll bar, including the minimum and maximum
/// scrolling positions, the page size, and the position of the scroll box
/// (thumb).
///
/// The function also redraws the scroll bar, if requested.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setscrollinfo>.
///
/// {@category user32}
int SetScrollInfo(int hwnd, int nBar, Pointer<SCROLLINFO> lpsi, int redraw) =>
    _SetScrollInfo(hwnd, nBar, lpsi, redraw);

final _SetScrollInfo = _user32.lookupFunction<
    Int32 Function(
        HWND hwnd, Int32 nBar, Pointer<SCROLLINFO> lpsi, BOOL redraw),
    int Function(int hwnd, int nBar, Pointer<SCROLLINFO> lpsi,
        int redraw)>('SetScrollInfo');

/// Sets the colors for the specified display elements.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setsyscolors>.
///
/// {@category user32}
int SetSysColors(int cElements, Pointer<Int32> lpaElements,
        Pointer<COLORREF> lpaRgbValues) =>
    _SetSysColors(cElements, lpaElements, lpaRgbValues);

final _SetSysColors = _user32.lookupFunction<
    BOOL Function(Int32 cElements, Pointer<Int32> lpaElements,
        Pointer<COLORREF> lpaRgbValues),
    int Function(int cElements, Pointer<Int32> lpaElements,
        Pointer<COLORREF> lpaRgbValues)>('SetSysColors');

/// Enables an application to customize the system cursors.
///
/// It replaces the contents of the system cursor specified by the id parameter
/// with the contents of the cursor specified by the hcur parameter and then
/// destroys hcur.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setsystemcursor>.
///
/// {@category user32}
int SetSystemCursor(int hcur, int id) => _SetSystemCursor(hcur, id);

final _SetSystemCursor = _user32.lookupFunction<
    BOOL Function(HCURSOR hcur, Uint32 id),
    int Function(int hcur, int id)>('SetSystemCursor');

/// Set the DPI awareness for the current thread to the provided value.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setthreaddpiawarenesscontext>.
///
/// {@category user32}
int SetThreadDpiAwarenessContext(int dpiContext) =>
    _SetThreadDpiAwarenessContext(dpiContext);

final _SetThreadDpiAwarenessContext = _user32.lookupFunction<
    DPI_AWARENESS_CONTEXT Function(DPI_AWARENESS_CONTEXT dpiContext),
    int Function(int dpiContext)>('SetThreadDpiAwarenessContext');

/// Sets the thread's DPI_HOSTING_BEHAVIOR.
///
/// This behavior allows windows created in the thread to host child windows
/// with a different DPI_AWARENESS_CONTEXT.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setthreaddpihostingbehavior>.
///
/// {@category user32}
int SetThreadDpiHostingBehavior(int value) =>
    _SetThreadDpiHostingBehavior(value);

final _SetThreadDpiHostingBehavior = _user32.lookupFunction<
    Int32 Function(Int32 value),
    int Function(int value)>('SetThreadDpiHostingBehavior');

/// Creates a timer with the specified time-out value.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-settimer>.
///
/// {@category user32}
int SetTimer(int? hWnd, int nIDEvent, int uElapse,
        Pointer<NativeFunction<TIMERPROC>>? lpTimerFunc) =>
    _SetTimer(hWnd ?? 0, nIDEvent, uElapse, lpTimerFunc ?? nullptr);

final _SetTimer = _user32.lookupFunction<
    IntPtr Function(HWND hWnd, IntPtr nIDEvent, Uint32 uElapse,
        Pointer<NativeFunction<TIMERPROC>> lpTimerFunc),
    int Function(int hWnd, int nIDEvent, int uElapse,
        Pointer<NativeFunction<TIMERPROC>> lpTimerFunc)>('SetTimer');

/// Sets information about the specified window station or desktop object.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setuserobjectinformationw>.
///
/// {@category user32}
int SetUserObjectInformation(
        int hObj, int nIndex, Pointer pvInfo, int nLength) =>
    _SetUserObjectInformation(hObj, nIndex, pvInfo, nLength);

final _SetUserObjectInformation = _user32.lookupFunction<
    BOOL Function(HANDLE hObj, Int32 nIndex, Pointer pvInfo, Uint32 nLength),
    int Function(int hObj, int nIndex, Pointer pvInfo,
        int nLength)>('SetUserObjectInformationW');

/// Stores the display affinity setting in kernel mode on the hWnd associated
/// with the window.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setwindowdisplayaffinity>.
///
/// {@category user32}
int SetWindowDisplayAffinity(int hWnd, int dwAffinity) =>
    _SetWindowDisplayAffinity(hWnd, dwAffinity);

final _SetWindowDisplayAffinity = _user32.lookupFunction<
    BOOL Function(HWND hWnd, Uint32 dwAffinity),
    int Function(int hWnd, int dwAffinity)>('SetWindowDisplayAffinity');

/// Changes an attribute of the specified window.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setwindowlongptrw>.
///
/// {@category user32}
int SetWindowLongPtr(int hWnd, int nIndex, int dwNewLong) =>
    _SetWindowLongPtr(hWnd, nIndex, dwNewLong);

final _SetWindowLongPtr = _user32.lookupFunction<
    IntPtr Function(HWND hWnd, Int32 nIndex, IntPtr dwNewLong),
    int Function(int hWnd, int nIndex, int dwNewLong)>('SetWindowLongPtrW');

/// Sets the show state and the restored, minimized, and maximized positions of
/// the specified window.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setwindowplacement>.
///
/// {@category user32}
int SetWindowPlacement(int hWnd, Pointer<WINDOWPLACEMENT> lpwndpl) =>
    _SetWindowPlacement(hWnd, lpwndpl);

final _SetWindowPlacement = _user32.lookupFunction<
    BOOL Function(HWND hWnd, Pointer<WINDOWPLACEMENT> lpwndpl),
    int Function(
        int hWnd, Pointer<WINDOWPLACEMENT> lpwndpl)>('SetWindowPlacement');

/// Changes the size, position, and Z order of a child, pop-up, or top-level
/// window.
///
/// These windows are ordered according to their appearance on the screen. The
/// topmost window receives the highest rank and is the first window in the Z
/// order.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setwindowpos>.
///
/// {@category user32}
int SetWindowPos(int hWnd, int? hWndInsertAfter, int x, int y, int cx, int cy,
        int uFlags) =>
    _SetWindowPos(hWnd, hWndInsertAfter ?? 0, x, y, cx, cy, uFlags);

final _SetWindowPos = _user32.lookupFunction<
    BOOL Function(HWND hWnd, HWND hWndInsertAfter, Int32 x, Int32 y, Int32 cx,
        Int32 cy, Uint32 uFlags),
    int Function(int hWnd, int hWndInsertAfter, int x, int y, int cx, int cy,
        int uFlags)>('SetWindowPos');

/// Sets the window region of a window.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setwindowrgn>.
///
/// {@category user32}
int SetWindowRgn(int hWnd, int? hRgn, int bRedraw) =>
    _SetWindowRgn(hWnd, hRgn ?? 0, bRedraw);

final _SetWindowRgn = _user32.lookupFunction<
    Int32 Function(HWND hWnd, HRGN hRgn, BOOL bRedraw),
    int Function(int hWnd, int hRgn, int bRedraw)>('SetWindowRgn');

/// Installs an application-defined hook procedure into a hook chain.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setwindowshookexw>.
///
/// {@category user32}
int SetWindowsHookEx(int idHook, Pointer<NativeFunction<HOOKPROC>> lpfn,
        int? hmod, int dwThreadId) =>
    _SetWindowsHookEx(idHook, lpfn, hmod ?? 0, dwThreadId);

final _SetWindowsHookEx = _user32.lookupFunction<
    HHOOK Function(Int32 idHook, Pointer<NativeFunction<HOOKPROC>> lpfn,
        HINSTANCE hmod, Uint32 dwThreadId),
    int Function(int idHook, Pointer<NativeFunction<HOOKPROC>> lpfn, int hmod,
        int dwThreadId)>('SetWindowsHookExW');

/// Changes the text of the specified window's title bar (if it has one).
///
/// If the specified window is a control, the text of the control is changed.
/// However, SetWindowText cannot change the text of a control in another
/// application.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setwindowtextw>.
///
/// {@category user32}
int SetWindowText(int hWnd, Pointer<Utf16>? lpString) =>
    _SetWindowText(hWnd, lpString ?? nullptr);

final _SetWindowText = _user32.lookupFunction<
    BOOL Function(HWND hWnd, Pointer<Utf16> lpString),
    int Function(int hWnd, Pointer<Utf16> lpString)>('SetWindowTextW');

/// Makes the caret visible on the screen at the caret's current position.
///
/// When the caret becomes visible, it begins flashing automatically.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-showcaret>.
///
/// {@category user32}
int ShowCaret(int? hWnd) => _ShowCaret(hWnd ?? 0);

final _ShowCaret =
    _user32.lookupFunction<BOOL Function(HWND hWnd), int Function(int hWnd)>(
        'ShowCaret');

/// Displays or hides the cursor.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-showcursor>.
///
/// {@category user32}
int ShowCursor(int bShow) => _ShowCursor(bShow);

final _ShowCursor =
    _user32.lookupFunction<Int32 Function(BOOL bShow), int Function(int bShow)>(
        'ShowCursor');

/// Shows or hides all pop-up windows owned by the specified window.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-showownedpopups>.
///
/// {@category user32}
int ShowOwnedPopups(int hWnd, int fShow) => _ShowOwnedPopups(hWnd, fShow);

final _ShowOwnedPopups = _user32.lookupFunction<
    BOOL Function(HWND hWnd, BOOL fShow),
    int Function(int hWnd, int fShow)>('ShowOwnedPopups');

/// Sets the specified window's show state.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-showwindow>.
///
/// {@category user32}
int ShowWindow(int hWnd, int nCmdShow) => _ShowWindow(hWnd, nCmdShow);

final _ShowWindow = _user32.lookupFunction<
    BOOL Function(HWND hWnd, Int32 nCmdShow),
    int Function(int hWnd, int nCmdShow)>('ShowWindow');

/// Sets the show state of a window without waiting for the operation to
/// complete.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-showwindowasync>.
///
/// {@category user32}
int ShowWindowAsync(int hWnd, int nCmdShow) => _ShowWindowAsync(hWnd, nCmdShow);

final _ShowWindowAsync = _user32.lookupFunction<
    BOOL Function(HWND hWnd, Int32 nCmdShow),
    int Function(int hWnd, int nCmdShow)>('ShowWindowAsync');

/// Determines which pointer input frame generated the most recently retrieved
/// message for the specified pointer and discards any queued (unretrieved)
/// pointer input messages generated from the same pointer input frame.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-skippointerframemessages>.
///
/// {@category user32}
int SkipPointerFrameMessages(int pointerId) =>
    _SkipPointerFrameMessages(pointerId);

final _SkipPointerFrameMessages = _user32.lookupFunction<
    BOOL Function(Uint32 pointerId),
    int Function(int pointerId)>('SkipPointerFrameMessages');

/// Triggers a visual signal to indicate that a sound is playing.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-soundsentry>.
///
/// {@category user32}
int SoundSentry() => _SoundSentry();

final _SoundSentry =
    _user32.lookupFunction<BOOL Function(), int Function()>('SoundSentry');

/// Determines the coordinates of a rectangle formed by subtracting one
/// rectangle from another.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-subtractrect>.
///
/// {@category user32}
int SubtractRect(Pointer<RECT> lprcDst, Pointer<RECT> lprcSrc1,
        Pointer<RECT> lprcSrc2) =>
    _SubtractRect(lprcDst, lprcSrc1, lprcSrc2);

final _SubtractRect = _user32.lookupFunction<
    BOOL Function(
        Pointer<RECT> lprcDst, Pointer<RECT> lprcSrc1, Pointer<RECT> lprcSrc2),
    int Function(Pointer<RECT> lprcDst, Pointer<RECT> lprcSrc1,
        Pointer<RECT> lprcSrc2)>('SubtractRect');

/// Reverses or restores the meaning of the left and right mouse buttons.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-swapmousebutton>.
///
/// {@category user32}
int SwapMouseButton(int fSwap) => _SwapMouseButton(fSwap);

final _SwapMouseButton =
    _user32.lookupFunction<BOOL Function(BOOL fSwap), int Function(int fSwap)>(
        'SwapMouseButton');

/// Makes the specified desktop visible and activates it.
///
/// This enables the desktop to receive input from the user.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-switchdesktop>.
///
/// {@category user32}
int SwitchDesktop(int hDesktop) => _SwitchDesktop(hDesktop);

final _SwitchDesktop = _user32.lookupFunction<BOOL Function(HDESK hDesktop),
    int Function(int hDesktop)>('SwitchDesktop');

/// Switches focus to the specified window and brings it to the foreground.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-switchtothiswindow>.
///
/// {@category user32}
void SwitchToThisWindow(int hwnd, int fUnknown) =>
    _SwitchToThisWindow(hwnd, fUnknown);

final _SwitchToThisWindow = _user32.lookupFunction<
    Void Function(HWND hwnd, BOOL fUnknown),
    void Function(int hwnd, int fUnknown)>('SwitchToThisWindow');

/// Retrieves or sets the value of one of the system-wide parameters.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-systemparametersinfow>.
///
/// {@category user32}
int SystemParametersInfo(
        int uiAction, int uiParam, Pointer? pvParam, int fWinIni) =>
    _SystemParametersInfo(uiAction, uiParam, pvParam ?? nullptr, fWinIni);

final _SystemParametersInfo = _user32.lookupFunction<
    BOOL Function(
        Uint32 uiAction, Uint32 uiParam, Pointer pvParam, Uint32 fWinIni),
    int Function(int uiAction, int uiParam, Pointer pvParam,
        int fWinIni)>('SystemParametersInfoW');

/// Retrieves the value of one of the system-wide parameters, taking into
/// account the provided DPI value.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-systemparametersinfofordpi>.
///
/// {@category user32}
int SystemParametersInfoForDpi(
        int uiAction, int uiParam, Pointer? pvParam, int fWinIni, int dpi) =>
    _SystemParametersInfoForDpi(
        uiAction, uiParam, pvParam ?? nullptr, fWinIni, dpi);

final _SystemParametersInfoForDpi = _user32.lookupFunction<
    BOOL Function(Uint32 uiAction, Uint32 uiParam, Pointer pvParam,
        Uint32 fWinIni, Uint32 dpi),
    int Function(int uiAction, int uiParam, Pointer pvParam, int fWinIni,
        int dpi)>('SystemParametersInfoForDpi');

/// Writes a character string at a specified location, expanding tabs to the
/// values specified in an array of tab-stop positions.
///
/// Text is written in the currently selected font, background color, and text
/// color.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-tabbedtextoutw>.
///
/// {@category user32}
int TabbedTextOut(
        int hdc,
        int x,
        int y,
        Pointer<Utf16> lpString,
        int chCount,
        int nTabPositions,
        Pointer<Int32>? lpnTabStopPositions,
        int nTabOrigin) =>
    _TabbedTextOut(hdc, x, y, lpString, chCount, nTabPositions,
        lpnTabStopPositions ?? nullptr, nTabOrigin);

final _TabbedTextOut = _user32.lookupFunction<
    Int32 Function(
        HDC hdc,
        Int32 x,
        Int32 y,
        Pointer<Utf16> lpString,
        Int32 chCount,
        Int32 nTabPositions,
        Pointer<Int32> lpnTabStopPositions,
        Int32 nTabOrigin),
    int Function(
        int hdc,
        int x,
        int y,
        Pointer<Utf16> lpString,
        int chCount,
        int nTabPositions,
        Pointer<Int32> lpnTabStopPositions,
        int nTabOrigin)>('TabbedTextOutW');

/// Tiles the specified child windows of the specified parent window.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-tilewindows>.
///
/// {@category user32}
int TileWindows(int? hwndParent, int wHow, Pointer<RECT>? lpRect, int cKids,
        Pointer<HWND>? lpKids) =>
    _TileWindows(
        hwndParent ?? 0, wHow, lpRect ?? nullptr, cKids, lpKids ?? nullptr);

final _TileWindows = _user32.lookupFunction<
    Uint16 Function(HWND hwndParent, Uint32 wHow, Pointer<RECT> lpRect,
        Uint32 cKids, Pointer<HWND> lpKids),
    int Function(int hwndParent, int wHow, Pointer<RECT> lpRect, int cKids,
        Pointer<HWND> lpKids)>('TileWindows');

/// Translates the specified virtual-key code and keyboard state to the
/// corresponding character or characters.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-toascii>.
///
/// {@category user32}
int ToAscii(int uVirtKey, int uScanCode, Pointer<Uint8>? lpKeyState,
        Pointer<Uint16> lpChar, int uFlags) =>
    _ToAscii(uVirtKey, uScanCode, lpKeyState ?? nullptr, lpChar, uFlags);

final _ToAscii = _user32.lookupFunction<
    Int32 Function(Uint32 uVirtKey, Uint32 uScanCode, Pointer<Uint8> lpKeyState,
        Pointer<Uint16> lpChar, Uint32 uFlags),
    int Function(int uVirtKey, int uScanCode, Pointer<Uint8> lpKeyState,
        Pointer<Uint16> lpChar, int uFlags)>('ToAscii');

/// Translates the specified virtual-key code and keyboard state to the
/// corresponding character or characters.
///
/// The function translates the code using the input language and physical
/// keyboard layout identified by the input locale identifier.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-toasciiex>.
///
/// {@category user32}
int ToAsciiEx(int uVirtKey, int uScanCode, Pointer<Uint8>? lpKeyState,
        Pointer<Uint16> lpChar, int uFlags, int? dwhkl) =>
    _ToAsciiEx(
        uVirtKey, uScanCode, lpKeyState ?? nullptr, lpChar, uFlags, dwhkl ?? 0);

final _ToAsciiEx = _user32.lookupFunction<
    Int32 Function(Uint32 uVirtKey, Uint32 uScanCode, Pointer<Uint8> lpKeyState,
        Pointer<Uint16> lpChar, Uint32 uFlags, HKL dwhkl),
    int Function(int uVirtKey, int uScanCode, Pointer<Uint8> lpKeyState,
        Pointer<Uint16> lpChar, int uFlags, int dwhkl)>('ToAsciiEx');

/// Translates the specified virtual-key code and keyboard state to the
/// corresponding Unicode character or characters.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-tounicode>.
///
/// {@category user32}
int ToUnicode(int wVirtKey, int wScanCode, Pointer<Uint8>? lpKeyState,
        Pointer<Utf16> pwszBuff, int cchBuff, int wFlags) =>
    _ToUnicode(
        wVirtKey, wScanCode, lpKeyState ?? nullptr, pwszBuff, cchBuff, wFlags);

final _ToUnicode = _user32.lookupFunction<
    Int32 Function(Uint32 wVirtKey, Uint32 wScanCode, Pointer<Uint8> lpKeyState,
        Pointer<Utf16> pwszBuff, Int32 cchBuff, Uint32 wFlags),
    int Function(int wVirtKey, int wScanCode, Pointer<Uint8> lpKeyState,
        Pointer<Utf16> pwszBuff, int cchBuff, int wFlags)>('ToUnicode');

/// Translates the specified virtual-key code and keyboard state to the
/// corresponding Unicode character or characters.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-tounicodeex>.
///
/// {@category user32}
int ToUnicodeEx(int wVirtKey, int wScanCode, Pointer<Uint8> lpKeyState,
        Pointer<Utf16> pwszBuff, int cchBuff, int wFlags, int? dwhkl) =>
    _ToUnicodeEx(
        wVirtKey, wScanCode, lpKeyState, pwszBuff, cchBuff, wFlags, dwhkl ?? 0);

final _ToUnicodeEx = _user32.lookupFunction<
    Int32 Function(Uint32 wVirtKey, Uint32 wScanCode, Pointer<Uint8> lpKeyState,
        Pointer<Utf16> pwszBuff, Int32 cchBuff, Uint32 wFlags, HKL dwhkl),
    int Function(
        int wVirtKey,
        int wScanCode,
        Pointer<Uint8> lpKeyState,
        Pointer<Utf16> pwszBuff,
        int cchBuff,
        int wFlags,
        int dwhkl)>('ToUnicodeEx');

/// Displays a shortcut menu at the specified location and tracks the selection
/// of items on the menu.
///
/// The shortcut menu can appear anywhere on the screen.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-trackpopupmenu>.
///
/// {@category user32}
int TrackPopupMenu(int hMenu, int uFlags, int x, int y, int hWnd,
        Pointer<RECT>? prcRect) =>
    _TrackPopupMenu(hMenu, uFlags, x, y, 0, hWnd, prcRect ?? nullptr);

final _TrackPopupMenu = _user32.lookupFunction<
    BOOL Function(HMENU hMenu, Uint32 uFlags, Int32 x, Int32 y, Int32 nReserved,
        HWND hWnd, Pointer<RECT> prcRect),
    int Function(int hMenu, int uFlags, int x, int y, int nReserved, int hWnd,
        Pointer<RECT> prcRect)>('TrackPopupMenu');

/// Displays a shortcut menu at the specified location and tracks the selection
/// of items on the shortcut menu.
///
/// The shortcut menu can appear anywhere on the screen.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-trackpopupmenuex>.
///
/// {@category user32}
int TrackPopupMenuEx(int hMenu, int uFlags, int x, int y, int hwnd,
        Pointer<TPMPARAMS>? lptpm) =>
    _TrackPopupMenuEx(hMenu, uFlags, x, y, hwnd, lptpm ?? nullptr);

final _TrackPopupMenuEx = _user32.lookupFunction<
    BOOL Function(HMENU hMenu, Uint32 uFlags, Int32 x, Int32 y, HWND hwnd,
        Pointer<TPMPARAMS> lptpm),
    int Function(int hMenu, int uFlags, int x, int y, int hwnd,
        Pointer<TPMPARAMS> lptpm)>('TrackPopupMenuEx');

/// Processes accelerator keys for menu commands.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-translateacceleratorw>.
///
/// {@category user32}
int TranslateAccelerator(int hWnd, int hAccTable, Pointer<MSG> lpMsg) =>
    _TranslateAccelerator(hWnd, hAccTable, lpMsg);

final _TranslateAccelerator = _user32.lookupFunction<
    Int32 Function(HWND hWnd, HACCEL hAccTable, Pointer<MSG> lpMsg),
    int Function(
        int hWnd, int hAccTable, Pointer<MSG> lpMsg)>('TranslateAcceleratorW');

/// Processes accelerator keystrokes for window menu commands of the
/// multiple-document interface (MDI) child windows associated with the
/// specified MDI client window.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-translatemdisysaccel>.
///
/// {@category user32}
int TranslateMDISysAccel(int hWndClient, Pointer<MSG> lpMsg) =>
    _TranslateMDISysAccel(hWndClient, lpMsg);

final _TranslateMDISysAccel = _user32.lookupFunction<
    BOOL Function(HWND hWndClient, Pointer<MSG> lpMsg),
    int Function(int hWndClient, Pointer<MSG> lpMsg)>('TranslateMDISysAccel');

/// Translates virtual-key messages into character messages.
///
/// The character messages are posted to the calling thread's message queue, to
/// be read the next time the thread calls the GetMessage or PeekMessage
/// function.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-translatemessage>.
///
/// {@category user32}
int TranslateMessage(Pointer<MSG> lpMsg) => _TranslateMessage(lpMsg);

final _TranslateMessage = _user32.lookupFunction<
    BOOL Function(Pointer<MSG> lpMsg),
    int Function(Pointer<MSG> lpMsg)>('TranslateMessage');

/// Removes a hook procedure installed in a hook chain by the SetWindowsHookEx
/// function.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-unhookwindowshookex>.
///
/// {@category user32}
int UnhookWindowsHookEx(int hhk) => _UnhookWindowsHookEx(hhk);

final _UnhookWindowsHookEx =
    _user32.lookupFunction<BOOL Function(HHOOK hhk), int Function(int hhk)>(
        'UnhookWindowsHookEx');

/// Creates the union of two rectangles.
///
/// The union is the smallest rectangle that contains both source rectangles.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-unionrect>.
///
/// {@category user32}
int UnionRect(Pointer<RECT> lprcDst, Pointer<RECT> lprcSrc1,
        Pointer<RECT> lprcSrc2) =>
    _UnionRect(lprcDst, lprcSrc1, lprcSrc2);

final _UnionRect = _user32.lookupFunction<
    BOOL Function(
        Pointer<RECT> lprcDst, Pointer<RECT> lprcSrc1, Pointer<RECT> lprcSrc2),
    int Function(Pointer<RECT> lprcDst, Pointer<RECT> lprcSrc1,
        Pointer<RECT> lprcSrc2)>('UnionRect');

/// Unloads an input locale identifier (formerly called a keyboard layout).
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-unloadkeyboardlayout>.
///
/// {@category user32}
int UnloadKeyboardLayout(int hkl) => _UnloadKeyboardLayout(hkl);

final _UnloadKeyboardLayout =
    _user32.lookupFunction<BOOL Function(HKL hkl), int Function(int hkl)>(
        'UnloadKeyboardLayout');

/// Unregisters a window class, freeing the memory required for the class.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-unregisterclassw>.
///
/// {@category user32}
int UnregisterClass(Pointer<Utf16> lpClassName, int? hInstance) =>
    _UnregisterClass(lpClassName, hInstance ?? 0);

final _UnregisterClass = _user32.lookupFunction<
    BOOL Function(Pointer<Utf16> lpClassName, HINSTANCE hInstance),
    int Function(
        Pointer<Utf16> lpClassName, int hInstance)>('UnregisterClassW');

/// Frees a hot key previously registered by the calling thread.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-unregisterhotkey>.
///
/// {@category user32}
int UnregisterHotKey(int? hWnd, int id) => _UnregisterHotKey(hWnd ?? 0, id);

final _UnregisterHotKey = _user32.lookupFunction<
    BOOL Function(HWND hWnd, Int32 id),
    int Function(int hWnd, int id)>('UnregisterHotKey');

/// Unregisters the power setting notification.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-unregisterpowersettingnotification>.
///
/// {@category user32}
int UnregisterPowerSettingNotification(int handle) =>
    _UnregisterPowerSettingNotification(handle);

final _UnregisterPowerSettingNotification = _user32.lookupFunction<
    BOOL Function(HPOWERNOTIFY handle),
    int Function(int handle)>('UnregisterPowerSettingNotification');

/// Registers a window as no longer being touch-capable.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-unregistertouchwindow>.
///
/// {@category user32}
int UnregisterTouchWindow(int hwnd) => _UnregisterTouchWindow(hwnd);

final _UnregisterTouchWindow =
    _user32.lookupFunction<BOOL Function(HWND hwnd), int Function(int hwnd)>(
        'UnregisterTouchWindow');

/// Updates the position, size, shape, content, and translucency of a layered
/// window.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/previous-versions/windows/desktop/legacy/ms633557(v=vs.85)>.
///
/// {@category user32}
int UpdateLayeredWindowIndirect(
        int hWnd, Pointer<UPDATELAYEREDWINDOWINFO> pULWInfo) =>
    _UpdateLayeredWindowIndirect(hWnd, pULWInfo);

final _UpdateLayeredWindowIndirect = _user32.lookupFunction<
        BOOL Function(HWND hWnd, Pointer<UPDATELAYEREDWINDOWINFO> pULWInfo),
        int Function(int hWnd, Pointer<UPDATELAYEREDWINDOWINFO> pULWInfo)>(
    'UpdateLayeredWindowIndirect');

/// Updates the client area of the specified window by sending a WM_PAINT
/// message to the window if the window's update region is not empty.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-updatewindow>.
///
/// {@category user32}
int UpdateWindow(int hWnd) => _UpdateWindow(hWnd);

final _UpdateWindow =
    _user32.lookupFunction<BOOL Function(HWND hWnd), int Function(int hWnd)>(
        'UpdateWindow');

/// Grants or denies access to a handle to a User object to a job that has a
/// user-interface restriction.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-userhandlegrantaccess>.
///
/// {@category user32}
int UserHandleGrantAccess(int hUserHandle, int hJob, int bGrant) =>
    _UserHandleGrantAccess(hUserHandle, hJob, bGrant);

final _UserHandleGrantAccess = _user32.lookupFunction<
    BOOL Function(HANDLE hUserHandle, HANDLE hJob, BOOL bGrant),
    int Function(
        int hUserHandle, int hJob, int bGrant)>('UserHandleGrantAccess');

/// Validates the client area within a rectangle by removing the rectangle from
/// the update region of the specified window.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-validaterect>.
///
/// {@category user32}
int ValidateRect(int? hWnd, Pointer<RECT>? lpRect) =>
    _ValidateRect(hWnd ?? 0, lpRect ?? nullptr);

final _ValidateRect = _user32.lookupFunction<
    BOOL Function(HWND hWnd, Pointer<RECT> lpRect),
    int Function(int hWnd, Pointer<RECT> lpRect)>('ValidateRect');

/// Validates the client area within a region by removing the region from the
/// current update region of the specified window.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-validatergn>.
///
/// {@category user32}
int ValidateRgn(int hWnd, int? hRgn) => _ValidateRgn(hWnd, hRgn ?? 0);

final _ValidateRgn = _user32.lookupFunction<BOOL Function(HWND hWnd, HRGN hRgn),
    int Function(int hWnd, int hRgn)>('ValidateRgn');

/// Translates a character to the corresponding virtual-key code and shift state
/// for the current keyboard.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-vkkeyscanw>.
///
/// {@category user32}
int VkKeyScan(int ch) => _VkKeyScan(ch);

final _VkKeyScan =
    _user32.lookupFunction<Int16 Function(Uint16 ch), int Function(int ch)>(
        'VkKeyScanW');

/// Translates a character to the corresponding virtual-key code and shift
/// state.
///
/// The function translates the character using the input language and physical
/// keyboard layout identified by the input locale identifier.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-vkkeyscanexw>.
///
/// {@category user32}
int VkKeyScanEx(int ch, int dwhkl) => _VkKeyScanEx(ch, dwhkl);

final _VkKeyScanEx = _user32.lookupFunction<
    Int16 Function(Uint16 ch, HKL dwhkl),
    int Function(int ch, int dwhkl)>('VkKeyScanExW');

/// Waits until the specified process has finished processing its initial input
/// and is waiting for user input with no input pending, or until the time-out
/// interval has elapsed.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-waitforinputidle>.
///
/// {@category user32}
int WaitForInputIdle(int hProcess, int dwMilliseconds) =>
    _WaitForInputIdle(hProcess, dwMilliseconds);

final _WaitForInputIdle = _user32.lookupFunction<
    Uint32 Function(HANDLE hProcess, Uint32 dwMilliseconds),
    int Function(int hProcess, int dwMilliseconds)>('WaitForInputIdle');

/// Yields control to other threads when a thread has no other messages in its
/// message queue.
///
/// The WaitMessage function suspends the thread and does not return until a new
/// message is placed in the thread's message queue.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-waitmessage>.
///
/// {@category user32}
int WaitMessage() => _WaitMessage();

final _WaitMessage =
    _user32.lookupFunction<BOOL Function(), int Function()>('WaitMessage');

/// Returns a handle to the window associated with the specified display device
/// context (DC).
///
/// Output functions that use the specified device context draw into this
/// window.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-windowfromdc>.
///
/// {@category user32}
int WindowFromDC(int hDC) => _WindowFromDC(hDC);

final _WindowFromDC =
    _user32.lookupFunction<HWND Function(HDC hDC), int Function(int hDC)>(
        'WindowFromDC');

/// Retrieves a handle to the window that contains the specified physical point.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-windowfromphysicalpoint>.
///
/// {@category user32}
int WindowFromPhysicalPoint(POINT point) => _WindowFromPhysicalPoint(point);

final _WindowFromPhysicalPoint = _user32.lookupFunction<
    HWND Function(POINT point),
    int Function(POINT point)>('WindowFromPhysicalPoint');

/// Retrieves a handle to the window that contains the specified point.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-windowfrompoint>.
///
/// {@category user32}
int WindowFromPoint(POINT point) => _WindowFromPoint(point);

final _WindowFromPoint = _user32.lookupFunction<HWND Function(POINT point),
    int Function(POINT point)>('WindowFromPoint');
