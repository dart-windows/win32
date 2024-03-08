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

final _oleaut32 = DynamicLibrary.open('oleaut32.dll');

/// Converts the MS-DOS representation of time to the date and time
/// representation stored in a variant.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/oleauto/nf-oleauto-dosdatetimetovarianttime>.
///
/// {@category oleaut32}
int DosDateTimeToVariantTime(
        int wDosDate, int wDosTime, Pointer<Double> pvtime) =>
    _DosDateTimeToVariantTime(wDosDate, wDosTime, pvtime);

final _DosDateTimeToVariantTime = _oleaut32.lookupFunction<
    Int32 Function(Uint16 wDosDate, Uint16 wDosTime, Pointer<Double> pvtime),
    int Function(int wDosDate, int wDosTime,
        Pointer<Double> pvtime)>('DosDateTimeToVariantTime');

/// Retrieves a pointer to a running object that has been registered with OLE.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/oleauto/nf-oleauto-getactiveobject>.
///
/// {@category oleaut32}
int GetActiveObject(Pointer<GUID> rclsid, Pointer<VTablePointer> ppunk) =>
    _GetActiveObject(rclsid, nullptr, ppunk);

final _GetActiveObject = _oleaut32.lookupFunction<
    HRESULT Function(
        Pointer<GUID> rclsid, Pointer pvReserved, Pointer<VTablePointer> ppunk),
    int Function(Pointer<GUID> rclsid, Pointer pvReserved,
        Pointer<VTablePointer> ppunk)>('GetActiveObject');

/// Allocates a new string and copies the passed string into it.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/oleauto/nf-oleauto-sysallocstring>.
///
/// {@category oleaut32}
Pointer<Utf16> SysAllocString(Pointer<Utf16>? psz) =>
    _SysAllocString(psz ?? nullptr);

final _SysAllocString = _oleaut32.lookupFunction<
    Pointer<Utf16> Function(Pointer<Utf16> psz),
    Pointer<Utf16> Function(Pointer<Utf16> psz)>('SysAllocString');

/// Takes an ANSI string as input, and returns a BSTR that contains an ANSI
/// string.
///
/// Does not perform any ANSI-to-Unicode translation.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/oleauto/nf-oleauto-sysallocstringbytelen>.
///
/// {@category oleaut32}
Pointer<Utf16> SysAllocStringByteLen(Pointer<Utf8>? psz, int len) =>
    _SysAllocStringByteLen(psz ?? nullptr, len);

final _SysAllocStringByteLen = _oleaut32.lookupFunction<
    Pointer<Utf16> Function(Pointer<Utf8> psz, Uint32 len),
    Pointer<Utf16> Function(
        Pointer<Utf8> psz, int len)>('SysAllocStringByteLen');

/// Allocates a new string, copies the specified number of characters from the
/// passed string, and appends a null-terminating character.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/oleauto/nf-oleauto-sysallocstringlen>.
///
/// {@category oleaut32}
Pointer<Utf16> SysAllocStringLen(Pointer<Utf16>? strIn, int ui) =>
    _SysAllocStringLen(strIn ?? nullptr, ui);

final _SysAllocStringLen = _oleaut32.lookupFunction<
    Pointer<Utf16> Function(Pointer<Utf16> strIn, Uint32 ui),
    Pointer<Utf16> Function(Pointer<Utf16> strIn, int ui)>('SysAllocStringLen');

/// Deallocates a string allocated previously by SysAllocString,
/// SysAllocStringByteLen, SysReAllocString, SysAllocStringLen, or
/// SysReAllocStringLen.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/oleauto/nf-oleauto-sysfreestring>.
///
/// {@category oleaut32}
void SysFreeString(Pointer<Utf16>? bstrString) =>
    _SysFreeString(bstrString ?? nullptr);

final _SysFreeString = _oleaut32.lookupFunction<
    Void Function(Pointer<Utf16> bstrString),
    void Function(Pointer<Utf16> bstrString)>('SysFreeString');

