// Copyright (c) 2020, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Standard constants exposed by the Win32 API

// ignore_for_file: camel_case_types, constant_identifier_names
// ignore_for_file: non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'macros.dart';

// -----------------------------------------------------------------------------
// General constants
// -----------------------------------------------------------------------------

/// A zero value; used to represent an empty bitmask.
const NULL = 0;

/// Boolean false value returned from the Win32 API
const FALSE = 0;

/// Boolean true value returned from the Win32 API
const TRUE = 1;

// Path length
const MAX_PATH = 260;

/// The default locale for the operating system.
const LOCALE_SYSTEM_DEFAULT = 0x0800;

/// The default locale for the user or process.
const LOCALE_USER_DEFAULT = 0x0400;

/// All processor groups.
const ALL_PROCESSOR_GROUPS = 0xFFFF;

// -----------------------------------------------------------------------------
// NTSTATUS constants
// -----------------------------------------------------------------------------

/// The operation completed successfully.
const STATUS_SUCCESS = 0;

/// The requested operation was unsuccessful.
const STATUS_UNSUCCESSFUL = 0xC0000001;

/// The requested operation is not implemented.
const STATUS_NOT_IMPLEMENTED = 0xC0000002;

/// The specified information class is not a valid information class for the
/// specified object.
const STATUS_INVALID_INFO_CLASS = 0xC0000003;

/// The specified information record length does not match the length that is
/// required for the specified information class.
const STATUS_INFO_LENGTH_MISMATCH = 0xC0000004;

/// An invalid HANDLE was specified.
const STATUS_INVALID_HANDLE = 0xC0000008;

// -----------------------------------------------------------------------------
// Error constants
// -----------------------------------------------------------------------------

/// The operation completed successfully.
const NO_ERROR = 0;

/// The operation completed successfully.
const SEC_E_OK = 0;

// -----------------------------------------------------------------------------
// Windows Runtime errors
// -----------------------------------------------------------------------------

/// Typename or Namespace was not found in metadata file.
const RO_E_METADATA_NAME_NOT_FOUND = 0x8000000F;

/// Name is an existing namespace rather than a typename.
const RO_E_METADATA_NAME_IS_NAMESPACE = 0x80000010;

/// Typename has an invalid format.
const RO_E_METADATA_INVALID_TYPE_FORMAT = 0x80000011;

/// Metadata file is invalid or corrupted.
const RO_E_INVALID_METADATA_FILE = 0x80000012;

/// The object has been closed.
const RO_E_CLOSED = 0x80000013;

/// Only one thread may access the object during a write operation.
const RO_E_EXCLUSIVE_WRITE = 0x80000014;

/// Operation is prohibited during change notification.
const RO_E_CHANGE_NOTIFICATION_IN_PROGRESS = 0x80000015;

/// The text associated with this error code could not be found.
const RO_E_ERROR_STRING_NOT_FOUND = 0x80000016;

// -----------------------------------------------------------------------------
// Process and file access types
// -----------------------------------------------------------------------------

/// Specifies access to the system security portion of the security descriptor.
const ACCESS_SYSTEM_SECURITY = 0x01000000;

/// Indicates that the caller is requesting the most access possible to the
/// object.
const MAXIMUM_ALLOWED = 0x02000000;

// -----------------------------------------------------------------------------
// Thread execution states
// -----------------------------------------------------------------------------

/// The thread is still active.
const STILL_ACTIVE = 259;

// -----------------------------------------------------------------------------
// Version constants
// -----------------------------------------------------------------------------

// The current value must be equal to the specified value.
const VER_EQUAL = 1;

/// The current value must be greater than the specified value.
const VER_GREATER = 2;

/// The current value must be greater than or equal to the specified value.
const VER_GREATER_EQUAL = 3;

/// The current value must be less than the specified value.
const VER_LESS = 4;

/// The current value must be less than or equal to the specified value.
const VER_LESS_EQUAL = 5;

/// All product suites specified in the wSuiteMask member must be present in the
/// current system.
const VER_AND = 6;

/// At least one of the specified product suites must be present in the current
/// system.
const VER_OR = 7;

/// The number of pipe instances that can be created is limited only by the
/// availability of system resources.
const PIPE_UNLIMITED_INSTANCES = 255;

/// 110 bps.
const CBR_110 = 110;

/// 300 bps.
const CBR_300 = 300;

/// 600 bps.
const CBR_600 = 600;

/// 1200 bps.
const CBR_1200 = 1200;

/// 2400 bps.
const CBR_2400 = 2400;

/// 4800 bps.
const CBR_4800 = 4800;

/// 9600 bps.
const CBR_9600 = 9600;

/// 14400 bps.
const CBR_14400 = 14400;

/// 19200 bps.
const CBR_19200 = 19200;

/// 38400 bps.
const CBR_38400 = 38400;

/// 56000 bps.
const CBR_56000 = 56000;

/// 57600 bps.
const CBR_57600 = 57600;

/// 115200 bps.
const CBR_115200 = 115200;

/// 128000 bps.
const CBR_128000 = 128000;

/// 256000 bps.
const CBR_256000 = 256000;

/// Disables the DTR line when the device is opened and leaves it disabled.
const DTR_CONTROL_DISABLE = 0x00;

/// Enables the DTR line when the device is opened and leaves it on.
const DTR_CONTROL_ENABLE = 0x01;

/// Enables DTR handshaking. If handshaking is enabled, it is an error for the
/// application to adjust the line by using the EscapeCommFunction function.
const DTR_CONTROL_HANDSHAKE = 0x02;

/// Disables the RTS line when the device is opened and leaves it disabled.
const RTS_CONTROL_DISABLE = 0x00;

/// Enables the RTS line when the device is opened and leaves it on.
const RTS_CONTROL_ENABLE = 0x01;

/// Enables RTS handshaking. The driver raises the RTS line when the
/// "type-ahead" (input) buffer is less than one-half full and lowers the RTS
/// line when the buffer is more than three-quarters full. If handshaking is
/// enabled, it is an error for the application to adjust the line by using the
/// EscapeCommFunction function.
const RTS_CONTROL_HANDSHAKE = 0x02;

/// Specifies that the RTS line will be high if bytes are available for
/// transmission. After all buffered bytes have been sent, the RTS line will be
/// low.
const RTS_CONTROL_TOGGLE = 0x03;

// -----------------------------------------------------------------------------
// Get Binary Type flags
// -----------------------------------------------------------------------------

/// A 32-bit Windows-based application
const SCS_32BIT_BINARY = 0;

/// An MS-DOS – based application
const SCS_DOS_BINARY = 1;

/// A 16-bit Windows-based application
const SCS_WOW_BINARY = 2;

/// A PIF file that executes an MS-DOS–based application
const SCS_PIF_BINARY = 3;

/// A POSIX–based application
const SCS_POSIX_BINARY = 4;

/// A 16-bit OS/2-based application
const SCS_OS216_BINARY = 5;

/// A 64-bit Windows-based application.
const SCS_64BIT_BINARY = 6;

/// The function ignores regular line breaks in the message definition text. The
/// function stores hard-coded line breaks in the message definition text into
/// the output buffer. The function generates no new line breaks.
const FORMAT_MESSAGE_MAX_WIDTH_MASK = 0x000000FF;

// -----------------------------------------------------------------------------
// WindowMessage constants
// -----------------------------------------------------------------------------

/// Performs no operation.
///
/// An application sends the WM_NULL message if it wants to post a message that
/// the recipient window will ignore.
const WM_NULL = 0x0000;

/// Sent when an application requests that a window be created by calling the
/// CreateWindowEx or CreateWindow function.
///
/// (The message is sent before the function returns.) The window procedure of
/// the new window receives this message after the window is created, but before
/// the window becomes visible.
const WM_CREATE = 0x0001;

/// Sent when a window is being destroyed.
///
/// It is sent to the window procedure of the window being destroyed after the
/// window is removed from the screen.
///
/// This message is sent first to the window being destroyed and then to the
/// child windows (if any) as they are destroyed. During the processing of the
/// message, it can be assumed that all child windows still exist.
const WM_DESTROY = 0x0002;

/// Sent after a window has been moved.
const WM_MOVE = 0x0003;

/// Sent to a window after its size has changed.
const WM_SIZE = 0x0005;

/// Sent to both the window being activated and the window being deactivated.
///
/// If the windows use the same input queue, the message is sent synchronously,
/// first to the window procedure of the top-level window being deactivated,
/// then to the window procedure of the top-level window being activated. If the
/// windows use different input queues, the message is sent asynchronously, so
/// the window is activated immediately.
const WM_ACTIVATE = 0x0006;

/// Sent to a window after it has gained the keyboard focus.
const WM_SETFOCUS = 0x0007;

/// Sent to a window immediately before it loses the keyboard focus.
const WM_KILLFOCUS = 0x0008;

/// Sent when an application changes the enabled state of a window.
///
/// It is sent to the window whose enabled state is changing. This message is
/// sent before the EnableWindow function returns, but after the enabled state
/// (WS_DISABLED style bit) of the window has changed.
const WM_ENABLE = 0x000A;

/// An application sends the WM_SETREDRAW message to a window to allow changes
/// in that window to be redrawn or to prevent changes in that window from being
/// redrawn.
const WM_SETREDRAW = 0x000B;

/// Sets the text of a window.
const WM_SETTEXT = 0x000C;

/// Copies the text that corresponds to a window into a buffer provided by the
/// caller.
const WM_GETTEXT = 0x000D;

/// Determines the length, in characters, of the text associated with a window.
const WM_GETTEXTLENGTH = 0x000E;

/// The WM_PAINT message is sent when the system or another application makes a
/// request to paint a portion of an application's window.
///
/// The message is sent when the UpdateWindow or RedrawWindow function is
/// called, or by the DispatchMessage function when the application obtains a
/// WM_PAINT message by using the GetMessage or PeekMessage function.
const WM_PAINT = 0x000F;

/// Sent as a signal that a window or an application should terminate.
const WM_CLOSE = 0x0010;

/// The WM_QUERYENDSESSION message is sent when the user chooses to end the
/// session or when an application calls one of the system shutdown functions.
///
/// If any application returns zero, the session is not ended. The system stops
/// sending WM_QUERYENDSESSION messages as soon as one application returns zero.
///
/// After processing this message, the system sends the WM_ENDSESSION message
/// with the wParam parameter set to the results of the WM_QUERYENDSESSION
/// message.
const WM_QUERYENDSESSION = 0x0011;

/// Sent to an icon when the user requests that the window be restored to its
/// previous size and position.
const WM_QUERYOPEN = 0x0013;

/// The WM_ENDSESSION message is sent to an application after the system
/// processes the results of the WM_QUERYENDSESSION message. The WM_ENDSESSION
/// message informs the application whether the session is ending.
const WM_ENDSESSION = 0x0016;

/// Indicates a request to terminate an application, and is generated when the
/// application calls the PostQuitMessage function. This message causes the
/// GetMessage function to return zero.
const WM_QUIT = 0x0012;

/// Sent when the window background must be erased (for example, when a window
/// is resized). The message is sent to prepare an invalidated portion of a
/// window for painting.
const WM_ERASEBKGND = 0x0014;

/// The WM_SYSCOLORCHANGE message is sent to all top-level windows when a change
/// is made to a system color setting.
const WM_SYSCOLORCHANGE = 0x0015;

/// Sent to a window when the window is about to be hidden or shown.
const WM_SHOWWINDOW = 0x0018;

/// An application sends the WM_WININICHANGE message to all top-level windows
/// after making a change to the WIN.INI file. The SystemParametersInfo function
/// sends this message after an application uses the function to change a
/// setting in WIN.INI.
const WM_WININICHANGE = 0x001A;

/// A message that is sent to all top-level windows when the
/// SystemParametersInfo function changes a system-wide setting or when policy
/// settings have changed.
///
/// Applications should send WM_SETTINGCHANGE to all top-level windows when they
/// make changes to system parameters. (This message cannot be sent directly to
/// a window.) To send the WM_SETTINGCHANGE message to all top-level windows,
/// use the SendMessageTimeout function with the hwnd parameter set to
/// HWND_BROADCAST.
const WM_SETTINGCHANGE = WM_WININICHANGE;

/// The WM_DEVMODECHANGE message is sent to all top-level windows whenever the
/// user changes device-mode settings.
const WM_DEVMODECHANGE = 0x001B;

/// Sent when a window belonging to a different application than the active
/// window is about to be activated. The message is sent to the application
/// whose window is being activated and to the application whose window is being
/// deactivated.
const WM_ACTIVATEAPP = 0x001C;

/// An application sends the WM_FONTCHANGE message to all top-level windows in
/// the system after changing the pool of font resources.
const WM_FONTCHANGE = 0x001D;

/// A message that is sent whenever there is a change in the system time.
const WM_TIMECHANGE = 0x001E;

/// Sent to cancel certain modes, such as mouse capture. For example, the system
/// sends this message to the active window when a dialog box or message box is
/// displayed. Certain functions also send this message explicitly to the
/// specified window regardless of whether it is the active window. For example,
/// the EnableWindow function sends this message when disabling the specified
/// window.
const WM_CANCELMODE = 0x001F;

/// Sent to a window if the mouse causes the cursor to move within a window and
/// mouse input is not captured.
const WM_SETCURSOR = 0x0020;

/// Sent when the cursor is in an inactive window and the user presses a mouse
/// button. The parent window receives this message only if the child window
/// passes it to the DefWindowProc function.
const WM_MOUSEACTIVATE = 0x0021;

/// Sent to a child window when the user clicks the window's title bar or when
/// the window is activated, moved, or sized.
const WM_CHILDACTIVATE = 0x0022;

/// Sent by a computer-based training (CBT) application to separate user-input
/// messages from other messages sent through the WH_JOURNALPLAYBACK procedure.
const WM_QUEUESYNC = 0x0023;

/// Sent to a window when the size or position of the window is about to change.
/// An application can use this message to override the window's default
/// maximized size and position, or its default minimum or maximum tracking
/// size.
const WM_GETMINMAXINFO = 0x0024;

/// Deprecated. This message is not sent in modern versions of Windows.
const WM_PAINTICON = 0x0026;

/// Deprecated. This message is not sent in modern versions of Windows.
const WM_ICONERASEBKGND = 0x0027;

/// Sent to a dialog box procedure to set the keyboard focus to a different
/// control in the dialog box.
const WM_NEXTDLGCTL = 0x0028;

/// The WM_SPOOLERSTATUS message is sent from Print Manager whenever a job is
/// added to or removed from the Print Manager queue.
const WM_SPOOLERSTATUS = 0x002A;

/// Sent to the parent window of an owner-drawn button, combo box, list box, or
/// menu when a visual aspect of the button, combo box, list box, or menu has
/// changed.
const WM_DRAWITEM = 0x002B;

/// Sent to the owner window of a combo box, list box, list-view control, or
/// menu item when the control or menu is created.
const WM_MEASUREITEM = 0x002C;

/// Sent to the owner of a list box or combo box when the list box or combo box
/// is destroyed or when items are removed by the LB_DELETESTRING,
/// LB_RESETCONTENT, CB_DELETESTRING, or CB_RESETCONTENT message. The system
/// sends a WM_DELETEITEM message for each deleted item. The system sends the
/// WM_DELETEITEM message for any deleted list box or combo box item with
/// nonzero item data.
const WM_DELETEITEM = 0x002D;

/// Sent by a list box with the LBS_WANTKEYBOARDINPUT style to its owner in
/// response to a WM_KEYDOWN message.
const WM_VKEYTOITEM = 0x002E;

/// Sent by a list box with the LBS_WANTKEYBOARDINPUT style to its owner in
/// response to a WM_CHAR message.
const WM_CHARTOITEM = 0x002F;

/// Sets the font that a control is to use when drawing text.
const WM_SETFONT = 0x0030;

/// Retrieves the font with which the control is currently drawing its text.
const WM_GETFONT = 0x0031;

/// Sent to a window to associate a hot key with the window. When the user
/// presses the hot key, the system activates the window.
const WM_SETHOTKEY = 0x0032;

/// Sent to determine the hot key associated with a window.
const WM_GETHOTKEY = 0x0033;

