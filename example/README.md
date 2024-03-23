The package includes a number of examples in the `example` subdirectory, which
demonstrate various aspects of invoking Windows APIs, including:

- Invoking C-style APIs, including creating structs and memory management
- Building classic (Win32) desktop UI
- Using callback functions with Win32 APIs
- Invoking COM classes (both `IUnknown` and `IDispatch` interface types)
- Integrating Windows code with Flutter

Other examples of packages that use `win32` can be found on
[pub.dev](https://pub.dev/packages?q=dependency%3Awin32).

## Windows system APIs (kernel32)

| Example             | Description                                             |
| ------------------- | ------------------------------------------------------- |
| [credentials.dart]  | Adds a credential to the store and retrieves it         |
| [dump.dart]         | Use debugger libraries to print DLL exported functions  |
| [dynamic_load.dart] | Demonstrate loading a DLL and calling it at runtime     |
| [filever.dart]      | Getting file version information from the file resource |
| [manifest]          | Demonstrates the use of app manifests for compiled apps |
| [modules.dart]      | Enumerates all loaded modules on the current system     |
| [pipe.dart]         | Shows use of named pipes for interprocess communication |
| [registry.dart]     | Demonstrates querying the registry for values           |
| [vt.dart]           | Shows virtual terminal sequences                        |
| [wsl.dart]          | Retrieve information from a WSL instance through APIs   |

[credentials.dart]: https://github.com/dart-windows/win32/blob/main/example/credentials.dart
[dump.dart]: https://github.com/dart-windows/win32/blob/main/example/dump.dart
[dynamic_load.dart]: https://github.com/dart-windows/win32/blob/main/example/dynamic_load.dart
[filever.dart]: https://github.com/dart-windows/win32/blob/main/example/filever.dart
[manifest]: https://github.com/dart-windows/win32/blob/main/example/manifest
[modules.dart]: https://github.com/dart-windows/win32/blob/main/example/modules.dart
[pipe.dart]: https://github.com/dart-windows/win32/blob/main/example/pipe.dart
[registry.dart]: https://github.com/dart-windows/win32/blob/main/example/registry.dart
[vt.dart]: https://github.com/dart-windows/win32/blob/main/example/vt.dart
[wsl.dart]: https://github.com/dart-windows/win32/blob/main/example/wsl.dart

## Accessing local hardware and devices

| Example             | Description                                               |
| ------------------- | --------------------------------------------------------- |
| [bluetooth.dart]    | Demonstrate enumerating Bluetooth devices                 |
| [bluetoothle.dart]  | Enumerate Bluetooth LE (Low Energy) devices               |
| [devices.dart]      | Uses volume management APIs to list all disk devices      |
| [diskinfo.dart]     | Use `DeviceIoControl` API for direct device operations    |
| [gamepad.dart]      | Show which gamepads are connected                         |
| [midi.dart]         | Demonstrates MIDI playback using MCI commands             |
| [monitor.dart]      | Uses DDC and monitor-config API to get monitor caps       |
| [play_sound.dart]   | Plays a WAV file through the Windows `PlaySound` API      |
| [printer_list.dart] | Enumerate available printers on the system                |
| [printer_raw.dart]  | Sends RAW data directly to a Windows Printer              |
| [serial.dart]       | Demonstrates serial port management                       |
| [setupapi.dart]     | Show using setup APIs to retrieve device interfaces       |
| [speech.dart]       | Use Windows speech client for text-to-speech              |
| [sysinfo.dart]      | Examples of getting device information from native C APIs |
| [wasapi.dart]       | Demonstrates sound generation with WASAPI library         |

[bluetooth.dart]: https://github.com/dart-windows/win32/blob/main/example/bluetooth.dart
[bluetoothle.dart]: https://github.com/dart-windows/win32/blob/main/example/bluetoothle.dart
[devices.dart]: https://github.com/dart-windows/win32/blob/main/example/devices.dart
[diskinfo.dart]: https://github.com/dart-windows/win32/blob/main/example/diskinfo.dart
[gamepad.dart]: https://github.com/dart-windows/win32/blob/main/example/gamepad.dart
[midi.dart]: https://github.com/dart-windows/win32/blob/main/example/midi.dart
[monitor.dart]: https://github.com/dart-windows/win32/blob/main/example/monitor.dart
[play_sound.dart]: https://github.com/dart-windows/win32/blob/main/example/play_sound.dart
[printer_list.dart]: https://github.com/dart-windows/win32/blob/main/example/printer_list.dart
[printer_raw.dart]: https://github.com/dart-windows/win32/blob/main/example/printer_raw.dart
[serial.dart]: https://github.com/dart-windows/win32/blob/main/example/serial.dart
[setupapi.dart]: https://github.com/dart-windows/win32/blob/main/example/setupapi.dart
[speech.dart]: https://github.com/dart-windows/win32/blob/main/example/speech.dart
[sysinfo.dart]: https://github.com/dart-windows/win32/blob/main/example/sysinfo.dart
[wasapi.dart]: https://github.com/dart-windows/win32/blob/main/example/wasapi.dart

## Windows shell manipulation (shell32)

| Example             | Description                                             |
| ------------------- | ------------------------------------------------------- |
| [knownfolder.dart]  | Retrieves known folders from the current user profile   |
| [magnifier.dart]    | Provides a magnifier window using the Magnification API |
| [recycle_bin.dart]  | Queries the recycle bin and adds an item to it          |
| [screenshot.dart]   | Takes snapshots of all connected displays               |
| [shell_notify_icon] | Demonstrates adding an icon to the system tray          |
| [shortcut.dart]     | Demonstrates creating a Windows shell link              |
| [wallpaper.dart]    | Shows what wallpaper and background color are set       |

[knownfolder.dart]: https://github.com/dart-windows/win32/blob/main/example/knownfolder.dart
[magnifier.dart]: https://github.com/dart-windows/win32/blob/main/example/magnifier.dart
[recycle_bin.dart]: https://github.com/dart-windows/win32/blob/main/example/recycle_bin.dart
[screenshot.dart]: https://github.com/dart-windows/win32/blob/main/example/screenshot.dart
[shell_notify_icon]: https://github.com/dart-windows/win32/blob/main/example/shell_notify_icon
[shortcut.dart]: https://github.com/dart-windows/win32/blob/main/example/shortcut.dart
[wallpaper.dart]: https://github.com/dart-windows/win32/blob/main/example/wallpaper.dart

## Win32-style UI development (user32, gdi32, commdlg32)

| Example               | Description                                               |
| --------------------- | --------------------------------------------------------- |
| [hello.dart]          | Basic Petzoldian "hello world" Win32 app                  |
| [msgbox.dart]         | Demonstrates a MessageBox from the console                |
| [commdlg.dart]        | Demonstrates using the color chooser common dialog box    |
| [customtitlebar.dart] | Demonstrates creation of owner-draw title bar region      |
| [customwin.dart]      | Displays a non-rectangular window                         |
| [dialogbox.dart]      | Create a custom dialog box in code                        |
| [dialogshow.dart]     | Creates a common item dialog (file picker) using COM      |
| [notepad]             | Lightweight replica of the Windows notepad applet         |
| [paint.dart]          | Demonstrates simple GDI drawing and min/max window sizing |
| [scroll.dart]         | Example of horizontal and vertical scrolling text window  |
| [sendinput.dart]      | Sends keyboard and mouse input to another window          |
| [snake.dart]          | Snake game using various GDI features                     |
| [taskdialog.dart]     | Demonstrates using modern task dialog boxes               |
| [tetris]              | Port of an open-source Tetris game to Dart                |
| [window.dart]         | Enumerates open windows and basic window manipulation     |

[hello.dart]: https://github.com/dart-windows/win32/blob/main/example/hello.dart
[msgbox.dart]: https://github.com/dart-windows/win32/blob/main/example/msgbox.dart
[commdlg.dart]: https://github.com/dart-windows/win32/blob/main/example/commdlg.dart
[customtitlebar.dart]: https://github.com/dart-windows/win32/blob/main/example/customtitlebar.dart
[customwin.dart]: https://github.com/dart-windows/win32/blob/main/example/customwin.dart
[dialogbox.dart]: https://github.com/dart-windows/win32/blob/main/example/dialogbox.dart
[dialogshow.dart]: https://github.com/dart-windows/win32/blob/main/example/dialogshow.dart
[notepad]: https://github.com/dart-windows/win32/blob/main/example/notepad
[paint.dart]: https://github.com/dart-windows/win32/blob/main/example/paint.dart
[scroll.dart]: https://github.com/dart-windows/win32/blob/main/example/scroll.dart
[sendinput.dart]: https://github.com/dart-windows/win32/blob/main/example/sendinput.dart
[snake.dart]: https://github.com/dart-windows/win32/blob/main/example/snake.dart
[taskdialog.dart]: https://github.com/dart-windows/win32/blob/main/example/taskdialog.dart
[tetris]: https://github.com/dart-windows/win32/blob/main/example/tetris
[window.dart]: https://github.com/dart-windows/win32/blob/main/example/window.dart

## COM APIs

| Example             | Description                                                    |
| ------------------- | -------------------------------------------------------------- |
| [com_context.dart]  | Shows interaction of Dart isolates and COM apartments          |
| [com_demo.dart]     | Demonstrates COM object creation, casting, and calling methods |
| [dispatcher.dart]   | Demonstrates calling a method using `Dispatcher`               |
| [guid.dart]         | Creates a globally unique identifier (GUID)                    |
| [uiautomation.dart] | Demonstrates calling Windows UI Automation APIs                |
| [winhttp.dart]      | Demonstrates using WinHTTP APIs to make HTTP requests          |
| [wmi_perf.dart]     | Uses WMI to retrieve performance counters                      |
| [wmi_wql.dart]      | Uses WMI to retrieve information using WQL                     |

[com_context.dart]: https://github.com/dart-windows/win32/blob/main/example/com_context.dart
[com_demo.dart]: https://github.com/dart-windows/win32/blob/main/example/com_demo.dart
[dispatcher.dart]: https://github.com/dart-windows/win32/blob/main/example/dispatcher.dart
[guid.dart]: https://github.com/dart-windows/win32/blob/main/example/guid.dart
[uiautomation.dart]: https://github.com/dart-windows/win32/blob/main/example/uiautomation.dart
[winhttp.dart]: https://github.com/dart-windows/win32/blob/main/example/winhttp.dart
[wmi_perf.dart]: https://github.com/dart-windows/win32/blob/main/example/wmi_perf.dart
[wmi_wql.dart]: https://github.com/dart-windows/win32/blob/main/example/wmi_wql.dart

## Flutter

| Example    | Description                                          |
| ---------- | ---------------------------------------------------- |
| [explorer] | Example Flutter app that uses Win32 file picker APIs |

[explorer]: https://github.com/dart-windows/win32/blob/main/example/explorer
