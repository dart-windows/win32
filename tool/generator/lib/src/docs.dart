// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'doc/api_details.dart';

const callbackDocs = <String, ApiDetails>{
  'FONTENUMPROC': ApiDetails(
    apiName: 'FONTENUMPROC',
    description:
        'An application defined callback function used with the EnumFontFamilies function.',
    helpLink: 'https://learn.microsoft.com/previous-versions/dd162621(v=vs.85)',
  ),
  'LPTHREAD_START_ROUTINE': ApiDetails(
    apiName: 'LPTHREAD_START_ROUTINE',
    description:
        'An application-defined function that serves as the starting address for a thread.',
    helpLink:
        'https://learn.microsoft.com/previous-versions/windows/desktop/legacy/ms686736(v=vs.85)',
  ),
  'PHANDLER_ROUTINE': ApiDetails(
    apiName: 'PHANDLER_ROUTINE',
    description:
        'An application-defined function used with the SetConsoleCtrlHandler function.',
    helpLink: 'https://learn.microsoft.com/windows/console/handlerroutine',
  ),
  'WNDENUMPROC': ApiDetails(
    apiName: 'WNDENUMPROC',
    description:
        'An application-defined callback function used with the EnumWindows or EnumDesktopWindows function.',
    helpLink:
        'https://learn.microsoft.com/previous-versions/windows/desktop/legacy/ms633498(v=vs.85)',
  ),
};

const constantDocs = <String, ApiDetails>{};

const enumDocs = <String, ApiDetails>{};

const functionDocs = <String, ApiDetails>{
  'ChooseColor': ApiDetails(
    apiName: 'ChooseColor',
    description:
        'Creates a Color dialog box that enables the user to select a color.',
    helpLink:
        'https://learn.microsoft.com/windows/win32/api/commdlg/nc-commdlg-choosecolorw',
  ),
  'ChooseFont': ApiDetails(
    apiName: 'ChooseFont',
    description:
        'Creates a Font dialog box that enables the user to choose attributes for a logical font.',
    helpLink:
        'https://learn.microsoft.com/windows/win32/api/commdlg/nc-commdlg-choosefontw',
  ),
  'IsProcessDPIAware': ApiDetails(
    apiName: 'IsProcessDPIAware',
    description:
        'Determines whether the current process is dots per inch (dpi) aware such that it adjusts the sizes of UI elements to compensate for the dpi setting. **Note:** This function may be altered or unavailable in the newer versions of Windows. Use GetProcessDPIAwareness instead.',
    helpLink:
        'https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-isprocessdpiaware',
  ),
  'mciGetDeviceID': ApiDetails(
    apiName: 'mciGetDeviceID',
    description:
        'Retrieves the device identifier corresponding to the name of an open device.',
    helpLink: 'https://learn.microsoft.com/previous-versions/dd757156(v=vs.85)',
  ),
  'mciGetDeviceIDFromElementID': ApiDetails(
    apiName: 'mciGetDeviceIDFromElementID',
    description:
        'Retrieves the MCI device identifier corresponding to an element identifier.',
    helpLink: 'https://learn.microsoft.com/previous-versions/dd757157(v=vs.85)',
  ),
  'mciGetErrorString': ApiDetails(
    apiName: 'mciGetErrorString',
    description:
        'Retrieves a string that describes the specified MCI error code.',
    helpLink: 'https://learn.microsoft.com/previous-versions/dd757158(v=vs.85)',
  ),
  'mciSendCommand': ApiDetails(
    apiName: 'mciSendCommand',
    description: 'Sends a command message to the specified MCI device.',
    helpLink: 'https://learn.microsoft.com/previous-versions/dd757160(v=vs.85)',
  ),
  'mciSendString': ApiDetails(
    apiName: 'mciSendString',
    description:
        'Sends a command string to an MCI device. The device that the command is sent to is specified in the command string.',
    helpLink: 'https://learn.microsoft.com/previous-versions/dd757161(v=vs.85)',
  ),
  'OleInitialize': ApiDetails(
    apiName: 'OleInitialize',
    description:
        'Initializes the COM library on the current apartment and identifies the concurrency model as single-thread apartment (STA).',
    helpLink:
        'https://learn.microsoft.com/windows/win32/api/ole2/nf-ole2-oleinitialize',
  ),
  'PlaySound': ApiDetails(
    apiName: 'PlaySound',
    description:
        'Plays a sound specified by the given file name, resource, or system event.',
    helpLink:
        'https://learn.microsoft.com/previous-versions//dd743680(v=vs.85)',
  ),
  'SetProcessDPIAware': ApiDetails(
    apiName: 'SetProcessDPIAware',
    description:
        'Sets the process-default DPI awareness to system-DPI awareness. **Note:** This function may be altered or unavailable in the newer versions of Windows. Use SetProcessDpiAwareness instead.',
    helpLink:
        'https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setprocessdpiaware',
  ),
  'SHGetFolderPath': ApiDetails(
    apiName: 'SHGetFolderPath',
    description: 'Gets the path of a folder identified by a CSIDL value.',
    helpLink:
        'https://learn.microsoft.com/windows/win32/api/shlobj_core/nf-shlobj_core-shgetfolderpathw',
  ),
  'UpdateLayeredWindowIndirect': ApiDetails(
    apiName: 'UpdateLayeredWindowIndirect',
    description:
        'Updates the position, size, shape, content, and translucency of a layered window.',
    helpLink:
        'https://learn.microsoft.com/previous-versions/windows/desktop/legacy/ms633557(v=vs.85)',
  ),
  'waveInGetPosition': ApiDetails(
    apiName: 'waveInGetPosition',
    description:
        'Retrieves the current input position of the given waveform-audio input device. **Note:** This function is no longer supported for use as of Windows Vista. Instead, use IAudioClock.getPosition.',
    helpLink:
        'https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveingetposition',
  ),
};

