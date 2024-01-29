// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// ignore_for_file: constant_identifier_names

import 'dart:ffi';
import 'dart:io';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'canvas.dart';
import 'game.dart';

const PX_PER_BLOCK = 25; // Cell size in pixels
const SCREEN_WIDTH = 10; // Level width in cells
const SCREEN_HEIGHT = 20; // Level height in cells
const GAME_SPEED = 33; // Update the game every GAME_SPEED ms (= 1000/fps)
const TIMER_ID = 1;

final hInstance = GetModuleHandle(nullptr);

late Game game;
late Canvas canvas;

void main() {
  final szAppName = 'Tetris'.toNativeUtf16();

  final lpfnWndProc = NativeCallable<WNDPROC>.isolateLocal(
    mainWindowProc,
    exceptionalReturn: 0,
  );

  final wc = calloc<WNDCLASS>();
  wc.ref
    ..style = CS_HREDRAW | CS_VREDRAW | CS_OWNDC
    ..lpfnWndProc = lpfnWndProc.nativeFunction
    ..hInstance = hInstance
    ..hIcon = LoadIcon(null, IDI_APPLICATION)
    ..hCursor = LoadCursor(null, IDC_ARROW)
    ..hbrBackground = GetStockObject(BLACK_BRUSH)
    ..lpszClassName = szAppName;
  RegisterClass(wc);

  final hWnd = CreateWindowEx(
      0, // Optional window styles.
      szAppName, // Window class
      szAppName, // Window text
      WS_MINIMIZEBOX | WS_SYSMENU, // Window style

      // Size and position
      CW_USEDEFAULT,
      CW_USEDEFAULT,
      SCREEN_WIDTH * PX_PER_BLOCK + 156,
      SCREEN_HEIGHT * PX_PER_BLOCK + 25,
      null, // Parent window
      null, // Menu
      hInstance, // Instance handle
      nullptr // Additional application data
      );

  if (hWnd == 0) {
    stderr.writeln('CreateWindowEx failed with error: ${GetLastError()}');
    exit(-1);
  }

  ShowWindow(hWnd, SW_SHOWNORMAL);
  UpdateWindow(hWnd);

  // Run the message loop.
  final msg = calloc<MSG>();
  while (GetMessage(msg, null, 0, 0) != 0) {
    TranslateMessage(msg);
    DispatchMessage(msg);
  }

  lpfnWndProc.close();
  free(szAppName);
}

int mainWindowProc(int hwnd, int uMsg, int wParam, int lParam) {
  int hdc;
  var result = 0;

  final ps = calloc<PAINTSTRUCT>();

  switch (uMsg) {
    case WM_CREATE:
      hdc = GetDC(hwnd);

      canvas = Canvas(hdc, hwnd, PX_PER_BLOCK);
      game = Game(canvas);
      SetTimer(hwnd, TIMER_ID, GAME_SPEED, nullptr);

      ReleaseDC(hwnd, hdc);

    case WM_KEYDOWN:
      game.keyPress(wParam);

    case WM_TIMER:
      game.timerUpdate();

    case WM_KILLFOCUS:
      KillTimer(hwnd, TIMER_ID);
      game.pauseGame();

    case WM_SETFOCUS:
      SetTimer(hwnd, TIMER_ID, GAME_SPEED, nullptr);

    case WM_PAINT:
      hdc = BeginPaint(hwnd, ps);
      game.repaint();
      EndPaint(hwnd, ps);

    case WM_DESTROY:
      KillTimer(hwnd, TIMER_ID);
      PostQuitMessage(0);

    default:
      result = DefWindowProc(hwnd, uMsg, wParam, lParam);
  }

  free(ps);

  return result;
}