/// Sent to a minimized (iconic) window. The window is about to be dragged by
/// the user but does not have an icon defined for its class. An application can
/// return a handle to an icon or cursor. The system displays this cursor or
/// icon while the user drags the icon.
const WM_QUERYDRAGICON = 0x0037;

/// Sent to determine the relative position of a new item in the sorted list of
/// an owner-drawn combo box or list box. Whenever the application adds a new
/// item, the system sends this message to the owner of a combo box or list box
/// created with the CBS_SORT or LBS_SORT style.
const WM_COMPAREITEM = 0x0039;

/// Sent by both Microsoft Active Accessibility and Microsoft UI Automation to
/// obtain information about an accessible object contained in a server
/// application.
///
/// Applications never send this message directly. Microsoft Active
/// Accessibility sends this message in response to calls to
/// AccessibleObjectFromPoint, AccessibleObjectFromEvent, or
/// AccessibleObjectFromWindow. However, server applications handle this
/// message. UI Automation sends this message in response to calls to
/// IUIAutomation::ElementFromHandle, ElementFromPoint, and GetFocusedElement,
/// and when handling events for which a client has registered.
const WM_GETOBJECT = 0x003D;

/// Sent to all top-level windows when the system detects more than 12.5 percent
/// of system time over a 30- to 60-second interval is being spent compacting
/// memory. This indicates that system memory is low.
const WM_COMPACTING = 0x0041;

/// Deprecated. This message is not sent in modern versions of Windows.
const WM_COMMNOTIFY = 0x0044;

/// Sent to a window whose size, position, or place in the Z order is about to
/// change as a result of a call to the SetWindowPos function or another
/// window-management function.
const WM_WINDOWPOSCHANGING = 0x0046;

/// Sent to a window whose size, position, or place in the Z order has changed
/// as a result of a call to the SetWindowPos function or another
/// window-management function.
const WM_WINDOWPOSCHANGED = 0x0047;

/// Notifies applications that the system, typically a battery-powered personal
/// computer, is about to enter a suspended mode.
const WM_POWER = 0x0048;

/// Sent by a common control to its parent window when an event has occurred or
/// the control requires some information.
const WM_NOTIFY = 0x004E;

/// Posted to the window with the focus when the user chooses a new input
/// language, either with the hotkey (specified in the Keyboard control panel
/// application) or from the indicator on the system taskbar. An application can
/// accept the change by passing the message to the DefWindowProc function or
/// reject the change (and prevent it from taking place) by returning
/// immediately.
const WM_INPUTLANGCHANGEREQUEST = 0x0050;

/// Sent to the topmost affected window after an application's input language
/// has been changed. You should make any application-specific settings and pass
/// the message to the DefWindowProc function, which passes the message to all
/// first-level child windows. These child windows can pass the message to
/// DefWindowProc to have it pass the message to their child windows, and so on.
const WM_INPUTLANGCHANGE = 0x0051;

/// Sent to an application that has initiated a training card with Windows Help.
/// The message informs the application when the user clicks an authorable
/// button. An application initiates a training card by specifying the
/// HELP_TCARD command in a call to the WinHelp function.
const WM_TCARD = 0x0052;

/// Indicates that the user pressed the F1 key. If a menu is active when F1 is
/// pressed, WM_HELP is sent to the window associated with the menu; otherwise,
/// WM_HELP is sent to the window that has the keyboard focus. If no window has
/// the keyboard focus, WM_HELP is sent to the currently active window.
const WM_HELP = 0x0053;

/// Sent to all windows after the user has logged on or off. When the user logs
/// on or off, the system updates the user-specific settings. The system sends
/// this message immediately after updating the settings.
const WM_USERCHANGED = 0x0054;

/// Determines if a window accepts ANSI or Unicode structures in the WM_NOTIFY
/// notification message. WM_NOTIFYFORMAT messages are sent from a common
/// control to its parent window and from the parent window to the common
/// control.
const WM_NOTIFYFORMAT = 0x0055;

/// Notifies a window that the user clicked the right mouse button
/// (right-clicked) in the window.
const WM_CONTEXTMENU = 0x007B;

/// Sent to a window when the SetWindowLong function is about to change one or
/// more of the window's styles.
const WM_STYLECHANGING = 0x007C;

/// Sent to a window after the SetWindowLong function has changed one or more of
/// the window's styles.
const WM_STYLECHANGED = 0x007D;

/// The WM_DISPLAYCHANGE message is sent to all windows when the display
/// resolution has changed.
const WM_DISPLAYCHANGE = 0x007E;

/// Sent to a window to retrieve a handle to the large or small icon associated
/// with a window. The system displays the large icon in the ALT+TAB dialog, and
/// the small icon in the window caption.
const WM_GETICON = 0x007F;

/// Associates a new large or small icon with a window. The system displays the
/// large icon in the ALT+TAB dialog box, and the small icon in the window
/// caption.
const WM_SETICON = 0x0080;

/// Sent prior to the WM_CREATE message when a window is first created.
const WM_NCCREATE = 0x0081;

/// Notifies a window that its nonclient area is being destroyed. The
/// DestroyWindow function sends the WM_NCDESTROY message to the window
/// following the WM_DESTROY message.WM_DESTROY is used to free the allocated
/// memory object associated with the window.
///
/// The WM_NCDESTROY message is sent after the child windows have been
/// destroyed. In contrast, WM_DESTROY is sent before the child windows are
/// destroyed.
const WM_NCDESTROY = 0x0082;

/// Sent when the size and position of a window's client area must be
/// calculated. By processing this message, an application can control the
/// content of the window's client area when the size or position of the window
/// changes.
const WM_NCCALCSIZE = 0x0083;

/// Sent to a window in order to determine what part of the window corresponds
/// to a particular screen coordinate. This can happen, for example, when the
/// cursor moves, when a mouse button is pressed or released, or in response to
/// a call to a function such as WindowFromPoint. If the mouse is not captured,
/// the message is sent to the window beneath the cursor. Otherwise, the message
/// is sent to the window that has captured the mouse.
const WM_NCHITTEST = 0x0084;

/// The WM_NCPAINT message is sent to a window when its frame must be painted.
const WM_NCPAINT = 0x0085;

/// Sent to a window when its nonclient area needs to be changed to indicate an
/// active or inactive state.
const WM_NCACTIVATE = 0x0086;

/// Sent to the window procedure associated with a control. By default, the
/// system handles all keyboard input to the control; the system interprets
/// certain types of keyboard input as dialog box navigation keys. To override
/// this default behavior, the control can respond to the WM_GETDLGCODE message
/// to indicate the types of input it wants to process itself.
const WM_GETDLGCODE = 0x0087;

/// The WM_SYNCPAINT message is used to synchronize painting while avoiding
/// linking independent GUI threads.
const WM_SYNCPAINT = 0x0088;

/// Posted to a window when the cursor is moved within the nonclient area of the
/// window. This message is posted to the window that contains the cursor. If a
/// window has captured the mouse, this message is not posted.
const WM_NCMOUSEMOVE = 0x00A0;

/// Posted when the user presses the left mouse button while the cursor is
/// within the nonclient area of a window. This message is posted to the window
/// that contains the cursor. If a window has captured the mouse, this message
/// is not posted.
const WM_NCLBUTTONDOWN = 0x00A1;

/// Posted when the user releases the left mouse button while the cursor is
/// within the nonclient area of a window. This message is posted to the window
/// that contains the cursor. If a window has captured the mouse, this message
/// is not posted.
const WM_NCLBUTTONUP = 0x00A2;

/// Posted when the user double-clicks the left mouse button while the cursor is
/// within the nonclient area of a window. This message is posted to the window
/// that contains the cursor. If a window has captured the mouse, this message
/// is not posted.
const WM_NCLBUTTONDBLCLK = 0x00A3;

/// Posted when the user presses the right mouse button while the cursor is
/// within the nonclient area of a window. This message is posted to the window
/// that contains the cursor. If a window has captured the mouse, this message
/// is not posted.
const WM_NCRBUTTONDOWN = 0x00A4;

/// Posted when the user releases the right mouse button while the cursor is
/// within the nonclient area of a window. This message is posted to the window
/// that contains the cursor. If a window has captured the mouse, this message
/// is not posted.
const WM_NCRBUTTONUP = 0x00A5;

/// Posted when the user double-clicks the middle mouse button while the cursor
/// is within the nonclient area of a window. This message is posted to the
/// window that contains the cursor. If a window has captured the mouse, this
/// message is not posted.
const WM_NCRBUTTONDBLCLK = 0x00A6;

/// Posted when the user presses the middle mouse button while the cursor is
/// within the nonclient area of a window. This message is posted to the window
/// that contains the cursor. If a window has captured the mouse, this message
/// is not posted.
const WM_NCMBUTTONDOWN = 0x00A7;

/// Posted when the user releases the middle mouse button while the cursor is
/// within the nonclient area of a window. This message is posted to the window
/// that contains the cursor. If a window has captured the mouse, this message
/// is not posted.
const WM_NCMBUTTONUP = 0x00A8;

/// Posted when the user double-clicks the middle mouse button while the cursor
/// is within the nonclient area of a window. This message is posted to the
/// window that contains the cursor. If a window has captured the mouse, this
/// message is not posted.
const WM_NCMBUTTONDBLCLK = 0x00A9;

/// Posted when the user presses the first or second X button while the cursor
/// is in the nonclient area of a window. This message is posted to the window
/// that contains the cursor. If a window has captured the mouse, this message
/// is not posted.
const WM_NCXBUTTONDOWN = 0x00AB;

/// Posted when the user releases the first or second X button while the cursor
/// is in the nonclient area of a window. This message is posted to the window
/// that contains the cursor. If a window has captured the mouse, this message
/// is not posted.
const WM_NCXBUTTONUP = 0x00AC;

/// Posted when the user double-clicks the first or second X button while the
/// cursor is in the nonclient area of a window. This message is posted to the
/// window that contains the cursor. If a window has captured the mouse, this
/// message is not posted.
const WM_NCXBUTTONDBLCLK = 0x00AD;

/// Sent to the window that registered to receive raw input.
///
/// Raw input notifications are available only after the application calls
/// RegisterRawInputDevices with RIDEV_DEVNOTIFY flag.
const WM_INPUT_DEVICE_CHANGE = 0x00FE;

/// Sent to the window that is getting raw input.
const WM_INPUT = 0x00FF;

/// Posted to the window with the keyboard focus when a nonsystem key is
/// pressed. A nonsystem key is a key that is pressed when the ALT key is not
/// pressed.
const WM_KEYDOWN = 0x0100;

/// Posted to the window with the keyboard focus when a nonsystem key is
/// released. A nonsystem key is a key that is pressed when the ALT key is not
/// pressed, or a keyboard key that is pressed when a window has the keyboard
/// focus.
const WM_KEYUP = 0x0101;

/// Posted to the window with the keyboard focus when a WM_KEYDOWN message is
/// translated by the TranslateMessage function. The WM_CHAR message contains
/// the character code of the key that was pressed.
const WM_CHAR = 0x0102;

/// Posted to the window with the keyboard focus when a WM_KEYUP message is
/// translated by the TranslateMessage function. WM_DEADCHAR specifies a
/// character code generated by a dead key. A dead key is a key that generates a
/// character, such as the umlaut (double-dot), that is combined with another
/// character to form a composite character. For example, the umlaut-O character
/// (Ö) is generated by typing the dead key for the umlaut character, and then
/// typing the O key.
const WM_DEADCHAR = 0x0103;

/// Posted to the window with the keyboard focus when the user presses the F10
/// key (which activates the menu bar) or holds down the ALT key and then
/// presses another key. It also occurs when no window currently has the
/// keyboard focus; in this case, the WM_SYSKEYDOWN message is sent to the
/// active window. The window that receives the message can distinguish between
/// these two contexts by checking the context code in the lParam parameter.
const WM_SYSKEYDOWN = 0x0104;

/// Posted to the window with the keyboard focus when the user releases a key
/// that was pressed while the ALT key was held down. It also occurs when no
/// window currently has the keyboard focus; in this case, the WM_SYSKEYUP
/// message is sent to the active window. The window that receives the message
/// can distinguish between these two contexts by checking the context code in
/// the lParam parameter.
const WM_SYSKEYUP = 0x0105;

/// Posted to the window with the keyboard focus when a WM_SYSKEYDOWN message is
/// translated by the TranslateMessage function. It specifies the character code
/// of a system character key that is, a character key that is pressed while the
/// ALT key is down.
const WM_SYSCHAR = 0x0106;

/// Sent to the window with the keyboard focus when a WM_SYSKEYDOWN message is
/// translated by the TranslateMessage function. WM_SYSDEADCHAR specifies the
/// character code of a system dead key that is, a dead key that is pressed
/// while holding down the ALT key.
const WM_SYSDEADCHAR = 0x0107;

/// Sent to the dialog box procedure immediately before a dialog box is
/// displayed. Dialog box procedures typically use this message to initialize
/// controls and carry out any other initialization tasks that affect the
/// appearance of the dialog box.
const WM_INITDIALOG = 0x0110;

/// Sent when the user selects a command item from a menu, when a control sends
/// a notification message to its parent window, or when an accelerator
/// keystroke is translated.
const WM_COMMAND = 0x0111;

/// A window receives this message when the user chooses a command from the
/// Window menu (formerly known as the system or control menu) or when the user
/// chooses the maximize button, minimize button, restore button, or close
/// button.
const WM_SYSCOMMAND = 0x0112;

/// Posted to the installing thread's message queue when a timer expires. The
/// message is posted by the GetMessage or PeekMessage function.
const WM_TIMER = 0x0113;

/// The WM_HSCROLL message is sent to a window when a scroll event occurs in the
/// window's standard horizontal scroll bar. This message is also sent to the
/// owner of a horizontal scroll bar control when a scroll event occurs in the
/// control.
const WM_HSCROLL = 0x0114;

/// The WM_VSCROLL message is sent to a window when a scroll event occurs in the
/// window's standard vertical scroll bar. This message is also sent to the
/// owner of a vertical scroll bar control when a scroll event occurs in the
/// control.
const WM_VSCROLL = 0x0115;

/// Sent when a menu is about to become active. It occurs when the user clicks
/// an item on the menu bar or presses a menu key. This allows the application
/// to modify the menu before it is displayed.
const WM_INITMENU = 0x0116;

/// Sent when a drop-down menu or submenu is about to become active. This allows
/// an application to modify the menu before it is displayed, without changing
/// the entire menu.
const WM_INITMENUPOPUP = 0x0117;

/// Passes information about a gesture.
const WM_GESTURE = 0x0119;

/// Gives you a chance to set the gesture configuration.
const WM_GESTURENOTIFY = 0x011A;

/// Sent to a menu's owner window when the user selects a menu item.
const WM_MENUSELECT = 0x011F;

/// Sent when a menu is active and the user presses a key that does not
/// correspond to any mnemonic or accelerator key. This message is sent to the
/// window that owns the menu.
const WM_MENUCHAR = 0x0120;

/// Sent to the owner window of a modal dialog box or menu that is entering an
/// idle state. A modal dialog box or menu enters an idle state when no messages
/// are waiting in its queue after it has processed one or more previous
/// messages.
const WM_ENTERIDLE = 0x0121;

/// Sent when the user releases the right mouse button while the cursor is on a
/// menu item.
const WM_MENURBUTTONUP = 0x0122;

/// Sent to the owner of a drag-and-drop menu when the user drags a menu item.
const WM_MENUDRAG = 0x0123;

/// Sent to the owner of a drag-and-drop menu when the mouse cursor enters a
/// menu item or moves from the center of the item to the top or bottom of the
/// item.
const WM_MENUGETOBJECT = 0x0124;

/// Sent when a drop-down menu or submenu has been destroyed.
const WM_UNINITMENUPOPUP = 0x0125;

/// Sent when the user makes a selection from a menu.c
const WM_MENUCOMMAND = 0x0126;

/// An application sends the WM_CHANGEUISTATE message to indicate that the UI
/// state should be changed.
const WM_CHANGEUISTATE = 0x0127;

/// An application sends the WM_UPDATEUISTATE message to change the UI state for
/// the specified window and all its child windows.
const WM_UPDATEUISTATE = 0x0128;

