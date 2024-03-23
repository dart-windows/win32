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

final _ole32 = DynamicLibrary.open('ole32.dll');

/// Looks up a CLSID in the registry, given a ProgID.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/combaseapi/nf-combaseapi-clsidfromprogid>.
///
/// {@category ole32}
int CLSIDFromProgID(Pointer<Utf16> lpszProgID, Pointer<GUID> lpclsid) =>
    _CLSIDFromProgID(lpszProgID, lpclsid);

final _CLSIDFromProgID = _ole32.lookupFunction<
    HRESULT Function(Pointer<Utf16> lpszProgID, Pointer<GUID> lpclsid),
    int Function(
        Pointer<Utf16> lpszProgID, Pointer<GUID> lpclsid)>('CLSIDFromProgID');

/// Triggers automatic installation if the COMClassStore policy is enabled.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/combaseapi/nf-combaseapi-clsidfromprogidex>.
///
/// {@category ole32}
int CLSIDFromProgIDEx(Pointer<Utf16> lpszProgID, Pointer<GUID> lpclsid) =>
    _CLSIDFromProgIDEx(lpszProgID, lpclsid);

final _CLSIDFromProgIDEx = _ole32.lookupFunction<
    HRESULT Function(Pointer<Utf16> lpszProgID, Pointer<GUID> lpclsid),
    int Function(
        Pointer<Utf16> lpszProgID, Pointer<GUID> lpclsid)>('CLSIDFromProgIDEx');

/// Converts a string generated by the StringFromCLSID function back into the
/// original CLSID.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/combaseapi/nf-combaseapi-clsidfromstring>.
///
/// {@category ole32}
int CLSIDFromString(Pointer<Utf16> lpsz, Pointer<GUID> pclsid) =>
    _CLSIDFromString(lpsz, pclsid);

final _CLSIDFromString = _ole32.lookupFunction<
    HRESULT Function(Pointer<Utf16> lpsz, Pointer<GUID> pclsid),
    int Function(Pointer<Utf16> lpsz, Pointer<GUID> pclsid)>('CLSIDFromString');

/// Increments a global per-process reference count.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/combaseapi/nf-combaseapi-coaddrefserverprocess>.
///
/// {@category ole32}
int CoAddRefServerProcess() => _CoAddRefServerProcess();

final _CoAddRefServerProcess = _ole32
    .lookupFunction<Uint32 Function(), int Function()>('CoAddRefServerProcess');

/// Creates a GUID, a unique 128-bit integer used for CLSIDs and interface
/// identifiers.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/combaseapi/nf-combaseapi-cocreateguid>.
///
/// {@category ole32}
int CoCreateGuid(Pointer<GUID> pguid) => _CoCreateGuid(pguid);

final _CoCreateGuid = _ole32.lookupFunction<
    HRESULT Function(Pointer<GUID> pguid),
    int Function(Pointer<GUID> pguid)>('CoCreateGuid');

/// Creates a single uninitialized object of the class associated with a
/// specified CLSID.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/combaseapi/nf-combaseapi-cocreateinstance>.
///
/// {@category ole32}
int CoCreateInstance(Pointer<GUID> rclsid, VTablePointer? pUnkOuter,
        int dwClsContext, Pointer<GUID> riid, Pointer<Pointer> ppv) =>
    _CoCreateInstance(rclsid, pUnkOuter ?? nullptr, dwClsContext, riid, ppv);

final _CoCreateInstance = _ole32.lookupFunction<
    HRESULT Function(Pointer<GUID> rclsid, VTablePointer pUnkOuter,
        Uint32 dwClsContext, Pointer<GUID> riid, Pointer<Pointer> ppv),
    int Function(
        Pointer<GUID> rclsid,
        VTablePointer pUnkOuter,
        int dwClsContext,
        Pointer<GUID> riid,
        Pointer<Pointer> ppv)>('CoCreateInstance');

/// Releases the increment made by a previous call to the CoIncrementMTAUsage
/// function.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/combaseapi/nf-combaseapi-codecrementmtausage>.
///
/// {@category ole32}
int CoDecrementMTAUsage(int cookie) => _CoDecrementMTAUsage(cookie);

