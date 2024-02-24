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

final _setupapi = DynamicLibrary.open('setupapi.dll');

/// The SetupDiDestroyDeviceInfoList function deletes a device information set
/// and frees all associated memory.
///
/// ```c
/// BOOL SetupDiDestroyDeviceInfoList(
///   HDEVINFO DeviceInfoSet
/// );
/// ```
/// {@category setupapi}
int SetupDiDestroyDeviceInfoList(int deviceInfoSet) =>
    _SetupDiDestroyDeviceInfoList(deviceInfoSet);

final _SetupDiDestroyDeviceInfoList = _setupapi.lookupFunction<
    BOOL Function(HDEVINFO deviceInfoSet),
    int Function(int deviceInfoSet)>('SetupDiDestroyDeviceInfoList');

/// The SetupDiEnumDeviceInfo function returns a SP_DEVINFO_DATA structure that
/// specifies a device information element in a device information set.
///
/// ```c
/// BOOL SetupDiEnumDeviceInfo(
///   HDEVINFO         DeviceInfoSet,
///   DWORD            MemberIndex,
///   PSP_DEVINFO_DATA DeviceInfoData
/// );
/// ```
/// {@category setupapi}
int SetupDiEnumDeviceInfo(int deviceInfoSet, int memberIndex,
        Pointer<SP_DEVINFO_DATA> deviceInfoData) =>
    _SetupDiEnumDeviceInfo(deviceInfoSet, memberIndex, deviceInfoData);

final _SetupDiEnumDeviceInfo = _setupapi.lookupFunction<
    BOOL Function(HDEVINFO deviceInfoSet, Uint32 memberIndex,
        Pointer<SP_DEVINFO_DATA> deviceInfoData),
    int Function(int deviceInfoSet, int memberIndex,
        Pointer<SP_DEVINFO_DATA> deviceInfoData)>('SetupDiEnumDeviceInfo');

/// The SetupDiEnumDeviceInterfaces function enumerates the device interfaces
/// that are contained in a device information set.
///
/// ```c
/// BOOL SetupDiEnumDeviceInterfaces(
///   [in]           HDEVINFO                  DeviceInfoSet,
///   [in, optional] PSP_DEVINFO_DATA          DeviceInfoData,
///   [in]           const GUID                *InterfaceClassGuid,
///   [in]           DWORD                     MemberIndex,
///   [out]          PSP_DEVICE_INTERFACE_DATA DeviceInterfaceData
/// );
/// ```
/// {@category setupapi}
int SetupDiEnumDeviceInterfaces(
        int deviceInfoSet,
        Pointer<SP_DEVINFO_DATA>? deviceInfoData,
        Pointer<GUID> interfaceClassGuid,
        int memberIndex,
        Pointer<SP_DEVICE_INTERFACE_DATA> deviceInterfaceData) =>
    _SetupDiEnumDeviceInterfaces(deviceInfoSet, deviceInfoData ?? nullptr,
        interfaceClassGuid, memberIndex, deviceInterfaceData);

final _SetupDiEnumDeviceInterfaces = _setupapi.lookupFunction<
        BOOL Function(
            HDEVINFO deviceInfoSet,
            Pointer<SP_DEVINFO_DATA> deviceInfoData,
            Pointer<GUID> interfaceClassGuid,
            Uint32 memberIndex,
            Pointer<SP_DEVICE_INTERFACE_DATA> deviceInterfaceData),
        int Function(
            int deviceInfoSet,
            Pointer<SP_DEVINFO_DATA> deviceInfoData,
            Pointer<GUID> interfaceClassGuid,
            int memberIndex,
            Pointer<SP_DEVICE_INTERFACE_DATA> deviceInterfaceData)>(
    'SetupDiEnumDeviceInterfaces');

/// The SetupDiGetClassDevs function returns a handle to a device information
/// set that contains requested device information elements for a local
/// computer.
///
/// ```c
/// HDEVINFO SetupDiGetClassDevsW(
///   const GUID *ClassGuid,
///   PCWSTR     Enumerator,
///   HWND       hwndParent,
///   DWORD      Flags
/// );
/// ```
/// {@category setupapi}
int SetupDiGetClassDevs(Pointer<GUID>? classGuid, Pointer<Utf16>? enumerator,
        int? hwndParent, int flags) =>
    _SetupDiGetClassDevs(
        classGuid ?? nullptr, enumerator ?? nullptr, hwndParent ?? 0, flags);