/// An application sends the WM_QUERYUISTATE message to retrieve the UI state
/// for a window.
const WM_QUERYUISTATE = 0x0129;

/// Posted to a window when the cursor moves. If the mouse is not captured, the
/// message is posted to the window that contains the cursor. Otherwise, the
/// message is posted to the window that has captured the mouse.
const WM_MOUSEMOVE = 0x0200;

/// Posted when the user presses the left mouse button while the cursor is in
/// the client area of a window. If the mouse is not captured, the message is
/// posted to the window beneath the cursor. Otherwise, the message is posted to
/// the window that has captured the mouse.
const WM_LBUTTONDOWN = 0x0201;

/// Posted when the user releases the left mouse button while the cursor is in
/// the client area of a window. If the mouse is not captured, the message is
/// posted to the window beneath the cursor. Otherwise, the message is posted to
/// the window that has captured the mouse.
const WM_LBUTTONUP = 0x0202;

/// Posted when the user double-clicks the left mouse button while the cursor is
/// in the client area of a window. If the mouse is not captured, the message is
/// posted to the window beneath the cursor. Otherwise, the message is posted to
/// the window that has captured the mouse.
const WM_LBUTTONDBLCLK = 0x0203;

/// Posted when the user presses the right mouse button while the cursor is in
/// the client area of a window. If the mouse is not captured, the message is
/// posted to the window beneath the cursor. Otherwise, the message is posted to
/// the window that has captured the mouse.
const WM_RBUTTONDOWN = 0x0204;

/// Posted when the user releases the right mouse button while the cursor is in
/// the client area of a window. If the mouse is not captured, the message is
/// posted to the window beneath the cursor. Otherwise, the message is posted to
/// the window that has captured the mouse.
const WM_RBUTTONUP = 0x0205;

/// Posted when the user double-clicks the right mouse button while the cursor
/// is in the client area of a window. If the mouse is not captured, the message
/// is posted to the window beneath the cursor. Otherwise, the message is posted
/// to the window that has captured the mouse.
const WM_RBUTTONDBLCLK = 0x0206;

/// Posted when the user presses the middle mouse button while the cursor is
/// within the nonclient area of a window. This message is posted to the window
/// that contains the cursor. If a window has captured the mouse, this message
/// is not posted.
const WM_MBUTTONDOWN = 0x0207;

/// Posted when the user releases the middle mouse button while the cursor is
/// within the nonclient area of a window. This message is posted to the window
/// that contains the cursor. If a window has captured the mouse, this message
/// is not posted.
const WM_MBUTTONUP = 0x0208;

/// Posted when the user double-clicks the middle mouse button while the cursor
/// is within the nonclient area of a window. This message is posted to the
/// window that contains the cursor. If a window has captured the mouse, this
/// message is not posted.
const WM_MBUTTONDBLCLK = 0x0209;

/// Sent to the focus window when the mouse wheel is rotated. The DefWindowProc
/// function propagates the message to the window's parent. There should be no
/// internal forwarding of the message, since DefWindowProc propagates it up the
/// parent chain until it finds a window that processes it.
const WM_MOUSEWHEEL = 0x020A;

/// Posted when the user presses the first or second X button while the cursor
/// is in the client area of a window. If the mouse is not captured, the message
/// is posted to the window beneath the cursor. Otherwise, the message is posted
/// to the window that has captured the mouse.
const WM_XBUTTONDOWN = 0x020B;

/// Posted when the user releases the first or second X button while the cursor
/// is in the client area of a window. If the mouse is not captured, the message
/// is posted to the window beneath the cursor. Otherwise, the message is posted
/// to the window that has captured the mouse.
const WM_XBUTTONUP = 0x020C;

/// Posted when the user double-clicks the first or second X button while the
/// cursor is in the client area of a window. If the mouse is not captured, the
/// message is posted to the window beneath the cursor. Otherwise, the message
/// is posted to the window that has captured the mouse.
const WM_XBUTTONDBLCLK = 0x020D;

/// Sent to the active window when the mouse's horizontal scroll wheel is tilted
/// or rotated. The DefWindowProc function propagates the message to the
/// window's parent. There should be no internal forwarding of the message,
/// since DefWindowProc propagates it up the parent chain until it finds a
/// window that processes it.
const WM_MOUSEHWHEEL = 0x020E;

/// Notifies applications that a power-management event has occurred.
const WM_POWERBROADCAST = 0x0218;

/// Notifies an application of a change to the hardware configuration of a
/// device or the computer.
const WM_DEVICECHANGE = 0x0219;

/// Sent when the effective dots per inch (dpi) for a window has changed.
/// Requires Windows 8.1 or above.
const WM_DPICHANGED = 0x02E0;

/// For Per Monitor v2 top-level windows, this message is sent to all HWNDs in
/// the child HWND tree of the window that is undergoing a DPI change. This
/// message occurs before the top-level window receives WM_DPICHANGED, and
/// traverses the child tree from the bottom up. Requires Windows 10, version
/// 1703 or higher.
const WM_DPICHANGED_BEFOREPARENT = 0x02E2;

/// For Per Monitor v2 top-level windows, this message is sent to all HWNDs in
/// the child HWND tree of the window that is undergoing a DPI change. This
/// message occurs after the top-level window receives WM_DPICHANGED, and
/// traverses the child tree from the bottom up. Requires Windows 10, version
/// 1703 or higher.
const WM_DPICHANGED_AFTERPARENT = 0x02E3;

/// This message tells the operating system that the window will be sized to
/// dimensions other than the default. Requires Windows 10, version
/// 1703 or higher.
const WM_GETDPISCALEDSIZE = 0x02E4;

/// An application sends a WM_CUT message to an edit control or combo box to
/// delete (cut) the current selection, if any, in the edit control and copy the
/// deleted text to the clipboard in CF_TEXT format.
const WM_CUT = 0x0300;

/// An application sends the WM_COPY message to an edit control or combo box to
/// copy the current selection to the clipboard in CF_TEXT format.
const WM_COPY = 0x0301;

/// An application sends a WM_PASTE message to an edit control or combo box to
/// copy the current content of the clipboard to the edit control at the current
/// caret position. Data is inserted only if the clipboard contains data in
/// CF_TEXT format.
const WM_PASTE = 0x0302;

/// An application sends a WM_CLEAR message to an edit control or combo box to
/// delete (clear) the current selection, if any, from the edit control.
const WM_CLEAR = 0x0303;

/// An application sends a WM_UNDO message to an edit control to undo the last
/// operation. When this message is sent to an edit control, the previously
/// deleted text is restored or the previously added text is deleted.
const WM_UNDO = 0x0304;

/// Sent to the clipboard owner if it has delayed rendering a specific clipboard
/// format and if an application has requested data in that format. The
/// clipboard owner must render data in the specified format and place it on the
/// clipboard by calling the SetClipboardData function.
const WM_RENDERFORMAT = 0x0305;

/// Sent to the clipboard owner before it is destroyed, if the clipboard owner
/// has delayed rendering one or more clipboard formats. For the content of the
/// clipboard to remain available to other applications, the clipboard owner
/// must render data in all the formats it is capable of generating, and place
/// the data on the clipboard by calling the SetClipboardData function.
const WM_RENDERALLFORMATS = 0x0306;

/// Sent to the clipboard owner when a call to the EmptyClipboard function
/// empties the clipboard.
const WM_DESTROYCLIPBOARD = 0x0307;

/// Sent to the first window in the clipboard viewer chain when the content of
/// the clipboard changes. This enables a clipboard viewer window to display the
/// new content of the clipboard.
const WM_DRAWCLIPBOARD = 0x0308;

/// Sent to the clipboard owner by a clipboard viewer window when the clipboard
/// contains data in the CF_OWNERDISPLAY format and the clipboard viewer's
/// client area needs repainting.
const WM_PAINTCLIPBOARD = 0x0309;

/// Sent to the clipboard owner by a clipboard viewer window when the clipboard
/// contains data in the CF_OWNERDISPLAY format and an event occurs in the
/// clipboard viewer's vertical scroll bar. The owner should scroll the
/// clipboard image and update the scroll bar values.
const WM_VSCROLLCLIPBOARD = 0x030A;

/// Sent to the clipboard owner by a clipboard viewer window when the clipboard
/// contains data in the CF_OWNERDISPLAY format and the clipboard viewer's
/// client area has changed size.
const WM_SIZECLIPBOARD = 0x030B;

/// Sent to the clipboard owner by a clipboard viewer window to request the name
/// of a CF_OWNERDISPLAY clipboard format.
const WM_ASKCBFORMATNAME = 0x030C;

/// Sent to the first window in the clipboard viewer chain when a window is
/// being removed from the chain.
const WM_CHANGECBCHAIN = 0x030D;

/// Sent to the clipboard owner by a clipboard viewer window. This occurs when
/// the clipboard contains data in the CF_OWNERDISPLAY format and an event
/// occurs in the clipboard viewer's horizontal scroll bar. The owner should
/// scroll the clipboard image and update the scroll bar values.
const WM_HSCROLLCLIPBOARD = 0x030E;

/// The WM_QUERYNEWPALETTE message informs a window that it is about to receive
/// the keyboard focus, giving the window the opportunity to realize its logical
/// palette when it receives the focus.
const WM_QUERYNEWPALETTE = 0x030F;

/// The WM_PALETTEISCHANGING message informs applications that an application is
/// going to realize its logical palette.
const WM_PALETTEISCHANGING = 0x0310;

/// The WM_PALETTECHANGED message is sent to all top-level and overlapped
/// windows after the window with the keyboard focus has realized its logical
/// palette, thereby changing the system palette. This message enables a window
/// that uses a color palette but does not have the keyboard focus to realize
/// its logical palette and update its client area.
const WM_PALETTECHANGED = 0x0311;

/// Posted when the user presses a hot key registered by the RegisterHotKey
/// function. The message is placed at the top of the message queue associated
/// with the thread that registered the hot key.
const WM_HOTKEY = 0x0312;

/// The WM_CLIPBOARDUPDATE message signifies that clipboard contents have
/// changed. To listen for this message, create a Clipboard Format Listener
/// using the AddClipboardFormatListener() API. This has replaced the old
/// SetClipboardViewer() API, and is a simpler, more efficient method of
/// monitoring for clipboard changes.
const WM_CLIPBOARDUPDATE = 0x031D;

/// Informs all top-level windows that the colorization color has changed.
const WM_DWMCOLORIZATIONCOLORCHANGED = 0x0320;

/// Used to define private messages for use by private window classes, usually
/// in the form WM_USER+x, where x is an integer value.
const WM_USER = 0x0400;

/// A message-only window enables you to send and receive messages. It is not
/// visible, has no z-order, cannot be enumerated, and does not receive
/// broadcast messages. The window simply dispatches messages.
const HWND_MESSAGE = 0xFFFFFFFFFFFFFFFD; // (HWND) -3

/// Special HWND value for use with PostMessage() and SendMessage(). The message
/// is sent to all top-level windows in the system, including disabled or
/// invisible unowned windows, overlapped windows, and pop-up windows; but the
/// message is not sent to child windows.
const HWND_BROADCAST = 0xffff;

// -----------------------------------------------------------------------------
// Pre-defined resource types
// -----------------------------------------------------------------------------

/// Hardware-dependent cursor resource.
final RT_CURSOR = MAKEINTRESOURCE(1);

/// Bitmap resource.
final RT_BITMAP = MAKEINTRESOURCE(2);

/// Hardware-dependent icon resource.
final RT_ICON = MAKEINTRESOURCE(3);

/// Menu resource.
final RT_MENU = MAKEINTRESOURCE(4);

/// Dialog box.
final RT_DIALOG = MAKEINTRESOURCE(5);

/// String-table entry.
final RT_STRING = MAKEINTRESOURCE(6);

/// Font directory resource.
final RT_FONTDIR = MAKEINTRESOURCE(7);

/// Font resource.
final RT_FONT = MAKEINTRESOURCE(8);

/// Accelerator table.
final RT_ACCELERATOR = MAKEINTRESOURCE(9);

/// Application-defined resource (raw data).
final RT_RCDATA = MAKEINTRESOURCE(10);

/// Message-table entry.
final RT_MESSAGETABLE = MAKEINTRESOURCE(11);

/// Hardware-independent cursor resource.
final RT_GROUP_CURSOR = MAKEINTRESOURCE(11 + RT_CURSOR.address);

/// Hardware-independent icon resource.
final RT_GROUP_ICON = MAKEINTRESOURCE(11 + RT_ICON.address);

/// Version resource.
final RT_VERSION = MAKEINTRESOURCE(16);

/// Allows a resource editing tool to associate a string with an .rc file.
final RT_DLGINCLUDE = MAKEINTRESOURCE(17);

/// Plug and Play resource.
final RT_PLUGPLAY = MAKEINTRESOURCE(19);

/// VXD.
final RT_VXD = MAKEINTRESOURCE(20);

/// Animated cursor.
final RT_ANICURSOR = MAKEINTRESOURCE(21);

/// Animated icon.
final RT_ANIICON = MAKEINTRESOURCE(22);

/// HTML resource.
final RT_HTML = MAKEINTRESOURCE(23);

/// Side-by-Side Assembly Manifest.
final RT_MANIFEST = MAKEINTRESOURCE(24);

// -----------------------------------------------------------------------------
// Power management events
// -----------------------------------------------------------------------------

/// Notifies applications that the computer is about to enter a suspended state.
/// This event is typically broadcast when all applications and installable
/// drivers have returned TRUE to a previous PBT_APMQUERYSUSPEND event.
const PBT_APMSUSPEND = 0x0004;

/// Notifies applications that the system has resumed operation after being
/// suspended.
const PBT_APMRESUMESUSPEND = 0x0007;

/// Notifies applications that the battery power is low.
const PBT_APMBATTERYLOW = 0x0009;

/// Notifies applications of a change in the power status of the computer, such
/// as a switch from battery power to A/C. The system also broadcasts this event
/// when remaining battery power slips below the threshold specified by the user
/// or if the battery power changes by a specified percentage.
const PBT_APMPOWERSTATUSCHANGE = 0x000A;

/// Notifies applications that the system is resuming from sleep or hibernation.
/// This event is delivered every time the system resumes and does not indicate
/// whether a user is present.
const PBT_APMRESUMEAUTOMATIC = 0x0012;

/// Power setting change event sent with a WM_POWERBROADCAST window message or
/// in a HandlerEx notification callback for services.
const PBT_POWERSETTINGCHANGE = 0x8013;

// -----------------------------------------------------------------------------
// Size constants (from WM_SIZE)
// -----------------------------------------------------------------------------

/// The window has been resized, but neither the SIZE_MINIMIZED nor
/// SIZE_MAXIMIZED value applies.
const SIZE_RESTORED = 0;

/// The window has been minimized.
const SIZE_MINIMIZED = 1;

/// The window has been maximized.
const SIZE_MAXIMIZED = 2;

/// Message is sent to all pop-up windows when some other window has been
/// restored to its former size.
const SIZE_MAXSHOW = 3;

/// Message is sent to all pop-up windows when some other window is maximized.
const SIZE_MAXHIDE = 4;

// -----------------------------------------------------------------------------
// Window z-ordering constants
// -----------------------------------------------------------------------------

/// Places the window at the top of the Z order.
const HWND_TOP = 0;

/// Places the window at the bottom of the Z order. If the hWnd parameter
/// identifies a topmost window, the window loses its topmost status and is
/// placed at the bottom of all other windows.
const HWND_BOTTOM = 1;

/// Places the window above all non-topmost windows. The window maintains its
/// topmost position even when it is deactivated.
const HWND_TOPMOST = -1;

/// Places the window above all non-topmost windows (that is, behind all topmost
/// windows). This flag has no effect if the window is already a non-topmost
/// window.
const HWND_NOTOPMOST = -2;

/// A touch message is in the queue.
const QS_TOUCH = 0x0800;

/// A pointer message is in the queue.
const QS_POINTER = 0x1000;

/// Test the event-injected (from any process) flag.
const LLMHF_INJECTED = 0x00000001;

/// Test the event-injected (from a process running at lower integrity level)
/// flag.
const LLMHF_LOWER_IL_INJECTED = 0x00000002;

// -----------------------------------------------------------------------------
// Keystroke message flags
// -----------------------------------------------------------------------------

