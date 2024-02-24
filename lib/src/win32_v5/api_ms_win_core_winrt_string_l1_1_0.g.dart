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

final _api_ms_win_core_winrt_string_l1_1_0 =
    DynamicLibrary.open('api-ms-win-core-winrt-string-l1-1-0.dll');

/// Compares two specified HSTRING objects and returns an integer that indicates
/// their relative position in a sort order.
///
/// ```c
/// HRESULT WindowsCompareStringOrdinal(
///   HSTRING string1,
///   HSTRING string2,
///   INT32   *result
/// );
/// ```
/// {@category winrt}
int WindowsCompareStringOrdinal(
        int? string1, int? string2, Pointer<Int32> result) =>
    _WindowsCompareStringOrdinal(string1 ?? 0, string2 ?? 0, result);

final _WindowsCompareStringOrdinal =
    _api_ms_win_core_winrt_string_l1_1_0.lookupFunction<
        HRESULT Function(
            HSTRING string1, HSTRING string2, Pointer<Int32> result),
        int Function(int string1, int string2,
            Pointer<Int32> result)>('WindowsCompareStringOrdinal');

/// Concatenates two specified strings.
///
/// ```c
/// HRESULT WindowsConcatString(
///   HSTRING string1,
///   HSTRING string2,
///   HSTRING *newString
/// );
/// ```
/// {@category winrt}
int WindowsConcatString(
        int? string1, int? string2, Pointer<HSTRING> newString) =>
    _WindowsConcatString(string1 ?? 0, string2 ?? 0, newString);

final _WindowsConcatString =
    _api_ms_win_core_winrt_string_l1_1_0.lookupFunction<
        HRESULT Function(
            HSTRING string1, HSTRING string2, Pointer<HSTRING> newString),
        int Function(int string1, int string2,
            Pointer<HSTRING> newString)>('WindowsConcatString');

/// Creates a new HSTRING based on the specified source string.
///
/// ```c
/// HRESULT WindowsCreateString(
///   PCNZWCH sourceString,
///   UINT32  length,
///   HSTRING *string
/// );
/// ```
/// {@category winrt}
int WindowsCreateString(
        Pointer<Utf16>? sourceString, int length, Pointer<HSTRING> string) =>
    _WindowsCreateString(sourceString ?? nullptr, length, string);

final _WindowsCreateString =
    _api_ms_win_core_winrt_string_l1_1_0.lookupFunction<
        HRESULT Function(Pointer<Utf16> sourceString, Uint32 length,
            Pointer<HSTRING> string),
        int Function(Pointer<Utf16> sourceString, int length,
            Pointer<HSTRING> string)>('WindowsCreateString');

/// Decrements the reference count of a string buffer.
///
/// ```c
/// HRESULT WindowsDeleteString(
///   HSTRING string
/// );
/// ```
/// {@category winrt}
int WindowsDeleteString(int? string) => _WindowsDeleteString(string ?? 0);

final _WindowsDeleteString = _api_ms_win_core_winrt_string_l1_1_0
    .lookupFunction<HRESULT Function(HSTRING string), int Function(int string)>(
        'WindowsDeleteString');

/// Discards a preallocated string buffer if it was not promoted to an HSTRING.
///
/// ```c
/// HRESULT WindowsDeleteStringBuffer(
///   HSTRING_BUFFER bufferHandle
/// );
/// ```
/// {@category winrt}
int WindowsDeleteStringBuffer(int? bufferHandle) =>
    _WindowsDeleteStringBuffer(bufferHandle ?? 0);

final _WindowsDeleteStringBuffer =
    _api_ms_win_core_winrt_string_l1_1_0.lookupFunction<
        HRESULT Function(HSTRING_BUFFER bufferHandle),
        int Function(int bufferHandle)>('WindowsDeleteStringBuffer');

/// Creates a copy of the specified string.
///
/// ```c
/// HRESULT WindowsDuplicateString(
///   HSTRING string,
/// HSTRING *newString
/// );
/// ```
/// {@category winrt}
int WindowsDuplicateString(int? string, Pointer<HSTRING> newString) =>
    _WindowsDuplicateString(string ?? 0, newString);

final _WindowsDuplicateString =
    _api_ms_win_core_winrt_string_l1_1_0.lookupFunction<
        HRESULT Function(HSTRING string, Pointer<HSTRING> newString),
        int Function(
            int string, Pointer<HSTRING> newString)>('WindowsDuplicateString');

