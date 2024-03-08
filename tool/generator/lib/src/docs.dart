// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

const callbackDocs = <String, String>{
  'FONTENUMPROC': '''
An application defined callback function used with the EnumFontFamilies function.

To learn more about this callback, see <https://learn.microsoft.com/previous-versions/dd162621(v=vs.85)>.''',
// -----------------------------------------------------------------------------
  'LPTHREAD_START_ROUTINE': '''
An application-defined function that serves as the starting address for a thread.

To learn more about this callback, see <https://learn.microsoft.com/previous-versions/windows/desktop/legacy/ms686736(v=vs.85)>.''',
// -----------------------------------------------------------------------------
  'PHANDLER_ROUTINE': '''
An application-defined function used with the SetConsoleCtrlHandler function.

To learn more about this callback, see <https://learn.microsoft.com/windows/console/handlerroutine>.''',
// -----------------------------------------------------------------------------
  'WNDENUMPROC': '''
An application-defined callback function used with the EnumWindows or EnumDesktopWindows function.

To learn more about this callback, see <https://learn.microsoft.com/previous-versions/windows/desktop/legacy/ms633498(v=vs.85)>.''',
};

const constantDocs = <String, String>{};

const enumDocs = <String, String>{};

const functionDocs = <String, String>{
  'ChooseColor': '''
Creates a Color dialog box that enables the user to select a color.

To learn more about this function, see <https://learn.microsoft.com/windows/win32/api/commdlg/nc-commdlg-choosecolorw>.''',
// -----------------------------------------------------------------------------
  'ChooseFont': '''
Creates a Font dialog box that enables the user to choose attributes for a logical font.

To learn more about this function, see <https://learn.microsoft.com/windows/win32/api/commdlg/nc-commdlg-choosefontw>.''',
// -----------------------------------------------------------------------------
  'IsProcessDPIAware': '''
Determines whether the current process is dots per inch (dpi) aware such that it adjusts the sizes of UI elements to compensate for the dpi setting. **Note**: This function may be altered or unavailable in the newer versions of Windows. Use GetProcessDPIAwareness instead.

To learn more about this function, see <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-isprocessdpiaware>.''',
// -----------------------------------------------------------------------------
  'mciGetDeviceID': '''
Retrieves the device identifier corresponding to the name of an open device.

To learn more about this function, see <https://learn.microsoft.com/previous-versions/dd757156(v=vs.85)>.''',
// -----------------------------------------------------------------------------
  'mciGetDeviceIDFromElementID': '''
Retrieves the MCI device identifier corresponding to an element identifier.

To learn more about this function, see <https://learn.microsoft.com/previous-versions/dd757157(v=vs.85)>.''',
// -----------------------------------------------------------------------------
  'mciGetErrorString': '''
Retrieves a string that describes the specified MCI error code.

To learn more about this function, see <https://learn.microsoft.com/previous-versions/dd757158(v=vs.85)>.''',
// -----------------------------------------------------------------------------
  'mciSendCommand': '''
Sends a command message to the specified MCI device.

To learn more about this function, see <https://learn.microsoft.com/previous-versions/dd757160(v=vs.85)>.''',
// -----------------------------------------------------------------------------
  'mciSendString': '''
Sends a command string to an MCI device. The device that the command is sent to is specified in the command string.

To learn more about this function, see <https://learn.microsoft.com/previous-versions/dd757161(v=vs.85)>.''',
// -----------------------------------------------------------------------------
  'OleInitialize': '''
Initializes the COM library on the current apartment and identifies the concurrency model as single-thread apartment (STA).

To learn more about this function, see <https://learn.microsoft.com/windows/win32/api/ole2/nf-ole2-oleinitialize>.''',
// -----------------------------------------------------------------------------
  'PlaySound': '''
Plays a sound specified by the given file name, resource, or system event.

To learn more about this function, see <https://learn.microsoft.com/previous-versions//dd743680(v=vs.85)>.''',
// -----------------------------------------------------------------------------
  'SetProcessDPIAware': '''
Sets the process-default DPI awareness to system-DPI awareness.

**Note**: This function may be altered or unavailable in the newer versions of Windows. Use SetProcessDpiAwareness instead.

To learn more about this function, see <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setprocessdpiaware>.''',
// -----------------------------------------------------------------------------
  'SHGetFolderPath': '''
Gets the path of a folder identified by a CSIDL value.

To learn more about this function, see <https://learn.microsoft.com/windows/win32/api/shlobj_core/nf-shlobj_core-shgetfolderpathw>.''',
// -----------------------------------------------------------------------------
  'UpdateLayeredWindowIndirect': '''
Updates the position, size, shape, content, and translucency of a layered window.

To learn more about this function, see <https://learn.microsoft.com/previous-versions/windows/desktop/legacy/ms633557(v=vs.85)>.''',
// -----------------------------------------------------------------------------
  'waveInGetPosition': '''
Retrieves the current input position of the given waveform-audio input device.

**Note**: This function is no longer supported for use as of Windows Vista. Instead, use IAudioClock.getPosition.

To learn more about this function, see <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveingetposition>.''',
};

