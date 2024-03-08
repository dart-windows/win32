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

final _bluetoothapis = DynamicLibrary.open('bluetoothapis.dll');

/// Changes the discovery state of a local Bluetooth radio or radios.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/nf-bluetoothapis-bluetoothenablediscovery>.
///
/// {@category bluetoothapis}
int BluetoothEnableDiscovery(int? hRadio, int fEnabled) =>
    _BluetoothEnableDiscovery(hRadio ?? 0, fEnabled);

final _BluetoothEnableDiscovery = _bluetoothapis.lookupFunction<
    BOOL Function(HANDLE hRadio, BOOL fEnabled),
    int Function(int hRadio, int fEnabled)>('BluetoothEnableDiscovery');

/// Modifies whether a local Bluetooth radio accepts incoming connections.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/nf-bluetoothapis-bluetoothenableincomingconnections>.
///
/// {@category bluetoothapis}
int BluetoothEnableIncomingConnections(int? hRadio, int fEnabled) =>
    _BluetoothEnableIncomingConnections(hRadio ?? 0, fEnabled);

final _BluetoothEnableIncomingConnections = _bluetoothapis.lookupFunction<
    BOOL Function(HANDLE hRadio, BOOL fEnabled),
    int Function(
        int hRadio, int fEnabled)>('BluetoothEnableIncomingConnections');

/// Enumerates the services GUIDs (Globally Unique Identifiers) enabled on a
/// Bluetooth device.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/nf-bluetoothapis-bluetoothenumerateinstalledservices>.
///
/// {@category bluetoothapis}
int BluetoothEnumerateInstalledServices(
        int? hRadio,
        Pointer<BLUETOOTH_DEVICE_INFO> pbtdi,
        Pointer<Uint32> pcServiceInout,
        Pointer<GUID>? pGuidServices) =>
    _BluetoothEnumerateInstalledServices(
        hRadio ?? 0, pbtdi, pcServiceInout, pGuidServices ?? nullptr);

final _BluetoothEnumerateInstalledServices = _bluetoothapis.lookupFunction<
    Uint32 Function(HANDLE hRadio, Pointer<BLUETOOTH_DEVICE_INFO> pbtdi,
        Pointer<Uint32> pcServiceInout, Pointer<GUID> pGuidServices),
    int Function(
        int hRadio,
        Pointer<BLUETOOTH_DEVICE_INFO> pbtdi,
        Pointer<Uint32> pcServiceInout,
        Pointer<GUID> pGuidServices)>('BluetoothEnumerateInstalledServices');

/// Closes an enumeration handle associated with a device query.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/nf-bluetoothapis-bluetoothfinddeviceclose>.
///
/// {@category bluetoothapis}
int BluetoothFindDeviceClose(int hFind) => _BluetoothFindDeviceClose(hFind);

final _BluetoothFindDeviceClose = _bluetoothapis.lookupFunction<
    BOOL Function(HBLUETOOTH_DEVICE_FIND hFind),
    int Function(int hFind)>('BluetoothFindDeviceClose');

/// Begins the enumeration Bluetooth devices.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/nf-bluetoothapis-bluetoothfindfirstdevice>.
///
/// {@category bluetoothapis}
int BluetoothFindFirstDevice(Pointer<BLUETOOTH_DEVICE_SEARCH_PARAMS> pbtsp,
        Pointer<BLUETOOTH_DEVICE_INFO> pbtdi) =>
    _BluetoothFindFirstDevice(pbtsp, pbtdi);

final _BluetoothFindFirstDevice = _bluetoothapis.lookupFunction<
    HBLUETOOTH_DEVICE_FIND Function(
        Pointer<BLUETOOTH_DEVICE_SEARCH_PARAMS> pbtsp,
        Pointer<BLUETOOTH_DEVICE_INFO> pbtdi),
    int Function(Pointer<BLUETOOTH_DEVICE_SEARCH_PARAMS> pbtsp,
        Pointer<BLUETOOTH_DEVICE_INFO> pbtdi)>('BluetoothFindFirstDevice');

/// Begins the enumeration of local Bluetooth radios.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/nf-bluetoothapis-bluetoothfindfirstradio>.
///
/// {@category bluetoothapis}
int BluetoothFindFirstRadio(
        Pointer<BLUETOOTH_FIND_RADIO_PARAMS> pbtfrp, Pointer<HANDLE> phRadio) =>
    _BluetoothFindFirstRadio(pbtfrp, phRadio);