final _CoDecrementMTAUsage = _ole32.lookupFunction<
    HRESULT Function(CO_MTA_USAGE_COOKIE cookie),
    int Function(int cookie)>('CoDecrementMTAUsage');

/// Returns the current apartment type and type qualifier.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/combaseapi/nf-combaseapi-cogetapartmenttype>.
///
/// {@category ole32}
int CoGetApartmentType(Pointer<Int32> pAptType, Pointer<Int32> pAptQualifier) =>
    _CoGetApartmentType(pAptType, pAptQualifier);

final _CoGetApartmentType = _ole32.lookupFunction<
    HRESULT Function(Pointer<Int32> pAptType, Pointer<Int32> pAptQualifier),
    int Function(Pointer<Int32> pAptType,
        Pointer<Int32> pAptQualifier)>('CoGetApartmentType');

/// Provides a pointer to an interface on a class object associated with a
/// specified CLSID.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/combaseapi/nf-combaseapi-cogetclassobject>.
///
/// {@category ole32}
int CoGetClassObject(Pointer<GUID> rclsid, int dwClsContext, Pointer<GUID> riid,
        Pointer<Pointer> ppv) =>
    _CoGetClassObject(rclsid, dwClsContext, nullptr, riid, ppv);

final _CoGetClassObject = _ole32.lookupFunction<
    HRESULT Function(Pointer<GUID> rclsid, Uint32 dwClsContext,
        Pointer pvReserved, Pointer<GUID> riid, Pointer<Pointer> ppv),
    int Function(Pointer<GUID> rclsid, int dwClsContext, Pointer pvReserved,
        Pointer<GUID> riid, Pointer<Pointer> ppv)>('CoGetClassObject');

/// Returns a value that is unique to the current thread.
///
/// CoGetCurrentProcess can be used to avoid thread ID reuse problems.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/combaseapi/nf-combaseapi-cogetcurrentprocess>.
///
/// {@category ole32}
int CoGetCurrentProcess() => _CoGetCurrentProcess();

final _CoGetCurrentProcess = _ole32
    .lookupFunction<Uint32 Function(), int Function()>('CoGetCurrentProcess');

/// Keeps MTA support active when no MTA threads are running.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/combaseapi/nf-combaseapi-coincrementmtausage>.
///
/// {@category ole32}
int CoIncrementMTAUsage(Pointer<CO_MTA_USAGE_COOKIE> pCookie) =>
    _CoIncrementMTAUsage(pCookie);

final _CoIncrementMTAUsage = _ole32.lookupFunction<
    HRESULT Function(Pointer<CO_MTA_USAGE_COOKIE> pCookie),
    int Function(Pointer<CO_MTA_USAGE_COOKIE> pCookie)>('CoIncrementMTAUsage');

/// Initializes the COM library for use by the calling thread, sets the thread's
/// concurrency model, and creates a new apartment for the thread if one is
/// required.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/combaseapi/nf-combaseapi-coinitializeex>.
///
/// {@category ole32}
int CoInitializeEx(int dwCoInit) => _CoInitializeEx(nullptr, dwCoInit);

final _CoInitializeEx = _ole32.lookupFunction<
    HRESULT Function(Pointer pvReserved, Uint32 dwCoInit),
    int Function(Pointer pvReserved, int dwCoInit)>('CoInitializeEx');

/// Registers security and sets the default security values for the process.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/combaseapi/nf-combaseapi-coinitializesecurity>.
///
/// {@category ole32}
int CoInitializeSecurity(
        PSECURITY_DESCRIPTOR? pSecDesc,
        int cAuthSvc,
        Pointer<SOLE_AUTHENTICATION_SERVICE>? asAuthSvc,
        int dwAuthnLevel,
        int dwImpLevel,
        Pointer? pAuthList,
        int dwCapabilities) =>
    _CoInitializeSecurity(
        pSecDesc ?? nullptr,
        cAuthSvc,
        asAuthSvc ?? nullptr,
        nullptr,
        dwAuthnLevel,
        dwImpLevel,
        pAuthList ?? nullptr,
        dwCapabilities,
        nullptr);

