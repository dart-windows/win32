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

final _api_ms_win_core_comm_l1_1_2 =
    DynamicLibrary.open('api-ms-win-core-comm-l1-1-2.dll');

/// Gets an array that contains the well-formed COM ports.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-getcommports>.
///
/// {@category onecore}
int GetCommPorts(Pointer<Uint32> lpPortNumbers, int uPortNumbersCount,
        Pointer<Uint32> puPortNumbersFound) =>
    _GetCommPorts(lpPortNumbers, uPortNumbersCount, puPortNumbersFound);

final _GetCommPorts = _api_ms_win_core_comm_l1_1_2.lookupFunction<
    Uint32 Function(Pointer<Uint32> lpPortNumbers, Uint32 uPortNumbersCount,
        Pointer<Uint32> puPortNumbersFound),
    int Function(Pointer<Uint32> lpPortNumbers, int uPortNumbersCount,
        Pointer<Uint32> puPortNumbersFound)>('GetCommPorts');