final _BluetoothFindFirstRadio = _bluetoothapis.lookupFunction<
    HBLUETOOTH_RADIO_FIND Function(
        Pointer<BLUETOOTH_FIND_RADIO_PARAMS> pbtfrp, Pointer<HANDLE> phRadio),
    int Function(Pointer<BLUETOOTH_FIND_RADIO_PARAMS> pbtfrp,
        Pointer<HANDLE> phRadio)>('BluetoothFindFirstRadio');

/// Finds the next Bluetooth device.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/nf-bluetoothapis-bluetoothfindnextdevice>.
///
/// {@category bluetoothapis}
int BluetoothFindNextDevice(int hFind, Pointer<BLUETOOTH_DEVICE_INFO> pbtdi) =>
    _BluetoothFindNextDevice(hFind, pbtdi);

final _BluetoothFindNextDevice = _bluetoothapis.lookupFunction<
    BOOL Function(
        HBLUETOOTH_DEVICE_FIND hFind, Pointer<BLUETOOTH_DEVICE_INFO> pbtdi),
    int Function(int hFind,
        Pointer<BLUETOOTH_DEVICE_INFO> pbtdi)>('BluetoothFindNextDevice');

/// Finds the next Bluetooth radio.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/nf-bluetoothapis-bluetoothfindnextradio>.
///
/// {@category bluetoothapis}
int BluetoothFindNextRadio(int hFind, Pointer<HANDLE> phRadio) =>
    _BluetoothFindNextRadio(hFind, phRadio);

final _BluetoothFindNextRadio = _bluetoothapis.lookupFunction<
    BOOL Function(HBLUETOOTH_RADIO_FIND hFind, Pointer<HANDLE> phRadio),
    int Function(int hFind, Pointer<HANDLE> phRadio)>('BluetoothFindNextRadio');

/// Closes the enumeration handle associated with finding Bluetooth radios.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/nf-bluetoothapis-bluetoothfindradioclose>.
///
/// {@category bluetoothapis}
int BluetoothFindRadioClose(int hFind) => _BluetoothFindRadioClose(hFind);

final _BluetoothFindRadioClose = _bluetoothapis.lookupFunction<
    BOOL Function(HBLUETOOTH_RADIO_FIND hFind),
    int Function(int hFind)>('BluetoothFindRadioClose');

/// Specifies the end of reliable write procedures, and the writes should be
/// aborted.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothleapis/nf-bluetoothleapis-bluetoothgattabortreliablewrite>.
///
/// {@category bluetoothapis}
int BluetoothGATTAbortReliableWrite(
        int hDevice, int reliableWriteContext, int flags) =>
    _BluetoothGATTAbortReliableWrite(hDevice, reliableWriteContext, flags);

final _BluetoothGATTAbortReliableWrite = _bluetoothapis.lookupFunction<
    HRESULT Function(HANDLE hDevice, Uint64 reliableWriteContext, Uint32 flags),
    int Function(int hDevice, int reliableWriteContext,
        int flags)>('BluetoothGATTAbortReliableWrite');

/// Specifies that reliable writes are about to begin.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothleapis/nf-bluetoothleapis-bluetoothgattbeginreliablewrite>.
///
/// {@category bluetoothapis}
int BluetoothGATTBeginReliableWrite(
        int hDevice, Pointer<Uint64> reliableWriteContext, int flags) =>
    _BluetoothGATTBeginReliableWrite(hDevice, reliableWriteContext, flags);

final _BluetoothGATTBeginReliableWrite = _bluetoothapis.lookupFunction<
    HRESULT Function(
        HANDLE hDevice, Pointer<Uint64> reliableWriteContext, Uint32 flags),
    int Function(int hDevice, Pointer<Uint64> reliableWriteContext,
        int flags)>('BluetoothGATTBeginReliableWrite');

/// Specifies the end of reliable writes, and the writes should be committed.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothleapis/nf-bluetoothleapis-bluetoothgattendreliablewrite>.
///
/// {@category bluetoothapis}
int BluetoothGATTEndReliableWrite(
        int hDevice, int reliableWriteContext, int flags) =>
    _BluetoothGATTEndReliableWrite(hDevice, reliableWriteContext, flags);

final _BluetoothGATTEndReliableWrite = _bluetoothapis.lookupFunction<
    HRESULT Function(HANDLE hDevice, Uint64 reliableWriteContext, Uint32 flags),
    int Function(int hDevice, int reliableWriteContext,
        int flags)>('BluetoothGATTEndReliableWrite');