/// Gets the length, in Unicode characters, of the specified string.
///
/// ```c
/// UINT32 WindowsGetStringLen(
///   HSTRING string
/// );
/// ```
/// {@category winrt}
int WindowsGetStringLen(int? string) => _WindowsGetStringLen(string ?? 0);

final _WindowsGetStringLen = _api_ms_win_core_winrt_string_l1_1_0
    .lookupFunction<Uint32 Function(HSTRING string), int Function(int string)>(
        'WindowsGetStringLen');

/// Retrieves the backing buffer for the specified string.
///
/// ```c
/// PCWSTR WindowsGetStringRawBuffer(
///   HSTRING string,
///   UINT32  *length
/// );
/// ```
/// {@category winrt}
Pointer<Utf16> WindowsGetStringRawBuffer(
        int? string, Pointer<Uint32>? length) =>
    _WindowsGetStringRawBuffer(string ?? 0, length ?? nullptr);

final _WindowsGetStringRawBuffer =
    _api_ms_win_core_winrt_string_l1_1_0.lookupFunction<
        Pointer<Utf16> Function(HSTRING string, Pointer<Uint32> length),
        Pointer<Utf16> Function(
            int string, Pointer<Uint32> length)>('WindowsGetStringRawBuffer');

/// Indicates whether the specified string is the empty string.
///
/// ```c
/// BOOL WindowsIsStringEmpty(
///   HSTRING string
/// );
/// ```
/// {@category winrt}
int WindowsIsStringEmpty(int? string) => _WindowsIsStringEmpty(string ?? 0);

final _WindowsIsStringEmpty = _api_ms_win_core_winrt_string_l1_1_0
    .lookupFunction<BOOL Function(HSTRING string), int Function(int string)>(
        'WindowsIsStringEmpty');

/// Allocates a mutable character buffer for use in HSTRING creation.
///
/// ```c
/// HRESULT WindowsPreallocateStringBuffer(
///   UINT32         length,
///   WCHAR          **charBuffer,
///   HSTRING_BUFFER *bufferHandle
/// );
/// ```
/// {@category winrt}
int WindowsPreallocateStringBuffer(
        int length,
        Pointer<Pointer<Uint16>> charBuffer,
        Pointer<HSTRING_BUFFER> bufferHandle) =>
    _WindowsPreallocateStringBuffer(length, charBuffer, bufferHandle);

final _WindowsPreallocateStringBuffer =
    _api_ms_win_core_winrt_string_l1_1_0.lookupFunction<
            HRESULT Function(Uint32 length, Pointer<Pointer<Uint16>> charBuffer,
                Pointer<HSTRING_BUFFER> bufferHandle),
            int Function(int length, Pointer<Pointer<Uint16>> charBuffer,
                Pointer<HSTRING_BUFFER> bufferHandle)>(
        'WindowsPreallocateStringBuffer');

/// Creates an HSTRING from the specified HSTRING_BUFFER.
///
/// ```c
/// HRESULT WindowsPromoteStringBuffer(
///   HSTRING_BUFFER bufferHandle,
///   HSTRING        *string
/// );
/// ```
/// {@category winrt}
int WindowsPromoteStringBuffer(int bufferHandle, Pointer<HSTRING> string) =>
    _WindowsPromoteStringBuffer(bufferHandle, string);

final _WindowsPromoteStringBuffer =
    _api_ms_win_core_winrt_string_l1_1_0.lookupFunction<
        HRESULT Function(HSTRING_BUFFER bufferHandle, Pointer<HSTRING> string),
        int Function(int bufferHandle,
            Pointer<HSTRING> string)>('WindowsPromoteStringBuffer');

/// Replaces all occurrences of a set of characters in the specified string with
/// another set of characters to create a new string.
///
/// ```c
/// HRESULT WindowsReplaceString(
///   HSTRING string,
///   HSTRING stringReplaced,
///   HSTRING stringReplaceWith,
///   HSTRING *newString
/// );
/// ```
/// {@category winrt}
int WindowsReplaceString(int? string, int? stringReplaced,
        int? stringReplaceWith, Pointer<HSTRING> newString) =>
    _WindowsReplaceString(
        string ?? 0, stringReplaced ?? 0, stringReplaceWith ?? 0, newString);

