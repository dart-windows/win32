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

final _scarddlg = DynamicLibrary.open('scarddlg.dll');

/// Displays the smart card Select Card dialog box.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/nf-winscard-scarduidlgselectcardw>.
///
/// {@category winscard}
int SCardUIDlgSelectCard(Pointer<OPENCARDNAME_EX> param0) =>
    _SCardUIDlgSelectCard(param0);

final _SCardUIDlgSelectCard = _scarddlg.lookupFunction<
    Int32 Function(Pointer<OPENCARDNAME_EX> param0),
    int Function(Pointer<OPENCARDNAME_EX> param0)>('SCardUIDlgSelectCardW');