const interfaceDocs = <String, ApiDetails>{
  'IAppxManifestReader3': ApiDetails(
    apiName: 'IAppxManifestReader3',
    description:
        'Represents an object model of the package manifest that provides methods to access manifest elements and attributes.',
    helpLink: 'https://learn.microsoft.com/previous-versions/mt796945(v=vs.85)',
  ),
  'IAppxManifestReader4': ApiDetails(
    apiName: 'IAppxManifestReader4',
    description:
        'Represents an object model of the package manifest that provides methods to access manifest elements and attributes.',
    helpLink: 'https://learn.microsoft.com/previous-versions/mt796948(v=vs.85)',
  ),
  'IDesktopWallpaper': ApiDetails(
    apiName: 'IDesktopWallpaper',
    description: 'Provides methods for managing the desktop wallpaper.',
    helpLink:
        'https://learn.microsoft.com/windows/win32/api/shobjidl_core/nn-shobjidl_core-idesktopwallpaper',
  ),
  'IPersistMemory': ApiDetails(
    apiName: 'IPersistMemory',
    description: 'Saves and loads objects from a stream.',
    helpLink:
        'https://learn.microsoft.com/previous-versions/windows/internet-explorer/ie-developer/platform-apis/aa768210(v=vs.85)',
  ),
  'ISpeechBaseStream': ApiDetails(
    apiName: 'ISpeechBaseStream',
    description:
        'Defines properties and methods for manipulating data streams.',
    helpLink:
        'https://learn.microsoft.com/previous-versions/windows/desktop/ms721006(v=vs.85)',
  ),
  'ISpeechObjectTokens': ApiDetails(
    apiName: 'ISpeechObjectTokens',
    description: 'Represents a collection of SpObjectToken objects.',
    helpLink:
        'https://learn.microsoft.com/previous-versions/windows/desktop/ms721389(v=vs.85)',
  ),
  'ISpeechVoiceStatus': ApiDetails(
    apiName: 'ISpeechVoiceStatus',
    description:
        'Defines the types of information returned by the SpVoice.Status method.',
    helpLink:
        'https://learn.microsoft.com/previous-versions/windows/desktop/ms722539(v=vs.85)',
  ),
  'ISpEventSource': ApiDetails(
    apiName: 'ISpEventSource',
    description: 'Provides the mechanism to filter and queue events.',
    helpLink:
        'https://learn.microsoft.com/previous-versions/windows/desktop/ms717848(v=vs.85)',
  ),
  'ISpNotifySource': ApiDetails(
    apiName: 'ISpNotifySource',
    description:
        'Provides a mechanism for a notification but no information on the events that caused the notification.',
    helpLink:
        'https://learn.microsoft.com/previous-versions/windows/desktop/ms717961(v=vs.85)',
  ),
  'ISpVoice': ApiDetails(
    apiName: 'ISpVoice',
    description: 'Enables an application to perform text synthesis operations.',
    helpLink:
        'https://learn.microsoft.com/previous-versions/windows/desktop/ms719576(v=vs.85)',
  ),
  'IUri': ApiDetails(
    apiName: 'IUri',
    description:
        'Exposes methods and properties used to parse and build Uniform Resource Identifiers (URIs).',
    helpLink:
        'https://learn.microsoft.com/previous-versions/windows/internet-explorer/ie-developer/platform-apis/ms775038(v=vs.85)',
  ),
};

const structDocs = <String, ApiDetails>{
  'BLOB': ApiDetails(
    apiName: 'BLOB',
    description: 'Contains information about a block of data.',
    helpLink:
        'https://learn.microsoft.com/windows/win32/api/nspapi/ns-nspapi-blob',
  ),
  'FILETIME': ApiDetails(
    apiName: 'FILETIME',
    description:
        'Holds an unsigned 64-bit date and time value for a file. This value represents the number of 100-nanosecond units since the start of January 1, 1601.',
    helpLink:
        'https://learn.microsoft.com/office/client-developer/outlook/mapi/filetime',
  ),
  'IP_ADAPTER_PREFIX_XP': ApiDetails(
    apiName: 'IP_ADAPTER_PREFIX_XP',
    description: 'Stores an IP address prefix.',
    helpLink:
        'https://learn.microsoft.com/windows/win32/api/iptypes/ns-iptypes-ip_adapter_prefix_xp',
  ),
  'L2_NOTIFICATION_DATA': ApiDetails(
    apiName: 'L2_NOTIFICATION_DATA',
    description:
        'Used by the IHV Extensions DLL to send notifications to any service or applications that has registered for the notification.',
    helpLink:
        'https://learn.microsoft.com/windows/win32/api/l2cmn/ns-l2cmn-l2_notification_data',
  ),
  'VARIANT': ApiDetails(
    apiName: 'VARIANT',
    description:
        'A container for a large union that carries many types of data. The value in the first member of the structure, vt, describes which of the union members is valid.',
    helpLink:
        'https://learn.microsoft.com/windows/win32/api/oaidl/ns-oaidl-variant',
  ),
};
