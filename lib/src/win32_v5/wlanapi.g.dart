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

final _wlanapi = DynamicLibrary.open('wlanapi.dll');

/// Allocates memory.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlanallocatememory>.
///
/// {@category wlanapi}
Pointer WlanAllocateMemory(int dwMemorySize) =>
    _WlanAllocateMemory(dwMemorySize);

final _WlanAllocateMemory = _wlanapi.lookupFunction<
    Pointer Function(Uint32 dwMemorySize),
    Pointer Function(int dwMemorySize)>('WlanAllocateMemory');

/// Closes a connection to the server.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlanclosehandle>.
///
/// {@category wlanapi}
int WlanCloseHandle(int hClientHandle) =>
    _WlanCloseHandle(hClientHandle, nullptr);

final _WlanCloseHandle = _wlanapi.lookupFunction<
    Uint32 Function(HANDLE hClientHandle, Pointer pReserved),
    int Function(int hClientHandle, Pointer pReserved)>('WlanCloseHandle');

/// Attempts to connect to a specific network.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlanconnect>.
///
/// {@category wlanapi}
int WlanConnect(int hClientHandle, Pointer<GUID> pInterfaceGuid,
        Pointer<WLAN_CONNECTION_PARAMETERS> pConnectionParameters) =>
    _WlanConnect(hClientHandle, pInterfaceGuid, pConnectionParameters, nullptr);

final _WlanConnect = _wlanapi.lookupFunction<
    Uint32 Function(
        HANDLE hClientHandle,
        Pointer<GUID> pInterfaceGuid,
        Pointer<WLAN_CONNECTION_PARAMETERS> pConnectionParameters,
        Pointer pReserved),
    int Function(
        int hClientHandle,
        Pointer<GUID> pInterfaceGuid,
        Pointer<WLAN_CONNECTION_PARAMETERS> pConnectionParameters,
        Pointer pReserved)>('WlanConnect');

/// Deletes a wireless profile for a wireless interface on the local computer.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlandeleteprofile>.
///
/// {@category wlanapi}
int WlanDeleteProfile(int hClientHandle, Pointer<GUID> pInterfaceGuid,
        Pointer<Utf16> strProfileName) =>
    _WlanDeleteProfile(hClientHandle, pInterfaceGuid, strProfileName, nullptr);

final _WlanDeleteProfile = _wlanapi.lookupFunction<
    Uint32 Function(HANDLE hClientHandle, Pointer<GUID> pInterfaceGuid,
        Pointer<Utf16> strProfileName, Pointer pReserved),
    int Function(int hClientHandle, Pointer<GUID> pInterfaceGuid,
        Pointer<Utf16> strProfileName, Pointer pReserved)>('WlanDeleteProfile');

/// Allows an OEM or IHV component to communicate with a device service on a
/// particular wireless LAN interface.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlandeviceservicecommand>.
///
/// {@category wlanapi}
int WlanDeviceServiceCommand(
        int hClientHandle,
        Pointer<GUID> pInterfaceGuid,
        Pointer<GUID> pDeviceServiceGuid,
        int dwOpCode,
        int dwInBufferSize,
        Pointer? pInBuffer,
        int dwOutBufferSize,
        Pointer? pOutBuffer,
        Pointer<Uint32> pdwBytesReturned) =>
    _WlanDeviceServiceCommand(
        hClientHandle,
        pInterfaceGuid,
        pDeviceServiceGuid,
        dwOpCode,
        dwInBufferSize,
        pInBuffer ?? nullptr,
        dwOutBufferSize,
        pOutBuffer ?? nullptr,
        pdwBytesReturned);

final _WlanDeviceServiceCommand = _wlanapi.lookupFunction<
    Uint32 Function(
        HANDLE hClientHandle,
        Pointer<GUID> pInterfaceGuid,
        Pointer<GUID> pDeviceServiceGuid,
        Uint32 dwOpCode,
        Uint32 dwInBufferSize,
        Pointer pInBuffer,
        Uint32 dwOutBufferSize,
        Pointer pOutBuffer,
        Pointer<Uint32> pdwBytesReturned),
    int Function(
        int hClientHandle,
        Pointer<GUID> pInterfaceGuid,
        Pointer<GUID> pDeviceServiceGuid,
        int dwOpCode,
        int dwInBufferSize,
        Pointer pInBuffer,
        int dwOutBufferSize,
        Pointer pOutBuffer,
        Pointer<Uint32> pdwBytesReturned)>('WlanDeviceServiceCommand');

/// Disconnects an interface from its current network.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlandisconnect>.
///
/// {@category wlanapi}
int WlanDisconnect(int hClientHandle, Pointer<GUID> pInterfaceGuid) =>
    _WlanDisconnect(hClientHandle, pInterfaceGuid, nullptr);

final _WlanDisconnect = _wlanapi.lookupFunction<
    Uint32 Function(
        HANDLE hClientHandle, Pointer<GUID> pInterfaceGuid, Pointer pReserved),
    int Function(int hClientHandle, Pointer<GUID> pInterfaceGuid,
        Pointer pReserved)>('WlanDisconnect');

/// Enumerates all of the wireless LAN interfaces currently enabled on the local
/// computer.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlanenuminterfaces>.
///
/// {@category wlanapi}
int WlanEnumInterfaces(int hClientHandle,
        Pointer<Pointer<WLAN_INTERFACE_INFO_LIST>> ppInterfaceList) =>
    _WlanEnumInterfaces(hClientHandle, nullptr, ppInterfaceList);

final _WlanEnumInterfaces = _wlanapi.lookupFunction<
        Uint32 Function(HANDLE hClientHandle, Pointer pReserved,
            Pointer<Pointer<WLAN_INTERFACE_INFO_LIST>> ppInterfaceList),
        int Function(int hClientHandle, Pointer pReserved,
            Pointer<Pointer<WLAN_INTERFACE_INFO_LIST>> ppInterfaceList)>(
    'WlanEnumInterfaces');

/// Extracts the proximity service discovery (PSD) information element (IE) data
/// list from raw IE data included in a beacon.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlanextractpsdiedatalist>.
///
/// {@category wlanapi}
int WlanExtractPsdIEDataList(
        int hClientHandle,
        int dwIeDataSize,
        Pointer<Uint8> pRawIeData,
        Pointer<Utf16> strFormat,
        Pointer<Pointer<WLAN_RAW_DATA_LIST>> ppPsdIEDataList) =>
    _WlanExtractPsdIEDataList(hClientHandle, dwIeDataSize, pRawIeData,
        strFormat, nullptr, ppPsdIEDataList);

