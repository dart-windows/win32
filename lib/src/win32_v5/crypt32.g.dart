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

final _crypt32 = DynamicLibrary.open('crypt32.dll');

/// Performs encryption on the data in a DATA_BLOB structure.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/dpapi/nf-dpapi-cryptprotectdata>.
///
/// {@category crypt32}
int CryptProtectData(
        Pointer<CRYPT_INTEGER_BLOB> pDataIn,
        Pointer<Utf16>? szDataDescr,
        Pointer<CRYPT_INTEGER_BLOB>? pOptionalEntropy,
        Pointer<CRYPTPROTECT_PROMPTSTRUCT>? pPromptStruct,
        int dwFlags,
        Pointer<CRYPT_INTEGER_BLOB> pDataOut) =>
    _CryptProtectData(
        pDataIn,
        szDataDescr ?? nullptr,
        pOptionalEntropy ?? nullptr,
        nullptr,
        pPromptStruct ?? nullptr,
        dwFlags,
        pDataOut);

final _CryptProtectData = _crypt32.lookupFunction<
    BOOL Function(
        Pointer<CRYPT_INTEGER_BLOB> pDataIn,
        Pointer<Utf16> szDataDescr,
        Pointer<CRYPT_INTEGER_BLOB> pOptionalEntropy,
        Pointer pvReserved,
        Pointer<CRYPTPROTECT_PROMPTSTRUCT> pPromptStruct,
        Uint32 dwFlags,
        Pointer<CRYPT_INTEGER_BLOB> pDataOut),
    int Function(
        Pointer<CRYPT_INTEGER_BLOB> pDataIn,
        Pointer<Utf16> szDataDescr,
        Pointer<CRYPT_INTEGER_BLOB> pOptionalEntropy,
        Pointer pvReserved,
        Pointer<CRYPTPROTECT_PROMPTSTRUCT> pPromptStruct,
        int dwFlags,
        Pointer<CRYPT_INTEGER_BLOB> pDataOut)>('CryptProtectData');

/// Encrypts memory to prevent others from viewing sensitive information in your
/// process.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/dpapi/nf-dpapi-cryptprotectmemory>.
///
/// {@category crypt32}
int CryptProtectMemory(Pointer pDataIn, int cbDataIn, int dwFlags) =>
    _CryptProtectMemory(pDataIn, cbDataIn, dwFlags);

final _CryptProtectMemory = _crypt32.lookupFunction<
    BOOL Function(Pointer pDataIn, Uint32 cbDataIn, Uint32 dwFlags),
    int Function(
        Pointer pDataIn, int cbDataIn, int dwFlags)>('CryptProtectMemory');

/// Decrypts and does an integrity check of the data in a DATA_BLOB structure.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/dpapi/nf-dpapi-cryptunprotectdata>.
///
/// {@category crypt32}
int CryptUnprotectData(
        Pointer<CRYPT_INTEGER_BLOB> pDataIn,
        Pointer<Pointer<Utf16>>? ppszDataDescr,
        Pointer<CRYPT_INTEGER_BLOB>? pOptionalEntropy,
        Pointer<CRYPTPROTECT_PROMPTSTRUCT>? pPromptStruct,
        int dwFlags,
        Pointer<CRYPT_INTEGER_BLOB> pDataOut) =>
    _CryptUnprotectData(
        pDataIn,
        ppszDataDescr ?? nullptr,
        pOptionalEntropy ?? nullptr,
        nullptr,
        pPromptStruct ?? nullptr,
        dwFlags,
        pDataOut);

final _CryptUnprotectData = _crypt32.lookupFunction<
    BOOL Function(
        Pointer<CRYPT_INTEGER_BLOB> pDataIn,
        Pointer<Pointer<Utf16>> ppszDataDescr,
        Pointer<CRYPT_INTEGER_BLOB> pOptionalEntropy,
        Pointer pvReserved,
        Pointer<CRYPTPROTECT_PROMPTSTRUCT> pPromptStruct,
        Uint32 dwFlags,
        Pointer<CRYPT_INTEGER_BLOB> pDataOut),
    int Function(
        Pointer<CRYPT_INTEGER_BLOB> pDataIn,
        Pointer<Pointer<Utf16>> ppszDataDescr,
        Pointer<CRYPT_INTEGER_BLOB> pOptionalEntropy,
        Pointer pvReserved,
        Pointer<CRYPTPROTECT_PROMPTSTRUCT> pPromptStruct,
        int dwFlags,
        Pointer<CRYPT_INTEGER_BLOB> pDataOut)>('CryptUnprotectData');

/// Decrypts memory that was encrypted using the CryptProtectMemory function.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/dpapi/nf-dpapi-cryptunprotectmemory>.
///
/// {@category crypt32}
int CryptUnprotectMemory(Pointer pDataIn, int cbDataIn, int dwFlags) =>
    _CryptUnprotectMemory(pDataIn, cbDataIn, dwFlags);

final _CryptUnprotectMemory = _crypt32.lookupFunction<
    BOOL Function(Pointer pDataIn, Uint32 cbDataIn, Uint32 dwFlags),
    int Function(
        Pointer pDataIn, int cbDataIn, int dwFlags)>('CryptUnprotectMemory');

/// Migrates the current user's master keys after the user's security identifier
/// (SID) has changed.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/dpapi/nf-dpapi-cryptupdateprotectedstate>.
///
/// {@category crypt32}
int CryptUpdateProtectedState(
        PSID? pOldSid,
        Pointer<Utf16>? pwszOldPassword,
        int dwFlags,
        Pointer<Uint32>? pdwSuccessCount,
        Pointer<Uint32>? pdwFailureCount) =>
    _CryptUpdateProtectedState(pOldSid ?? nullptr, pwszOldPassword ?? nullptr,
        dwFlags, pdwSuccessCount ?? nullptr, pdwFailureCount ?? nullptr);

final _CryptUpdateProtectedState = _crypt32.lookupFunction<
    BOOL Function(PSID pOldSid, Pointer<Utf16> pwszOldPassword, Uint32 dwFlags,
        Pointer<Uint32> pdwSuccessCount, Pointer<Uint32> pdwFailureCount),
    int Function(
        PSID pOldSid,
        Pointer<Utf16> pwszOldPassword,
        int dwFlags,
        Pointer<Uint32> pdwSuccessCount,
        Pointer<Uint32> pdwFailureCount)>('CryptUpdateProtectedState');
