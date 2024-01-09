// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:ffi';
import 'dart:math' as math;

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import '_app.dart' as app;

bool _windowWndProc(int hWnd, int uMsg, int wParam, int lParam) {
  switch (uMsg) {
    case WM_CLOSE:
      ShowWindow(hWnd, SW_HIDE);
      return true;
  }
  return false;
}

int createHidden() {
  final windowClassNme = _regWinClass();
  final rect = _getWindowCenterRect();
  final hWnd = CreateWindowEx(
      0,
      TEXT(windowClassNme),
      TEXT('Tray Callback Window'),
      WS_OVERLAPPEDWINDOW,
      rect.left,
      rect.top,
      rect.width,
      rect.height,
      NULL,
      NULL,
      app.hInst,
      nullptr);
  app.registerWndProc(_windowWndProc);
  return hWnd;
}

String _regWinClass() {
  const windowClass = 'Tray_Callback_Window';
  final pWndClass = calloc<WNDCLASS>();
  pWndClass.ref
    ..style = CS_HREDRAW | CS_VREDRAW
    ..lpfnWndProc = app.lpfnWndProc.nativeFunction
    ..hInstance = app.hInst
    ..hIcon = app.loadDartIcon()
    ..hCursor = LoadCursor(NULL, IDC_ARROW)
    ..lpszClassName = TEXT(windowClass);
  RegisterClass(pWndClass);
  return windowClass;
}

math.Rectangle<int> _getWindowCenterRect() {
  const windowWidth = 500;
  const windowHeight = 250;

  final screenWidth = GetSystemMetrics(SM_CXFULLSCREEN);
  final screenHeight = GetSystemMetrics(SM_CYFULLSCREEN);

  final x = (screenWidth - windowWidth) ~/ 2;
  final y = (screenHeight - windowHeight) ~/ 2;
  return math.Rectangle(x, y, windowWidth, windowHeight);
}