final _WlanExtractPsdIEDataList = _wlanapi.lookupFunction<
        Uint32 Function(
            HANDLE hClientHandle,
            Uint32 dwIeDataSize,
            Pointer<Uint8> pRawIeData,
            Pointer<Utf16> strFormat,
            Pointer pReserved,
            Pointer<Pointer<WLAN_RAW_DATA_LIST>> ppPsdIEDataList),
        int Function(
            int hClientHandle,
            int dwIeDataSize,
            Pointer<Uint8> pRawIeData,
            Pointer<Utf16> strFormat,
            Pointer pReserved,
            Pointer<Pointer<WLAN_RAW_DATA_LIST>> ppPsdIEDataList)>(
    'WlanExtractPsdIEDataList');

/// Frees memory.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlanfreememory>.
///
/// {@category wlanapi}
void WlanFreeMemory(Pointer pMemory) => _WlanFreeMemory(pMemory);

final _WlanFreeMemory = _wlanapi.lookupFunction<Void Function(Pointer pMemory),
    void Function(Pointer pMemory)>('WlanFreeMemory');

/// Retrieves the list of available networks on a wireless LAN interface.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlangetavailablenetworklist>.
///
/// {@category wlanapi}
int WlanGetAvailableNetworkList(
        int hClientHandle,
        Pointer<GUID> pInterfaceGuid,
        int dwFlags,
        Pointer<Pointer<WLAN_AVAILABLE_NETWORK_LIST>> ppAvailableNetworkList) =>
    _WlanGetAvailableNetworkList(hClientHandle, pInterfaceGuid, dwFlags,
        nullptr, ppAvailableNetworkList);

final _WlanGetAvailableNetworkList = _wlanapi.lookupFunction<
    Uint32 Function(
        HANDLE hClientHandle,
        Pointer<GUID> pInterfaceGuid,
        Uint32 dwFlags,
        Pointer pReserved,
        Pointer<Pointer<WLAN_AVAILABLE_NETWORK_LIST>> ppAvailableNetworkList),
    int Function(
        int hClientHandle,
        Pointer<GUID> pInterfaceGuid,
        int dwFlags,
        Pointer pReserved,
        Pointer<Pointer<WLAN_AVAILABLE_NETWORK_LIST>>
            ppAvailableNetworkList)>('WlanGetAvailableNetworkList');

/// Retrieves a group policy or user permission list.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlangetfilterlist>.
///
/// {@category wlanapi}
int WlanGetFilterList(int hClientHandle, int wlanFilterListType,
        Pointer<Pointer<DOT11_NETWORK_LIST>> ppNetworkList) =>
    _WlanGetFilterList(
        hClientHandle, wlanFilterListType, nullptr, ppNetworkList);

final _WlanGetFilterList = _wlanapi.lookupFunction<
    Uint32 Function(HANDLE hClientHandle, Int32 wlanFilterListType,
        Pointer pReserved, Pointer<Pointer<DOT11_NETWORK_LIST>> ppNetworkList),
    int Function(
        int hClientHandle,
        int wlanFilterListType,
        Pointer pReserved,
        Pointer<Pointer<DOT11_NETWORK_LIST>>
            ppNetworkList)>('WlanGetFilterList');

/// Retrieves the capabilities of an interface.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlangetinterfacecapability>.
///
/// {@category wlanapi}
int WlanGetInterfaceCapability(int hClientHandle, Pointer<GUID> pInterfaceGuid,
        Pointer<Pointer<WLAN_INTERFACE_CAPABILITY>> ppCapability) =>
    _WlanGetInterfaceCapability(
        hClientHandle, pInterfaceGuid, nullptr, ppCapability);

final _WlanGetInterfaceCapability = _wlanapi.lookupFunction<
        Uint32 Function(
            HANDLE hClientHandle,
            Pointer<GUID> pInterfaceGuid,
            Pointer pReserved,
            Pointer<Pointer<WLAN_INTERFACE_CAPABILITY>> ppCapability),
        int Function(
            int hClientHandle,
            Pointer<GUID> pInterfaceGuid,
            Pointer pReserved,
            Pointer<Pointer<WLAN_INTERFACE_CAPABILITY>> ppCapability)>(
    'WlanGetInterfaceCapability');

/// Retrieves a list of the basic service set (BSS) entries of the wireless
/// network or networks on a given wireless LAN interface.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlangetnetworkbsslist>.
///
/// {@category wlanapi}
int WlanGetNetworkBssList(
        int hClientHandle,
        Pointer<GUID> pInterfaceGuid,
        Pointer<DOT11_SSID>? pDot11Ssid,
        int dot11BssType,
        int bSecurityEnabled,
        Pointer<Pointer<WLAN_BSS_LIST>> ppWlanBssList) =>
    _WlanGetNetworkBssList(hClientHandle, pInterfaceGuid, pDot11Ssid ?? nullptr,
        dot11BssType, bSecurityEnabled, nullptr, ppWlanBssList);

final _WlanGetNetworkBssList = _wlanapi.lookupFunction<
        Uint32 Function(
            HANDLE hClientHandle,
            Pointer<GUID> pInterfaceGuid,
            Pointer<DOT11_SSID> pDot11Ssid,
            Int32 dot11BssType,
            BOOL bSecurityEnabled,
            Pointer pReserved,
            Pointer<Pointer<WLAN_BSS_LIST>> ppWlanBssList),
        int Function(
            int hClientHandle,
            Pointer<GUID> pInterfaceGuid,
            Pointer<DOT11_SSID> pDot11Ssid,
            int dot11BssType,
            int bSecurityEnabled,
            Pointer pReserved,
            Pointer<Pointer<WLAN_BSS_LIST>> ppWlanBssList)>(
    'WlanGetNetworkBssList');

/// Retrieves all information about a specified wireless profile.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlangetprofile>.
///
/// {@category wlanapi}
int WlanGetProfile(
        int hClientHandle,
        Pointer<GUID> pInterfaceGuid,
        Pointer<Utf16> strProfileName,
        Pointer<Pointer<Utf16>> pstrProfileXml,
        Pointer<Uint32>? pdwFlags,
        Pointer<Uint32>? pdwGrantedAccess) =>
    _WlanGetProfile(hClientHandle, pInterfaceGuid, strProfileName, nullptr,
        pstrProfileXml, pdwFlags ?? nullptr, pdwGrantedAccess ?? nullptr);

