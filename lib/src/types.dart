// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Simple data types that are commonly used as aliases for C/C++ primitive data
// types in Win32 development.
//
// These can be used for FFI pointer allocation, for example:
// ```dart
// final returnValue = calloc<DWORD>();
// ```
//
// For more on Windows data types, see
// https://learn.microsoft.com/windows/win32/winprog/windows-data-types.

// ignore_for_file: camel_case_types

import 'dart:ffi';

import 'package:ffi/ffi.dart';

typedef ATOM = WORD;
typedef BYTE = Uint8;
typedef DOUBLE = Double;
typedef DWORD = Uint32;
typedef DWORD32 = Uint32;
typedef DWORD64 = Uint64;
typedef DWORDLONG = Uint64;
typedef DWORD_PTR = ULONG_PTR;
typedef FLOAT = Float;
typedef HCALL = DWORD;
typedef INT = Int32;
typedef INT16 = Int16;
typedef INT32 = Int32;
typedef INT64 = Int64;
typedef INT8 = Int8;
typedef INT_PTR = IntPtr;
typedef LANGID = WORD;
typedef LCID = DWORD;
typedef LCTYPE = DWORD;
typedef LGRPID = DWORD;
typedef LONG = Int32;
typedef LONG32 = Int32;
typedef LONG64 = Int64;
typedef LONGLONG = Int64;
typedef LONG_PTR = IntPtr;
typedef LPBYTE = Pointer<BYTE>;
typedef LPSTR = Pointer<Utf8>;
typedef LPWSTR = Pointer<Utf16>;

// Pointer is preferred over Pointer<Void>, because the latter points to a Void
// data type. A C void* is usually an undefined type, rather than a strong void,
// so the general Pointer is more useful.
typedef LPVOID = Pointer;
typedef PVOID = Pointer;

typedef QWORD = Uint64;
typedef SHORT = Int16;
typedef SIZE_T = ULONG_PTR;
typedef UCHAR = Uint8;
typedef UINT = Uint32;
typedef UINT16 = Uint16;
typedef UINT32 = Uint32;
typedef UINT64 = Uint64;
typedef UINT8 = Uint8;
typedef UINT_PTR = IntPtr;
typedef ULONG = Uint32;
typedef ULONG32 = Uint32;
typedef ULONG64 = Uint64;
typedef ULONGLONG = Uint64;
typedef ULONG_PTR = IntPtr;
typedef USHORT = Uint16;

/// Type alias that represents a Pointer to the COM v-table.
typedef VTablePointer = Pointer<Pointer<IntPtr>>;

typedef WCHAR = Uint16;
typedef WORD = Uint16;
