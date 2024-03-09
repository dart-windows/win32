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

final _iphlpapi = DynamicLibrary.open('iphlpapi.dll');

/// Adds the specified IPv4 address to the specified adapter.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/iphlpapi/nf-iphlpapi-addipaddress>.
///
/// {@category iphlpapi}
int AddIPAddress(int address, int ipMask, int ifIndex,
        Pointer<Uint32> nTEContext, Pointer<Uint32> nTEInstance) =>
    _AddIPAddress(address, ipMask, ifIndex, nTEContext, nTEInstance);

final _AddIPAddress = _iphlpapi.lookupFunction<
    Uint32 Function(Uint32 address, Uint32 ipMask, Uint32 ifIndex,
        Pointer<Uint32> nTEContext, Pointer<Uint32> nTEInstance),
    int Function(
        int address,
        int ipMask,
        int ifIndex,
        Pointer<Uint32> nTEContext,
        Pointer<Uint32> nTEInstance)>('AddIPAddress');

/// Converts a globally unique identifier (GUID) for a network interface to the
/// locally unique identifier (LUID) for the interface.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/netioapi/nf-netioapi-convertinterfaceguidtoluid>.
///
/// {@category iphlpapi}
int ConvertInterfaceGuidToLuid(
        Pointer<GUID> interfaceGuid, Pointer<NET_LUID_LH> interfaceLuid) =>
    _ConvertInterfaceGuidToLuid(interfaceGuid, interfaceLuid);

final _ConvertInterfaceGuidToLuid = _iphlpapi.lookupFunction<
    Uint32 Function(
        Pointer<GUID> interfaceGuid, Pointer<NET_LUID_LH> interfaceLuid),
    int Function(Pointer<GUID> interfaceGuid,
        Pointer<NET_LUID_LH> interfaceLuid)>('ConvertInterfaceGuidToLuid');

/// Deletes an IP address previously added using AddIPAddress.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/iphlpapi/nf-iphlpapi-deleteipaddress>.
///
/// {@category iphlpapi}
int DeleteIPAddress(int nTEContext) => _DeleteIPAddress(nTEContext);

final _DeleteIPAddress = _iphlpapi.lookupFunction<
    Uint32 Function(Uint32 nTEContext),
    int Function(int nTEContext)>('DeleteIPAddress');

/// Obtains the index of an adapter, given its name.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/iphlpapi/nf-iphlpapi-getadapterindex>.
///
/// {@category iphlpapi}
int GetAdapterIndex(Pointer<Utf16> adapterName, Pointer<Uint32> ifIndex) =>
    _GetAdapterIndex(adapterName, ifIndex);

final _GetAdapterIndex = _iphlpapi.lookupFunction<
    Uint32 Function(Pointer<Utf16> adapterName, Pointer<Uint32> ifIndex),
    int Function(Pointer<Utf16> adapterName,
        Pointer<Uint32> ifIndex)>('GetAdapterIndex');

/// Retrieves the addresses associated with the adapters on the local computer.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/iphlpapi/nf-iphlpapi-getadaptersaddresses>.
///
/// {@category iphlpapi}
int GetAdaptersAddresses(
        int family,
        int flags,
        Pointer<IP_ADAPTER_ADDRESSES_LH>? adapterAddresses,
        Pointer<Uint32> sizePointer) =>
    _GetAdaptersAddresses(
        family, flags, nullptr, adapterAddresses ?? nullptr, sizePointer);

final _GetAdaptersAddresses = _iphlpapi.lookupFunction<
    Uint32 Function(
        Uint32 family,
        Uint32 flags,
        Pointer reserved,
        Pointer<IP_ADAPTER_ADDRESSES_LH> adapterAddresses,
        Pointer<Uint32> sizePointer),
    int Function(
        int family,
        int flags,
        Pointer reserved,
        Pointer<IP_ADAPTER_ADDRESSES_LH> adapterAddresses,
        Pointer<Uint32> sizePointer)>('GetAdaptersAddresses');

/// Obtains the list of the network interface adapters with IPv4 enabled on the
/// local system.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/iphlpapi/nf-iphlpapi-getinterfaceinfo>.
///
/// {@category iphlpapi}
int GetInterfaceInfo(
        Pointer<IP_INTERFACE_INFO>? pIfTable, Pointer<Uint32> dwOutBufLen) =>
    _GetInterfaceInfo(pIfTable ?? nullptr, dwOutBufLen);

final _GetInterfaceInfo = _iphlpapi.lookupFunction<
    Uint32 Function(
        Pointer<IP_INTERFACE_INFO> pIfTable, Pointer<Uint32> dwOutBufLen),
    int Function(Pointer<IP_INTERFACE_INFO> pIfTable,
        Pointer<Uint32> dwOutBufLen)>('GetInterfaceInfo');

/// Retrieves information about the adapter corresponding to the specified
/// interface.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/iphlpapi/nf-iphlpapi-getperadapterinfo>.
///
/// {@category iphlpapi}
int GetPerAdapterInfo(
        int ifIndex,
        Pointer<IP_PER_ADAPTER_INFO_W2KSP1>? pPerAdapterInfo,
        Pointer<Uint32> pOutBufLen) =>
    _GetPerAdapterInfo(ifIndex, pPerAdapterInfo ?? nullptr, pOutBufLen);

final _GetPerAdapterInfo = _iphlpapi.lookupFunction<
    Uint32 Function(
        Uint32 ifIndex,
        Pointer<IP_PER_ADAPTER_INFO_W2KSP1> pPerAdapterInfo,
        Pointer<Uint32> pOutBufLen),
    int Function(
        int ifIndex,
        Pointer<IP_PER_ADAPTER_INFO_W2KSP1> pPerAdapterInfo,
        Pointer<Uint32> pOutBufLen)>('GetPerAdapterInfo');

/// Releases an IPv4 address previously obtained through the Dynamic Host
/// Configuration Protocol (DHCP).
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/iphlpapi/nf-iphlpapi-ipreleaseaddress>.
///
/// {@category iphlpapi}
int IpReleaseAddress(Pointer<IP_ADAPTER_INDEX_MAP> adapterInfo) =>
    _IpReleaseAddress(adapterInfo);

final _IpReleaseAddress = _iphlpapi.lookupFunction<
    Uint32 Function(Pointer<IP_ADAPTER_INDEX_MAP> adapterInfo),
    int Function(
        Pointer<IP_ADAPTER_INDEX_MAP> adapterInfo)>('IpReleaseAddress');

/// Renews a lease on an IPv4 address previously obtained through Dynamic Host
/// Configuration Protocol (DHCP).
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/iphlpapi/nf-iphlpapi-iprenewaddress>.
///
/// {@category iphlpapi}
int IpRenewAddress(Pointer<IP_ADAPTER_INDEX_MAP> adapterInfo) =>
    _IpRenewAddress(adapterInfo);

final _IpRenewAddress = _iphlpapi.lookupFunction<
    Uint32 Function(Pointer<IP_ADAPTER_INDEX_MAP> adapterInfo),
    int Function(Pointer<IP_ADAPTER_INDEX_MAP> adapterInfo)>('IpRenewAddress');