final _WlanGetProfile = _wlanapi.lookupFunction<
    Uint32 Function(
        HANDLE hClientHandle,
        Pointer<GUID> pInterfaceGuid,
        Pointer<Utf16> strProfileName,
        Pointer pReserved,
        Pointer<Pointer<Utf16>> pstrProfileXml,
        Pointer<Uint32> pdwFlags,
        Pointer<Uint32> pdwGrantedAccess),
    int Function(
        int hClientHandle,
        Pointer<GUID> pInterfaceGuid,
        Pointer<Utf16> strProfileName,
        Pointer pReserved,
        Pointer<Pointer<Utf16>> pstrProfileXml,
        Pointer<Uint32> pdwFlags,
        Pointer<Uint32> pdwGrantedAccess)>('WlanGetProfile');

/// Gets the custom user data associated with a wireless profile.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlangetprofilecustomuserdata>.
///
/// {@category wlanapi}
int WlanGetProfileCustomUserData(
        int hClientHandle,
        Pointer<GUID> pInterfaceGuid,
        Pointer<Utf16> strProfileName,
        Pointer<Uint32> pdwDataSize,
        Pointer<Pointer<Uint8>> ppData) =>
    _WlanGetProfileCustomUserData(hClientHandle, pInterfaceGuid, strProfileName,
        nullptr, pdwDataSize, ppData);

final _WlanGetProfileCustomUserData = _wlanapi.lookupFunction<
    Uint32 Function(
        HANDLE hClientHandle,
        Pointer<GUID> pInterfaceGuid,
        Pointer<Utf16> strProfileName,
        Pointer pReserved,
        Pointer<Uint32> pdwDataSize,
        Pointer<Pointer<Uint8>> ppData),
    int Function(
        int hClientHandle,
        Pointer<GUID> pInterfaceGuid,
        Pointer<Utf16> strProfileName,
        Pointer pReserved,
        Pointer<Uint32> pdwDataSize,
        Pointer<Pointer<Uint8>> ppData)>('WlanGetProfileCustomUserData');

/// Retrieves the list of profiles.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlangetprofilelist>.
///
/// {@category wlanapi}
int WlanGetProfileList(int hClientHandle, Pointer<GUID> pInterfaceGuid,
        Pointer<Pointer<WLAN_PROFILE_INFO_LIST>> ppProfileList) =>
    _WlanGetProfileList(hClientHandle, pInterfaceGuid, nullptr, ppProfileList);

final _WlanGetProfileList = _wlanapi.lookupFunction<
        Uint32 Function(
            HANDLE hClientHandle,
            Pointer<GUID> pInterfaceGuid,
            Pointer pReserved,
            Pointer<Pointer<WLAN_PROFILE_INFO_LIST>> ppProfileList),
        int Function(
            int hClientHandle,
            Pointer<GUID> pInterfaceGuid,
            Pointer pReserved,
            Pointer<Pointer<WLAN_PROFILE_INFO_LIST>> ppProfileList)>(
    'WlanGetProfileList');

/// Gets the security settings associated with a configurable object.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlangetsecuritysettings>.
///
/// {@category wlanapi}
int WlanGetSecuritySettings(
        int hClientHandle,
        int securableObject,
        Pointer<Int32>? pValueType,
        Pointer<Pointer<Utf16>> pstrCurrentSDDL,
        Pointer<Uint32> pdwGrantedAccess) =>
    _WlanGetSecuritySettings(hClientHandle, securableObject,
        pValueType ?? nullptr, pstrCurrentSDDL, pdwGrantedAccess);

final _WlanGetSecuritySettings = _wlanapi.lookupFunction<
    Uint32 Function(
        HANDLE hClientHandle,
        Int32 securableObject,
        Pointer<Int32> pValueType,
        Pointer<Pointer<Utf16>> pstrCurrentSDDL,
        Pointer<Uint32> pdwGrantedAccess),
    int Function(
        int hClientHandle,
        int securableObject,
        Pointer<Int32> pValueType,
        Pointer<Pointer<Utf16>> pstrCurrentSDDL,
        Pointer<Uint32> pdwGrantedAccess)>('WlanGetSecuritySettings');

/// Retrieves a list of the supported device services on a given wireless LAN
/// interface.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlangetsupporteddeviceservices>.
///
/// {@category wlanapi}
int WlanGetSupportedDeviceServices(
        int hClientHandle,
        Pointer<GUID> pInterfaceGuid,
        Pointer<Pointer<WLAN_DEVICE_SERVICE_GUID_LIST>> ppDevSvcGuidList) =>
    _WlanGetSupportedDeviceServices(
        hClientHandle, pInterfaceGuid, ppDevSvcGuidList);

final _WlanGetSupportedDeviceServices = _wlanapi.lookupFunction<
        Uint32 Function(HANDLE hClientHandle, Pointer<GUID> pInterfaceGuid,
            Pointer<Pointer<WLAN_DEVICE_SERVICE_GUID_LIST>> ppDevSvcGuidList),
        int Function(int hClientHandle, Pointer<GUID> pInterfaceGuid,
            Pointer<Pointer<WLAN_DEVICE_SERVICE_GUID_LIST>> ppDevSvcGuidList)>(
    'WlanGetSupportedDeviceServices');

/// Transitions the wireless Hosted Network to the wlan_hosted_network_active
/// state without associating the request with the application's calling handle.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlanhostednetworkforcestart>.
///
/// {@category wlanapi}
int WlanHostedNetworkForceStart(
        int hClientHandle, Pointer<Int32>? pFailReason) =>
    _WlanHostedNetworkForceStart(
        hClientHandle, pFailReason ?? nullptr, nullptr);

final _WlanHostedNetworkForceStart = _wlanapi.lookupFunction<
    Uint32 Function(
        HANDLE hClientHandle, Pointer<Int32> pFailReason, Pointer pvReserved),
    int Function(int hClientHandle, Pointer<Int32> pFailReason,
        Pointer pvReserved)>('WlanHostedNetworkForceStart');

/// Transitions the wireless Hosted Network to the wlan_hosted_network_idle
/// without associating the request with the application's calling handle.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlanhostednetworkforcestop>.
///
/// {@category wlanapi}
int WlanHostedNetworkForceStop(
        int hClientHandle, Pointer<Int32>? pFailReason) =>
    _WlanHostedNetworkForceStop(hClientHandle, pFailReason ?? nullptr, nullptr);

