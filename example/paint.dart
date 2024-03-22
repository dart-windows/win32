// Copyright (c) 2020, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Demonstrates simple GDI drawing and min/max window sizing

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

int mainWindowProc(int hwnd, int uMsg, int wParam, int lParam) {
  switch (uMsg) {
    case WM_DESTROY:
      PostQuitMessage(0);
      return 0;

    case WM_GETMINMAXINFO:
      final info = Pointer<MINMAXINFO>.fromAddress(lParam).ref;
      info.ptMinTrackSize.x = 400;
      info.ptMinTrackSize.y = 400;
      return 0;

    case WM_PAINT:
      final ps = calloc<PAINTSTRUCT>();
      final hdc = BeginPaint(hwnd, ps);
      final rect = calloc<RECT>();

      GetClientRect(hwnd, rect);
      for (var i = 1; i <= 20; i++) {
        final color = (255 - 256 / 10 * i).round();
        final hBrush = CreateSolidBrush(
          RGB(0, color >= 0 ? color : 0, color >= 0 ? color : 0),
        );
        rect.ref.left = rect.ref.left + 10;
        rect.ref.right = rect.ref.right - 10;
        rect.ref.top = rect.ref.top + 10;
        rect.ref.bottom = rect.ref.bottom - 10;
        FillRect(hdc, rect, hBrush);
        DeleteObject(hBrush);
      }

      EndPaint(hwnd, ps);
      free(rect);
      free(ps);

      return 0;
  }
  return DefWindowProc(hwnd, uMsg, wParam, lParam);
}

void main() => initApp(winMain);

void winMain(int hInstance, List<String> args, int nShowCmd) {
  // Register the window class.
  final className = PWSTR.fromString('Simple Paint Sample');

  final lpfnWndProc = NativeCallable<WNDPROC>.isolateLocal(
    mainWindowProc,
    exceptionalReturn: 0,
  );

  final wc = calloc<WNDCLASS>();
  wc.ref
    ..style = WNDCLASS_STYLES.CS_HREDRAW | WNDCLASS_STYLES.CS_VREDRAW
    ..lpfnWndProc = lpfnWndProc.nativeFunction
    ..hInstance = hInstance
    ..lpszClassName = className
    ..hCursor = LoadCursor(null, IDC_ARROW)
    ..hbrBackground = GetStockObject(GET_STOCK_OBJECT_FLAGS.WHITE_BRUSH);
  RegisterClass(wc);

  // Create the window.

  final hWnd = CreateWindowEx(
    0, // Optional window styles.
    className, // Window class
    className, // Window caption
    WINDOW_STYLE.WS_OVERLAPPEDWINDOW, // Window style

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
  free(className);
}
