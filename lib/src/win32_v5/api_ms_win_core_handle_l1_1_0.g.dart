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

final _api_ms_win_core_handle_l1_1_0 =
    DynamicLibrary.open('api-ms-win-core-handle-l1-1-0.dll');

/// Compares two object handles to determine if they refer to the same
/// underlying kernel object.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/handleapi/nf-handleapi-compareobjecthandles>.
///
/// {@category kernelbase}
int CompareObjectHandles(int hFirstObjectHandle, int hSecondObjectHandle) =>
    _CompareObjectHandles(hFirstObjectHandle, hSecondObjectHandle);

final _CompareObjectHandles = _api_ms_win_core_handle_l1_1_0.lookupFunction<
    BOOL Function(HANDLE hFirstObjectHandle, HANDLE hSecondObjectHandle),
    int Function(int hFirstObjectHandle,
        int hSecondObjectHandle)>('CompareObjectHandles');