final _WlanHostedNetworkForceStop = _wlanapi.lookupFunction<
    Uint32 Function(
        HANDLE hClientHandle, Pointer<Int32> pFailReason, Pointer pvReserved),
    int Function(int hClientHandle, Pointer<Int32> pFailReason,
        Pointer pvReserved)>('WlanHostedNetworkForceStop');

/// Configures and persists to storage the network connection settings (SSID and
/// maximum number of peers, for example) on the wireless Hosted Network if
/// these settings are not already configured.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlanhostednetworkinitsettings>.
///
/// {@category wlanapi}
int WlanHostedNetworkInitSettings(
        int hClientHandle, Pointer<Int32>? pFailReason) =>
    _WlanHostedNetworkInitSettings(
        hClientHandle, pFailReason ?? nullptr, nullptr);

final _WlanHostedNetworkInitSettings = _wlanapi.lookupFunction<
    Uint32 Function(
        HANDLE hClientHandle, Pointer<Int32> pFailReason, Pointer pvReserved),
    int Function(int hClientHandle, Pointer<Int32> pFailReason,
        Pointer pvReserved)>('WlanHostedNetworkInitSettings');

/// Queries the current static properties of the wireless Hosted Network.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlanhostednetworkqueryproperty>.
///
/// {@category wlanapi}
int WlanHostedNetworkQueryProperty(
        int hClientHandle,
        int opCode,
        Pointer<Uint32> pdwDataSize,
        Pointer<Pointer> ppvData,
        Pointer<Int32> pWlanOpcodeValueType) =>
    _WlanHostedNetworkQueryProperty(hClientHandle, opCode, pdwDataSize, ppvData,
        pWlanOpcodeValueType, nullptr);

final _WlanHostedNetworkQueryProperty = _wlanapi.lookupFunction<
    Uint32 Function(
        HANDLE hClientHandle,
        Int32 opCode,
        Pointer<Uint32> pdwDataSize,
        Pointer<Pointer> ppvData,
        Pointer<Int32> pWlanOpcodeValueType,
        Pointer pvReserved),
    int Function(
        int hClientHandle,
        int opCode,
        Pointer<Uint32> pdwDataSize,
        Pointer<Pointer> ppvData,
        Pointer<Int32> pWlanOpcodeValueType,
        Pointer pvReserved)>('WlanHostedNetworkQueryProperty');

/// Queries the secondary security key that is configured to be used by the
/// wireless Hosted Network.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlanhostednetworkquerysecondarykey>.
///
/// {@category wlanapi}
int WlanHostedNetworkQuerySecondaryKey(
        int hClientHandle,
        Pointer<Uint32> pdwKeyLength,
        Pointer<Pointer<Uint8>> ppucKeyData,
        Pointer<BOOL> pbIsPassPhrase,
        Pointer<BOOL> pbPersistent,
        Pointer<Int32>? pFailReason) =>
    _WlanHostedNetworkQuerySecondaryKey(
        hClientHandle,
        pdwKeyLength,
        ppucKeyData,
        pbIsPassPhrase,
        pbPersistent,
        pFailReason ?? nullptr,
        nullptr);

final _WlanHostedNetworkQuerySecondaryKey = _wlanapi.lookupFunction<
    Uint32 Function(
        HANDLE hClientHandle,
        Pointer<Uint32> pdwKeyLength,
        Pointer<Pointer<Uint8>> ppucKeyData,
        Pointer<BOOL> pbIsPassPhrase,
        Pointer<BOOL> pbPersistent,
        Pointer<Int32> pFailReason,
        Pointer pvReserved),
    int Function(
        int hClientHandle,
        Pointer<Uint32> pdwKeyLength,
        Pointer<Pointer<Uint8>> ppucKeyData,
        Pointer<BOOL> pbIsPassPhrase,
        Pointer<BOOL> pbPersistent,
        Pointer<Int32> pFailReason,
        Pointer pvReserved)>('WlanHostedNetworkQuerySecondaryKey');

/// Queries the current status of the wireless Hosted Network.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlanhostednetworkquerystatus>.
///
/// {@category wlanapi}
int WlanHostedNetworkQueryStatus(
        int hClientHandle,
        Pointer<Pointer<WLAN_HOSTED_NETWORK_STATUS>>
            ppWlanHostedNetworkStatus) =>
    _WlanHostedNetworkQueryStatus(
        hClientHandle, ppWlanHostedNetworkStatus, nullptr);

final _WlanHostedNetworkQueryStatus = _wlanapi.lookupFunction<
    Uint32 Function(
        HANDLE hClientHandle,
        Pointer<Pointer<WLAN_HOSTED_NETWORK_STATUS>> ppWlanHostedNetworkStatus,
        Pointer pvReserved),
    int Function(
        int hClientHandle,
        Pointer<Pointer<WLAN_HOSTED_NETWORK_STATUS>> ppWlanHostedNetworkStatus,
        Pointer pvReserved)>('WlanHostedNetworkQueryStatus');

/// Refreshes the configurable and auto-generated parts of the wireless Hosted
/// Network security settings.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlanhostednetworkrefreshsecuritysettings>.
///
/// {@category wlanapi}
int WlanHostedNetworkRefreshSecuritySettings(
        int hClientHandle, Pointer<Int32>? pFailReason) =>
    _WlanHostedNetworkRefreshSecuritySettings(
        hClientHandle, pFailReason ?? nullptr, nullptr);

final _WlanHostedNetworkRefreshSecuritySettings = _wlanapi.lookupFunction<
    Uint32 Function(
        HANDLE hClientHandle, Pointer<Int32> pFailReason, Pointer pvReserved),
    int Function(int hClientHandle, Pointer<Int32> pFailReason,
        Pointer pvReserved)>('WlanHostedNetworkRefreshSecuritySettings');

/// Sets static properties of the wireless Hosted Network.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlanhostednetworksetproperty>.
///
/// {@category wlanapi}
int WlanHostedNetworkSetProperty(int hClientHandle, int opCode, int dwDataSize,
        Pointer pvData, Pointer<Int32>? pFailReason) =>
    _WlanHostedNetworkSetProperty(hClientHandle, opCode, dwDataSize, pvData,
        pFailReason ?? nullptr, nullptr);

final _WlanHostedNetworkSetProperty = _wlanapi.lookupFunction<
    Uint32 Function(HANDLE hClientHandle, Int32 opCode, Uint32 dwDataSize,
        Pointer pvData, Pointer<Int32> pFailReason, Pointer pvReserved),
    int Function(
        int hClientHandle,
        int opCode,
        int dwDataSize,
        Pointer pvData,
        Pointer<Int32> pFailReason,
        Pointer pvReserved)>('WlanHostedNetworkSetProperty');

