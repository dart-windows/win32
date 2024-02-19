// Copyright (c) 2020, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Basic Petzoldian "hello world" Win32 app

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

int mainWindowProc(int hWnd, int uMsg, int wParam, int lParam) {
  switch (uMsg) {
    case WM_DESTROY:
      PostQuitMessage(0);
      return 0;

    case WM_PAINT:
      final ps = calloc<PAINTSTRUCT>();
      final hdc = BeginPaint(hWnd, ps);
      final rect = calloc<RECT>();
      final msg = PWSTR.fromString('Hello, Dart!');

      GetClientRect(hWnd, rect);
      DrawText(hdc, msg, -1, rect, DT_CENTER | DT_VCENTER | DT_SINGLELINE);
      EndPaint(hWnd, ps);

      free(ps);
      free(rect);
      free(msg);

      return 0;
  }
  return DefWindowProc(hWnd, uMsg, wParam, lParam);
}

// An optional approach to launching a GUI app that lets you use a more
// traditional WinMain entry point, rather than having to manually retrieve the
// hInstance and nShowCmd parameters.
void main() => initApp(winMain);

void winMain(int hInstance, List<String> args, int nShowCmd) {
  // Register the window class.
  final className = PWSTR.fromString('Sample Window Class');

  final lpfnWndProc = NativeCallable<WNDPROC>.isolateLocal(
    mainWindowProc,
    exceptionalReturn: 0,
  );

  final wc = calloc<WNDCLASS>();
  wc.ref
    ..style = CS_HREDRAW | CS_VREDRAW
    ..lpfnWndProc = lpfnWndProc.nativeFunction
    ..hInstance = hInstance
    ..lpszClassName = className
    ..hCursor = LoadCursor(null, IDC_ARROW)
    ..hbrBackground = GetStockObject(WHITE_BRUSH);
  RegisterClass(wc);

  // Create the window.
  final windowCaption = PWSTR.fromString('Dart Native Win32 window');
  final hWnd = CreateWindowEx(
    0, // Optional window styles.
    className, // Window class
    windowCaption, // Window caption
    WS_OVERLAPPEDWINDOW, // Window style

    // Size and position
    CW_USEDEFAULT,
    CW_USEDEFAULT,
    CW_USEDEFAULT,
    CW_USEDEFAULT,
    null, // Parent window
    null, // Menu
    hInstance, // Instance handle
    null, // Additional application data
  );
  free(windowCaption);
  free(className);

  if (hWnd == 0) {
    final error = GetLastError();
    throw WindowsException(HRESULT_FROM_WIN32(error));
  }

  ShowWindow(hWnd, nShowCmd);
  UpdateWindow(hWnd);

  // Run the message loop.
  final msg = calloc<MSG>();
  while (GetMessage(msg, null, 0, 0) == TRUE) {
    TranslateMessage(msg);
    DispatchMessage(msg);
  }

  lpfnWndProc.close();
  free(msg);
}