/// Gets all the characteristics available for the specified service.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothleapis/nf-bluetoothleapis-bluetoothgattgetcharacteristics>.
///
/// {@category bluetoothapis}
int BluetoothGATTGetCharacteristics(
        int hDevice,
        Pointer<BTH_LE_GATT_SERVICE>? service,
        int characteristicsBufferCount,
        Pointer<BTH_LE_GATT_CHARACTERISTIC>? characteristicsBuffer,
        Pointer<Uint16> characteristicsBufferActual,
        int flags) =>
    _BluetoothGATTGetCharacteristics(
        hDevice,
        service ?? nullptr,
        characteristicsBufferCount,
        characteristicsBuffer ?? nullptr,
        characteristicsBufferActual,
        flags);

final _BluetoothGATTGetCharacteristics = _bluetoothapis.lookupFunction<
    HRESULT Function(
        HANDLE hDevice,
        Pointer<BTH_LE_GATT_SERVICE> service,
        Uint16 characteristicsBufferCount,
        Pointer<BTH_LE_GATT_CHARACTERISTIC> characteristicsBuffer,
        Pointer<Uint16> characteristicsBufferActual,
        Uint32 flags),
    int Function(
        int hDevice,
        Pointer<BTH_LE_GATT_SERVICE> service,
        int characteristicsBufferCount,
        Pointer<BTH_LE_GATT_CHARACTERISTIC> characteristicsBuffer,
        Pointer<Uint16> characteristicsBufferActual,
        int flags)>('BluetoothGATTGetCharacteristics');

/// Gets the value of the specified characteristic.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothleapis/nf-bluetoothleapis-bluetoothgattgetcharacteristicvalue>.
///
/// {@category bluetoothapis}
int BluetoothGATTGetCharacteristicValue(
        int hDevice,
        Pointer<BTH_LE_GATT_CHARACTERISTIC> characteristic,
        int characteristicValueDataSize,
        Pointer<BTH_LE_GATT_CHARACTERISTIC_VALUE>? characteristicValue,
        Pointer<Uint16>? characteristicValueSizeRequired,
        int flags) =>
    _BluetoothGATTGetCharacteristicValue(
        hDevice,
        characteristic,
        characteristicValueDataSize,
        characteristicValue ?? nullptr,
        characteristicValueSizeRequired ?? nullptr,
        flags);

final _BluetoothGATTGetCharacteristicValue = _bluetoothapis.lookupFunction<
    HRESULT Function(
        HANDLE hDevice,
        Pointer<BTH_LE_GATT_CHARACTERISTIC> characteristic,
        Uint32 characteristicValueDataSize,
        Pointer<BTH_LE_GATT_CHARACTERISTIC_VALUE> characteristicValue,
        Pointer<Uint16> characteristicValueSizeRequired,
        Uint32 flags),
    int Function(
        int hDevice,
        Pointer<BTH_LE_GATT_CHARACTERISTIC> characteristic,
        int characteristicValueDataSize,
        Pointer<BTH_LE_GATT_CHARACTERISTIC_VALUE> characteristicValue,
        Pointer<Uint16> characteristicValueSizeRequired,
        int flags)>('BluetoothGATTGetCharacteristicValue');

/// Gets all the descriptors available for the specified characteristic.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothleapis/nf-bluetoothleapis-bluetoothgattgetdescriptors>.
///
/// {@category bluetoothapis}
int BluetoothGATTGetDescriptors(
        int hDevice,
        Pointer<BTH_LE_GATT_CHARACTERISTIC> characteristic,
        int descriptorsBufferCount,
        Pointer<BTH_LE_GATT_DESCRIPTOR>? descriptorsBuffer,
        Pointer<Uint16> descriptorsBufferActual,
        int flags) =>
    _BluetoothGATTGetDescriptors(
        hDevice,
        characteristic,
        descriptorsBufferCount,
        descriptorsBuffer ?? nullptr,
        descriptorsBufferActual,
        flags);

final _BluetoothGATTGetDescriptors = _bluetoothapis.lookupFunction<
    HRESULT Function(
        HANDLE hDevice,
        Pointer<BTH_LE_GATT_CHARACTERISTIC> characteristic,
        Uint16 descriptorsBufferCount,
        Pointer<BTH_LE_GATT_DESCRIPTOR> descriptorsBuffer,
        Pointer<Uint16> descriptorsBufferActual,
        Uint32 flags),
    int Function(
        int hDevice,
        Pointer<BTH_LE_GATT_CHARACTERISTIC> characteristic,
        int descriptorsBufferCount,
        Pointer<BTH_LE_GATT_DESCRIPTOR> descriptorsBuffer,
        Pointer<Uint16> descriptorsBufferActual,
        int flags)>('BluetoothGATTGetDescriptors');

