// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

const callbackDocs = <String, String>{
  'Windows.Win32.Graphics.Gdi.FONTENUMPROCW':
      'An application defined callback function used with the '
          'EnumFontFamilies function. \nTo learn more about this callback, see '
          '<https://learn.microsoft.com/previous-versions/dd162621(v=vs.85)>.',
  'Windows.Win32.System.Console.PHANDLER_ROUTINE':
      'An application-defined function used with the SetConsoleCtrlHandler '
          'function. \nTo learn more about this callback, see '
          '<https://learn.microsoft.com/windows/console/handlerroutine>.',
  'Windows.Win32.System.Threading.LPTHREAD_START_ROUTINE':
      'An application-defined function that serves as the starting address for '
          'a thread. \nTo learn more about this callback, see '
          '<https://learn.microsoft.com/previous-versions/windows/desktop/legacy/ms686736(v=vs.85)>.',
  'Windows.Win32.UI.WindowsAndMessaging.WNDENUMPROC':
      'An application-defined callback function used with the EnumWindows or '
          'EnumDesktopWindows function. \nTo learn more about this callback, '
          'see '
          '<https://learn.microsoft.com/previous-versions/windows/desktop/legacy/ms633498(v=vs.85)>.',
};

const constantDocs = <String, String>{};

const enumDocs = <String, String>{};

const functionDocs = <String, String>{};

const interfaceDocs = <String, String>{
  'Windows.Win32.Media.Speech.ISpeechBaseStream':
      'Defines properties and methods for manipulating data streams. '
          '\nTo learn more about this interface, see '
          '<https://learn.microsoft.com/previous-versions/windows/desktop/ms721006(v=vs.85)>.',
  'Windows.Win32.Media.Speech.ISpeechObjectTokens':
      'Represents a collection of SpObjectToken objects. \nTo learn more about '
          'this interface, see '
          '<https://learn.microsoft.com/previous-versions/windows/desktop/ms721389(v=vs.85)>.',
  'Windows.Win32.Media.Speech.ISpeechVoiceStatus':
      'Defines the types of information returned by the SpVoice.Status method.'
          '\nTo learn more about this interface, see '
          '<https://learn.microsoft.com/previous-versions/windows/desktop/ms722539(v=vs.85)>.',
  'Windows.Win32.Media.Speech.ISpEventSource':
      'Provides the mechanism to filter and queue events. \nTo learn more '
          'about this interface, see '
          '<https://learn.microsoft.com/previous-versions/windows/desktop/ms717848(v=vs.85)>.',
  'Windows.Win32.Media.Speech.ISpNotifySource':
      'Provides a mechanism for a notification but no information on the '
          'events that caused the notification. \nTo learn more about this '
          'interface, see '
          '<https://learn.microsoft.com/previous-versions/windows/desktop/ms717961(v=vs.85)>.',
  'Windows.Win32.Media.Speech.ISpVoice':
      'Enables an application to perform text synthesis operations. \nTo learn '
          'more about this interface, see '
          '<https://learn.microsoft.com/previous-versions/windows/desktop/ms719576(v=vs.85)>.',
  'Windows.Win32.Storage.Packaging.Appx.IAppxManifestReader3':
      'Represents an object model of the package manifest that provides '
          'methods to access manifest elements and attributes. \nTo learn more '
          'about this interface, see '
          '<https://learn.microsoft.com/previous-versions/mt796945(v=vs.85)>.',
  'Windows.Win32.Storage.Packaging.Appx.IAppxManifestReader4':
      'Represents an object model of the package manifest that provides '
          'methods to access manifest elements and attributes. \nTo learn more '
          'about this interface, see '
          '<https://learn.microsoft.com/previous-versions/mt796948(v=vs.85)>.',
  'Windows.Win32.System.Com.IPersistMemory':
      'Saves and loads objects from a stream. \nTo learn more about this '
          'interface, see '
          '<https://learn.microsoft.com/previous-versions/windows/internet-explorer/ie-developer/platform-apis/aa768210(v=vs.85)>.',
  'Windows.Win32.System.Com.IUri':
      'Exposes methods and properties used to parse and build Uniform Resource '
          'Identifiers (URIs). \nTo learn more about this interface, see '
          '<https://learn.microsoft.com/previous-versions/windows/internet-explorer/ie-developer/platform-apis/ms775038(v=vs.85)>.',
  'Windows.Win32.UI.Shell.IDesktopWallpaper':
      'Provides methods for managing the desktop wallpaper. \nTo learn more '
          'about this interface, see '
          '<https://learn.microsoft.com/windows/win32/api/shobjidl_core/nn-shobjidl_core-idesktopwallpaper>.',
};

const structDocs = <String, String>{
  'Windows.Win32.Foundation.FILETIME':
      'Holds an unsigned 64-bit date and time value for a file. This value '
          'represents the number of 100-nanosecond units since the start of '
          'January 1, 1601. \nTo learn more about this struct, see '
          '<https://learn.microsoft.com/office/client-developer/outlook/mapi/filetime>.',
  'Windows.Win32.NetworkManagement.WiFi.L2_NOTIFICATION_DATA':
      'Used by the IHV Extensions DLL to send notifications to any service or '
          'applications that has registered for the notification. \nTo learn '
          'more about this struct, see '
          '<https://learn.microsoft.com/windows/win32/api/l2cmn/ns-l2cmn-l2_notification_data>.',
  'Windows.Win32.System.Com.BLOB':
      'Contains information about a block of data. \nTo learn more about this '
          'struct, see '
          '<https://learn.microsoft.com/windows/win32/api/nspapi/ns-nspapi-blob>.',
  'Windows.Win32.System.Variant.VARIANT':
      'A container for a large union that carries many types of data. The '
          'value in the first member of the structure, vt, describes which of '
          'the union members is valid. \nTo learn more about this struct, see '
          '<https://learn.microsoft.com/windows/win32/api/oaidl/ns-oaidl-variant>.',
};
