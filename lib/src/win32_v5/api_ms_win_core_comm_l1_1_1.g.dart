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

final _api_ms_win_core_comm_l1_1_1 =
    DynamicLibrary.open('api-ms-win-core-comm-l1-1-1.dll');

/// Attempts to open a communication device.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-opencommport>.
///
/// {@category onecore}
int OpenCommPort(
        int uPortNumber, int dwDesiredAccess, int dwFlagsAndAttributes) =>
    _OpenCommPort(uPortNumber, dwDesiredAccess, dwFlagsAndAttributes);

final _OpenCommPort = _api_ms_win_core_comm_l1_1_1.lookupFunction<
    HANDLE Function(Uint32 uPortNumber, Uint32 dwDesiredAccess,
        Uint32 dwFlagsAndAttributes),
    int Function(int uPortNumber, int dwDesiredAccess,
        int dwFlagsAndAttributes)>('OpenCommPort');