/// Gets the value of the specified descriptor.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothleapis/nf-bluetoothleapis-bluetoothgattgetdescriptorvalue>.
///
/// {@category bluetoothapis}
int BluetoothGATTGetDescriptorValue(
        int hDevice,
        Pointer<BTH_LE_GATT_DESCRIPTOR> descriptor,
        int descriptorValueDataSize,
        Pointer<BTH_LE_GATT_DESCRIPTOR_VALUE>? descriptorValue,
        Pointer<Uint16>? descriptorValueSizeRequired,
        int flags) =>
    _BluetoothGATTGetDescriptorValue(
        hDevice,
        descriptor,
        descriptorValueDataSize,
        descriptorValue ?? nullptr,
        descriptorValueSizeRequired ?? nullptr,
        flags);

final _BluetoothGATTGetDescriptorValue = _bluetoothapis.lookupFunction<
    HRESULT Function(
        HANDLE hDevice,
        Pointer<BTH_LE_GATT_DESCRIPTOR> descriptor,
        Uint32 descriptorValueDataSize,
        Pointer<BTH_LE_GATT_DESCRIPTOR_VALUE> descriptorValue,
        Pointer<Uint16> descriptorValueSizeRequired,
        Uint32 flags),
    int Function(
        int hDevice,
        Pointer<BTH_LE_GATT_DESCRIPTOR> descriptor,
        int descriptorValueDataSize,
        Pointer<BTH_LE_GATT_DESCRIPTOR_VALUE> descriptorValue,
        Pointer<Uint16> descriptorValueSizeRequired,
        int flags)>('BluetoothGATTGetDescriptorValue');

/// Gets all the included services available for a given service.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothleapis/nf-bluetoothleapis-bluetoothgattgetincludedservices>.
///
/// {@category bluetoothapis}
int BluetoothGATTGetIncludedServices(
        int hDevice,
        Pointer<BTH_LE_GATT_SERVICE>? parentService,
        int includedServicesBufferCount,
        Pointer<BTH_LE_GATT_SERVICE>? includedServicesBuffer,
        Pointer<Uint16> includedServicesBufferActual,
        int flags) =>
    _BluetoothGATTGetIncludedServices(
        hDevice,
        parentService ?? nullptr,
        includedServicesBufferCount,
        includedServicesBuffer ?? nullptr,
        includedServicesBufferActual,
        flags);

final _BluetoothGATTGetIncludedServices = _bluetoothapis.lookupFunction<
    HRESULT Function(
        HANDLE hDevice,
        Pointer<BTH_LE_GATT_SERVICE> parentService,
        Uint16 includedServicesBufferCount,
        Pointer<BTH_LE_GATT_SERVICE> includedServicesBuffer,
        Pointer<Uint16> includedServicesBufferActual,
        Uint32 flags),
    int Function(
        int hDevice,
        Pointer<BTH_LE_GATT_SERVICE> parentService,
        int includedServicesBufferCount,
        Pointer<BTH_LE_GATT_SERVICE> includedServicesBuffer,
        Pointer<Uint16> includedServicesBufferActual,
        int flags)>('BluetoothGATTGetIncludedServices');

/// Gets all the primary services available for a server.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothleapis/nf-bluetoothleapis-bluetoothgattgetservices>.
///
/// {@category bluetoothapis}
int BluetoothGATTGetServices(
        int hDevice,
        int servicesBufferCount,
        Pointer<BTH_LE_GATT_SERVICE>? servicesBuffer,
        Pointer<Uint16> servicesBufferActual,
        int flags) =>
    _BluetoothGATTGetServices(hDevice, servicesBufferCount,
        servicesBuffer ?? nullptr, servicesBufferActual, flags);

final _BluetoothGATTGetServices = _bluetoothapis.lookupFunction<
    HRESULT Function(
        HANDLE hDevice,
        Uint16 servicesBufferCount,
        Pointer<BTH_LE_GATT_SERVICE> servicesBuffer,
        Pointer<Uint16> servicesBufferActual,
        Uint32 flags),
    int Function(
        int hDevice,
        int servicesBufferCount,
        Pointer<BTH_LE_GATT_SERVICE> servicesBuffer,
        Pointer<Uint16> servicesBufferActual,
        int flags)>('BluetoothGATTGetServices');

