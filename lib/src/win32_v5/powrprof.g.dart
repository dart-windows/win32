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

final _powrprof = DynamicLibrary.open('powrprof.dll');

/// Sets or retrieves power information.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/powerbase/nf-powerbase-callntpowerinformation>.
///
/// {@category powrprof}
int CallNtPowerInformation(int informationLevel, Pointer? inputBuffer,
        int inputBufferLength, Pointer? outputBuffer, int outputBufferLength) =>
    _CallNtPowerInformation(informationLevel, inputBuffer ?? nullptr,
        inputBufferLength, outputBuffer ?? nullptr, outputBufferLength);

final _CallNtPowerInformation = _powrprof.lookupFunction<
    NTSTATUS Function(
        Int32 informationLevel,
        Pointer inputBuffer,
        Uint32 inputBufferLength,
        Pointer outputBuffer,
        Uint32 outputBufferLength),
    int Function(
        int informationLevel,
        Pointer inputBuffer,
        int inputBufferLength,
        Pointer outputBuffer,
        int outputBufferLength)>('CallNtPowerInformation');