/// Configures the secondary security key that will be used by the wireless
/// Hosted Network.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlanhostednetworksetsecondarykey>.
///
/// {@category wlanapi}
int WlanHostedNetworkSetSecondaryKey(
        int hClientHandle,
        int dwKeyLength,
        Pointer<Uint8> pucKeyData,
        int bIsPassPhrase,
        int bPersistent,
        Pointer<Int32>? pFailReason) =>
    _WlanHostedNetworkSetSecondaryKey(hClientHandle, dwKeyLength, pucKeyData,
        bIsPassPhrase, bPersistent, pFailReason ?? nullptr, nullptr);

final _WlanHostedNetworkSetSecondaryKey = _wlanapi.lookupFunction<
    Uint32 Function(
        HANDLE hClientHandle,
        Uint32 dwKeyLength,
        Pointer<Uint8> pucKeyData,
        BOOL bIsPassPhrase,
        BOOL bPersistent,
        Pointer<Int32> pFailReason,
        Pointer pvReserved),
    int Function(
        int hClientHandle,
        int dwKeyLength,
        Pointer<Uint8> pucKeyData,
        int bIsPassPhrase,
        int bPersistent,
        Pointer<Int32> pFailReason,
        Pointer pvReserved)>('WlanHostedNetworkSetSecondaryKey');

/// Starts the wireless Hosted Network.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlanhostednetworkstartusing>.
///
/// {@category wlanapi}
int WlanHostedNetworkStartUsing(
        int hClientHandle, Pointer<Int32>? pFailReason) =>
    _WlanHostedNetworkStartUsing(
        hClientHandle, pFailReason ?? nullptr, nullptr);

final _WlanHostedNetworkStartUsing = _wlanapi.lookupFunction<
    Uint32 Function(
        HANDLE hClientHandle, Pointer<Int32> pFailReason, Pointer pvReserved),
    int Function(int hClientHandle, Pointer<Int32> pFailReason,
        Pointer pvReserved)>('WlanHostedNetworkStartUsing');

/// Stops the wireless Hosted Network.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlanhostednetworkstopusing>.
///
/// {@category wlanapi}
int WlanHostedNetworkStopUsing(
        int hClientHandle, Pointer<Int32>? pFailReason) =>
    _WlanHostedNetworkStopUsing(hClientHandle, pFailReason ?? nullptr, nullptr);

final _WlanHostedNetworkStopUsing = _wlanapi.lookupFunction<
    Uint32 Function(
        HANDLE hClientHandle, Pointer<Int32> pFailReason, Pointer pvReserved),
    int Function(int hClientHandle, Pointer<Int32> pFailReason,
        Pointer pvReserved)>('WlanHostedNetworkStopUsing');

/// Provides a mechanism for independent hardware vendor (IHV) control of WLAN
/// drivers or services.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlanihvcontrol>.
///
/// {@category wlanapi}
int WlanIhvControl(
        int hClientHandle,
        Pointer<GUID> pInterfaceGuid,
        int type,
        int dwInBufferSize,
        Pointer pInBuffer,
        int dwOutBufferSize,
        Pointer? pOutBuffer,
        Pointer<Uint32> pdwBytesReturned) =>
    _WlanIhvControl(hClientHandle, pInterfaceGuid, type, dwInBufferSize,
        pInBuffer, dwOutBufferSize, pOutBuffer ?? nullptr, pdwBytesReturned);

final _WlanIhvControl = _wlanapi.lookupFunction<
    Uint32 Function(
        HANDLE hClientHandle,
        Pointer<GUID> pInterfaceGuid,
        Int32 type,
        Uint32 dwInBufferSize,
        Pointer pInBuffer,
        Uint32 dwOutBufferSize,
        Pointer pOutBuffer,
        Pointer<Uint32> pdwBytesReturned),
    int Function(
        int hClientHandle,
        Pointer<GUID> pInterfaceGuid,
        int type,
        int dwInBufferSize,
        Pointer pInBuffer,
        int dwOutBufferSize,
        Pointer pOutBuffer,
        Pointer<Uint32> pdwBytesReturned)>('WlanIhvControl');

/// Opens a connection to the server.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlanopenhandle>.
///
/// {@category wlanapi}
int WlanOpenHandle(int dwClientVersion, Pointer<Uint32> pdwNegotiatedVersion,
        Pointer<HANDLE> phClientHandle) =>
    _WlanOpenHandle(
        dwClientVersion, nullptr, pdwNegotiatedVersion, phClientHandle);

final _WlanOpenHandle = _wlanapi.lookupFunction<
    Uint32 Function(Uint32 dwClientVersion, Pointer pReserved,
        Pointer<Uint32> pdwNegotiatedVersion, Pointer<HANDLE> phClientHandle),
    int Function(
        int dwClientVersion,
        Pointer pReserved,
        Pointer<Uint32> pdwNegotiatedVersion,
        Pointer<HANDLE> phClientHandle)>('WlanOpenHandle');

/// Queries for the parameters of the auto configuration service.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlanqueryautoconfigparameter>.
///
/// {@category wlanapi}
int WlanQueryAutoConfigParameter(
        int hClientHandle,
        int opCode,
        Pointer<Uint32> pdwDataSize,
        Pointer<Pointer> ppData,
        Pointer<Int32>? pWlanOpcodeValueType) =>
    _WlanQueryAutoConfigParameter(hClientHandle, opCode, nullptr, pdwDataSize,
        ppData, pWlanOpcodeValueType ?? nullptr);

final _WlanQueryAutoConfigParameter = _wlanapi.lookupFunction<
    Uint32 Function(
        HANDLE hClientHandle,
        Int32 opCode,
        Pointer pReserved,
        Pointer<Uint32> pdwDataSize,
        Pointer<Pointer> ppData,
        Pointer<Int32> pWlanOpcodeValueType),
    int Function(
        int hClientHandle,
        int opCode,
        Pointer pReserved,
        Pointer<Uint32> pdwDataSize,
        Pointer<Pointer> ppData,
        Pointer<Int32> pWlanOpcodeValueType)>('WlanQueryAutoConfigParameter');

/// Queries various parameters of a specified interface.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlanqueryinterface>.
///
/// {@category wlanapi}
int WlanQueryInterface(
        int hClientHandle,
        Pointer<GUID> pInterfaceGuid,
        int opCode,
        Pointer<Uint32> pdwDataSize,
        Pointer<Pointer> ppData,
        Pointer<Int32>? pWlanOpcodeValueType) =>
    _WlanQueryInterface(hClientHandle, pInterfaceGuid, opCode, nullptr,
        pdwDataSize, ppData, pWlanOpcodeValueType ?? nullptr);