/// Registers a routine to be called back during a characteristic value change
/// event on the given characteristic identified by its characteristic handle.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothleapis/nf-bluetoothleapis-bluetoothgattregisterevent>.
///
/// {@category bluetoothapis}
int BluetoothGATTRegisterEvent(
        int hService,
        int eventType,
        Pointer eventParameterIn,
        Pointer<NativeFunction<PFNBLUETOOTH_GATT_EVENT_CALLBACK>> callback,
        Pointer? callbackContext,
        Pointer<IntPtr> pEventHandle,
        int flags) =>
    _BluetoothGATTRegisterEvent(hService, eventType, eventParameterIn, callback,
        callbackContext ?? nullptr, pEventHandle, flags);

final _BluetoothGATTRegisterEvent = _bluetoothapis.lookupFunction<
    HRESULT Function(
        HANDLE hService,
        Int32 eventType,
        Pointer eventParameterIn,
        Pointer<NativeFunction<PFNBLUETOOTH_GATT_EVENT_CALLBACK>> callback,
        Pointer callbackContext,
        Pointer<IntPtr> pEventHandle,
        Uint32 flags),
    int Function(
        int hService,
        int eventType,
        Pointer eventParameterIn,
        Pointer<NativeFunction<PFNBLUETOOTH_GATT_EVENT_CALLBACK>> callback,
        Pointer callbackContext,
        Pointer<IntPtr> pEventHandle,
        int flags)>('BluetoothGATTRegisterEvent');

/// Writes the specified characteristic value to the Bluetooth device.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothleapis/nf-bluetoothleapis-bluetoothgattsetcharacteristicvalue>.
///
/// {@category bluetoothapis}
int BluetoothGATTSetCharacteristicValue(
        int hDevice,
        Pointer<BTH_LE_GATT_CHARACTERISTIC> characteristic,
        Pointer<BTH_LE_GATT_CHARACTERISTIC_VALUE> characteristicValue,
        int? reliableWriteContext,
        int flags) =>
    _BluetoothGATTSetCharacteristicValue(hDevice, characteristic,
        characteristicValue, reliableWriteContext ?? 0, flags);

final _BluetoothGATTSetCharacteristicValue = _bluetoothapis.lookupFunction<
    HRESULT Function(
        HANDLE hDevice,
        Pointer<BTH_LE_GATT_CHARACTERISTIC> characteristic,
        Pointer<BTH_LE_GATT_CHARACTERISTIC_VALUE> characteristicValue,
        Uint64 reliableWriteContext,
        Uint32 flags),
    int Function(
        int hDevice,
        Pointer<BTH_LE_GATT_CHARACTERISTIC> characteristic,
        Pointer<BTH_LE_GATT_CHARACTERISTIC_VALUE> characteristicValue,
        int reliableWriteContext,
        int flags)>('BluetoothGATTSetCharacteristicValue');

/// Writes the specified descriptor value to the Bluetooth device.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothleapis/nf-bluetoothleapis-bluetoothgattsetdescriptorvalue>.
///
/// {@category bluetoothapis}
int BluetoothGATTSetDescriptorValue(
        int hDevice,
        Pointer<BTH_LE_GATT_DESCRIPTOR> descriptor,
        Pointer<BTH_LE_GATT_DESCRIPTOR_VALUE> descriptorValue,
        int flags) =>
    _BluetoothGATTSetDescriptorValue(
        hDevice, descriptor, descriptorValue, flags);

final _BluetoothGATTSetDescriptorValue = _bluetoothapis.lookupFunction<
    HRESULT Function(HANDLE hDevice, Pointer<BTH_LE_GATT_DESCRIPTOR> descriptor,
        Pointer<BTH_LE_GATT_DESCRIPTOR_VALUE> descriptorValue, Uint32 flags),
    int Function(
        int hDevice,
        Pointer<BTH_LE_GATT_DESCRIPTOR> descriptor,
        Pointer<BTH_LE_GATT_DESCRIPTOR_VALUE> descriptorValue,
        int flags)>('BluetoothGATTSetDescriptorValue');

/// Unregisters the given characteristic value change event.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothleapis/nf-bluetoothleapis-bluetoothgattunregisterevent>.
///
/// {@category bluetoothapis}
int BluetoothGATTUnregisterEvent(int eventHandle, int flags) =>
    _BluetoothGATTUnregisterEvent(eventHandle, flags);

final _BluetoothGATTUnregisterEvent = _bluetoothapis.lookupFunction<
    HRESULT Function(IntPtr eventHandle, Uint32 flags),
    int Function(int eventHandle, int flags)>('BluetoothGATTUnregisterEvent');

/// Retrieves information about a remote Bluetooth device.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/nf-bluetoothapis-bluetoothgetdeviceinfo>.
///
/// {@category bluetoothapis}
int BluetoothGetDeviceInfo(int? hRadio, Pointer<BLUETOOTH_DEVICE_INFO> pbtdi) =>
    _BluetoothGetDeviceInfo(hRadio ?? 0, pbtdi);

