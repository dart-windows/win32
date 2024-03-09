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

final _api_ms_win_service_core_l1_1_4 =
    DynamicLibrary.open('api-ms-win-service-core-l1-1-4.dll');

/// Returns a path for a per-service filesystem location for a service to read
/// and/or write state to.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/nf-winsvc-getservicedirectory>.
///
/// {@category onecore}
int GetServiceDirectory(
        int hServiceStatus,
        int eDirectoryType,
        Pointer<Utf16>? lpPathBuffer,
        int cchPathBufferLength,
        Pointer<Uint32> lpcchRequiredBufferLength) =>
    _GetServiceDirectory(
        hServiceStatus,
        eDirectoryType,
        lpPathBuffer ?? nullptr,
        cchPathBufferLength,
        lpcchRequiredBufferLength);

final _GetServiceDirectory = _api_ms_win_service_core_l1_1_4.lookupFunction<
    Uint32 Function(
        SERVICE_STATUS_HANDLE hServiceStatus,
        Int32 eDirectoryType,
        Pointer<Utf16> lpPathBuffer,
        Uint32 cchPathBufferLength,
        Pointer<Uint32> lpcchRequiredBufferLength),
    int Function(
        int hServiceStatus,
        int eDirectoryType,
        Pointer<Utf16> lpPathBuffer,
        int cchPathBufferLength,
        Pointer<Uint32> lpcchRequiredBufferLength)>('GetServiceDirectory');