const interfaceDocs = <String, String>{
  'IAppxManifestReader3': '''
Represents an object model of the package manifest that provides methods to access manifest elements and attributes.

To learn more about this interface, see <https://learn.microsoft.com/previous-versions/mt796945(v=vs.85)>.''',
// -----------------------------------------------------------------------------
  'IAppxManifestReader4': '''
Represents an object model of the package manifest that provides methods to access manifest elements and attributes.

To learn more about this interface, see <https://learn.microsoft.com/previous-versions/mt796948(v=vs.85)>.''',
// -----------------------------------------------------------------------------
  'IDesktopWallpaper': '''
Provides methods for managing the desktop wallpaper.

To learn more about this interface, see <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nn-shobjidl_core-idesktopwallpaper>.''',
// -----------------------------------------------------------------------------
  'IPersistMemory': '''
Saves and loads objects from a stream.

To learn more about this interface, see <https://learn.microsoft.com/previous-versions/windows/internet-explorer/ie-developer/platform-apis/aa768210(v=vs.85)>.''',
// -----------------------------------------------------------------------------
  'ISpeechBaseStream': '''
Defines properties and methods for manipulating data streams.

To learn more about this interface, see <https://learn.microsoft.com/previous-versions/windows/desktop/ms721006(v=vs.85)>.''',
// -----------------------------------------------------------------------------
  'ISpeechObjectTokens': '''
Represents a collection of SpObjectToken objects.

To learn more about this interface, see <https://learn.microsoft.com/previous-versions/windows/desktop/ms721389(v=vs.85)>.''',
// -----------------------------------------------------------------------------
  'ISpeechVoiceStatus': '''
Defines the types of information returned by the SpVoice.Status method.

To learn more about this interface, see <https://learn.microsoft.com/previous-versions/windows/desktop/ms722539(v=vs.85)>.''',
// -----------------------------------------------------------------------------
  'ISpEventSource': '''
Provides the mechanism to filter and queue events.

To learn more about this interface, see <https://learn.microsoft.com/previous-versions/windows/desktop/ms717848(v=vs.85)>.''',
// -----------------------------------------------------------------------------
  'ISpNotifySource': '''
Provides a mechanism for a notification but no information on the events that caused the notification.

To learn more about this interface, see <https://learn.microsoft.com/previous-versions/windows/desktop/ms717961(v=vs.85)>.''',
// -----------------------------------------------------------------------------
  'ISpVoice': '''
Enables an application to perform text synthesis operations.

To learn more about this interface, see <https://learn.microsoft.com/previous-versions/windows/desktop/ms719576(v=vs.85)>.''',
// -----------------------------------------------------------------------------
  'IUri': '''
Exposes methods and properties used to parse and build Uniform Resource Identifiers (URIs).

To learn more about this interface, see <https://learn.microsoft.com/previous-versions/windows/internet-explorer/ie-developer/platform-apis/ms775038(v=vs.85)>.''',
};

const structDocs = <String, String>{
  'BLOB': '''
Contains information about a block of data.

To learn more about this struct, see <https://learn.microsoft.com/windows/win32/api/nspapi/ns-nspapi-blob>.''',
// -----------------------------------------------------------------------------
  'FILETIME': '''
Holds an unsigned 64-bit date and time value for a file.

This value represents the number of 100-nanosecond units since the start of January 1, 1601.

To learn more about this struct, see <https://learn.microsoft.com/office/client-developer/outlook/mapi/filetime>.''',
// -----------------------------------------------------------------------------
  'IP_ADAPTER_PREFIX_XP': '''
Stores an IP address prefix.

To learn more about this struct, see <https://learn.microsoft.com/windows/win32/api/iptypes/ns-iptypes-ip_adapter_prefix_xp>.''',
// -----------------------------------------------------------------------------
  'L2_NOTIFICATION_DATA': '''
Used by the IHV Extensions DLL to send notifications to any service or applications that has registered for the notification.

To learn more about this struct, see <https://learn.microsoft.com/windows/win32/api/l2cmn/ns-l2cmn-l2_notification_data>.''',
// -----------------------------------------------------------------------------
  'VARIANT': '''
A container for a large union that carries many types of data.

The value in the first member of the structure, vt, describes which of the union members is valid.

To learn more about this struct, see <https://learn.microsoft.com/windows/win32/api/oaidl/ns-oaidl-variant>.''',
};