final _BluetoothGetDeviceInfo = _bluetoothapis.lookupFunction<
    Uint32 Function(HANDLE hRadio, Pointer<BLUETOOTH_DEVICE_INFO> pbtdi),
    int Function(int hRadio,
        Pointer<BLUETOOTH_DEVICE_INFO> pbtdi)>('BluetoothGetDeviceInfo');

/// Obtains information about a Bluetooth radio.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/nf-bluetoothapis-bluetoothgetradioinfo>.
///
/// {@category bluetoothapis}
int BluetoothGetRadioInfo(
        int hRadio, Pointer<BLUETOOTH_RADIO_INFO> pRadioInfo) =>
    _BluetoothGetRadioInfo(hRadio, pRadioInfo);

final _BluetoothGetRadioInfo = _bluetoothapis.lookupFunction<
    Uint32 Function(HANDLE hRadio, Pointer<BLUETOOTH_RADIO_INFO> pRadioInfo),
    int Function(int hRadio,
        Pointer<BLUETOOTH_RADIO_INFO> pRadioInfo)>('BluetoothGetRadioInfo');

/// Determines whether a Bluetooth radio or radios is connectable.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/nf-bluetoothapis-bluetoothisconnectable>.
///
/// {@category bluetoothapis}
int BluetoothIsConnectable(int? hRadio) => _BluetoothIsConnectable(hRadio ?? 0);

final _BluetoothIsConnectable = _bluetoothapis.lookupFunction<
    BOOL Function(HANDLE hRadio),
    int Function(int hRadio)>('BluetoothIsConnectable');

/// Determines whether a Bluetooth radio or radios is discoverable.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/nf-bluetoothapis-bluetoothisdiscoverable>.
///
/// {@category bluetoothapis}
int BluetoothIsDiscoverable(int? hRadio) =>
    _BluetoothIsDiscoverable(hRadio ?? 0);

final _BluetoothIsDiscoverable = _bluetoothapis.lookupFunction<
    BOOL Function(HANDLE hRadio),
    int Function(int hRadio)>('BluetoothIsDiscoverable');

/// Indicates if the installed Bluetooth binary set supports the requested
/// version.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/nf-bluetoothapis-bluetoothisversionavailable>.
///
/// {@category bluetoothapis}
int BluetoothIsVersionAvailable(int majorVersion, int minorVersion) =>
    _BluetoothIsVersionAvailable(majorVersion, minorVersion);

final _BluetoothIsVersionAvailable = _bluetoothapis.lookupFunction<
    BOOL Function(Uint8 majorVersion, Uint8 minorVersion),
    int Function(
        int majorVersion, int minorVersion)>('BluetoothIsVersionAvailable');

/// Registers an application for a pin request, numeric comparison and callback
/// function.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/nf-bluetoothapis-bluetoothregisterforauthenticationex>.
///
/// {@category bluetoothapis}
int BluetoothRegisterForAuthenticationEx(
        Pointer<BLUETOOTH_DEVICE_INFO>? pbtdiIn,
        Pointer<IntPtr> phRegHandleOut,
        Pointer<NativeFunction<PFN_AUTHENTICATION_CALLBACK_EX>>? pfnCallbackIn,
        Pointer? pvParam) =>
    _BluetoothRegisterForAuthenticationEx(pbtdiIn ?? nullptr, phRegHandleOut,
        pfnCallbackIn ?? nullptr, pvParam ?? nullptr);

final _BluetoothRegisterForAuthenticationEx = _bluetoothapis.lookupFunction<
    Uint32 Function(
        Pointer<BLUETOOTH_DEVICE_INFO> pbtdiIn,
        Pointer<IntPtr> phRegHandleOut,
        Pointer<NativeFunction<PFN_AUTHENTICATION_CALLBACK_EX>> pfnCallbackIn,
        Pointer pvParam),
    int Function(
        Pointer<BLUETOOTH_DEVICE_INFO> pbtdiIn,
        Pointer<IntPtr> phRegHandleOut,
        Pointer<NativeFunction<PFN_AUTHENTICATION_CALLBACK_EX>> pfnCallbackIn,
        Pointer pvParam)>('BluetoothRegisterForAuthenticationEx');

/// Removes authentication between a Bluetooth device and the computer and
/// clears cached service information for the device.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/nf-bluetoothapis-bluetoothremovedevice>.
///
/// {@category bluetoothapis}
int BluetoothRemoveDevice(Pointer<BLUETOOTH_ADDRESS> pAddress) =>
    _BluetoothRemoveDevice(pAddress);