final _SetupDiGetClassDevs = _setupapi.lookupFunction<
    HDEVINFO Function(Pointer<GUID> classGuid, Pointer<Utf16> enumerator,
        HWND hwndParent, Uint32 flags),
    int Function(Pointer<GUID> classGuid, Pointer<Utf16> enumerator,
        int hwndParent, int flags)>('SetupDiGetClassDevsW');

/// The SetupDiGetDeviceInstanceId function retrieves the device instance ID
/// that is associated with a device information element.
///
/// ```c
/// BOOL SetupDiGetDeviceInstanceIdW(
///   [in]            HDEVINFO         DeviceInfoSet,
///   [in]            PSP_DEVINFO_DATA DeviceInfoData,
///   [out, optional] PWSTR            DeviceInstanceId,
///   [in]            DWORD            DeviceInstanceIdSize,
///   [out, optional] PDWORD           RequiredSize
/// );
/// ```
/// {@category setupapi}
int SetupDiGetDeviceInstanceId(
        int deviceInfoSet,
        Pointer<SP_DEVINFO_DATA> deviceInfoData,
        Pointer<Utf16>? deviceInstanceId,
        int deviceInstanceIdSize,
        Pointer<Uint32>? requiredSize) =>
    _SetupDiGetDeviceInstanceId(
        deviceInfoSet,
        deviceInfoData,
        deviceInstanceId ?? nullptr,
        deviceInstanceIdSize,
        requiredSize ?? nullptr);

final _SetupDiGetDeviceInstanceId = _setupapi.lookupFunction<
    BOOL Function(
        HDEVINFO deviceInfoSet,
        Pointer<SP_DEVINFO_DATA> deviceInfoData,
        Pointer<Utf16> deviceInstanceId,
        Uint32 deviceInstanceIdSize,
        Pointer<Uint32> requiredSize),
    int Function(
        int deviceInfoSet,
        Pointer<SP_DEVINFO_DATA> deviceInfoData,
        Pointer<Utf16> deviceInstanceId,
        int deviceInstanceIdSize,
        Pointer<Uint32> requiredSize)>('SetupDiGetDeviceInstanceIdW');

/// The SetupDiGetDeviceInterfaceDetail function returns details about a device
/// interface.
///
/// ```c
/// BOOL SetupDiGetDeviceInterfaceDetailW(
///   [in]            HDEVINFO                           DeviceInfoSet,
///   [in]            PSP_DEVICE_INTERFACE_DATA          DeviceInterfaceData,
///   [out, optional] PSP_DEVICE_INTERFACE_DETAIL_DATA_W DeviceInterfaceDetailData,
///   [in]            DWORD                              DeviceInterfaceDetailDataSize,
///   [out, optional] PDWORD                             RequiredSize,
///   [out, optional] PSP_DEVINFO_DATA                   DeviceInfoData
/// );
/// ```
/// {@category setupapi}
int SetupDiGetDeviceInterfaceDetail(
        int deviceInfoSet,
        Pointer<SP_DEVICE_INTERFACE_DATA> deviceInterfaceData,
        Pointer<SP_DEVICE_INTERFACE_DETAIL_DATA_>? deviceInterfaceDetailData,
        int deviceInterfaceDetailDataSize,
        Pointer<Uint32>? requiredSize,
        Pointer<SP_DEVINFO_DATA>? deviceInfoData) =>
    _SetupDiGetDeviceInterfaceDetail(
        deviceInfoSet,
        deviceInterfaceData,
        deviceInterfaceDetailData ?? nullptr,
        deviceInterfaceDetailDataSize,
        requiredSize ?? nullptr,
        deviceInfoData ?? nullptr);