/// Manipulates the extended key flag.
const KF_EXTENDED = 0x0100;

/// Manipulates the dialog mode flag, which indicates whether a dialog box is
/// active.
const KF_DLGMODE = 0x0800;

/// Manipulates the menu mode flag, which indicates whether a menu is active.
const KF_MENUMODE = 0x1000;

/// Manipulates the context code flag.
const KF_ALTDOWN = 0x2000;

/// Manipulates the previous key state flag.
const KF_REPEAT = 0x4000;

/// Manipulates the transition state flag.
const KF_UP = 0x8000;
// -----------------------------------------------------------------------------
// Hit testing constants
// -----------------------------------------------------------------------------

/// On the screen background or on a dividing line between windows (same as
/// HTNOWHERE, except that the DefWindowProc function produces a system beep to
/// indicate an error).
const HTERROR = -2;

/// In a window currently covered by another window in the same thread (the
/// message will be sent to underlying windows in the same thread until one of
/// them returns a code that is not HTTRANSPARENT).
const HTTRANSPARENT = -1;

/// On the screen background or on a dividing line between windows.
const HTNOWHERE = 0;

/// In a client area.
const HTCLIENT = 1;

/// In a title bar.
const HTCAPTION = 2;

/// In a window menu or in a Close button in a child window.
const HTSYSMENU = 3;

/// In a size box (same as HTSIZE).
const HTGROWBOX = 4;

/// In a size box (same as HTGROWBOX).
const HTSIZE = HTGROWBOX;

/// In a menu.
const HTMENU = 5;

/// In a horizontal scroll bar.
const HTHSCROLL = 6;

/// In the vertical scroll bar.
const HTVSCROLL = 7;

/// In a Minimize button.
const HTMINBUTTON = 8;

/// In a Maximize button.
const HTMAXBUTTON = 9;

/// In the left border of a resizable window (the user can click the mouse to
/// resize the window horizontally).
const HTLEFT = 10;

/// In the right border of a resizable window (the user can click the mouse to
/// resize the window horizontally).
const HTRIGHT = 11;

/// In the upper-horizontal border of a window.
const HTTOP = 12;

/// In the upper-left corner of a window border.
const HTTOPLEFT = 13;

/// In the upper-right corner of a window border.
const HTTOPRIGHT = 14;

/// In the lower-horizontal border of a resizable window (the user can click the
/// mouse to resize the window vertically).
const HTBOTTOM = 15;

/// In the lower-left corner of a border of a resizable window (the user can
/// click the mouse to resize the window diagonally).
const HTBOTTOMLEFT = 16;

/// In the lower-right corner of a border of a resizable window (the user can
/// click the mouse to resize the window diagonally).
const HTBOTTOMRIGHT = 17;

/// In the border of a window that does not have a sizing border.
const HTBORDER = 18;

/// In a Minimize button.
const HTREDUCE = HTMINBUTTON;

/// In a Maximize button.
const HTZOOM = HTMAXBUTTON;

/// In a Close button.
const HTCLOSE = 20;

/// In a Help button.
const HTHELP = 21;

// -----------------------------------------------------------------------------
// System Command messages
// -----------------------------------------------------------------------------

/// Sizes the window.
const SC_SIZE = 0xF000;

/// Moves the window.
const SC_MOVE = 0xF010;

/// Minimizes the window.
const SC_MINIMIZE = 0xF020;

/// Maximizes the window.
const SC_MAXIMIZE = 0xF030;

/// Moves to the next window.
const SC_NEXTWINDOW = 0xF040;

/// Moves to the previous window.
const SC_PREVWINDOW = 0xF050;

/// Closes the window.
const SC_CLOSE = 0xF060;

/// Scrolls vertically.
const SC_VSCROLL = 0xF070;

/// Scrolls horizontally.
const SC_HSCROLL = 0xF080;

/// Retrieves the window menu as a result of a mouse click.
const SC_MOUSEMENU = 0xF090;

/// Retrieves the window menu as a result of a keystroke.
const SC_KEYMENU = 0xF100;

/// Restores the window to its normal position and size.
const SC_RESTORE = 0xF120;

/// Activates the Start menu.
const SC_TASKLIST = 0xF130;

/// Executes the screen saver application.
const SC_SCREENSAVE = 0xF140;

/// Activates the window associated with the application-specified hot key. The
/// lParam parameter identifies the window to activate.
const SC_HOTKEY = 0xF150;

/// Selects the default item; the user double-clicked the window menu.
const SC_DEFAULT = 0xF160;

/// Sets the state of the display. This command supports devices that have
/// power-saving features, such as a battery-powered personal computer.
const SC_MONITORPOWER = 0xF170;

/// Changes the cursor to a question mark with a pointer. If the user then
/// clicks a control in the dialog box, the control receives a WM_HELP message.
const SC_CONTEXTHELP = 0xF180;

/// Indicates whether the screen saver is secure.
const SCF_ISSECURE = 0x00000001;

// -----------------------------------------------------------------------------
// Up/Down Control styles
// -----------------------------------------------------------------------------

/// Causes the position to "wrap" if it is incremented or decremented beyond the
/// ending or beginning of the range.
const UDS_WRAP = 0x0001;

/// Causes the up-down control to set the text of the buddy window (using the
/// WM_SETTEXT message) when the position changes. The text consists of the
/// position formatted as a decimal or hexadecimal string.
const UDS_SETBUDDYINT = 0x0002;

/// Positions the up-down control next to the right edge of the buddy window.
/// The width of the buddy window is decreased to accommodate the width of the
/// up-down control.
const UDS_ALIGNRIGHT = 0x0004;

/// Positions the up-down control next to the left edge of the buddy window. The
/// buddy window is moved to the right, and its width is decreased to
/// accommodate the width of the up-down control.
const UDS_ALIGNLEFT = 0x0008;

/// Automatically selects the previous window in the z-order as the up-down
/// control's buddy window.
const UDS_AUTOBUDDY = 0x0010;

/// Causes the up-down control to increment and decrement the position when the
/// UP ARROW and DOWN ARROW keys are pressed.
const UDS_ARROWKEYS = 0x0020;

/// Causes the up-down control's arrows to point left and right instead of up
/// and down.
const UDS_HORZ = 0x0040;

/// Does not insert a thousands separator between every three decimal digits.
const UDS_NOTHOUSANDS = 0x0080;

/// Causes the control to exhibit "hot tracking" behavior. That is, it
/// highlights the UP ARROW and DOWN ARROW on the control as the pointer passes
/// over them.
const UDS_HOTTRACK = 0x0100;

// -----------------------------------------------------------------------------
// Progress Bar styles
// -----------------------------------------------------------------------------

/// The progress bar displays progress status in a smooth scrolling bar instead
/// of the default segmented bar.
const PBS_SMOOTH = 0x01;

/// The progress bar displays progress status vertically, from bottom to top.
const PBS_VERTICAL = 0x04;

/// Sets the minimum and maximum values for a progress bar and redraws the bar
/// to reflect the new range.
const PBM_SETRANGE = WM_USER + 1;

/// Sets the current position for a progress bar and redraws the bar to reflect
/// the new position.
const PBM_SETPOS = WM_USER + 2;

/// Advances the current position of a progress bar by a specified increment and
/// redraws the bar to reflect the new position.
const PBM_DELTAPOS = WM_USER + 3;

/// Specifies the step increment for a progress bar. The step increment is the
/// amount by which the progress bar increases its current position whenever it
/// receives a PBM_STEPIT message. By default, the step increment is set to 10.
const PBM_SETSTEP = WM_USER + 4;

/// Advances the current position for a progress bar by the step increment and
/// redraws the bar to reflect the new position. An application sets the step
/// increment by sending the PBM_SETSTEP message.
const PBM_STEPIT = WM_USER + 5;

/// Sets the minimum and maximum values for a progress bar to 32-bit values, and
/// redraws the bar to reflect the new range
const PBM_SETRANGE32 = WM_USER + 6;

/// Retrieves information about the current high and low limits of a given
/// progress bar control.
const PBM_GETRANGE = WM_USER + 7;

/// Retrieves the current position of the progress bar.
const PBM_GETPOS = WM_USER + 8;

/// Sets the color of the progress indicator bar in the progress bar control.
const PBM_SETBARCOLOR = WM_USER + 9;

/// Sets the background color in the progress bar.
const PBM_SETBKCOLOR = 0x2001;

/// The progress indicator does not grow in size but instead moves repeatedly
/// along the length of the bar, indicating activity without specifying what
/// proportion of the progress is complete.
const PBS_MARQUEE = 0x08;

/// Sets the progress bar to marquee mode. This causes the progress bar to move
/// like a marquee.
const PBM_SETMARQUEE = WM_USER + 10;

/// Determines the animation behavior that the progress bar should use when
/// moving backward (from a higher value to a lower value). If this is set, then
/// a "smooth" transition will occur, otherwise the control will "jump" to the
/// lower value.
const PBS_SMOOTHREVERSE = 0x10;

/// Retrieves the step increment from a progress bar. The step increment is the
/// amount by which the progress bar increases its current position whenever it
/// receives a PBM_STEPIT message. By default, the step increment is set to 10.
const PBM_GETSTEP = WM_USER + 13;

/// Gets the background color of the progress bar.
const PBM_GETBKCOLOR = WM_USER + 14;

/// Gets the color of the progress bar.
const PBM_GETBARCOLOR = WM_USER + 15;

/// Sets the state of the progress bar.
const PBM_SETSTATE = WM_USER + 16;

/// Gets the state of the progress bar.
const PBM_GETSTATE = WM_USER + 17;

/// In progress.
const PBST_NORMAL = 0x0001;

/// Error.
const PBST_ERROR = 0x0002;

/// Paused.
const PBST_PAUSED = 0x0003;

// -----------------------------------------------------------------------------
// Edit Control constants
// -----------------------------------------------------------------------------

/// Aligns text with the left margin.
const ES_LEFT = 0x0000;

/// Centers text in a single-line or multiline edit control.
const ES_CENTER = 0x0001;

/// Right-aligns text in a single-line or multiline edit control.
const ES_RIGHT = 0x0002;

/// Designates a multiline edit control. The default is single-line edit
/// control.
const ES_MULTILINE = 0x0004;

/// Converts all characters to uppercase as they are typed into the edit
/// control.
const ES_UPPERCASE = 0x0008;

/// Converts all characters to lowercase as they are typed into the edit
/// control.
const ES_LOWERCASE = 0x0010;

/// Displays an asterisk (*) for each character typed into the edit control.
/// This style is valid only for single-line edit controls.
const ES_PASSWORD = 0x0020;

/// Automatically scrolls text up one page when the user presses the ENTER key
/// on the last line.
const ES_AUTOVSCROLL = 0x0040;

/// Automatically scrolls text to the right by 10 characters when the user types
/// a character at the end of the line. When the user presses the ENTER key, the
/// control scrolls all text back to position zero.
const ES_AUTOHSCROLL = 0x0080;

/// Negates the default behavior for an edit control. The default behavior hides
/// the selection when the control loses the input focus and inverts the
/// selection when the control receives the input focus. If you specify
/// ES_NOHIDESEL, the selected text is inverted, even if the control does not
/// have the focus.
const ES_NOHIDESEL = 0x0100;

/// Converts text entered in the edit control. The text is converted from the
/// Windows character set to the OEM character set and then back to the Windows
/// character set. This ensures proper character conversion when the application
/// calls the CharToOem function to convert a Windows string in the edit control
/// to OEM characters. This style is most useful for edit controls that contain
/// file names that will be used on file systems that do not support Unicode.
const ES_OEMCONVERT = 0x0400;

/// Prevents the user from typing or editing text in the edit control.
const ES_READONLY = 0x0800;

/// Specifies that a carriage return be inserted when the user presses the ENTER
/// key while entering text into a multiline edit control in a dialog box. If
/// you do not specify this style, pressing the ENTER key has the same effect as
/// pressing the dialog box's default push button. This style has no effect on a
/// single-line edit control.
const ES_WANTRETURN = 0x1000;

/// Allows only digits to be entered into the edit control. Note that, even with
/// this set, it is still possible to paste non-digits into the edit control.
const ES_NUMBER = 0x2000;

// -----------------------------------------------------------------------------
// Edit control notifications
// -----------------------------------------------------------------------------

/// Sent when an edit control receives the keyboard focus.
const EN_SETFOCUS = 0x0100;

/// Sent when an edit control loses the keyboard focus.
const EN_KILLFOCUS = 0x0200;

/// Sent when the user has taken an action that may have altered text in an edit
/// control.
///
/// Unlike the EN_UPDATE notification code, this notification code is sent after
/// the system updates the screen.
const EN_CHANGE = 0x0300;

/// Sent when an edit control is about to redraw itself. This notification code
/// is sent after the control has formatted the text, but before it displays the
/// text. This makes it possible to resize the edit control window, if
/// necessary.
const EN_UPDATE = 0x0400;

/// Sent when an edit control cannot allocate enough memory to meet a specific
/// request.
const EN_ERRSPACE = 0x0500;

/// Sent when the current text insertion has exceeded the specified number of
/// characters for the edit control. The text insertion has been truncated.
const EN_MAXTEXT = 0x0501;

/// Sent when the user clicks an edit control's horizontal scroll bar.
const EN_HSCROLL = 0x0601;

/// Sent when the user clicks an edit control's vertical scroll bar or when the
/// user scrolls the mouse wheel over the edit control.
const EN_VSCROLL = 0x0602;

/// Sent when the user has changed the edit control direction to left-to-right.
const EN_ALIGN_LTR_EC = 0x0700;

/// Sent when the user has changed the edit control direction to right-to-left.
const EN_ALIGN_RTL_EC = 0x0701;

// -----------------------------------------------------------------------------
// Edit Control messages
// -----------------------------------------------------------------------------

/// Sets the left margin.
const EC_LEFTMARGIN = 0x0001;

/// Sets the right margin.
const EC_RIGHTMARGIN = 0x0002;

/// Rich edit controls: Sets the left and right margins to a narrow width
/// calculated using the text metrics of the control's current font.
///
/// If no font has been set for the control, the margins are set to zero. The
/// lParam parameter is ignored.
const EC_USEFONTINFO = 0xffff;

/// Gets the starting and ending character positions (in TCHARs) of the current
/// selection in an edit control.
///
/// You can send this message to either an edit control or a rich edit control.
const EM_GETSEL = 0x00B0;

/// Selects a range of characters in an edit control.
///
/// You can send this message to either an edit control or a rich edit control.
const EM_SETSEL = 0x00B1;

/// Gets the formatting rectangle of an edit control.
///
/// The formatting rectangle is the limiting rectangle into which the control
/// draws the text. The limiting rectangle is independent of the size of the
/// edit-control window. You can send this message to either an edit control or
/// a rich edit control.
const EM_GETRECT = 0x00B2;

/// Sets the formatting rectangle of a multiline edit control.
///
/// The formatting rectangle is the limiting rectangle into which the control
/// draws the text. The limiting rectangle is independent of the size of the
/// edit control window.
///
/// This message is processed only by multiline edit controls. You can send this
/// message to either an edit control or a rich edit control.
const EM_SETRECT = 0x00B3;

/// Sets the formatting rectangle of a multiline edit control.
///
/// The EM_SETRECTNP message is identical to the EM_SETRECT message, except that
/// EM_SETRECTNP does not redraw the edit control window.
///
/// The formatting rectangle is the limiting rectangle into which the control
/// draws the text. The limiting rectangle is independent of the size of the
/// edit control window.
///
/// This message is processed only by multiline edit controls. You can send this
/// message to either an edit control or a rich edit control.
const EM_SETRECTNP = 0x00B4;

/// Scrolls the text vertically in a multiline edit control.
///
/// This message is equivalent to sending a WM_VSCROLL message to the edit
/// control. You can send this message to either an edit control or a rich edit
/// control.
const EM_SCROLL = 0x00B5;

/// Scrolls the text in a multiline edit control.
const EM_LINESCROLL = 0x00B6;

/// Scrolls the caret into view in an edit control.
///
/// You can send this message to either an edit control or a rich edit control.
const EM_SCROLLCARET = 0x00B7;