/// Reallocates a previously allocated string to be the size of a second string
/// and copies the second string into the reallocated memory.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/oleauto/nf-oleauto-sysreallocstring>.
///
/// {@category oleaut32}
int SysReAllocString(Pointer<Pointer<Utf16>> pbstr, Pointer<Utf16>? psz) =>
    _SysReAllocString(pbstr, psz ?? nullptr);

final _SysReAllocString = _oleaut32.lookupFunction<
    Int32 Function(Pointer<Pointer<Utf16>> pbstr, Pointer<Utf16> psz),
    int Function(
        Pointer<Pointer<Utf16>> pbstr, Pointer<Utf16> psz)>('SysReAllocString');

/// Creates a new BSTR containing a specified number of characters from an old
/// BSTR, and frees the old BSTR.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/oleauto/nf-oleauto-sysreallocstringlen>.
///
/// {@category oleaut32}
int SysReAllocStringLen(
        Pointer<Pointer<Utf16>> pbstr, Pointer<Utf16>? psz, int len) =>
    _SysReAllocStringLen(pbstr, psz ?? nullptr, len);

final _SysReAllocStringLen = _oleaut32.lookupFunction<
    Int32 Function(
        Pointer<Pointer<Utf16>> pbstr, Pointer<Utf16> psz, Uint32 len),
    int Function(Pointer<Pointer<Utf16>> pbstr, Pointer<Utf16> psz,
        int len)>('SysReAllocStringLen');

/// Decreases the pinning reference count for the specified string by one.
///
/// When that count reaches 0, the memory for that string is no longer prevented
/// from being freed.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/oleauto/nf-oleauto-sysreleasestring>.
///
/// {@category oleaut32}
void SysReleaseString(Pointer<Utf16> bstrString) =>
    _SysReleaseString(bstrString);

final _SysReleaseString = _oleaut32.lookupFunction<
    Void Function(Pointer<Utf16> bstrString),
    void Function(Pointer<Utf16> bstrString)>('SysReleaseString');

/// Returns the length (in bytes) of a BSTR.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/oleauto/nf-oleauto-sysstringbytelen>.
///
/// {@category oleaut32}
int SysStringByteLen(Pointer<Utf16>? bstr) =>
    _SysStringByteLen(bstr ?? nullptr);

final _SysStringByteLen = _oleaut32.lookupFunction<
    Uint32 Function(Pointer<Utf16> bstr),
    int Function(Pointer<Utf16> bstr)>('SysStringByteLen');

/// Returns the length of a BSTR.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/oleauto/nf-oleauto-sysstringlen>.
///
/// {@category oleaut32}
int SysStringLen(Pointer<Utf16>? pbstr) => _SysStringLen(pbstr ?? nullptr);

final _SysStringLen = _oleaut32.lookupFunction<
    Uint32 Function(Pointer<Utf16> pbstr),
    int Function(Pointer<Utf16> pbstr)>('SysStringLen');

/// Concatenates two variants of type BSTR and returns the resulting BSTR.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/oleauto/nf-oleauto-varbstrcat>.
///
/// {@category oleaut32}
int VarBstrCat(Pointer<Utf16> bstrLeft, Pointer<Utf16> bstrRight,
        Pointer<Pointer<Utf16>> pbstrResult) =>
    _VarBstrCat(bstrLeft, bstrRight, pbstrResult);

final _VarBstrCat = _oleaut32.lookupFunction<
    HRESULT Function(Pointer<Utf16> bstrLeft, Pointer<Utf16> bstrRight,
        Pointer<Pointer<Utf16>> pbstrResult),
    int Function(Pointer<Utf16> bstrLeft, Pointer<Utf16> bstrRight,
        Pointer<Pointer<Utf16>> pbstrResult)>('VarBstrCat');

/// Compares two variants of type BSTR.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/oleauto/nf-oleauto-varbstrcmp>.
///
/// {@category oleaut32}
int VarBstrCmp(Pointer<Utf16> bstrLeft, Pointer<Utf16> bstrRight, int lcid,
        int dwFlags) =>
    _VarBstrCmp(bstrLeft, bstrRight, lcid, dwFlags);