final _SetupDiGetDeviceInterfaceDetail = _setupapi.lookupFunction<
        BOOL Function(
            HDEVINFO deviceInfoSet,
            Pointer<SP_DEVICE_INTERFACE_DATA> deviceInterfaceData,
            Pointer<SP_DEVICE_INTERFACE_DETAIL_DATA_> deviceInterfaceDetailData,
            Uint32 deviceInterfaceDetailDataSize,
            Pointer<Uint32> requiredSize,
            Pointer<SP_DEVINFO_DATA> deviceInfoData),
        int Function(
            int deviceInfoSet,
            Pointer<SP_DEVICE_INTERFACE_DATA> deviceInterfaceData,
            Pointer<SP_DEVICE_INTERFACE_DETAIL_DATA_> deviceInterfaceDetailData,
            int deviceInterfaceDetailDataSize,
            Pointer<Uint32> requiredSize,
            Pointer<SP_DEVINFO_DATA> deviceInfoData)>(
    'SetupDiGetDeviceInterfaceDetailW');

/// The SetupDiGetDeviceRegistryProperty function retrieves a specified Plug and
/// Play device property.
///
/// ```c
/// BOOL SetupDiGetDeviceRegistryPropertyW(
///   [in]            HDEVINFO         DeviceInfoSet,
///   [in]            PSP_DEVINFO_DATA DeviceInfoData,
///   [in]            DWORD            Property,
///   [out, optional] PDWORD           PropertyRegDataType,
///   [out, optional] PBYTE            PropertyBuffer,
///   [in]            DWORD            PropertyBufferSize,
///  [out, optional] PDWORD           RequiredSize
/// );
/// ```
/// {@category setupapi}
int SetupDiGetDeviceRegistryProperty(
        int deviceInfoSet,
        Pointer<SP_DEVINFO_DATA> deviceInfoData,
        int property,
        Pointer<Uint32>? propertyRegDataType,
        Pointer<Uint8>? propertyBuffer,
        int propertyBufferSize,
        Pointer<Uint32>? requiredSize) =>
    _SetupDiGetDeviceRegistryProperty(
        deviceInfoSet,
        deviceInfoData,
        property,
        propertyRegDataType ?? nullptr,
        propertyBuffer ?? nullptr,
        propertyBufferSize,
        requiredSize ?? nullptr);

final _SetupDiGetDeviceRegistryProperty = _setupapi.lookupFunction<
    BOOL Function(
        HDEVINFO deviceInfoSet,
        Pointer<SP_DEVINFO_DATA> deviceInfoData,
        Uint32 property,
        Pointer<Uint32> propertyRegDataType,
        Pointer<Uint8> propertyBuffer,
        Uint32 propertyBufferSize,
        Pointer<Uint32> requiredSize),
    int Function(
        int deviceInfoSet,
        Pointer<SP_DEVINFO_DATA> deviceInfoData,
        int property,
        Pointer<Uint32> propertyRegDataType,
        Pointer<Uint8> propertyBuffer,
        int propertyBufferSize,
        Pointer<Uint32> requiredSize)>('SetupDiGetDeviceRegistryPropertyW');

/// The SetupDiOpenDevRegKey function opens a registry key for device-specific
/// configuration information.
///
/// ```c
/// HKEY SetupDiOpenDevRegKey(
///   HDEVINFO         DeviceInfoSet,
///   PSP_DEVINFO_DATA DeviceInfoData,
///   DWORD            Scope,
///   DWORD            HwProfile,
///   DWORD            KeyType,
///   REGSAM           samDesired
/// );
/// ```
/// {@category setupapi}
int SetupDiOpenDevRegKey(
        int deviceInfoSet,
        Pointer<SP_DEVINFO_DATA> deviceInfoData,
        int scope,
        int hwProfile,
        int keyType,
        int samDesired) =>
    _SetupDiOpenDevRegKey(
        deviceInfoSet, deviceInfoData, scope, hwProfile, keyType, samDesired);

final _SetupDiOpenDevRegKey = _setupapi.lookupFunction<
    HKEY Function(
        HDEVINFO deviceInfoSet,
        Pointer<SP_DEVINFO_DATA> deviceInfoData,
        Uint32 scope,
        Uint32 hwProfile,
        Uint32 keyType,
        Uint32 samDesired),
    int Function(
        int deviceInfoSet,
        Pointer<SP_DEVINFO_DATA> deviceInfoData,
        int scope,
        int hwProfile,
        int keyType,
        int samDesired)>('SetupDiOpenDevRegKey');