/// Gets the state of an edit control's modification flag.
///
/// The flag indicates whether the contents of the edit control have been
/// modified. You can send this message to either an edit control or a rich edit
/// control.
const EM_GETMODIFY = 0x00B8;

/// Sets or clears the modification flag for an edit control.
///
/// The modification flag indicates whether the text within the edit control has
/// been modified. You can send this message to either an edit control or a rich
/// edit control.
const EM_SETMODIFY = 0x00B9;

/// Gets the number of lines in a multiline edit control.
///
/// You can send this message to either an edit control or a rich edit control.
const EM_GETLINECOUNT = 0x00BA;

/// Gets the character index of the first character of a specified line in a
/// multiline edit control.
///
/// A character index is the zero-based index of the character from the
/// beginning of the edit control. You can send this message to either an edit
/// control or a rich edit control.
const EM_LINEINDEX = 0x00BB;

/// Sets the handle of the memory that will be used by a multiline edit control.
const EM_SETHANDLE = 0x00BC;

/// Gets a handle of the memory currently allocated for a multiline edit
/// control's text.
const EM_GETHANDLE = 0x00BD;

/// Gets the position of the scroll box (thumb) in the vertical scroll bar of a
/// multiline edit control.
///
/// You can send this message to either an edit control or a rich edit control.
const EM_GETTHUMB = 0x00BE;

/// Retrieves the length, in characters, of a line in an edit control.
///
/// You can send this message to either an edit control or a rich edit control.
const EM_LINELENGTH = 0x00C1;

/// Replaces the selected text in an edit control or a rich edit control with
/// the specified text.
const EM_REPLACESEL = 0x00C2;

/// Copies a line of text from an edit control and places it in a specified
/// buffer.
///
/// You can send this message to either an edit control or a rich edit control.
const EM_GETLINE = 0x00C4;

/// Sets the text limit of an edit control.
///
/// The text limit is the maximum amount
/// of text, in TCHARs, that the user can type into the edit control. You can
/// send this message to either an edit control or a rich edit control.
const EM_LIMITTEXT = 0x00C5;

/// Determines whether there are any actions in an edit control's undo queue.
///
/// You can send this message to either an edit control or a rich edit control.
const EM_CANUNDO = 0x00C6;

/// This message undoes the last edit control operation in the control's undo
/// queue.
///
/// You can send this message to either an edit control or a rich edit control.
const EM_UNDO = 0x00C7;

/// Sets a flag that determines whether a multiline edit control includes soft
/// line-break characters.
///
/// A soft line break consists of two carriage returns and a line feed and is
/// inserted at the end of a line that is broken because of wordwrapping.
const EM_FMTLINES = 0x00C8;

/// Gets the index of the line that contains the specified character index in a
/// multiline edit control.
///
/// A character index is the zero-based index of the character from the
/// beginning of the edit control. You can send this message to either an edit
/// control or a rich edit control.
const EM_LINEFROMCHAR = 0x00C9;

/// The EM_SETTABSTOPS message sets the tab stops in a multiline edit control.
/// When text is copied to the control, any tab character in the text causes
/// space to be generated up to the next tab stop.
///
/// This message is processed only by multiline edit controls. You can send this
/// message to either an edit control or a rich edit control.
const EM_SETTABSTOPS = 0x00CB;

/// Sets or removes the password character for an edit control.
///
/// When a password character is set, that character is displayed in place of
/// the characters typed by the user. You can send this message to either an
/// edit control or a rich edit control.
const EM_SETPASSWORDCHAR = 0x00CC;

/// Resets the undo flag of an edit control.
///
/// The undo flag is set whenever an
/// operation within the edit control can be undone. You can send this message
/// to either an edit control or a rich edit control.
const EM_EMPTYUNDOBUFFER = 0x00CD;

/// Gets the zero-based index of the uppermost visible line in a multiline edit
/// control.
///
/// You can send this message to either an edit control or a rich edit control.
const EM_GETFIRSTVISIBLELINE = 0x00CE;

/// Sets or removes the read-only style (ES_READONLY) of an edit control.
///
/// You can send this message to either an edit control or a rich edit control.
const EM_SETREADONLY = 0x00CF;

/// Replaces an edit control's default Wordwrap function with an
/// application-defined Wordwrap function.
///
/// You can send this message to either an edit control or a rich edit control.
const EM_SETWORDBREAKPROC = 0x00D0;

/// Gets the address of the current Wordwrap function.
///
/// You can send this message to either an edit control or a rich edit control.
const EM_GETWORDBREAKPROC = 0x00D1;

/// Gets the password character that an edit control displays when the user
/// enters text.
///
/// You can send this message to either an edit control or a rich edit control.
const EM_GETPASSWORDCHAR = 0x00D2;

/// Sets the widths of the left and right margins for an edit control.
///
/// The message redraws the control to reflect the new margins. You can send
/// this message to either an edit control or a rich edit control.
const EM_SETMARGINS = 0x00D3;

/// Gets the widths of the left and right margins for an edit control.
const EM_GETMARGINS = 0x00D4;

/// Sets the text limit of an edit control.
///
/// The text limit is the maximum amount of text, in TCHARs, that the user can
/// type into the edit control. You can send this message to either an edit
/// control or a rich edit control.
const EM_SETLIMITTEXT = EM_LIMITTEXT;

/// Gets the current text limit for an edit control.
///
/// You can send this message to either an edit control or a rich edit control.
const EM_GETLIMITTEXT = 0x00D5;

/// Retrieves the client area coordinates of a specified character in an edit
/// control.
///
/// You can send this message to either an edit control or a rich edit control.
const EM_POSFROMCHAR = 0x00D6;

/// Gets information about the character closest to a specified point in the
/// client area of an edit control.
///
/// You can send this message to either an edit control or a rich edit control.
const EM_CHARFROMPOS = 0x00D7;

/// Sets the status flags that determine how an edit control interacts with the
/// Input Method Editor (IME).
const EM_SETIMESTATUS = 0x00D8;

/// Gets a set of status flags that indicate how the edit control interacts with
/// the Input Method Editor (IME).
const EM_GETIMESTATUS = 0x00D9;

/// Allows enterprise data protection support and paste notifications to be set.
const EM_ENABLEFEATURE = 0x00DA;

// -----------------------------------------------------------------------------
// Button Style constants
// -----------------------------------------------------------------------------

/// Creates a push button that posts a WM_COMMAND message to the owner window
/// when the user selects the button.
const BS_PUSHBUTTON = 0x00000000;

/// Creates a push button that behaves like a BS_PUSHBUTTON style button, but
/// has a distinct appearance. If the button is in a dialog box, the user can
/// select the button by pressing the ENTER key, even when the button does not
/// have the input focus. This style is useful for enabling the user to quickly
/// select the most likely (default) option.
const BS_DEFPUSHBUTTON = 0x00000001;

/// Creates a small, empty check box with text. By default, the text is
/// displayed to the right of the check box. To display the text to the left of
/// the check box, combine this flag with the BS_LEFTTEXT style (or with the
/// equivalent BS_RIGHTBUTTON style).
const BS_CHECKBOX = 0x00000002;

/// Creates a button that is the same as a check box, except that the check
/// state automatically toggles between checked and cleared each time the user
/// selects the check box.
const BS_AUTOCHECKBOX = 0x00000003;

/// Creates a small circle with text. By default, the text is displayed to the
/// right of the circle. To display the text to the left of the circle, combine
/// this flag with the BS_LEFTTEXT style (or with the equivalent BS_RIGHTBUTTON
/// style). Use radio buttons for groups of related, but mutually exclusive
/// choices.
const BS_RADIOBUTTON = 0x00000004;

/// Creates a button that is the same as a check box, except that the box can be
/// grayed as well as checked or cleared. Use the grayed state to show that the
/// state of the check box is not determined.
const BS_3STATE = 0x00000005;

/// Creates a button that is the same as a three-state check box, except that
/// the box changes its state when the user selects it. The state cycles through
/// checked, indeterminate, and cleared.
const BS_AUTO3STATE = 0x00000006;

/// Creates a rectangle in which other controls can be grouped. Any text
/// associated with this style is displayed in the rectangle's upper left
/// corner.
const BS_GROUPBOX = 0x00000007;

/// Obsolete, but provided for compatibility with 16-bit versions of Windows.
/// Applications should use BS_OWNERDRAW instead.
const BS_USERBUTTON = 0x00000008;

/// Creates a button that is the same as a radio button, except that when the
/// user selects it, the system automatically sets the button's check state to
/// checked and automatically sets the check state for all other buttons in the
/// same group to cleared.
const BS_AUTORADIOBUTTON = 0x00000009;

/// Defines a push-box control, which is identical to a PUSHBUTTON, except that
/// it does not display a button face or frame; only the text appears.
const BS_PUSHBOX = 0x0000000A;

/// Creates an owner-drawn button. The owner window receives a WM_DRAWITEM
/// message when a visual aspect of the button has changed. Do not combine the
/// BS_OWNERDRAW style with any other button styles.
const BS_OWNERDRAW = 0x0000000B;

/// Do not use this style. A composite style bit that results from using the OR
/// operator on BS_* style bits. It can be used to mask out valid BS_* bits from
/// a given bitmask. Note that this is out of date and does not correctly
/// include all valid styles. Thus, you should not use this style.
const BS_TYPEMASK = 0x0000000F;

/// Places text on the left side of the radio button or check box when combined
/// with a radio button or check box style. Same as the BS_RIGHTBUTTON style.
const BS_LEFTTEXT = 0x00000020;

/// Specifies that the button displays text.
const BS_TEXT = 0x00000000;

/// Specifies that the button displays an icon. See the Remarks section for its
/// interaction with BS_BITMAP.
const BS_ICON = 0x00000040;

/// Specifies that the button displays a bitmap. See the Remarks section for its
/// interaction with BS_ICON.
const BS_BITMAP = 0x00000080;

/// Left-justifies the text in the button rectangle. However, if the button is a
/// check box or radio button that does not have the BS_RIGHTBUTTON style, the
/// text is left justified on the right side of the check box or radio button.
const BS_LEFT = 0x00000100;

/// Right-justifies text in the button rectangle. However, if the button is a
/// check box or radio button that does not have the BS_RIGHTBUTTON style, the
/// text is right justified on the right side of the check box or radio button.
const BS_RIGHT = 0x00000200;

/// Centers text horizontally in the button rectangle.
const BS_CENTER = 0x00000300;

/// Places text at the top of the button rectangle.
const BS_TOP = 0x00000400;

/// Places text at the bottom of the button rectangle.
const BS_BOTTOM = 0x00000800;

/// Places text in the middle (vertically) of the button rectangle.
const BS_VCENTER = 0x00000C00;

/// Makes a button (such as a check box, three-state check box, or radio button)
/// look and act like a push button. The button looks raised when it isn't
/// pushed or checked, and sunken when it is pushed or checked.
const BS_PUSHLIKE = 0x00001000;

/// Wraps the button text to multiple lines if the text string is too long to
/// fit on a single line in the button rectangle.
const BS_MULTILINE = 0x00002000;

/// Enables a button to send BN_KILLFOCUS and BN_SETFOCUS notification codes to
/// its parent window. Note that buttons send the BN_CLICKED notification code
/// regardless of whether it has this style. To get BN_DBLCLK notification
/// codes, the button must have the BS_RADIOBUTTON or BS_OWNERDRAW style.
const BS_NOTIFY = 0x00004000;

/// Specifies that the button is two-dimensional; it does not use the default
/// shading to create a 3-D image.
const BS_FLAT = 0x00008000;

/// Positions a radio button's circle or a check box's square on the right side
/// of the button rectangle. Same as the BS_LEFTTEXT style.
const BS_RIGHTBUTTON = BS_LEFTTEXT;

/// @nodoc
const CW_USEDEFAULT = 0x80000000;

// -----------------------------------------------------------------------------
// Dialog Box styles
// -----------------------------------------------------------------------------

/// Indicates that the coordinates of the dialog box are screen coordinates. If
/// this style is not specified, the coordinates are client coordinates.
const DS_ABSALIGN = 0x01;

/// Obsolete. Do not use.
const DS_SYSMODAL = 0x02;

/// Obsolete. Do not use.
const DS_LOCALEDIT = 0x20;

/// Indicates that the header of the dialog box template (either standard or
/// extended) contains additional data specifying the font to use for text in
/// the client area and controls of the dialog box.
const DS_SETFONT = 0x40;

/// Creates a dialog box with a modal dialog-box frame that can be combined with
/// a title bar and window menu by specifying the WS_CAPTION and WS_SYSMENU
/// styles.
const DS_MODALFRAME = 0x80;

/// Suppresses WM_ENTERIDLE messages that the system would otherwise send to the
/// owner of the dialog box while the dialog box is displayed.
const DS_NOIDLEMSG = 0x100;

/// Causes the system to use the SetForegroundWindow function to bring the
/// dialog box to the foreground. This style is useful for modal dialog boxes
/// that require immediate attention from the user regardless of whether the
/// owner window is the foreground window.
const DS_SETFOREGROUND = 0x200;

/// Obsolete. Do not use.
const DS_3DLOOK = 0x0004;

/// Causes the dialog box to use the monospace SYSTEM_FIXED_FONT instead of the
/// default SYSTEM_FONT.
const DS_FIXEDSYS = 0x0008;

/// Creates the dialog box even if errors occur for example, if a child window
/// cannot be created or if the system cannot create a special data segment for
/// an edit control.
const DS_NOFAILCREATE = 0x0010;

/// Creates a dialog box that works well as a child window of another dialog
/// box, much like a page in a property sheet. This style allows the user to tab
/// among the control windows of a child dialog box, use its accelerator keys,
/// and so on.
const DS_CONTROL = 0x0400;

/// Centers the dialog box in the working area of the monitor that contains the
/// owner window. If no owner window is specified, the dialog box is centered in
/// the working area of a monitor determined by the system. The working area is
/// the area not obscured by the taskbar or any appbars.
const DS_CENTER = 0x0800;

/// Centers the dialog box on the mouse cursor.
const DS_CENTERMOUSE = 0x1000;

/// Includes a question mark in the title bar of the dialog box. When the user
/// clicks the question mark, the cursor changes to a question mark with a
/// pointer.
const DS_CONTEXTHELP = 0x2000;

/// Indicates that the dialog box should use the system font. The typeface
/// member of the extended dialog box template must be set to MS Shell Dlg.
/// Otherwise, this style has no effect.
const DS_SHELLFONT = DS_SETFONT | DS_FIXEDSYS;

/// Return only when the object is signaled.
const INFINITE = 0xFFFFFFFF;

/// Indicates how the activation context is to be deactivated.
///
/// If this value is set and the cookie specified in the ulCookie parameter is
/// in the top frame of the activation stack, the function returns an
/// ERROR_INVALID_PARAMETER error code. Call GetLastError to obtain this code.
///
/// If this value is set and the cookie is not on the activation stack, a
/// STATUS_SXS_INVALID_DEACTIVATION exception will be thrown.
///
/// If this value is set and the cookie is in a lower frame of the activation
/// stack, all of the frames down to and including the frame the cookie is in is
/// popped from the stack.
const DEACTIVATE_ACTCTX_FLAG_FORCE_EARLY_DEACTIVATION = 1;

// -----------------------------------------------------------------------------
// COM Constants
// -----------------------------------------------------------------------------

/// Operation successful
const S_OK = 0;

/// Operation successful
///
/// Some methods use S_FALSE to mean, roughly, a negative condition that is not
/// a failure. It can also indicate a "no-op"—the method succeeded, but had no
/// effect. For example, the CoInitializeEx function returns S_FALSE if you call
/// it a second time from the same thread. If you need to differentiate between
/// S_OK and S_FALSE in your code, you should test the value directly, but still
/// use FAILED or SUCCEEDED to handle the remaining cases.
const S_FALSE = 1;

/// Unexpected failure
final E_UNEXPECTED = 0x8000FFFF.toSigned(32);

/// Not implemented
final E_NOTIMPL = 0x80004001.toSigned(32);

/// Failed to allocate necessary memory
final E_OUTOFMEMORY = 0x8007000E.toSigned(32);

/// One or more arguments are not valid
final E_INVALIDARG = 0x80070057.toSigned(32);

/// No such interface supported
final E_NOINTERFACE = 0x80004002.toSigned(32);