final _BluetoothRemoveDevice = _bluetoothapis.lookupFunction<
    Uint32 Function(Pointer<BLUETOOTH_ADDRESS> pAddress),
    int Function(Pointer<BLUETOOTH_ADDRESS> pAddress)>('BluetoothRemoveDevice');

/// Enumerates through the SDP record stream, and calls the callback function
/// for each attribute in the record.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/nf-bluetoothapis-bluetoothsdpenumattributes>.
///
/// {@category bluetoothapis}
int BluetoothSdpEnumAttributes(
        Pointer<Uint8> pSDPStream,
        int cbStreamSize,
        Pointer<NativeFunction<PFN_BLUETOOTH_ENUM_ATTRIBUTES_CALLBACK>>
            pfnCallback,
        Pointer pvParam) =>
    _BluetoothSdpEnumAttributes(pSDPStream, cbStreamSize, pfnCallback, pvParam);

final _BluetoothSdpEnumAttributes = _bluetoothapis.lookupFunction<
    BOOL Function(
        Pointer<Uint8> pSDPStream,
        Uint32 cbStreamSize,
        Pointer<NativeFunction<PFN_BLUETOOTH_ENUM_ATTRIBUTES_CALLBACK>>
            pfnCallback,
        Pointer pvParam),
    int Function(
        Pointer<Uint8> pSDPStream,
        int cbStreamSize,
        Pointer<NativeFunction<PFN_BLUETOOTH_ENUM_ATTRIBUTES_CALLBACK>>
            pfnCallback,
        Pointer pvParam)>('BluetoothSdpEnumAttributes');

/// Retrieves the attribute value for an attribute identifier.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/nf-bluetoothapis-bluetoothsdpgetattributevalue>.
///
/// {@category bluetoothapis}
int BluetoothSdpGetAttributeValue(
        Pointer<Uint8> pRecordStream,
        int cbRecordLength,
        int usAttributeId,
        Pointer<SDP_ELEMENT_DATA> pAttributeData) =>
    _BluetoothSdpGetAttributeValue(
        pRecordStream, cbRecordLength, usAttributeId, pAttributeData);

final _BluetoothSdpGetAttributeValue = _bluetoothapis.lookupFunction<
        Uint32 Function(Pointer<Uint8> pRecordStream, Uint32 cbRecordLength,
            Uint16 usAttributeId, Pointer<SDP_ELEMENT_DATA> pAttributeData),
        int Function(Pointer<Uint8> pRecordStream, int cbRecordLength,
            int usAttributeId, Pointer<SDP_ELEMENT_DATA> pAttributeData)>(
    'BluetoothSdpGetAttributeValue');

/// Iterates a container stream and returns each element contained within the
/// container element.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/nf-bluetoothapis-bluetoothsdpgetcontainerelementdata>.
///
/// {@category bluetoothapis}
int BluetoothSdpGetContainerElementData(
        Pointer<Uint8> pContainerStream,
        int cbContainerLength,
        Pointer<IntPtr> pElement,
        Pointer<SDP_ELEMENT_DATA> pData) =>
    _BluetoothSdpGetContainerElementData(
        pContainerStream, cbContainerLength, pElement, pData);

final _BluetoothSdpGetContainerElementData = _bluetoothapis.lookupFunction<
    Uint32 Function(Pointer<Uint8> pContainerStream, Uint32 cbContainerLength,
        Pointer<IntPtr> pElement, Pointer<SDP_ELEMENT_DATA> pData),
    int Function(
        Pointer<Uint8> pContainerStream,
        int cbContainerLength,
        Pointer<IntPtr> pElement,
        Pointer<SDP_ELEMENT_DATA>
            pData)>('BluetoothSdpGetContainerElementData');

/// Retrieves and parses a single element from an SDP stream.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/nf-bluetoothapis-bluetoothsdpgetelementdata>.
///
/// {@category bluetoothapis}
int BluetoothSdpGetElementData(Pointer<Uint8> pSdpStream, int cbSdpStreamLength,
        Pointer<SDP_ELEMENT_DATA> pData) =>
    _BluetoothSdpGetElementData(pSdpStream, cbSdpStreamLength, pData);

final _BluetoothSdpGetElementData = _bluetoothapis.lookupFunction<
    Uint32 Function(Pointer<Uint8> pSdpStream, Uint32 cbSdpStreamLength,
        Pointer<SDP_ELEMENT_DATA> pData),
    int Function(Pointer<Uint8> pSdpStream, int cbSdpStreamLength,
        Pointer<SDP_ELEMENT_DATA> pData)>('BluetoothSdpGetElementData');