final _VarBstrCmp = _oleaut32.lookupFunction<
    HRESULT Function(Pointer<Utf16> bstrLeft, Pointer<Utf16> bstrRight,
        Uint32 lcid, Uint32 dwFlags),
    int Function(Pointer<Utf16> bstrLeft, Pointer<Utf16> bstrRight, int lcid,
        int dwFlags)>('VarBstrCmp');

/// Converts a variant from one type to another.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/oleauto/nf-oleauto-variantchangetype>.
///
/// {@category oleaut32}
int VariantChangeType(Pointer<VARIANT> pvargDest, Pointer<VARIANT> pvarSrc,
        int wFlags, int vt) =>
    _VariantChangeType(pvargDest, pvarSrc, wFlags, vt);

final _VariantChangeType = _oleaut32.lookupFunction<
    HRESULT Function(Pointer<VARIANT> pvargDest, Pointer<VARIANT> pvarSrc,
        Uint16 wFlags, Uint16 vt),
    int Function(Pointer<VARIANT> pvargDest, Pointer<VARIANT> pvarSrc,
        int wFlags, int vt)>('VariantChangeType');

/// Clears a variant.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/oleauto/nf-oleauto-variantclear>.
///
/// {@category oleaut32}
int VariantClear(Pointer<VARIANT> pvarg) => _VariantClear(pvarg);

final _VariantClear = _oleaut32.lookupFunction<
    HRESULT Function(Pointer<VARIANT> pvarg),
    int Function(Pointer<VARIANT> pvarg)>('VariantClear');

/// Frees the destination variant and makes a copy of the source variant.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/oleauto/nf-oleauto-variantcopy>.
///
/// {@category oleaut32}
int VariantCopy(Pointer<VARIANT> pvargDest, Pointer<VARIANT> pvargSrc) =>
    _VariantCopy(pvargDest, pvargSrc);

final _VariantCopy = _oleaut32.lookupFunction<
    HRESULT Function(Pointer<VARIANT> pvargDest, Pointer<VARIANT> pvargSrc),
    int Function(
        Pointer<VARIANT> pvargDest, Pointer<VARIANT> pvargSrc)>('VariantCopy');

/// Initializes a variant.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/oleauto/nf-oleauto-variantinit>.
///
/// {@category oleaut32}
void VariantInit(Pointer<VARIANT> pvarg) => _VariantInit(pvarg);

final _VariantInit = _oleaut32.lookupFunction<
    Void Function(Pointer<VARIANT> pvarg),
    void Function(Pointer<VARIANT> pvarg)>('VariantInit');

/// Converts the variant representation of a date and time to MS-DOS date and
/// time values.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/oleauto/nf-oleauto-varianttimetodosdatetime>.
///
/// {@category oleaut32}
int VariantTimeToDosDateTime(
        double vtime, Pointer<Uint16> pwDosDate, Pointer<Uint16> pwDosTime) =>
    _VariantTimeToDosDateTime(vtime, pwDosDate, pwDosTime);

final _VariantTimeToDosDateTime = _oleaut32.lookupFunction<
    Int32 Function(
        Double vtime, Pointer<Uint16> pwDosDate, Pointer<Uint16> pwDosTime),
    int Function(double vtime, Pointer<Uint16> pwDosDate,
        Pointer<Uint16> pwDosTime)>('VariantTimeToDosDateTime');

/// Converts the variant representation of time to system time values.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/oleauto/nf-oleauto-varianttimetosystemtime>.
///
/// {@category oleaut32}
int VariantTimeToSystemTime(double vtime, Pointer<SYSTEMTIME> lpSystemTime) =>
    _VariantTimeToSystemTime(vtime, lpSystemTime);

final _VariantTimeToSystemTime = _oleaut32.lookupFunction<
    Int32 Function(Double vtime, Pointer<SYSTEMTIME> lpSystemTime),
    int Function(double vtime,
        Pointer<SYSTEMTIME> lpSystemTime)>('VariantTimeToSystemTime');