final _CoInitializeSecurity = _ole32.lookupFunction<
    HRESULT Function(
        PSECURITY_DESCRIPTOR pSecDesc,
        Int32 cAuthSvc,
        Pointer<SOLE_AUTHENTICATION_SERVICE> asAuthSvc,
        Pointer pReserved1,
        Uint32 dwAuthnLevel,
        Uint32 dwImpLevel,
        Pointer pAuthList,
        Uint32 dwCapabilities,
        Pointer pReserved3),
    int Function(
        PSECURITY_DESCRIPTOR pSecDesc,
        int cAuthSvc,
        Pointer<SOLE_AUTHENTICATION_SERVICE> asAuthSvc,
        Pointer pReserved1,
        int dwAuthnLevel,
        int dwImpLevel,
        Pointer pAuthList,
        int dwCapabilities,
        Pointer pReserved3)>('CoInitializeSecurity');

/// Sets the authentication information that will be used to make calls on the
/// specified proxy.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/combaseapi/nf-combaseapi-cosetproxyblanket>.
///
/// {@category ole32}
int CoSetProxyBlanket(
        VTablePointer pProxy,
        int dwAuthnSvc,
        int dwAuthzSvc,
        Pointer<Utf16>? pServerPrincName,
        int dwAuthnLevel,
        int dwImpLevel,
        Pointer? pAuthInfo,
        int dwCapabilities) =>
    _CoSetProxyBlanket(
        pProxy,
        dwAuthnSvc,
        dwAuthzSvc,
        pServerPrincName ?? nullptr,
        dwAuthnLevel,
        dwImpLevel,
        pAuthInfo ?? nullptr,
        dwCapabilities);

final _CoSetProxyBlanket = _ole32.lookupFunction<
    HRESULT Function(
        VTablePointer pProxy,
        Uint32 dwAuthnSvc,
        Uint32 dwAuthzSvc,
        Pointer<Utf16> pServerPrincName,
        Uint32 dwAuthnLevel,
        Uint32 dwImpLevel,
        Pointer pAuthInfo,
        Uint32 dwCapabilities),
    int Function(
        VTablePointer pProxy,
        int dwAuthnSvc,
        int dwAuthzSvc,
        Pointer<Utf16> pServerPrincName,
        int dwAuthnLevel,
        int dwImpLevel,
        Pointer pAuthInfo,
        int dwCapabilities)>('CoSetProxyBlanket');

/// Allocates a block of task memory in the same way that IMalloc::Alloc does.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/combaseapi/nf-combaseapi-cotaskmemalloc>.
///
/// {@category ole32}
Pointer CoTaskMemAlloc(int cb) => _CoTaskMemAlloc(cb);

final _CoTaskMemAlloc = _ole32.lookupFunction<Pointer Function(IntPtr cb),
    Pointer Function(int cb)>('CoTaskMemAlloc');

/// Frees a block of task memory previously allocated through a call to the
/// CoTaskMemAlloc or CoTaskMemRealloc function.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/combaseapi/nf-combaseapi-cotaskmemfree>.
///
/// {@category ole32}
void CoTaskMemFree(Pointer? pv) => _CoTaskMemFree(pv ?? nullptr);

final _CoTaskMemFree =
    _ole32.lookupFunction<Void Function(Pointer pv), void Function(Pointer pv)>(
        'CoTaskMemFree');

/// Changes the size of a previously allocated block of task memory.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/combaseapi/nf-combaseapi-cotaskmemrealloc>.
///
/// {@category ole32}
Pointer CoTaskMemRealloc(Pointer? pv, int cb) =>
    _CoTaskMemRealloc(pv ?? nullptr, cb);

final _CoTaskMemRealloc = _ole32.lookupFunction<
    Pointer Function(Pointer pv, IntPtr cb),
    Pointer Function(Pointer pv, int cb)>('CoTaskMemRealloc');

/// Closes the COM library on the current thread, unloads all DLLs loaded by the
/// thread, frees any other resources that the thread maintains, and forces all
/// RPC connections on the thread to close.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/combaseapi/nf-combaseapi-couninitialize>.
///
/// {@category ole32}
void CoUninitialize() => _CoUninitialize();

final _CoUninitialize =
    _ole32.lookupFunction<Void Function(), void Function()>('CoUninitialize');