/// Converts a raw string embedded in the SDP record into a Unicode string.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/nf-bluetoothapis-bluetoothsdpgetstring>.
///
/// {@category bluetoothapis}
int BluetoothSdpGetString(
        Pointer<Uint8> pRecordStream,
        int cbRecordLength,
        Pointer<SDP_STRING_TYPE_DATA>? pStringData,
        int usStringOffset,
        Pointer<Utf16> pszString,
        Pointer<Uint32> pcchStringLength) =>
    _BluetoothSdpGetString(pRecordStream, cbRecordLength,
        pStringData ?? nullptr, usStringOffset, pszString, pcchStringLength);

final _BluetoothSdpGetString = _bluetoothapis.lookupFunction<
    Uint32 Function(
        Pointer<Uint8> pRecordStream,
        Uint32 cbRecordLength,
        Pointer<SDP_STRING_TYPE_DATA> pStringData,
        Uint16 usStringOffset,
        Pointer<Utf16> pszString,
        Pointer<Uint32> pcchStringLength),
    int Function(
        Pointer<Uint8> pRecordStream,
        int cbRecordLength,
        Pointer<SDP_STRING_TYPE_DATA> pStringData,
        int usStringOffset,
        Pointer<Utf16> pszString,
        Pointer<Uint32> pcchStringLength)>('BluetoothSdpGetString');

/// Called when an authentication request to send the passkey or a Numeric
/// Comparison response is made.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/nf-bluetoothapis-bluetoothsendauthenticationresponseex>.
///
/// {@category bluetoothapis}
int BluetoothSendAuthenticationResponseEx(int? hRadioIn,
        Pointer<BLUETOOTH_AUTHENTICATE_RESPONSE> pauthResponse) =>
    _BluetoothSendAuthenticationResponseEx(hRadioIn ?? 0, pauthResponse);

final _BluetoothSendAuthenticationResponseEx = _bluetoothapis.lookupFunction<
        Uint32 Function(HANDLE hRadioIn,
            Pointer<BLUETOOTH_AUTHENTICATE_RESPONSE> pauthResponse),
        int Function(int hRadioIn,
            Pointer<BLUETOOTH_AUTHENTICATE_RESPONSE> pauthResponse)>(
    'BluetoothSendAuthenticationResponseEx');

/// Enables or disables services for a Bluetooth device.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/nf-bluetoothapis-bluetoothsetservicestate>.
///
/// {@category bluetoothapis}
int BluetoothSetServiceState(int? hRadio, Pointer<BLUETOOTH_DEVICE_INFO> pbtdi,
        Pointer<GUID> pGuidService, int dwServiceFlags) =>
    _BluetoothSetServiceState(hRadio ?? 0, pbtdi, pGuidService, dwServiceFlags);

final _BluetoothSetServiceState = _bluetoothapis.lookupFunction<
    Uint32 Function(HANDLE hRadio, Pointer<BLUETOOTH_DEVICE_INFO> pbtdi,
        Pointer<GUID> pGuidService, Uint32 dwServiceFlags),
    int Function(
        int hRadio,
        Pointer<BLUETOOTH_DEVICE_INFO> pbtdi,
        Pointer<GUID> pGuidService,
        int dwServiceFlags)>('BluetoothSetServiceState');

/// Removes registration for a callback routine that was previously registered
/// with a call to the BluetoothRegisterForAuthentication function.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/nf-bluetoothapis-bluetoothunregisterauthentication>.
///
/// {@category bluetoothapis}
int BluetoothUnregisterAuthentication(int hRegHandle) =>
    _BluetoothUnregisterAuthentication(hRegHandle);

final _BluetoothUnregisterAuthentication = _bluetoothapis.lookupFunction<
    BOOL Function(IntPtr hRegHandle),
    int Function(int hRegHandle)>('BluetoothUnregisterAuthentication');

/// Updates the local computer cache about a Bluetooth device.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/nf-bluetoothapis-bluetoothupdatedevicerecord>.
///
/// {@category bluetoothapis}
int BluetoothUpdateDeviceRecord(Pointer<BLUETOOTH_DEVICE_INFO> pbtdi) =>
    _BluetoothUpdateDeviceRecord(pbtdi);

final _BluetoothUpdateDeviceRecord = _bluetoothapis.lookupFunction<
    Uint32 Function(Pointer<BLUETOOTH_DEVICE_INFO> pbtdi),
    int Function(
        Pointer<BLUETOOTH_DEVICE_INFO> pbtdi)>('BluetoothUpdateDeviceRecord');