/// Pointer that is not valid
final E_POINTER = 0x80004003.toSigned(32);

/// Handle that is not valid
final E_HANDLE = 0x80070006.toSigned(32);

/// Operation aborted
final E_ABORT = 0x80004004.toSigned(32);

/// Unspecified failure
final E_FAIL = 0x80004005.toSigned(32);

/// General access denied error
final E_ACCESSDENIED = 0x80070005.toSigned(32);

/// The data necessary to complete this operation is not yet available.
final E_PENDING = 0x8000000A.toSigned(32);

/// typedef short VARIANT_BOOL: -1 == TRUE
final VARIANT_TRUE = -1;

/// typedef short VARIANT_BOOL: 0 == FALSE
final VARIANT_FALSE = 0;

/// Prevents the function from attempting to coerce an object to a fundamental
/// type by getting the Value property. Applications should set this flag only
/// if necessary, because it makes their behavior inconsistent with other
/// applications.
const VARIANT_NOVALUEPROP = 0x01;

/// Converts a VT_BOOL value to a string containing either "True" or "False".
const VARIANT_ALPHABOOL = 0x02;

/// For conversions to or from VT_BSTR, passes LOCALE_NOUSEROVERRIDE to the core
/// coercion routines.
const VARIANT_NOUSEROVERRIDE = 0x04;

/// For conversions from VT_BOOL to VT_BSTR and back, uses the language
/// specified by the locale in use on the local computer.
const VARIANT_LOCALBOOL = 0x10;

// -----------------------------------------------------------------------------
// Memory constants
// -----------------------------------------------------------------------------

/// Reserves an address range that can be used to map Address Windowing
/// Extensions (AWE) pages.
const MEM_TOP_DOWN = 0x00100000;

/// Causes the system to track pages that are written to in the allocated
/// region.
const MEM_WRITE_WATCH = 0x00200000;

/// Reserves an address range that can be used to map Address Windowing
/// Extensions (AWE) pages.
const MEM_PHYSICAL = 0x00400000;

/// To coalesce two adjacent placeholders, specify MEM_RELEASE |
/// MEM_COALESCE_PLACEHOLDERS. When you coalesce placeholders, lpAddress and
/// dwSize must exactly match those of the placeholder.
const MEM_COALESCE_PLACEHOLDERS = 0x00000001;

// -----------------------------------------------------------------------------
// Volume information constants
// -----------------------------------------------------------------------------

/// The file system supports case-sensitive file names.
const FILE_CASE_SENSITIVE_SEARCH = 0x00000001;

/// The file system supports preserved case of file names when it places a
/// name on disk.
const FILE_CASE_PRESERVED_NAMES = 0x00000002;

/// The file system supports Unicode in file names as they appear on disk.
const FILE_UNICODE_ON_DISK = 0x00000004;

/// The file system preserves and enforces access control lists (ACL). For
/// example, the NTFS file system preserves and enforces ACLs, and the FAT file
/// system does not.
const FILE_PERSISTENT_ACLS = 0x00000008;

/// The file system supports file-based compression.
const FILE_FILE_COMPRESSION = 0x00000010;

/// The file system supports disk quotas.
const FILE_VOLUME_QUOTAS = 0x00000020;

/// The file system supports sparse files.
const FILE_SUPPORTS_SPARSE_FILES = 0x00000040;

/// The file system supports reparse points.
const FILE_SUPPORTS_REPARSE_POINTS = 0x00000080;

/// The file system supports remote storage.
const FILE_SUPPORTS_REMOTE_STORAGE = 0x00000100;

/// On a successful cleanup operation, the file system returns information that
/// describes additional actions taken during cleanup, such as deleting the
/// file. File system filters can examine this information in their post-cleanup
/// callback.
const FILE_RETURNS_CLEANUP_RESULT_INFO = 0x00000200;

/// The file system supports POSIX-style delete and rename operations.
const FILE_SUPPORTS_POSIX_UNLINK_RENAME = 0x00000400;

/// The file system is a compressed volume. This does not affect how data is
/// transferred over the network.
const FILE_VOLUME_IS_COMPRESSED = 0x00008000;

/// The specified volume supports object identifiers.
const FILE_SUPPORTS_OBJECT_IDS = 0x00010000;

/// The file system supports the Encrypted File System (EFS).
const FILE_SUPPORTS_ENCRYPTION = 0x00020000;

/// The file system supports named data streams for a file.
const FILE_NAMED_STREAMS = 0x00040000;

/// The specified volume is read-only.
const FILE_READ_ONLY_VOLUME = 0x00080000;

/// The specified volume can be written to one time only. The write must be
/// performed in sequential order.
const FILE_SEQUENTIAL_WRITE_ONCE = 0x00100000;

/// The file system supports transaction processing.
const FILE_SUPPORTS_TRANSACTIONS = 0x00200000;

/// The file system supports direct links to other devices and partitions.
const FILE_SUPPORTS_HARD_LINKS = 0x00400000;

/// The specified volume supports extended attributes. An extended attribute is
/// a piece of application-specific metadata that an application can associate
/// with a file and is not part of the file's data.
const FILE_SUPPORTS_EXTENDED_ATTRIBUTES = 0x00800000;

/// The file system supports open by FileID.
const FILE_SUPPORTS_OPEN_BY_FILE_ID = 0x01000000;

/// The specified volume supports update sequence number (USN) journals.
const FILE_SUPPORTS_USN_JOURNAL = 0x02000000;

/// The file system supports integrity streams.
const FILE_SUPPORTS_INTEGRITY_STREAMS = 0x04000000;

/// The file system supports block cloning, that is, sharing logical clusters
/// between files on the same volume. The file system reallocates on writes to
/// shared clusters.
const FILE_SUPPORTS_BLOCK_REFCOUNTING = 0x08000000;

/// The file system tracks whether each cluster of a file contains valid data
/// (either from explicit file writes or automatic zeros) or invalid data (has
/// not yet been written to or zeroed). File systems that use sparse valid data
/// length (VDL) do not store a valid data length and do not require that valid
/// data be contiguous within a file.
const FILE_SUPPORTS_SPARSE_VDL = 0x10000000;

/// The specified volume is a direct access (DAX) volume.
const FILE_DAX_VOLUME = 0x20000000;

/// The file system supports ghosting.
const FILE_SUPPORTS_GHOSTING = 0x40000000;

// -----------------------------------------------------------------------------
// Multimedia constants
// -----------------------------------------------------------------------------
/// Time in milliseconds.
const TIME_MS = 0x0001;

/// Number of waveform-audio samples.
const TIME_SAMPLES = 0x0002;

/// Current byte offset from beginning of the file.
const TIME_BYTES = 0x0004;

/// SMPTE (Society of Motion Picture and Television Engineers) time.
const TIME_SMPTE = 0x0008;

/// MIDI time.
const TIME_MIDI = 0x0010;

/// Ticks within a MIDI stream.
const TIME_TICKS = 0x0020;

/// The function queries the device to determine whether it supports the given
/// format, but it does not open the device.
const WAVE_FORMAT_QUERY = 0x0001;

/// If this flag is specified, a synchronous waveform-audio device can be
/// opened. If this flag is not specified while opening a synchronous driver,
/// the device will fail to open.
const WAVE_ALLOWSYNC = 0x0002;

/// If this flag is specified, the uDeviceID parameter specifies a
/// waveform-audio device to be mapped to by the wave mapper.
const WAVE_MAPPED = 0x0004;

/// If this flag is specified, the ACM driver does not perform conversions on
/// the audio data.
const WAVE_FORMAT_DIRECT = 0x0008;

/// If this flag is specified and the uDeviceID parameter is WAVE_MAPPER, the
/// function opens the default communication device.
const WAVE_MAPPED_DEFAULT_COMMUNICATION_DEVICE = 0x0010;

// -----------------------------------------------------------------------------
// Layered Window Attributes constants
// -----------------------------------------------------------------------------

// -----------------------------------------------------------------------------
// Magnifier constants
// -----------------------------------------------------------------------------

/// Displays the magnified system cursor along with the magnified screen
/// content.
const MS_SHOWMAGNIFIEDCURSOR = 0x0001;

/// Clips the area of the magnifier window that surrounds the system cursor.
/// This style enables the user to see screen content that is behind the
/// magnifier window.
const MS_CLIPAROUNDCURSOR = 0x0002;

/// Displays the magnified screen content using inverted colors.
const MS_INVERTCOLORS = 0x0004;

// -----------------------------------------------------------------------------
// Multimedia Extensions messages
// -----------------------------------------------------------------------------

/// The MM_JOY1MOVE message notifies the window that has captured joystick
/// JOYSTICKID1 that the joystick position has changed.
const MM_JOY1MOVE = 0x3A0;

/// The MM_JOY2MOVE message notifies the window that has captured joystick
/// JOYSTICKID2 that the joystick position has changed.
const MM_JOY2MOVE = 0x3A1;

/// The MM_JOY1ZMOVE message notifies the window that has captured joystick
/// JOYSTICKID1 that the joystick position on the z-axis has changed.
const MM_JOY1ZMOVE = 0x3A2;

/// The MM_JOY2ZMOVE message notifies the window that has captured joystick
/// JOYSTICKID2 that the joystick position on the z-axis has changed.
const MM_JOY2ZMOVE = 0x3A3;

/// The MM_JOY1BUTTONDOWN message notifies the window that has captured joystick
/// JOYSTICKID1 that a button has been pressed.
const MM_JOY1BUTTONDOWN = 0x3B5;

/// The MM_JOY2BUTTONDOWN message notifies the window that has captured joystick
/// JOYSTICKID2 that a button has been pressed.
const MM_JOY2BUTTONDOWN = 0x3B6;

/// The MM_JOY1BUTTONUP message notifies the window that has captured joystick
/// JOYSTICKID1 that a button has been released.
const MM_JOY1BUTTONUP = 0x3B7;

/// The MM_JOY2BUTTONUP message notifies the window that has captured joystick
/// JOYSTICKID2 that a button has been released.
const MM_JOY2BUTTONUP = 0x3B8;

/// The MM_MCINOTIFY message notifies an application that an MCI device has
/// completed an operation. MCI devices send this message only when the
/// MCI_NOTIFY flag is used.
const MM_MCINOTIFY = 0x3B9;

/// The MM_WOM_OPEN message is sent to a window when the given waveform-audio
/// output device is opened.
const MM_WOM_OPEN = 0x3BB;

/// The MM_WOM_CLOSE message is sent to a window when a waveform-audio output
/// device is closed. The device handle is no longer valid after this message
/// has been sent.
const MM_WOM_CLOSE = 0x3BC;

/// The MM_WOM_DONE message is sent to a window when the given output buffer is
/// being returned to the application. Buffers are returned to the application
/// when they have been played, or as the result of a call to the waveOutReset
/// function.
const MM_WOM_DONE = 0x3BD;

/// The MM_WIM_OPEN message is sent to a window when a waveform-audio input
/// device is opened.
const MM_WIM_OPEN = 0x3BE;

/// The MM_WIM_CLOSE message is sent to a window when a waveform-audio input
/// device is closed. The device handle is no longer valid after this message
/// has been sent.
const MM_WIM_CLOSE = 0x3BF;

/// The MM_WIM_DATA message is sent to a window when waveform-audio data is
/// present in the input buffer and the buffer is being returned to the
/// application. The message can be sent either when the buffer is full or after
/// the waveInReset function is called.
const MM_WIM_DATA = 0x3C0;

/// The MM_MIM_OPEN message is sent to a window when a MIDI input device is
/// opened.
const MM_MIM_OPEN = 0x3C1;

/// The MM_MIM_CLOSE message is sent to a window when a MIDI input device is
/// closed.
const MM_MIM_CLOSE = 0x3C2;

/// The MM_MIM_DATA message is sent to a window when a complete MIDI message is
/// received by a MIDI input device.
const MM_MIM_DATA = 0x3C3;

/// The MM_MIM_LONGDATA message is sent to a window when either a complete MIDI
/// system-exclusive message is received or when a buffer has been filled with
/// system-exclusive data.
const MM_MIM_LONGDATA = 0x3C4;

/// The MM_MIM_ERROR message is sent to a window when an invalid MIDI message is
/// received.
const MM_MIM_ERROR = 0x3C5;

/// The MM_MIM_LONGERROR message is sent to a window when an invalid or
/// incomplete MIDI system-exclusive message is received.
const MM_MIM_LONGERROR = 0x3C6;

/// The MM_MOM_OPEN message is sent to a window when a MIDI output device is
/// opened.
const MM_MOM_OPEN = 0x3C7;

/// The MM_MOM_CLOSE message is sent to a window when a MIDI output device is
/// closed.
const MM_MOM_CLOSE = 0x3C8;

/// The MM_MOM_DONE message is sent to a window when the specified MIDI
/// system-exclusive or stream buffer has been played and is being returned to
/// the application.
const MM_MOM_DONE = 0x3C9;

/// The MM_MOM_POSITIONCB message is sent to a window when an MEVT_F_CALLBACK
/// event is reached in the MIDI output stream.
const MM_MOM_POSITIONCB = 0x3CA;

/// The MM_MCISIGNAL message is sent to a window to notify an application that
/// an MCI device has reached a position defined in a previous signal (
/// MCI_SIGNAL) command.
const MM_MCISIGNAL = 0x3CB;

/// The MM_MIM_MOREDATA message is sent to a callback window when a MIDI message
/// is received by a MIDI input device but the application is not processing
/// MIM_DATA messages fast enough to keep up with the input device driver. The
/// window receives this message only when the application specifies
/// MIDI_IO_STATUS in the call to the midiInOpen function.
const MM_MIM_MOREDATA = 0x3CC;

/// The MM_MIXM_LINE_CHANGE message is sent by a mixer device to notify an
/// application that the state of an audio line on the specified device has
/// changed. The application should refresh its display and cached values for
/// the specified audio line.
const MM_MIXM_LINE_CHANGE = 0x3D0;

/// The MM_MIXM_CONTROL_CHANGE message is sent by a mixer device to notify an
/// application that the state of a control associated with an audio line has
/// changed. The application should refresh its display and cached values for
/// the specified control.
const MM_MIXM_CONTROL_CHANGE = 0x3D1;

/// The MIM_OPEN message is sent to a MIDI input callback function when a MIDI
/// input device is opened.
const MIM_OPEN = MM_MIM_OPEN;

/// The MIM_CLOSE message is sent to a MIDI input callback function when a MIDI
/// input device is closed.
const MIM_CLOSE = MM_MIM_CLOSE;

/// The MIM_DATA message is sent to a MIDI input callback function when a MIDI
/// message is received by a MIDI input device.
const MIM_DATA = MM_MIM_DATA;

/// The MIM_LONGDATA message is sent to a MIDI input callback function when a
/// system-exclusive buffer has been filled with data and is being returned to
/// the application.
const MIM_LONGDATA = MM_MIM_LONGDATA;

/// The MIM_ERROR message is sent to a MIDI input callback function when an
/// invalid MIDI message is received.
const MIM_ERROR = MM_MIM_ERROR;

/// The MIM_LONGERROR message is sent to a MIDI input callback function when an
/// invalid or incomplete MIDI system-exclusive message is received.
const MIM_LONGERROR = MM_MIM_LONGERROR;

/// The MOM_OPEN message is sent to a MIDI output callback function when a MIDI
/// output device is opened.
const MOM_OPEN = MM_MOM_OPEN;

/// The MOM_CLOSE message is sent to a MIDI output callback function when a MIDI
/// output device is closed.
const MOM_CLOSE = MM_MOM_CLOSE;

/// The MOM_DONE message is sent to a MIDI output callback function when the
/// specified system-exclusive or stream buffer has been played and is being
/// returned to the application.
const MOM_DONE = MM_MOM_DONE;

/// The MIM_MOREDATA message is sent to a MIDI input callback function when a
/// MIDI message is received by a MIDI input device but the application is not
/// processing MIM_DATA messages fast enough to keep up with the input device
/// driver. The callback function receives this message only when the
/// application specifies MIDI_IO_STATUS in the call to the midiInOpen function.
const MIM_MOREDATA = MM_MIM_MOREDATA;