final _WlanQueryInterface = _wlanapi.lookupFunction<
    Uint32 Function(
        HANDLE hClientHandle,
        Pointer<GUID> pInterfaceGuid,
        Int32 opCode,
        Pointer pReserved,
        Pointer<Uint32> pdwDataSize,
        Pointer<Pointer> ppData,
        Pointer<Int32> pWlanOpcodeValueType),
    int Function(
        int hClientHandle,
        Pointer<GUID> pInterfaceGuid,
        int opCode,
        Pointer pReserved,
        Pointer<Uint32> pdwDataSize,
        Pointer<Pointer> ppData,
        Pointer<Int32> pWlanOpcodeValueType)>('WlanQueryInterface');

/// Retrieves a string that describes a specified reason code.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlanreasoncodetostring>.
///
/// {@category wlanapi}
int WlanReasonCodeToString(
        int dwReasonCode, int dwBufferSize, Pointer<Utf16> pStringBuffer) =>
    _WlanReasonCodeToString(dwReasonCode, dwBufferSize, pStringBuffer, nullptr);

final _WlanReasonCodeToString = _wlanapi.lookupFunction<
    Uint32 Function(Uint32 dwReasonCode, Uint32 dwBufferSize,
        Pointer<Utf16> pStringBuffer, Pointer pReserved),
    int Function(
        int dwReasonCode,
        int dwBufferSize,
        Pointer<Utf16> pStringBuffer,
        Pointer pReserved)>('WlanReasonCodeToString');

/// Allows user mode clients with admin privileges, or User-Mode Driver
/// Framework (UMDF) drivers, to register for unsolicited notifications
/// corresponding to device services that they're interested in.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlanregisterdeviceservicenotification>.
///
/// {@category wlanapi}
int WlanRegisterDeviceServiceNotification(int hClientHandle,
        Pointer<WLAN_DEVICE_SERVICE_GUID_LIST>? pDevSvcGuidList) =>
    _WlanRegisterDeviceServiceNotification(
        hClientHandle, pDevSvcGuidList ?? nullptr);

final _WlanRegisterDeviceServiceNotification = _wlanapi.lookupFunction<
        Uint32 Function(HANDLE hClientHandle,
            Pointer<WLAN_DEVICE_SERVICE_GUID_LIST> pDevSvcGuidList),
        int Function(int hClientHandle,
            Pointer<WLAN_DEVICE_SERVICE_GUID_LIST> pDevSvcGuidList)>(
    'WlanRegisterDeviceServiceNotification');

/// Used to register and unregister notifications on all wireless interfaces.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlanregisternotification>.
///
/// {@category wlanapi}
int WlanRegisterNotification(
        int hClientHandle,
        int dwNotifSource,
        int bIgnoreDuplicate,
        Pointer<NativeFunction<WLAN_NOTIFICATION_CALLBACK>>? funcCallback,
        Pointer? pCallbackContext,
        Pointer<Uint32>? pdwPrevNotifSource) =>
    _WlanRegisterNotification(
        hClientHandle,
        dwNotifSource,
        bIgnoreDuplicate,
        funcCallback ?? nullptr,
        pCallbackContext ?? nullptr,
        nullptr,
        pdwPrevNotifSource ?? nullptr);

final _WlanRegisterNotification = _wlanapi.lookupFunction<
    Uint32 Function(
        HANDLE hClientHandle,
        Uint32 dwNotifSource,
        BOOL bIgnoreDuplicate,
        Pointer<NativeFunction<WLAN_NOTIFICATION_CALLBACK>> funcCallback,
        Pointer pCallbackContext,
        Pointer pReserved,
        Pointer<Uint32> pdwPrevNotifSource),
    int Function(
        int hClientHandle,
        int dwNotifSource,
        int bIgnoreDuplicate,
        Pointer<NativeFunction<WLAN_NOTIFICATION_CALLBACK>> funcCallback,
        Pointer pCallbackContext,
        Pointer pReserved,
        Pointer<Uint32> pdwPrevNotifSource)>('WlanRegisterNotification');

/// Used to register and unregister notifications on a virtual station.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlanregistervirtualstationnotification>.
///
/// {@category wlanapi}
int WlanRegisterVirtualStationNotification(int hClientHandle, int bRegister) =>
    _WlanRegisterVirtualStationNotification(hClientHandle, bRegister, nullptr);

final _WlanRegisterVirtualStationNotification = _wlanapi.lookupFunction<
    Uint32 Function(HANDLE hClientHandle, BOOL bRegister, Pointer pReserved),
    int Function(int hClientHandle, int bRegister,
        Pointer pReserved)>('WlanRegisterVirtualStationNotification');

/// Renames the specified profile.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlanrenameprofile>.
///
/// {@category wlanapi}
int WlanRenameProfile(int hClientHandle, Pointer<GUID> pInterfaceGuid,
        Pointer<Utf16> strOldProfileName, Pointer<Utf16> strNewProfileName) =>
    _WlanRenameProfile(hClientHandle, pInterfaceGuid, strOldProfileName,
        strNewProfileName, nullptr);

final _WlanRenameProfile = _wlanapi.lookupFunction<
    Uint32 Function(
        HANDLE hClientHandle,
        Pointer<GUID> pInterfaceGuid,
        Pointer<Utf16> strOldProfileName,
        Pointer<Utf16> strNewProfileName,
        Pointer pReserved),
    int Function(
        int hClientHandle,
        Pointer<GUID> pInterfaceGuid,
        Pointer<Utf16> strOldProfileName,
        Pointer<Utf16> strNewProfileName,
        Pointer pReserved)>('WlanRenameProfile');

/// Saves a temporary profile to the profile store.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlansavetemporaryprofile>.
///
/// {@category wlanapi}
int WlanSaveTemporaryProfile(
        int hClientHandle,
        Pointer<GUID> pInterfaceGuid,
        Pointer<Utf16> strProfileName,
        Pointer<Utf16>? strAllUserProfileSecurity,
        int dwFlags,
        int bOverWrite) =>
    _WlanSaveTemporaryProfile(hClientHandle, pInterfaceGuid, strProfileName,
        strAllUserProfileSecurity ?? nullptr, dwFlags, bOverWrite, nullptr);

