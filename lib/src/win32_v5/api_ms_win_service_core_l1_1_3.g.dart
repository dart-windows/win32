// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../callbacks.dart';
import '../guid.dart';
import '../structs.g.dart';
import '../types.dart';
import '../variant.dart';

final _api_ms_win_service_core_l1_1_3 =
    DynamicLibrary.open('api-ms-win-service-core-l1-1-3.dll');

/// Returns a handle for a registry key for a service to read and/or write state
/// to.
///
/// ```c
/// DWORD GetServiceRegistryStateKey(
///   SERVICE_STATUS_HANDLE       ServiceStatusHandle,
///   SERVICE_REGISTRY_STATE_TYPE StateType,
///   DWORD                       AccessMask,
///   HKEY                        *ServiceStateKey
/// );
/// ```
/// {@category api_ms_win_service_core_l1_1_3}
int GetServiceRegistryStateKey(int serviceStatusHandle, int stateType,
        int accessMask, Pointer<IntPtr> serviceStateKey) =>
    _GetServiceRegistryStateKey(
        serviceStatusHandle, stateType, accessMask, serviceStateKey);

final _GetServiceRegistryStateKey =
    _api_ms_win_service_core_l1_1_3.lookupFunction<
        Uint32 Function(IntPtr serviceStatusHandle, Int32 stateType,
            Uint32 accessMask, Pointer<IntPtr> serviceStateKey),
        int Function(int serviceStatusHandle, int stateType, int accessMask,
            Pointer<IntPtr> serviceStateKey)>('GetServiceRegistryStateKey');