/// The MOM_POSITION message is sent when an MEVT_F_CALLBACK event is reached in
/// the MIDI output stream.
const MOM_POSITIONCB = MM_MOM_POSITIONCB;

// -----------------------------------------------------------------------------
// Monitor Configuration constants & enumerations
// -----------------------------------------------------------------------------

const GUID_CLASS_MONITOR = '{4d36e96e-e325-11ce-bfc1-08002be10318}';

/// This is the primary display monitor.
const MONITORINFOF_PRIMARY = 0x00000001;

/// DPI unaware. This window does not scale for DPI changes and is always
/// assumed to have a scale factor of 100% (96 DPI). It will be automatically
/// scaled by the system on any other DPI setting.
const DPI_AWARENESS_CONTEXT_UNAWARE = -1;

/// System DPI aware. This window does not scale for DPI changes. It will query
/// for the DPI once and use that value for the lifetime of the process. If the
/// DPI changes, the process will not adjust to the new DPI value. It will be
/// automatically scaled up or down by the system when the DPI changes from the
/// system value.
const DPI_AWARENESS_CONTEXT_SYSTEM_AWARE = -2;

/// Per monitor DPI aware. This window checks for the DPI when it is created and
/// adjusts the scale factor whenever the DPI changes. These processes are not
/// automatically scaled by the system.
const DPI_AWARENESS_CONTEXT_PER_MONITOR_AWARE = -3;

/// Also known as Per Monitor v2. An advancement over the original per-monitor
/// DPI awareness mode, which enables applications to access new DPI-related
/// scaling behaviors on a per top-level window basis.
///
/// Per Monitor v2 was made available in the Creators Update of Windows 10, and
/// is not available on earlier versions of the operating system.
const DPI_AWARENESS_CONTEXT_PER_MONITOR_AWARE_V2 = -4;

/// DPI unaware with improved quality of GDI-based content. This mode behaves
/// similarly to DPI_AWARENESS_CONTEXT_UNAWARE, but also enables the system to
/// automatically improve the rendering quality of text and other GDI-based
/// primitives when the window is displayed on a high-DPI monitor.
///
/// DPI_AWARENESS_CONTEXT_UNAWARE_GDISCALED was introduced in the October 2018
/// update of Windows 10 (also known as version 1809).
const DPI_AWARENESS_CONTEXT_UNAWARE_GDISCALED = -5;

// -----------------------------------------------------------------------------
// Window Display Affinity constants
// -----------------------------------------------------------------------------

/// Imposes no restrictions on where the window can be displayed.
const WDA_NONE = 0x00000000;

/// The window content is displayed only on a monitor. Everywhere else, the
/// window appears with no content.
const WDA_MONITOR = 0x00000001;

/// The window is displayed only on a monitor. Everywhere else, the window does
/// not appear at all. One use for this affinity is for windows that show video
/// recording controls, so that the controls are not included in the capture.
const WDA_EXCLUDEFROMCAPTURE = 0x00000011;

// -----------------------------------------------------------------------------
// Display device constants
// -----------------------------------------------------------------------------

/// DISPLAY_DEVICE_ACTIVE specifies whether a monitor is presented as being "on"
/// by the respective GDI view.
const DISPLAY_DEVICE_ACTIVE = 0x00000001;

/// The primary desktop is on the device. For a system with a single display
/// card, this is always set. For a system with multiple display cards, only one
/// device can have this set.
const DISPLAY_DEVICE_PRIMARY_DEVICE = 0x00000004;

/// Represents a pseudo device used to mirror application drawing for remoting
/// or other purposes. An invisible pseudo monitor is associated with this
/// device. For example, NetMeeting uses it. Note that GetSystemMetrics
/// (SM_MONITORS) only accounts for visible display monitors.
const DISPLAY_DEVICE_MIRRORING_DRIVER = 0x00000008;

/// The device is VGA compatible.
const DISPLAY_DEVICE_VGA_COMPATIBLE = 0x00000010;

/// The device is removable; it cannot be the primary display.
const DISPLAY_DEVICE_REMOVABLE = 0x00000020;

/// The device has more display modes than its output devices support.
const DISPLAY_DEVICE_MODESPRUNED = 0x08000000;

// -----------------------------------------------------------------------------
// PlaySound constants
// -----------------------------------------------------------------------------

/// play synchronously (default)
const SND_SYNC = 0x0000;

/// play asynchronously
const SND_ASYNC = 0x0001;

/// silence (!default) if sound not found
const SND_NODEFAULT = 0x0002;

/// pszSound points to a memory file
const SND_MEMORY = 0x0004;

/// loop the sound until next sndPlaySound
const SND_LOOP = 0x0008;

/// don't stop any currently playing sound
const SND_NOSTOP = 0x0010;

/// don't wait if the driver is busy
const SND_NOWAIT = 0x00002000;

/// name is a registry alias
const SND_ALIAS = 0x00010000;

/// alias is a predefined ID
const SND_ALIAS_ID = 0x00110000;

/// name is file name
const SND_FILENAME = 0x00020000;

/// name is resource name or atom
const SND_RESOURCE = 0x00040004;

/// purge non-static events for task
const SND_PURGE = 0x0040;

/// look for application specific association
const SND_APPLICATION = 0x0080;

/// Generate a SoundSentry event with this sound
const SND_SENTRY = 0x00080000;

/// Treat this as a "ring" from a communications app - don't duck me
const SND_RING = 0x00100000;

/// Treat this as a system sound
const SND_SYSTEM = 0x00200000;

// -----------------------------------------------------------------------------
// Shell File operation constants
// -----------------------------------------------------------------------------

/// Move the files specified in pFrom to the location specified in pTo.
const FO_MOVE = 0x0001;

/// Copy the files specified in the pFrom member to the location specified in
/// the pTo member.
const FO_COPY = 0x0002;

/// Delete the files specified in pFrom.
const FO_DELETE = 0x0003;

/// Rename the file specified in pFrom. You cannot use this flag to rename
/// multiple files with a single function call. Use FO_MOVE instead.
const FO_RENAME = 0x0004;

// -----------------------------------------------------------------------------
// NOTIFYICONDATA::uVersion constants
// Flags that either indicate which of the other members of the structure
// contain valid data or provide additional information to the tooltip as to
// how it should display. This member can be a combination of the following
// values:
// -----------------------------------------------------------------------------
const NOTIFYICON_VERSION = 3;
const NOTIFYICON_VERSION_4 = 4;

/// Used to define private messages, usually of the form WM_APP+x, where x
/// is an integer value.
const WM_APP = 0x8000;

// -----------------------------------------------------------------------------
// Shell_NotifyIcon WndProc callback message contants
// -----------------------------------------------------------------------------

/// If a user selects a notify icon with the mouse and activates it with the
/// ENTER key, the Shell now sends the associated application an NIN_SELECT
/// notification. Earlier versions send WM_RBUTTONDOWN and WM_RBUTTONUP
/// messages.
const NIN_SELECT = WM_USER + 0;

const NINF_KEY = 0x1;

/// If a user selects a notify icon with the keyboard and activates it with
/// the SPACEBAR or ENTER key, the version 5.0 Shell sends the associated
/// application an NIN_KEYSELECT notification. Earlier versions send
/// WM_RBUTTONDOWN and WM_RBUTTONUP messages.
const NIN_KEYSELECT = NIN_SELECT | NINF_KEY;

/// Sent when the balloon is shown (balloons are queued).
const NIN_BALLOONSHOW = WM_USER + 2;

/// Sent when the balloon disappears. For example, when the icon is deleted.
/// This message is not sent if the balloon is dismissed because of a timeout or
/// if the user clicks the mouse.
/// As of Windows 7, NIN_BALLOONHIDE is also sent when a notification with
/// the NIIF_RESPECT_QUIET_TIME flag set attempts to display during quiet time
/// (a user's first hour on a new computer). In that case, the balloon is never
/// displayed at all.
const NIN_BALLOONHIDE = WM_USER + 3;

/// Sent when the balloon is dismissed because of a timeout.
const NIN_BALLOONTIMEOUT = WM_USER + 4;

/// Sent when the balloon is dismissed because the user clicked the mouse.
const NIN_BALLOONUSERCLICK = WM_USER + 5;

/// Sent when the user hovers the cursor over an icon to indicate that the
/// richer pop-up UI should be used in place of a standard textual tooltip.
const NIN_POPUPOPEN = WM_USER + 6;

/// Sent when a cursor no longer hovers over an icon to indicate that the rich
/// pop-up UI should be closed.
const NIN_POPUPCLOSE = WM_USER + 7;

// -----------------------------------------------------------------------------
// LoadImage constants
// -----------------------------------------------------------------------------

/// Loads an enhanced metafile.
const IMAGE_ENHMETAFILE = 3;

// -----------------------------------------------------------------------------
// Stock icons and cursors
// -----------------------------------------------------------------------------

// In the original header files, these take the form:
//   #define IDI_APPLICATION     MAKEINTRESOURCE(32512)
// The MAKEINTRESOURCE() macro creates a pointer to a known memory address. The
// address itself has no meaning other than as a marker.

/// Default application icon.
final IDI_APPLICATION = Pointer<Utf16>.fromAddress(32512);

/// Hand-shaped icon. Same as IDI_ERROR.
final IDI_HAND = Pointer<Utf16>.fromAddress(32513);

/// Question mark icon.
final IDI_QUESTION = Pointer<Utf16>.fromAddress(32514);

/// Exclamation point icon. Same as IDI_WARNING.
final IDI_EXCLAMATION = Pointer<Utf16>.fromAddress(32515);

/// Asterisk icon. Same as IDI_INFORMATION.
final IDI_ASTERISK = Pointer<Utf16>.fromAddress(32516);

/// Windows logo icon.
final IDI_WINLOGO = Pointer<Utf16>.fromAddress(32517);

/// Security Shield icon.
final IDI_SHIELD = Pointer<Utf16>.fromAddress(32518);

/// Exclamation point icon.
final IDI_WARNING = IDI_EXCLAMATION;

/// Hand-shaped icon.
final IDI_ERROR = IDI_HAND;

/// Asterisk icon.
final IDI_INFORMATION = IDI_ASTERISK;

/// Standard arrow
final IDC_ARROW = Pointer<Utf16>.fromAddress(32512);

/// I-beam
final IDC_IBEAM = Pointer<Utf16>.fromAddress(32513);

/// Hourglass
final IDC_WAIT = Pointer<Utf16>.fromAddress(32514);

/// Crosshair
final IDC_CROSS = Pointer<Utf16>.fromAddress(32515);

/// Vertical arrow
final IDC_UPARROW = Pointer<Utf16>.fromAddress(32516);

/// Double-pointed arrow pointing northwest and southeast
final IDC_SIZENWSE = Pointer<Utf16>.fromAddress(32642);

/// Double-pointed arrow pointing northeast and southwest
final IDC_SIZENESW = Pointer<Utf16>.fromAddress(32643);

/// Double-pointed arrow pointing west and east
final IDC_SIZEWE = Pointer<Utf16>.fromAddress(32644);

/// Double-pointed arrow pointing north and south
final IDC_SIZENS = Pointer<Utf16>.fromAddress(32645);

/// Four-pointed arrow pointing north, south, east, and west
final IDC_SIZEALL = Pointer<Utf16>.fromAddress(32646);

/// Slashed circle
final IDC_NO = Pointer<Utf16>.fromAddress(32648);

/// Hand
final IDC_HAND = Pointer<Utf16>.fromAddress(32649);

/// Standard arrow and small hourglass
final IDC_APPSTARTING = Pointer<Utf16>.fromAddress(32650);

/// Arrow and question mark
final IDC_HELP = Pointer<Utf16>.fromAddress(32651);

// -----------------------------------------------------------------------------
// Symbol Flag constants
// -----------------------------------------------------------------------------

/// The Value member is used.
const SYMFLAG_VALUEPRESENT = 0x00000001;

/// The symbol is a register. The Register member is used.
const SYMFLAG_REGISTER = 0x00000008;

/// Offsets are register relative.
const SYMFLAG_REGREL = 0x00000010;

/// Offsets are frame relative.
const SYMFLAG_FRAMEREL = 0x00000020;

/// The symbol is a parameter.
const SYMFLAG_PARAMETER = 0x00000040;

/// The symbol is a local variable.
const SYMFLAG_LOCAL = 0x00000080;

/// The symbol is a constant.
const SYMFLAG_CONSTANT = 0x00000100;

/// The symbol is from the export table.
const SYMFLAG_EXPORT = 0x00000200;

/// The symbol is a forwarder.
const SYMFLAG_FORWARDER = 0x00000400;

/// The symbol is a known function.
const SYMFLAG_FUNCTION = 0x00000800;

/// The symbol is a virtual symbol created by the SymAddSymbol function.
const SYMFLAG_VIRTUAL = 0x00001000;

/// The symbol is a thunk.
const SYMFLAG_THUNK = 0x00002000;

/// The symbol is an offset into the TLS data area.
const SYMFLAG_TLSREL = 0x00004000;

/// The symbol is a managed code slot.
const SYMFLAG_SLOT = 0x00008000;

/// The symbol address is an offset relative to the beginning of the
/// intermediate language block. This applies to managed code only.
const SYMFLAG_ILREL = 0x00010000;

/// The symbol is managed metadata.
const SYMFLAG_METADATA = 0x00020000;

/// The symbol is a CLR token.
const SYMFLAG_CLR_TOKEN = 0x00040000;

// -----------------------------------------------------------------------------
// Symbol Option constants
// -----------------------------------------------------------------------------

/// This symbol option causes all searches for symbol names to be
/// case-insensitive.
const SYMOPT_CASE_INSENSITIVE = 0x00000001;

/// This symbol option causes public symbol names to be undecorated when they
/// are displayed, and causes searches for symbol names to ignore symbol
/// decorations. Private symbol names are never decorated, regardless of whether
/// this option is active.
const SYMOPT_UNDNAME = 0x00000002;

/// This symbol option is called deferred symbol loading or lazy symbol loading.
/// When it is active, symbols are not actually loaded when the target modules
/// are loaded. Instead, symbols are loaded by the debugger as they are needed.
const SYMOPT_DEFERRED_LOADS = 0x00000004;

/// This symbol option turns off C++ translation. When this symbol option is
/// set, :: is replaced by __ in all symbols.
const SYMOPT_NO_CPP = 0x00000008;

/// This symbol option allows line number information to be read from source
/// files. This option must be on for source debugging to work correctly.
const SYMOPT_LOAD_LINES = 0x00000010;

/// When code has been optimized and there is no symbol at the expected
/// location, this option causes the nearest symbol to be used instead.
const SYMOPT_OMAP_FIND_NEAREST = 0x00000020;

/// This symbol option reduces the pickiness of the symbol handler when it is
/// attempting to match symbols.
const SYMOPT_LOAD_ANYTHING = 0x00000040;

/// This symbol option causes the symbol handler to ignore the CV record in the
/// loaded image header when searching for symbols.
const SYMOPT_IGNORE_CVREC = 0x00000080;

/// This symbol option disables the symbol handler's automatic loading of
/// modules. When this option is set and the debugger attempts to match a
/// symbol, it will only search modules which have already been loaded.
const SYMOPT_NO_UNQUALIFIED_LOADS = 0x00000100;

/// This symbol option causes file access error dialog boxes to be suppressed.
const SYMOPT_FAIL_CRITICAL_ERRORS = 0x00000200;

/// This symbol option causes the debugger to perform a strict evaluation of all
/// symbol files.
const SYMOPT_EXACT_SYMBOLS = 0x00000400;

/// This symbol option allows DbgHelp to read symbols that are stored at an
/// absolute address in memory. This option is not needed in the vast majority
/// of cases.
const SYMOPT_ALLOW_ABSOLUTE_SYMBOLS = 0x00000800;

/// This symbol option causes the debugger to ignore the environment variable
/// settings for the symbol path and the executable image path.
const SYMOPT_IGNORE_NT_SYMPATH = 0x00001000;

/// When debugging on 64-bit Windows, include any 32-bit modules.
const SYMOPT_INCLUDE_32BIT_MODULES = 0x00002000;

/// This symbol option causes DbgHelp to ignore private symbol data, and search
/// only the public symbol table for symbol information.
const SYMOPT_PUBLICS_ONLY = 0x00004000;

