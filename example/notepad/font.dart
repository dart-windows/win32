// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// font.dart

// Font selection

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

class NotepadFont {
  final logfont = calloc<LOGFONT>();
  final int hwndEdit;
  int hFont = NULL;

  NotepadFont(this.hwndEdit) {
    GetThemeSysFont(NULL, TMT_MENUFONT, logfont);

    hFont = CreateFontIndirect(logfont);
    SendMessage(hwndEdit, WM_SETFONT, hFont, 0);
  }

  bool notepadChooseFont(int hwnd) {
    final cf = calloc<CHOOSEFONT>();
    cf.ref
      ..lStructSize = sizeOf<CHOOSEFONT>()
      ..hwndOwner = hwnd
      ..lpLogFont = logfont
      ..Flags = CF_INITTOLOGFONTSTRUCT | CF_SCREENFONTS | CF_EFFECTS;

    final result = ChooseFont(cf);
    free(cf);

    return result == TRUE;
  }

  void notepadSetFont() {
    int hFontNew;
    final rect = calloc<RECT>();

    hFontNew = CreateFontIndirect(logfont);

    SendMessage(hwndEdit, WM_SETFONT, hFontNew, FALSE);
    DeleteObject(hFont);
    hFont = hFontNew;

    GetClientRect(hwndEdit, rect);
    InvalidateRect(hwndEdit, rect, TRUE);

    free(rect);
  }

  void dispose() {
    DeleteObject(hFont);
  }
}