final _WlanSaveTemporaryProfile = _wlanapi.lookupFunction<
    Uint32 Function(
        HANDLE hClientHandle,
        Pointer<GUID> pInterfaceGuid,
        Pointer<Utf16> strProfileName,
        Pointer<Utf16> strAllUserProfileSecurity,
        Uint32 dwFlags,
        BOOL bOverWrite,
        Pointer pReserved),
    int Function(
        int hClientHandle,
        Pointer<GUID> pInterfaceGuid,
        Pointer<Utf16> strProfileName,
        Pointer<Utf16> strAllUserProfileSecurity,
        int dwFlags,
        int bOverWrite,
        Pointer pReserved)>('WlanSaveTemporaryProfile');

/// Requests a scan for available networks on the indicated interface.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlanscan>.
///
/// {@category wlanapi}
int WlanScan(int hClientHandle, Pointer<GUID> pInterfaceGuid,
        Pointer<DOT11_SSID>? pDot11Ssid, Pointer<WLAN_RAW_DATA>? pIeData) =>
    _WlanScan(hClientHandle, pInterfaceGuid, pDot11Ssid ?? nullptr,
        pIeData ?? nullptr, nullptr);

final _WlanScan = _wlanapi.lookupFunction<
    Uint32 Function(
        HANDLE hClientHandle,
        Pointer<GUID> pInterfaceGuid,
        Pointer<DOT11_SSID> pDot11Ssid,
        Pointer<WLAN_RAW_DATA> pIeData,
        Pointer pReserved),
    int Function(
        int hClientHandle,
        Pointer<GUID> pInterfaceGuid,
        Pointer<DOT11_SSID> pDot11Ssid,
        Pointer<WLAN_RAW_DATA> pIeData,
        Pointer pReserved)>('WlanScan');

/// Sets parameters for the automatic configuration service.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlansetautoconfigparameter>.
///
/// {@category wlanapi}
int WlanSetAutoConfigParameter(
        int hClientHandle, int opCode, int dwDataSize, Pointer pData) =>
    _WlanSetAutoConfigParameter(
        hClientHandle, opCode, dwDataSize, pData, nullptr);

final _WlanSetAutoConfigParameter = _wlanapi.lookupFunction<
    Uint32 Function(HANDLE hClientHandle, Int32 opCode, Uint32 dwDataSize,
        Pointer pData, Pointer pReserved),
    int Function(int hClientHandle, int opCode, int dwDataSize, Pointer pData,
        Pointer pReserved)>('WlanSetAutoConfigParameter');

/// Sets the permit/deny list.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlansetfilterlist>.
///
/// {@category wlanapi}
int WlanSetFilterList(int hClientHandle, int wlanFilterListType,
        Pointer<DOT11_NETWORK_LIST>? pNetworkList) =>
    _WlanSetFilterList(
        hClientHandle, wlanFilterListType, pNetworkList ?? nullptr, nullptr);

final _WlanSetFilterList = _wlanapi.lookupFunction<
    Uint32 Function(HANDLE hClientHandle, Int32 wlanFilterListType,
        Pointer<DOT11_NETWORK_LIST> pNetworkList, Pointer pReserved),
    int Function(
        int hClientHandle,
        int wlanFilterListType,
        Pointer<DOT11_NETWORK_LIST> pNetworkList,
        Pointer pReserved)>('WlanSetFilterList');

/// Sets user-configurable parameters.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlansetinterface>.
///
/// {@category wlanapi}
int WlanSetInterface(int hClientHandle, Pointer<GUID> pInterfaceGuid,
        int opCode, int dwDataSize, Pointer pData) =>
    _WlanSetInterface(
        hClientHandle, pInterfaceGuid, opCode, dwDataSize, pData, nullptr);

final _WlanSetInterface = _wlanapi.lookupFunction<
    Uint32 Function(HANDLE hClientHandle, Pointer<GUID> pInterfaceGuid,
        Int32 opCode, Uint32 dwDataSize, Pointer pData, Pointer pReserved),
    int Function(int hClientHandle, Pointer<GUID> pInterfaceGuid, int opCode,
        int dwDataSize, Pointer pData, Pointer pReserved)>('WlanSetInterface');

/// Sets the content of a specific profile.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlansetprofile>.
///
/// {@category wlanapi}
int WlanSetProfile(
        int hClientHandle,
        Pointer<GUID> pInterfaceGuid,
        int dwFlags,
        Pointer<Utf16> strProfileXml,
        Pointer<Utf16>? strAllUserProfileSecurity,
        int bOverwrite,
        Pointer<Uint32> pdwReasonCode) =>
    _WlanSetProfile(
        hClientHandle,
        pInterfaceGuid,
        dwFlags,
        strProfileXml,
        strAllUserProfileSecurity ?? nullptr,
        bOverwrite,
        nullptr,
        pdwReasonCode);

final _WlanSetProfile = _wlanapi.lookupFunction<
    Uint32 Function(
        HANDLE hClientHandle,
        Pointer<GUID> pInterfaceGuid,
        Uint32 dwFlags,
        Pointer<Utf16> strProfileXml,
        Pointer<Utf16> strAllUserProfileSecurity,
        BOOL bOverwrite,
        Pointer pReserved,
        Pointer<Uint32> pdwReasonCode),
    int Function(
        int hClientHandle,
        Pointer<GUID> pInterfaceGuid,
        int dwFlags,
        Pointer<Utf16> strProfileXml,
        Pointer<Utf16> strAllUserProfileSecurity,
        int bOverwrite,
        Pointer pReserved,
        Pointer<Uint32> pdwReasonCode)>('WlanSetProfile');

/// Sets the custom user data associated with a profile.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlansetprofilecustomuserdata>.
///
/// {@category wlanapi}
int WlanSetProfileCustomUserData(
        int hClientHandle,
        Pointer<GUID> pInterfaceGuid,
        Pointer<Utf16> strProfileName,
        int dwDataSize,
        Pointer<Uint8> pData) =>
    _WlanSetProfileCustomUserData(hClientHandle, pInterfaceGuid, strProfileName,
        dwDataSize, pData, nullptr);

final _WlanSetProfileCustomUserData = _wlanapi.lookupFunction<
    Uint32 Function(
        HANDLE hClientHandle,
        Pointer<GUID> pInterfaceGuid,
        Pointer<Utf16> strProfileName,
        Uint32 dwDataSize,
        Pointer<Uint8> pData,
        Pointer pReserved),
    int Function(
        int hClientHandle,
        Pointer<GUID> pInterfaceGuid,
        Pointer<Utf16> strProfileName,
        int dwDataSize,
        Pointer<Uint8> pData,
        Pointer pReserved)>('WlanSetProfileCustomUserData');