/// Waits for specified handles to be signaled or for a specified timeout period
/// to elapse.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/combaseapi/nf-combaseapi-cowaitformultiplehandles>.
///
/// {@category ole32}
int CoWaitForMultipleHandles(int dwFlags, int dwTimeout, int cHandles,
        Pointer<HANDLE> pHandles, Pointer<Uint32> lpdwindex) =>
    _CoWaitForMultipleHandles(
        dwFlags, dwTimeout, cHandles, pHandles, lpdwindex);

final _CoWaitForMultipleHandles = _ole32.lookupFunction<
    HRESULT Function(Uint32 dwFlags, Uint32 dwTimeout, Uint32 cHandles,
        Pointer<HANDLE> pHandles, Pointer<Uint32> lpdwindex),
    int Function(
        int dwFlags,
        int dwTimeout,
        int cHandles,
        Pointer<HANDLE> pHandles,
        Pointer<Uint32> lpdwindex)>('CoWaitForMultipleHandles');

/// A replacement for CoWaitForMultipleHandles.
///
/// This replacement API hides the options for CoWaitForMultipleHandles that are
/// not supported in ASTA.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/combaseapi/nf-combaseapi-cowaitformultipleobjects>.
///
/// {@category ole32}
int CoWaitForMultipleObjects(int dwFlags, int dwTimeout, int cHandles,
        Pointer<HANDLE> pHandles, Pointer<Uint32> lpdwindex) =>
    _CoWaitForMultipleObjects(
        dwFlags, dwTimeout, cHandles, pHandles, lpdwindex);

final _CoWaitForMultipleObjects = _ole32.lookupFunction<
    HRESULT Function(Uint32 dwFlags, Uint32 dwTimeout, Uint32 cHandles,
        Pointer<HANDLE> pHandles, Pointer<Uint32> lpdwindex),
    int Function(
        int dwFlags,
        int dwTimeout,
        int cHandles,
        Pointer<HANDLE> pHandles,
        Pointer<Uint32> lpdwindex)>('CoWaitForMultipleObjects');

/// Creates a stream object that uses an HGLOBAL memory handle to store the
/// stream contents.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/combaseapi/nf-combaseapi-createstreamonhglobal>.
///
/// {@category ole32}
int CreateStreamOnHGlobal(
        HGLOBAL hGlobal, int fDeleteOnRelease, Pointer<VTablePointer> ppstm) =>
    _CreateStreamOnHGlobal(hGlobal, fDeleteOnRelease, ppstm);

final _CreateStreamOnHGlobal = _ole32.lookupFunction<
    HRESULT Function(
        HGLOBAL hGlobal, BOOL fDeleteOnRelease, Pointer<VTablePointer> ppstm),
    int Function(HGLOBAL hGlobal, int fDeleteOnRelease,
        Pointer<VTablePointer> ppstm)>('CreateStreamOnHGlobal');

/// Returns the CLSID associated with the specified file name.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/objbase/nf-objbase-getclassfile>.
///
/// {@category ole32}
int GetClassFile(Pointer<Utf16> szFilename, Pointer<GUID> pclsid) =>
    _GetClassFile(szFilename, pclsid);

final _GetClassFile = _ole32.lookupFunction<
    HRESULT Function(Pointer<Utf16> szFilename, Pointer<GUID> pclsid),
    int Function(
        Pointer<Utf16> szFilename, Pointer<GUID> pclsid)>('GetClassFile');

/// Retrieves the global memory handle to a stream that was created through a
/// call to the CreateStreamOnHGlobal function.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/combaseapi/nf-combaseapi-gethglobalfromstream>.
///
/// {@category ole32}
int GetHGlobalFromStream(VTablePointer pstm, Pointer<HGLOBAL> phglobal) =>
    _GetHGlobalFromStream(pstm, phglobal);

final _GetHGlobalFromStream = _ole32.lookupFunction<
    HRESULT Function(VTablePointer pstm, Pointer<HGLOBAL> phglobal),
    int Function(
        VTablePointer pstm, Pointer<HGLOBAL> phglobal)>('GetHGlobalFromStream');

/// Converts a string generated by the StringFromIID function back into the
/// original interface identifier (IID).
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/combaseapi/nf-combaseapi-iidfromstring>.
///
/// {@category ole32}
int IIDFromString(Pointer<Utf16> lpsz, Pointer<GUID> lpiid) =>
    _IIDFromString(lpsz, lpiid);

