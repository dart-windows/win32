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

final _ntdll = DynamicLibrary.open('ntdll.dll');

/// Retrieves the specified system information.
///
/// ```c
/// NTSTATUS NtQuerySystemInformation(
///    [in]            SYSTEM_INFORMATION_CLASS SystemInformationClass,
///    [in, out]       PVOID                    SystemInformation,
///    [in]            ULONG                    SystemInformationLength,
///    [out, optional] PULONG                   ReturnLength
/// );
/// ```
/// {@category ntdll}
int NtQuerySystemInformation(
        int systemInformationClass,
        Pointer systemInformation,
        int systemInformationLength,
        Pointer<Uint32> returnLength) =>
    _NtQuerySystemInformation(systemInformationClass, systemInformation,
        systemInformationLength, returnLength);

final _NtQuerySystemInformation = _ntdll.lookupFunction<
    Int32 Function(Int32 systemInformationClass, Pointer systemInformation,
        Uint32 systemInformationLength, Pointer<Uint32> returnLength),
    int Function(
        int systemInformationClass,
        Pointer systemInformation,
        int systemInformationLength,
        Pointer<Uint32> returnLength)>('NtQuerySystemInformation');