/// Sets the Extensible Authentication Protocol (EAP) user credentials as
/// specified by raw EAP data.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlansetprofileeapuserdata>.
///
/// {@category wlanapi}
int WlanSetProfileEapUserData(
        int hClientHandle,
        Pointer<GUID> pInterfaceGuid,
        Pointer<Utf16> strProfileName,
        EAP_METHOD_TYPE eapType,
        int dwFlags,
        int dwEapUserDataSize,
        Pointer<Uint8>? pbEapUserData) =>
    _WlanSetProfileEapUserData(hClientHandle, pInterfaceGuid, strProfileName,
        eapType, dwFlags, dwEapUserDataSize, pbEapUserData ?? nullptr, nullptr);

final _WlanSetProfileEapUserData = _wlanapi.lookupFunction<
    Uint32 Function(
        HANDLE hClientHandle,
        Pointer<GUID> pInterfaceGuid,
        Pointer<Utf16> strProfileName,
        EAP_METHOD_TYPE eapType,
        Uint32 dwFlags,
        Uint32 dwEapUserDataSize,
        Pointer<Uint8> pbEapUserData,
        Pointer pReserved),
    int Function(
        int hClientHandle,
        Pointer<GUID> pInterfaceGuid,
        Pointer<Utf16> strProfileName,
        EAP_METHOD_TYPE eapType,
        int dwFlags,
        int dwEapUserDataSize,
        Pointer<Uint8> pbEapUserData,
        Pointer pReserved)>('WlanSetProfileEapUserData');

/// Sets the Extensible Authentication Protocol (EAP) user credentials as
/// specified by an XML string.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlansetprofileeapxmluserdata>.
///
/// {@category wlanapi}
int WlanSetProfileEapXmlUserData(
        int hClientHandle,
        Pointer<GUID> pInterfaceGuid,
        Pointer<Utf16> strProfileName,
        int dwFlags,
        Pointer<Utf16> strEapXmlUserData) =>
    _WlanSetProfileEapXmlUserData(hClientHandle, pInterfaceGuid, strProfileName,
        dwFlags, strEapXmlUserData, nullptr);

final _WlanSetProfileEapXmlUserData = _wlanapi.lookupFunction<
    Uint32 Function(
        HANDLE hClientHandle,
        Pointer<GUID> pInterfaceGuid,
        Pointer<Utf16> strProfileName,
        Uint32 dwFlags,
        Pointer<Utf16> strEapXmlUserData,
        Pointer pReserved),
    int Function(
        int hClientHandle,
        Pointer<GUID> pInterfaceGuid,
        Pointer<Utf16> strProfileName,
        int dwFlags,
        Pointer<Utf16> strEapXmlUserData,
        Pointer pReserved)>('WlanSetProfileEapXmlUserData');

/// Sets the preference order of profiles.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlansetprofilelist>.
///
/// {@category wlanapi}
int WlanSetProfileList(int hClientHandle, Pointer<GUID> pInterfaceGuid,
        int dwItems, Pointer<Pointer<Utf16>> strProfileNames) =>
    _WlanSetProfileList(
        hClientHandle, pInterfaceGuid, dwItems, strProfileNames, nullptr);

final _WlanSetProfileList = _wlanapi.lookupFunction<
    Uint32 Function(
        HANDLE hClientHandle,
        Pointer<GUID> pInterfaceGuid,
        Uint32 dwItems,
        Pointer<Pointer<Utf16>> strProfileNames,
        Pointer pReserved),
    int Function(
        int hClientHandle,
        Pointer<GUID> pInterfaceGuid,
        int dwItems,
        Pointer<Pointer<Utf16>> strProfileNames,
        Pointer pReserved)>('WlanSetProfileList');

/// Sets the position of a single, specified profile in the preference list.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlansetprofileposition>.
///
/// {@category wlanapi}
int WlanSetProfilePosition(int hClientHandle, Pointer<GUID> pInterfaceGuid,
        Pointer<Utf16> strProfileName, int dwPosition) =>
    _WlanSetProfilePosition(
        hClientHandle, pInterfaceGuid, strProfileName, dwPosition, nullptr);

final _WlanSetProfilePosition = _wlanapi.lookupFunction<
    Uint32 Function(HANDLE hClientHandle, Pointer<GUID> pInterfaceGuid,
        Pointer<Utf16> strProfileName, Uint32 dwPosition, Pointer pReserved),
    int Function(
        int hClientHandle,
        Pointer<GUID> pInterfaceGuid,
        Pointer<Utf16> strProfileName,
        int dwPosition,
        Pointer pReserved)>('WlanSetProfilePosition');

/// Sets the proximity service discovery (PSD) information element (IE) data
/// list.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlansetpsdiedatalist>.
///
/// {@category wlanapi}
int WlanSetPsdIEDataList(int hClientHandle, Pointer<Utf16>? strFormat,
        Pointer<WLAN_RAW_DATA_LIST>? pPsdIEDataList) =>
    _WlanSetPsdIEDataList(hClientHandle, strFormat ?? nullptr,
        pPsdIEDataList ?? nullptr, nullptr);

final _WlanSetPsdIEDataList = _wlanapi.lookupFunction<
    Uint32 Function(HANDLE hClientHandle, Pointer<Utf16> strFormat,
        Pointer<WLAN_RAW_DATA_LIST> pPsdIEDataList, Pointer pReserved),
    int Function(
        int hClientHandle,
        Pointer<Utf16> strFormat,
        Pointer<WLAN_RAW_DATA_LIST> pPsdIEDataList,
        Pointer pReserved)>('WlanSetPsdIEDataList');

/// Sets the security settings for a configurable object.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nf-wlanapi-wlansetsecuritysettings>.
///
/// {@category wlanapi}
int WlanSetSecuritySettings(int hClientHandle, int securableObject,
        Pointer<Utf16> strModifiedSDDL) =>
    _WlanSetSecuritySettings(hClientHandle, securableObject, strModifiedSDDL);

final _WlanSetSecuritySettings = _wlanapi.lookupFunction<
    Uint32 Function(HANDLE hClientHandle, Int32 securableObject,
        Pointer<Utf16> strModifiedSDDL),
    int Function(int hClientHandle, int securableObject,
        Pointer<Utf16> strModifiedSDDL)>('WlanSetSecuritySettings');