/// This symbol option prevents DbgHelp from searching the public symbol table.
/// This can make symbol enumeration and symbol searches much faster. If you are
/// concerned solely with search speed, the SYMOPT_AUTO_PUBLICS option is
/// generally preferable to this one.
const SYMOPT_NO_PUBLICS = 0x00008000;

/// This symbol option causes DbgHelp to search the public symbol table in a
/// .pdb file only as a last resort. If any matches are found when searching the
/// private symbol data, the public symbols will not be searched. This improves
/// symbol search speed.
const SYMOPT_AUTO_PUBLICS = 0x00010000;

/// This symbol option prevents DbgHelp from searching the disk for a copy of
/// the image when symbols are loaded.
const SYMOPT_NO_IMAGE_SEARCH = 0x00020000;

/// (Kernel mode only) This symbol option indicates whether Secure Mode is
/// active.
const SYMOPT_SECURE = 0x00040000;

/// This symbol option suppresses authentication dialog boxes from the proxy
/// server. This may result in SymSrv being unable to access a symbol store on
/// the internet.
const SYMOPT_NO_PROMPTS = 0x00080000;

/// Overwrite the downlevel store from the symbol store.
const SYMOPT_OVERWRITE = 0x00100000;

/// Ignore the image directory.
const SYMOPT_IGNORE_IMAGEDIR = 0x00200000;

/// Symbols are stored in the root directory of the default downstream store.
const SYMOPT_FLAT_DIRECTORY = 0x00400000;

/// If there is both an uncompressed and a compressed file available, favor the
/// compressed file. This option is good for slow connections.
const SYMOPT_FAVOR_COMPRESSED = 0x00800000;

/// If there is both an uncompressed and a compressed file available, favor the
/// compressed file. This option is good for slow connections.
const SYMOPT_ALLOW_ZERO_ADDRESS = 0x01000000;

/// Disables the auto-detection of symbol server stores in the symbol path, even
/// without the "SRV*" designation, maintaining compatibility with previous
/// behavior.
const SYMOPT_DISABLE_SYMSRV_AUTODETECT = 0x02000000;

/// This symbol option turns on noisy symbol loading. This instructs the
/// debugger to display information about its search for symbols.
const SYMOPT_DEBUG = 0x80000000;

// -----------------------------------------------------------------------------
// Smartcard constants
// -----------------------------------------------------------------------------

/// A smart card holder verification (CHV) attempt failed.
const SCARD_AUDIT_CHV_FAILURE = 0x0;

/// A smart card holder verification (CHV) attempt succeeded.
const SCARD_AUDIT_CHV_SUCCESS = 0x1;

/// No transmission protocol is active.
const SCARD_PROTOCOL_UNDEFINED = 0x00000000;

/// The ISO 7816/3 T=0 protocol is in use.
const SCARD_PROTOCOL_T0 = 0x00000001;

/// The ISO 7816/3 T=1 protocol is in use.
const SCARD_PROTOCOL_T1 = 0x00000002;

/// The Raw Transfer protocol is in use.
const SCARD_PROTOCOL_RAW = 0x00010000;

/// Bitwise OR combination of both of the two International Standards
/// Organization (IS0) transmission protocols SCARD_PROTOCOL_T0 and
/// SCARD_PROTOCOL_T1.
const SCARD_PROTOCOL_Tx = SCARD_PROTOCOL_T0 | SCARD_PROTOCOL_T1;

/// Use the implicit protocol of the card with standard parameters.
const SCARD_PROTOCOL_DEFAULT = 0x80000000;

/// Use the best possible communication parameters.
const SCARD_PROTOCOL_OPTIMAL = 0x00000000;

/// Remove power from the smart card.
const SCARD_POWER_DOWN = 0;

/// Power down the smart card and power it up again.
const SCARD_COLD_RESET = 1;

/// Reset the smart card without removing power.
const SCARD_WARM_RESET = 2;

/// The reader driver has no information concerning the current state of the
/// reader.
const SCARD_UNKNOWN = 0;

/// There is no card in the reader.
const SCARD_ABSENT = 1;

/// There is a card in the reader, but it has not been moved into position for
/// use.
const SCARD_PRESENT = 2;

/// There is a card in the reader in position for use. The card is not powered.
const SCARD_SWALLOWED = 3;

/// Power is being provided to the card, but the reader driver is unaware of the
/// mode of the card.
const SCARD_POWERED = 4;

/// The card has been reset and is awaiting PTS negotiation.
const SCARD_NEGOTIABLE = 5;

/// The card has been reset and specific communication protocols have been
/// established.
const SCARD_SPECIFIC = 6;

/// This application is not willing to share the card with other applications.
const SCARD_SHARE_EXCLUSIVE = 1;

/// This application is willing to share the card with other applications.
const SCARD_SHARE_SHARED = 2;

/// This application is allocating the reader for its private use, and will be
/// controlling it directly. No other applications are allowed access to it.
const SCARD_SHARE_DIRECT = 3;

/// Don't do anything special on close.
const SCARD_LEAVE_CARD = 0;

/// Reset the card on close.
const SCARD_RESET_CARD = 1;

/// Power down the card on close.
const SCARD_UNPOWER_CARD = 2;

/// Eject the card on close.
const SCARD_EJECT_CARD = 3;

/// Database operations are performed within the domain of the user.
const SCARD_SCOPE_USER = 0;

/// Database operations are performed within the domain of the current terminal.
const SCARD_SCOPE_TERMINAL = 1;

/// Database operations are performed within the domain of the system. The
/// calling application must have appropriate access permissions for any
/// database actions.
const SCARD_SCOPE_SYSTEM = 2;

/// The function retrieves the name of the smart card's primary service provider
/// as a GUID string.
const SCARD_PROVIDER_PRIMARY = 1;

/// The function retrieves the name of the cryptographic service provider.
const SCARD_PROVIDER_CSP = 2;

/// The function retrieves the name of the smart card key storage provider
/// (KSP).
const SCARD_PROVIDER_KSP = 3;

/// The function retrieves the name of the card module.
const SCARD_PROVIDER_CARD_MODULE = 0x80000001;

/// Selects the smart card if only one smart card meets the criteria, or returns
/// information about the user's selection if more than one smart card meets the
/// criteria.
const SC_DLG_MINIMAL_UI = 0x01;

/// Selects the first available card.
const SC_DLG_NO_UI = 0x02;

/// Connects to the card selected by the user from the smart card Select Card
/// dialog box.
const SC_DLG_FORCE_UI = 0x04;

// -----------------------------------------------------------------------------
// EnumPrinters constants
// -----------------------------------------------------------------------------

/// (Win9.x only) enumerates the default printer.
const PRINTER_ENUM_DEFAULT = 00000001;

/// If the PRINTER_ENUM_NAME flag is not also passed, the function ignores the
/// Name parameter, and enumerates the locally installed printers.
/// If PRINTER_ENUM_NAME is also passed, the function enumerates the local
/// printers on Name.
const PRINTER_ENUM_LOCAL = 00000002;

/// The function enumerates the list of printers to which the user has made
/// previous connections.
const PRINTER_ENUM_CONNECTIONS = 0x00000004;

///
const PRINTER_ENUM_FAVORITE = 0x00000004;

/// The function enumerates the printer identified by Name. This can be a server
/// a domain, or a print provider. If Name is NULL, the function enumerates
/// available print providers.
const PRINTER_ENUM_NAME = 00000008;

/// The function enumerates network printers and print servers in the computer's
/// domain. This value is valid only if Level is 1.
const PRINTER_ENUM_REMOTE = 00000010;

/// The function enumerates printers that have the shared attribute. Cannot be
/// used in isolation; use an OR operation to combine with another PRINTER_ENUM
/// type.
const PRINTER_ENUM_SHARED = 00000020;

/// The function enumerates network printers in the computer's domain. This
/// value is valid only if Level is 1.
const PRINTER_ENUM_NETWORK = 00000040;

/// Indicates that the printer object contains further enumerable child objects.
const PRINTER_ENUM_EXPAND = 00004000;

/// Indicates that the printer object is capable of containing enumerable
/// objects. One such object is a print provider, which is a print server that
/// contains printers.
const PRINTER_ENUM_CONTAINER = 0x00008000;

///
const PRINTER_ENUM_ICONMASK = 0x00ff0000;

///
const PRINTER_ENUM_ICON1 = 00010000;

///
const PRINTER_ENUM_ICON2 = 00020000;

///
const PRINTER_ENUM_ICON3 = 00040000;

///
const PRINTER_ENUM_ICON4 = 00080000;

///
const PRINTER_ENUM_ICON5 = 00100000;

///
const PRINTER_ENUM_ICON6 = 00200000;

///
const PRINTER_ENUM_ICON7 = 00400000;

/// Indicates that, where appropriate, an application treats an object as a
/// print server. A GUI application can<145> choose to display an icon of choice
/// for this type of object.
const PRINTER_ENUM_ICON8 = 00800000;

/// Indicates that an application cannot display the printer object.
const PRINTER_ENUM_HIDE = 01000000;

/// PRINTER_ENUM_CATEGORY_ALL
const PRINTER_ENUM_CATEGORY_ALL = 0x02000000;

/// The function enumerates only 3D printers.
const PRINTER_ENUM_CATEGORY_3D = 0x04000000;

// -----------------------------------------------------------------------------
// Bluetooth IDs
// -----------------------------------------------------------------------------

/// Bluetooth LE device interface GUID
const GUID_BLUETOOTHLE_DEVICE_INTERFACE =
    '{781aee18-7733-4ce4-add0-91f41c67b592}';

/// Bluetooth LE Service device interface GUID
const GUID_BLUETOOTH_GATT_SERVICE_DEVICE_INTERFACE =
    '{6e3bb679-4372-40c8-9eaa-4509df260cd8}';

/// The client does not have specific GATT requirements (default).
const BLUETOOTH_GATT_FLAG_NONE = 0x00000000;

/// The client requests the data to be transmitted over an encrypted channel.
const BLUETOOTH_GATT_FLAG_CONNECTION_ENCRYPTED = 0x00000001;

/// The client requests the data to be transmitted over an authenticated
/// channel.
const BLUETOOTH_GATT_FLAG_CONNECTION_AUTHENTICATED = 0x00000002;

/// The characteristic value is to be read directly from the device. This
/// overwrites the one in the cache if one is already present.
const BLUETOOTH_GATT_FLAG_FORCE_READ_FROM_DEVICE = 0x00000004;

/// The characteristic value is to be read from the cache (regardless of whether
/// it is present in the cache or not).
const BLUETOOTH_GATT_FLAG_FORCE_READ_FROM_CACHE = 0x00000008;

/// Signed write. Profile drivers must use with
/// BLUETOOTH_GATT_FLAG_WRITE_WITHOUT_RESPONSE in order to produce signed write
/// without a response.
const BLUETOOTH_GATT_FLAG_SIGNED_WRITE = 0x00000010;

/// Write without response.
const BLUETOOTH_GATT_FLAG_WRITE_WITHOUT_RESPONSE = 0x00000020;
const BLUETOOTH_GATT_FLAG_RETURN_ALL = 0x00000040;

// -----------------------------------------------------------------------------
// WM_GETICON constants
// -----------------------------------------------------------------------------

/// Retrieve the small icon for the window.
const ICON_SMALL = 0;

/// Retrieve the large icon for the window.
const ICON_BIG = 1;

/// Retrieves the small icon provided by the application. If the application
/// does not provide one, the system uses the system-generated icon for that
/// window.
const ICON_SMALL2 = 2;

// -----------------------------------------------------------------------------
// SetupDiGetClassDevs constants
// -----------------------------------------------------------------------------

/// Hardware key for the device.
const DIREG_DEV = 0x00000001;

/// Software key for the device.
const DIREG_DRV = 0x00000002;

/// Both hardware and software keys.
const DIREG_BOTH = 0x00000004;

// -----------------------------------------------------------------------------
// UI Automation Error Code constants
// -----------------------------------------------------------------------------

/// Indicates that a method was called on a virtualized element, or on an
/// element that no longer exists, usually because it has been destroyed.
const UIA_E_ELEMENTNOTAVAILABLE = 0x80040201;

/// Indicates that a method that requires an enabled element, such as Select or
/// Expand, was called on an element that was disabled.
const UIA_E_ELEMENTNOTENABLED = 0x80040200;

/// Indicates that the method attempted an operation that was not valid.
const UIA_E_INVALIDOPERATION = 0x80131509;

/// Indicates that the GetClickablePoint method was called on an element that
/// has no clickable point.
const UIA_E_NOCLICKABLEPOINT = 0x80040202;

/// Indicates that the provider explicitly does not support the specified
/// property or control pattern. UI Automation will return this error code to
/// the caller without attempting to provide a default value or falling back to
/// another provider.
const UIA_E_NOTSUPPORTED = 0x80040204;

/// Indicates that a problem occurred when loading an assembly that contains a
/// client-side (proxy) provider.
const UIA_E_PROXYASSEMBLYNOTLOADED = 0x80040203;

/// Indicates that the time allotted for a process or operation has expired.
const UIA_E_TIMEOUT = 0x80131505;

// -----------------------------------------------------------------------------
// WinHttpRequest PROXYSETTING flags
// -----------------------------------------------------------------------------

/// Default proxy setting. Equivalent to HTTPREQUEST_PROXYSETTING_PRECONFIG.
const HTTPREQUEST_PROXYSETTING_DEFAULT = 0;

/// Indicates that the proxy settings should be obtained from the registry.
const HTTPREQUEST_PROXYSETTING_PRECONFIG = 0;

/// Indicates that all HTTP and HTTPS servers should be accessed directly.
const HTTPREQUEST_PROXYSETTING_DIRECT = 1;

/// When HTTPREQUEST_PROXYSETTING_PROXY is specified, varProxyServer should be
/// set to a proxy server string and varBypassList should be set to a domain
/// bypass list string.
const HTTPREQUEST_PROXYSETTING_PROXY = 2;

// -----------------------------------------------------------------------------
// WinHttpRequest SETCREDENTIALS flags
// -----------------------------------------------------------------------------

/// Credentials are passed to a server.
const HTTPREQUEST_SETCREDENTIALS_FOR_SERVER = 0;

/// Credentials are passed to a proxy.
const HTTPREQUEST_SETCREDENTIALS_FOR_PROXY = 1;

// -----------------------------------------------------------------------------
// Device Management events
// -----------------------------------------------------------------------------

/// A device has been added to or removed from the system.
const DBT_DEVNODES_CHANGED = 0x0007;

/// Permission is requested to change the current configuration
/// (dock or undock).
const DBT_QUERYCHANGECONFIG = 0x0017;

/// The current configuration has changed, due to a dock or undock.
const DBT_CONFIGCHANGED = 0x0018;

/// A request to change the current configuration (dock or undock) has been
/// canceled.
const DBT_CONFIGCHANGECANCELED = 0x0019;

/// A device or piece of media has been inserted and is now available.
const DBT_DEVICEARRIVAL = 0x8000;

/// Permission is requested to remove a device or piece of media. Any
/// application can deny this request and cancel the removal.
const DBT_DEVICEQUERYREMOVE = 0x8001;

/// A request to remove a device or piece of media has been canceled.
const DBT_DEVICEQUERYREMOVEFAILED = 0x8002;

/// A device or piece of media is about to be removed. Cannot be denied.
const DBT_DEVICEREMOVEPENDING = 0x8003;

/// A device or piece of media has been removed.
const DBT_DEVICEREMOVECOMPLETE = 0x8004;

/// A device-specific event has occurred.
const DBT_DEVICETYPESPECIFIC = 0x8005;

/// A custom event has occurred.
const DBT_CUSTOMEVENT = 0x8006;

/// The meaning of this message is user-defined.
const DBT_USERDEFINED = 0xFFFF;

// -----------------------------------------------------------------------------
// GlobalAlloc flags
// -----------------------------------------------------------------------------

/// Allocates movable memory. Memory blocks are never moved in physical memory,
/// but they can be moved within the default heap. The return value is a handle
/// to the memory object. To translate the handle into a pointer, use the
/// GlobalLock function.

/// @nodoc
const CLSID_CorMetaDataDispenser = '{e5cb7a31-7512-11d2-89ce-0080c792e5d8}';
