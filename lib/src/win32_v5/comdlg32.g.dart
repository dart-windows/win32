// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../callbacks.g.dart';
import '../guid.dart';
import '../structs.g.dart';
import '../types.dart';

final _comdlg32 = DynamicLibrary.open('comdlg32.dll');

/// Creates a Color dialog box that enables the user to select a color.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/commdlg/nc-commdlg-choosecolorw>.
///
/// {@category comdlg32}
int ChooseColor(Pointer<CHOOSECOLOR> param0) => _ChooseColor(param0);

final _ChooseColor = _comdlg32.lookupFunction<
    BOOL Function(Pointer<CHOOSECOLOR> param0),
    int Function(Pointer<CHOOSECOLOR> param0)>('ChooseColorW');

/// Creates a Font dialog box that enables the user to choose attributes for a
/// logical font.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/commdlg/nc-commdlg-choosefontw>.
///
/// {@category comdlg32}
int ChooseFont(Pointer<CHOOSEFONT> param0) => _ChooseFont(param0);

final _ChooseFont = _comdlg32.lookupFunction<
    BOOL Function(Pointer<CHOOSEFONT> param0),
    int Function(Pointer<CHOOSEFONT> param0)>('ChooseFontW');

/// Creates a system-defined modeless Find dialog box that lets the user specify
/// a string to search for and options to use when searching for text in a
/// document.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/commdlg/nf-commdlg-findtextw>.
///
/// {@category comdlg32}
int FindText(Pointer<FINDREPLACE> param0) => _FindText(param0);

final _FindText = _comdlg32.lookupFunction<
    HWND Function(Pointer<FINDREPLACE> param0),
    int Function(Pointer<FINDREPLACE> param0)>('FindTextW');

/// Creates an Open dialog box that lets the user specify the drive, directory,
/// and the name of a file or set of files to be opened.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/commdlg/nf-commdlg-getopenfilenamew>.
///
/// {@category comdlg32}
int GetOpenFileName(Pointer<OPENFILENAME> param0) => _GetOpenFileName(param0);

final _GetOpenFileName = _comdlg32.lookupFunction<
    BOOL Function(Pointer<OPENFILENAME> param0),
    int Function(Pointer<OPENFILENAME> param0)>('GetOpenFileNameW');

/// Creates a Save dialog box that lets the user specify the drive, directory,
/// and name of a file to save.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/commdlg/nf-commdlg-getsavefilenamew>.
///
/// {@category comdlg32}
int GetSaveFileName(Pointer<OPENFILENAME> param0) => _GetSaveFileName(param0);

final _GetSaveFileName = _comdlg32.lookupFunction<
    BOOL Function(Pointer<OPENFILENAME> param0),
    int Function(Pointer<OPENFILENAME> param0)>('GetSaveFileNameW');

/// Creates a system-defined modeless dialog box that lets the user specify a
/// string to search for and a replacement string, as well as options to control
/// the find and replace operations.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/commdlg/nf-commdlg-replacetextw>.
///
/// {@category comdlg32}
int ReplaceText(Pointer<FINDREPLACE> param0) => _ReplaceText(param0);

final _ReplaceText = _comdlg32.lookupFunction<
    HWND Function(Pointer<FINDREPLACE> param0),
    int Function(Pointer<FINDREPLACE> param0)>('ReplaceTextW');