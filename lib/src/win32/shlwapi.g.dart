// Copyright (c) 2020, Dart | Windows.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, non_constant_identifier_names
// ignore_for_file: constant_identifier_names, camel_case_types

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../callbacks.dart';
import '../guid.dart';
import '../structs.g.dart';
import '../types.dart';
import '../variant.dart';

final _shlwapi = DynamicLibrary.open('shlwapi.dll');

/// Creates a memory stream using a similar process to
/// CreateStreamOnHGlobal.
///
/// ```c
/// IStream* SHCreateMemStream(
///   [in, optional] const BYTE *pInit,
///   [in]           UINT       cbInit
/// );
/// ```
/// {@category shell32}
VTablePointer SHCreateMemStream(Pointer<Uint8> pInit, int cbInit) =>
    _SHCreateMemStream(pInit, cbInit);

final _SHCreateMemStream = _shlwapi.lookupFunction<
    VTablePointer Function(Pointer<Uint8> pInit, Uint32 cbInit),
    VTablePointer Function(
        Pointer<Uint8> pInit, int cbInit)>('SHCreateMemStream');
