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

final _rometadata = DynamicLibrary.open('rometadata.dll');

/// Creates a dispenser class.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/rometadata/nf-rometadata-metadatagetdispenser>.
///
/// {@category rometadata}
int MetaDataGetDispenser(
        Pointer<GUID> rclsid, Pointer<GUID> riid, Pointer<Pointer> ppv) =>
    _MetaDataGetDispenser(rclsid, riid, ppv);

final _MetaDataGetDispenser = _rometadata.lookupFunction<
    HRESULT Function(
        Pointer<GUID> rclsid, Pointer<GUID> riid, Pointer<Pointer> ppv),
    int Function(Pointer<GUID> rclsid, Pointer<GUID> riid,
        Pointer<Pointer> ppv)>('MetaDataGetDispenser');