final _WindowsReplaceString =
    _api_ms_win_core_winrt_string_l1_1_0.lookupFunction<
        HRESULT Function(HSTRING string, HSTRING stringReplaced,
            HSTRING stringReplaceWith, Pointer<HSTRING> newString),
        int Function(int string, int stringReplaced, int stringReplaceWith,
            Pointer<HSTRING> newString)>('WindowsReplaceString');

/// Indicates whether the specified string has embedded null characters.
///
/// ```c
/// HRESULT WindowsStringHasEmbeddedNull(
///   HSTRING string,
///   BOOL    *hasEmbedNull);
/// ```
/// {@category winrt}
int WindowsStringHasEmbeddedNull(int? string, Pointer<BOOL> hasEmbedNull) =>
    _WindowsStringHasEmbeddedNull(string ?? 0, hasEmbedNull);

final _WindowsStringHasEmbeddedNull =
    _api_ms_win_core_winrt_string_l1_1_0.lookupFunction<
        HRESULT Function(HSTRING string, Pointer<BOOL> hasEmbedNull),
        int Function(int string,
            Pointer<BOOL> hasEmbedNull)>('WindowsStringHasEmbeddedNull');

/// Retrieves a substring from the specified string. The substring starts at the
/// specified character position.
///
/// ```c
/// HRESULT WindowsSubstring(
///   HSTRING string,
///   UINT32  startIndex,
///   HSTRING *newString
/// );
/// ```
/// {@category winrt}
int WindowsSubstring(int? string, int startIndex, Pointer<HSTRING> newString) =>
    _WindowsSubstring(string ?? 0, startIndex, newString);

final _WindowsSubstring = _api_ms_win_core_winrt_string_l1_1_0.lookupFunction<
    HRESULT Function(
        HSTRING string, Uint32 startIndex, Pointer<HSTRING> newString),
    int Function(int string, int startIndex,
        Pointer<HSTRING> newString)>('WindowsSubstring');

/// Retrieves a substring from the specified string. The substring starts at a
/// specified character position and has a specified length.
///
/// ```c
/// HRESULT WindowsSubstringWithSpecifiedLength(
///   HSTRING string,
///   UINT32  startIndex,
///   UINT32  length,
///   HSTRING *newString
/// );
/// ```
/// {@category winrt}
int WindowsSubstringWithSpecifiedLength(
        int? string, int startIndex, int length, Pointer<HSTRING> newString) =>
    _WindowsSubstringWithSpecifiedLength(
        string ?? 0, startIndex, length, newString);

final _WindowsSubstringWithSpecifiedLength =
    _api_ms_win_core_winrt_string_l1_1_0.lookupFunction<
        HRESULT Function(HSTRING string, Uint32 startIndex, Uint32 length,
            Pointer<HSTRING> newString),
        int Function(int string, int startIndex, int length,
            Pointer<HSTRING> newString)>('WindowsSubstringWithSpecifiedLength');

/// Removes all trailing occurrences of a specified set of characters from the
/// source string.
///
/// ```c
/// HRESULT WindowsTrimStringEnd(
///   HSTRING string,
///   HSTRING trimString,
///   HSTRING *newString
/// );
/// ```
/// {@category winrt}
int WindowsTrimStringEnd(
        int? string, int? trimString, Pointer<HSTRING> newString) =>
    _WindowsTrimStringEnd(string ?? 0, trimString ?? 0, newString);

final _WindowsTrimStringEnd =
    _api_ms_win_core_winrt_string_l1_1_0.lookupFunction<
        HRESULT Function(
            HSTRING string, HSTRING trimString, Pointer<HSTRING> newString),
        int Function(int string, int trimString,
            Pointer<HSTRING> newString)>('WindowsTrimStringEnd');

/// Removes all leading occurrences of a specified set of characters from the
/// source string.
///
/// ```c
/// HRESULT WindowsTrimStringStart(
///   HSTRING string,
///   HSTRING trimString,
///   HSTRING *newString
/// );
/// ```
/// {@category winrt}
int WindowsTrimStringStart(
        int? string, int? trimString, Pointer<HSTRING> newString) =>
    _WindowsTrimStringStart(string ?? 0, trimString ?? 0, newString);

final _WindowsTrimStringStart =
    _api_ms_win_core_winrt_string_l1_1_0.lookupFunction<
        HRESULT Function(
            HSTRING string, HSTRING trimString, Pointer<HSTRING> newString),
        int Function(int string, int trimString,
            Pointer<HSTRING> newString)>('WindowsTrimStringStart');
