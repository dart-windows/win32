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

final _api_ms_win_service_core_l1_1_5 =
    DynamicLibrary.open('api-ms-win-service-core-l1-1-5.dll');

/// Returns a path for a per-service filesystem location for a service and
/// associated programs to read and/or write state to.
///
/// ```c
/// DWORD GetSharedServiceDirectory(
///   SC_HANDLE                     ServiceHandle,
///   SERVICE_SHARED_DIRECTORY_TYPE DirectoryType,
///   PWCHAR                        PathBuffer,
///   DWORD                         PathBufferLength,
///   DWORD                         *RequiredBufferLength
/// );
/// ```
/// {@category api_ms_win_service_core_l1_1_5}
int GetSharedServiceDirectory(
        int serviceHandle,
        int directoryType,
        Pointer<Utf16>? pathBuffer,
        int pathBufferLength,
        Pointer<Uint32> requiredBufferLength) =>
    _GetSharedServiceDirectory(serviceHandle, directoryType,
        pathBuffer ?? nullptr, pathBufferLength, requiredBufferLength);

final _GetSharedServiceDirectory =
    _api_ms_win_service_core_l1_1_5.lookupFunction<
        Uint32 Function(
            SC_HANDLE serviceHandle,
            Int32 directoryType,
            Pointer<Utf16> pathBuffer,
            Uint32 pathBufferLength,
            Pointer<Uint32> requiredBufferLength),
        int Function(
            int serviceHandle,
            int directoryType,
            Pointer<Utf16> pathBuffer,
            int pathBufferLength,
            Pointer<Uint32> requiredBufferLength)>('GetSharedServiceDirectory');

/// Returns a handle for a registry key for a service and associated programs to
/// read and/or write state to.
///
/// ```c
/// DWORD GetSharedServiceRegistryStateKey(
///   SC_HANDLE                          ServiceHandle,
///   SERVICE_SHARED_REGISTRY_STATE_TYPE StateType,
///   DWORD                              AccessMask,
///   HKEY                               *ServiceStateKey
/// );
/// ```
/// {@category api_ms_win_service_core_l1_1_5}
int GetSharedServiceRegistryStateKey(int serviceHandle, int stateType,
        int accessMask, Pointer<HKEY> serviceStateKey) =>
    _GetSharedServiceRegistryStateKey(
        serviceHandle, stateType, accessMask, serviceStateKey);

final _GetSharedServiceRegistryStateKey =
    _api_ms_win_service_core_l1_1_5.lookupFunction<
        Uint32 Function(SC_HANDLE serviceHandle, Int32 stateType,
            Uint32 accessMask, Pointer<HKEY> serviceStateKey),
        int Function(int serviceHandle, int stateType, int accessMask,
            Pointer<HKEY> serviceStateKey)>('GetSharedServiceRegistryStateKey');
