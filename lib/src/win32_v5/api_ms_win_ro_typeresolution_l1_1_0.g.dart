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

final _api_ms_win_ro_typeresolution_l1_1_0 =
    DynamicLibrary.open('api-ms-win-ro-typeresolution-l1-1-0.dll');

/// Locates and retrieves the metadata file that describes the Application
/// Binary Interface (ABI) for the specified typename.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/rometadataresolution/nf-rometadataresolution-rogetmetadatafile>.
///
/// {@category winrt}
int RoGetMetaDataFile(
        int name,
        VTablePointer? metaDataDispenser,
        Pointer<HSTRING>? metaDataFilePath,
        Pointer<VTablePointer>? metaDataImport,
        Pointer<Uint32>? typeDefToken) =>
    _RoGetMetaDataFile(
        name,
        metaDataDispenser ?? nullptr,
        metaDataFilePath ?? nullptr,
        metaDataImport ?? nullptr,
        typeDefToken ?? nullptr);

final _RoGetMetaDataFile = _api_ms_win_ro_typeresolution_l1_1_0.lookupFunction<
    HRESULT Function(
        HSTRING name,
        VTablePointer metaDataDispenser,
        Pointer<HSTRING> metaDataFilePath,
        Pointer<VTablePointer> metaDataImport,
        Pointer<Uint32> typeDefToken),
    int Function(
        int name,
        VTablePointer metaDataDispenser,
        Pointer<HSTRING> metaDataFilePath,
        Pointer<VTablePointer> metaDataImport,
        Pointer<Uint32> typeDefToken)>('RoGetMetaDataFile');
