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

final _api_ms_win_ro_typeresolution_l1_1_1 =
    DynamicLibrary.open('api-ms-win-ro-typeresolution-l1-1-1.dll');

/// Returns true or false to indicate whether the API contract with the
/// specified name and major version number is present.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/rometadataresolution/nf-rometadataresolution-roisapicontractmajorversionpresent>.
///
/// {@category winrt}
int RoIsApiContractMajorVersionPresent(
        Pointer<Utf16> name, int majorVersion, Pointer<BOOL> present) =>
    _RoIsApiContractMajorVersionPresent(name, majorVersion, present);

final _RoIsApiContractMajorVersionPresent =
    _api_ms_win_ro_typeresolution_l1_1_1.lookupFunction<
        HRESULT Function(
            Pointer<Utf16> name, Uint16 majorVersion, Pointer<BOOL> present),
        int Function(Pointer<Utf16> name, int majorVersion,
            Pointer<BOOL> present)>('RoIsApiContractMajorVersionPresent');

/// Returns true or false to indicate whether the API contract with the
/// specified name and major and minor version number is present.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/rometadataresolution/nf-rometadataresolution-roisapicontractpresent>.
///
/// {@category winrt}
int RoIsApiContractPresent(Pointer<Utf16> name, int majorVersion,
        int minorVersion, Pointer<BOOL> present) =>
    _RoIsApiContractPresent(name, majorVersion, minorVersion, present);

final _RoIsApiContractPresent =
    _api_ms_win_ro_typeresolution_l1_1_1.lookupFunction<
        HRESULT Function(Pointer<Utf16> name, Uint16 majorVersion,
            Uint16 minorVersion, Pointer<BOOL> present),
        int Function(Pointer<Utf16> name, int majorVersion, int minorVersion,
            Pointer<BOOL> present)>('RoIsApiContractPresent');