final _IIDFromString = _ole32.lookupFunction<
    HRESULT Function(Pointer<Utf16> lpsz, Pointer<GUID> lpiid),
    int Function(Pointer<Utf16> lpsz, Pointer<GUID> lpiid)>('IIDFromString');

/// Initializes the COM library on the current apartment and identifies the
/// concurrency model as single-thread apartment (STA).
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/ole2/nf-ole2-oleinitialize>.
///
/// {@category ole32}
int OleInitialize() => _OleInitialize(nullptr);

final _OleInitialize = _ole32.lookupFunction<
    HRESULT Function(Pointer pvReserved),
    int Function(Pointer pvReserved)>('OleInitialize');

/// Closes the COM library on the apartment, releases any class factories, other
/// COM objects, or servers held by the apartment, disables RPC on the
/// apartment, and frees any resources the apartment maintains.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/ole2/nf-ole2-oleuninitialize>.
///
/// {@category ole32}
void OleUninitialize() => _OleUninitialize();

final _OleUninitialize =
    _ole32.lookupFunction<Void Function(), void Function()>('OleUninitialize');

/// Retrieves the ProgID for a given CLSID.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/combaseapi/nf-combaseapi-progidfromclsid>.
///
/// {@category ole32}
int ProgIDFromCLSID(
        Pointer<GUID> clsid, Pointer<Pointer<Utf16>> lplpszProgID) =>
    _ProgIDFromCLSID(clsid, lplpszProgID);

final _ProgIDFromCLSID = _ole32.lookupFunction<
    HRESULT Function(Pointer<GUID> clsid, Pointer<Pointer<Utf16>> lplpszProgID),
    int Function(Pointer<GUID> clsid,
        Pointer<Pointer<Utf16>> lplpszProgID)>('ProgIDFromCLSID');

/// Frees all elements that can be freed in a given PROPVARIANT structure.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/combaseapi/nf-combaseapi-propvariantclear>.
///
/// {@category ole32}
int PropVariantClear(Pointer<PROPVARIANT> pvar) => _PropVariantClear(pvar);

final _PropVariantClear = _ole32.lookupFunction<
    HRESULT Function(Pointer<PROPVARIANT> pvar),
    int Function(Pointer<PROPVARIANT> pvar)>('PropVariantClear');

/// Converts a CLSID into a string of printable characters.
///
/// Different CLSIDs always convert to different strings.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/combaseapi/nf-combaseapi-stringfromclsid>.
///
/// {@category ole32}
int StringFromCLSID(Pointer<GUID> rclsid, Pointer<Pointer<Utf16>> lplpsz) =>
    _StringFromCLSID(rclsid, lplpsz);

final _StringFromCLSID = _ole32.lookupFunction<
    HRESULT Function(Pointer<GUID> rclsid, Pointer<Pointer<Utf16>> lplpsz),
    int Function(Pointer<GUID> rclsid,
        Pointer<Pointer<Utf16>> lplpsz)>('StringFromCLSID');

/// Converts a globally unique identifier (GUID) into a string of printable
/// characters.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/combaseapi/nf-combaseapi-stringfromguid2>.
///
/// {@category ole32}
int StringFromGUID2(Pointer<GUID> rguid, Pointer<Utf16> lpsz, int cchMax) =>
    _StringFromGUID2(rguid, lpsz, cchMax);

final _StringFromGUID2 = _ole32.lookupFunction<
    Int32 Function(Pointer<GUID> rguid, Pointer<Utf16> lpsz, Int32 cchMax),
    int Function(Pointer<GUID> rguid, Pointer<Utf16> lpsz,
        int cchMax)>('StringFromGUID2');

/// Converts an interface identifier into a string of printable characters.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/combaseapi/nf-combaseapi-stringfromiid>.
///
/// {@category ole32}
int StringFromIID(Pointer<GUID> rclsid, Pointer<Pointer<Utf16>> lplpsz) =>
    _StringFromIID(rclsid, lplpsz);

final _StringFromIID = _ole32.lookupFunction<
    HRESULT Function(Pointer<GUID> rclsid, Pointer<Pointer<Utf16>> lplpsz),
    int Function(
        Pointer<GUID> rclsid, Pointer<Pointer<Utf16>> lplpsz)>('StringFromIID');