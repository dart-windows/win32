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

/// The BluetoothEnableDiscovery function changes the discovery state of a local
/// Bluetooth radio or radios.
///
/// ```c
/// BOOL BluetoothEnableDiscovery(
///   HANDLE hRadio,
///   BOOL   fEnabled
/// );
/// ```
/// {@category bluetooth}
int BluetoothEnableDiscovery(int? hRadio, int fEnabled) =>
    _BluetoothEnableDiscovery(hRadio ?? 0, fEnabled);

final _BluetoothEnableDiscovery = _bluetoothapis.lookupFunction<
    BOOL Function(HANDLE hRadio, BOOL fEnabled),
    int Function(int hRadio, int fEnabled)>('BluetoothEnableDiscovery');

/// The BluetoothEnableIncomingConnections function modifies whether a local
/// Bluetooth radio accepts incoming connections.
///
/// ```c
/// BOOL BluetoothEnableIncomingConnections(
///   HANDLE hRadio,
///   BOOL   fEnabled
/// );
/// ```
/// {@category bluetooth}
int BluetoothEnableIncomingConnections(int? hRadio, int fEnabled) =>
    _BluetoothEnableIncomingConnections(hRadio ?? 0, fEnabled);

final _BluetoothEnableIncomingConnections = _bluetoothapis.lookupFunction<
    BOOL Function(HANDLE hRadio, BOOL fEnabled),
    int Function(
        int hRadio, int fEnabled)>('BluetoothEnableIncomingConnections');

/// The BluetoothEnumerateInstalledServices function enumerates the services
/// GUIDs (Globally Unique Identifiers) enabled on a Bluetooth device.
///
/// ```c
/// DWORD BluetoothEnumerateInstalledServices(
///   HANDLE                      hRadio,
///   const BLUETOOTH_DEVICE_INFO *pbtdi,
///   DWORD                       *pcServiceInout,
///   GUID                        *pGuidServices
/// );
/// ```
/// {@category bluetooth}
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

/// The BluetoothFindDeviceClose function closes an enumeration handle
/// associated with a device query.
///
/// ```c
/// BOOL BluetoothFindDeviceClose(
///   HBLUETOOTH_DEVICE_FIND hFind
/// );
/// ```
/// {@category bluetooth}
int BluetoothFindDeviceClose(int hFind) => _BluetoothFindDeviceClose(hFind);

final _BluetoothFindDeviceClose = _bluetoothapis.lookupFunction<
    BOOL Function(HBLUETOOTH_DEVICE_FIND hFind),
    int Function(int hFind)>('BluetoothFindDeviceClose');

/// The BluetoothFindFirstDevice function begins the enumeration Bluetooth
/// devices.
///
/// ```c
/// HBLUETOOTH_DEVICE_FIND BluetoothFindFirstDevice(
///   const BLUETOOTH_DEVICE_SEARCH_PARAMS *pbtsp,
///   BLUETOOTH_DEVICE_INFO                *pbtdi
/// );
/// ```
/// {@category bluetooth}
int BluetoothFindFirstDevice(Pointer<BLUETOOTH_DEVICE_SEARCH_PARAMS> pbtsp,
        Pointer<BLUETOOTH_DEVICE_INFO> pbtdi) =>
    _BluetoothFindFirstDevice(pbtsp, pbtdi);

final _BluetoothFindFirstDevice = _bluetoothapis.lookupFunction<
    HBLUETOOTH_DEVICE_FIND Function(
        Pointer<BLUETOOTH_DEVICE_SEARCH_PARAMS> pbtsp,
        Pointer<BLUETOOTH_DEVICE_INFO> pbtdi),
    int Function(Pointer<BLUETOOTH_DEVICE_SEARCH_PARAMS> pbtsp,
        Pointer<BLUETOOTH_DEVICE_INFO> pbtdi)>('BluetoothFindFirstDevice');

/// The BluetoothFindFirstRadio function begins the enumeration of local
/// Bluetooth radios.
///
/// ```c
/// HBLUETOOTH_RADIO_FIND BluetoothFindFirstRadio(
///   const BLUETOOTH_FIND_RADIO_PARAMS *pbtfrp,
///   HANDLE                            *phRadio
/// );
/// ```
/// {@category bluetooth}
int BluetoothFindFirstRadio(
        Pointer<BLUETOOTH_FIND_RADIO_PARAMS> pbtfrp, Pointer<HANDLE> phRadio) =>
    _BluetoothFindFirstRadio(pbtfrp, phRadio);

final _BluetoothFindFirstRadio = _bluetoothapis.lookupFunction<
    HBLUETOOTH_RADIO_FIND Function(
        Pointer<BLUETOOTH_FIND_RADIO_PARAMS> pbtfrp, Pointer<HANDLE> phRadio),
    int Function(Pointer<BLUETOOTH_FIND_RADIO_PARAMS> pbtfrp,
        Pointer<HANDLE> phRadio)>('BluetoothFindFirstRadio');

/// The BluetoothFindNextDevice function finds the next Bluetooth device.
///
/// ```c
/// BOOL BluetoothFindNextDevice(
///   HBLUETOOTH_DEVICE_FIND hFind,
///   BLUETOOTH_DEVICE_INFO  *pbtdi
/// );
/// ```
/// {@category bluetooth}
int BluetoothFindNextDevice(int hFind, Pointer<BLUETOOTH_DEVICE_INFO> pbtdi) =>
    _BluetoothFindNextDevice(hFind, pbtdi);

final _BluetoothFindNextDevice = _bluetoothapis.lookupFunction<
    BOOL Function(
        HBLUETOOTH_DEVICE_FIND hFind, Pointer<BLUETOOTH_DEVICE_INFO> pbtdi),
    int Function(int hFind,
        Pointer<BLUETOOTH_DEVICE_INFO> pbtdi)>('BluetoothFindNextDevice');

/// The BluetoothFindNextRadio function finds the next Bluetooth radio.
///
/// ```c
/// BOOL BluetoothFindNextRadio(
///   HBLUETOOTH_RADIO_FIND hFind,
///   HANDLE                *phRadio
/// );
/// ```
/// {@category bluetooth}
int BluetoothFindNextRadio(int hFind, Pointer<HANDLE> phRadio) =>
    _BluetoothFindNextRadio(hFind, phRadio);

final _BluetoothFindNextRadio = _bluetoothapis.lookupFunction<
    BOOL Function(HBLUETOOTH_RADIO_FIND hFind, Pointer<HANDLE> phRadio),
    int Function(int hFind, Pointer<HANDLE> phRadio)>('BluetoothFindNextRadio');

/// The BluetoothFindRadioClose function closes the enumeration handle
/// associated with finding Bluetooth radios.
///
/// ```c
/// BOOL BluetoothFindRadioClose(
///   HBLUETOOTH_RADIO_FIND hFind
/// );
/// ```
/// {@category bluetooth}
int BluetoothFindRadioClose(int hFind) => _BluetoothFindRadioClose(hFind);

final _BluetoothFindRadioClose = _bluetoothapis.lookupFunction<
    BOOL Function(HBLUETOOTH_RADIO_FIND hFind),
    int Function(int hFind)>('BluetoothFindRadioClose');

/// Specifies the end of reliable write procedures, and the writes should be
/// aborted.
///
/// ```c
/// HRESULT BluetoothGATTAbortReliableWrite(
///   HANDLE                             hDevice,
///   BTH_LE_GATT_RELIABLE_WRITE_CONTEXT ReliableWriteContext,
///   ULONG                              Flags
/// );
/// ```
/// {@category bluetooth}
int BluetoothGATTAbortReliableWrite(
        int hDevice, int reliableWriteContext, int flags) =>
    _BluetoothGATTAbortReliableWrite(hDevice, reliableWriteContext, flags);

final _BluetoothGATTAbortReliableWrite = _bluetoothapis.lookupFunction<
    HRESULT Function(HANDLE hDevice, Uint64 reliableWriteContext, Uint32 flags),
    int Function(int hDevice, int reliableWriteContext,
        int flags)>('BluetoothGATTAbortReliableWrite');

/// The BluetoothGATTBeginReliableWrite function specifies that reliable writes
/// are about to begin.
///
/// ```c
/// HRESULT BluetoothGATTBeginReliableWrite(
///   HANDLE                              hDevice,
///   PBTH_LE_GATT_RELIABLE_WRITE_CONTEXT ReliableWriteContext,
///   ULONG                               Flags
/// );
/// ```
/// {@category bluetooth}
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
/// ```c
/// HRESULT BluetoothGATTEndReliableWrite(
///   HANDLE                             hDevice,
///   BTH_LE_GATT_RELIABLE_WRITE_CONTEXT ReliableWriteContext,
///   ULONG                              Flags
/// );
/// ```
/// {@category bluetooth}
int BluetoothGATTEndReliableWrite(
        int hDevice, int reliableWriteContext, int flags) =>
    _BluetoothGATTEndReliableWrite(hDevice, reliableWriteContext, flags);

final _BluetoothGATTEndReliableWrite = _bluetoothapis.lookupFunction<
    HRESULT Function(HANDLE hDevice, Uint64 reliableWriteContext, Uint32 flags),
    int Function(int hDevice, int reliableWriteContext,
        int flags)>('BluetoothGATTEndReliableWrite');

/// Gets all the characteristics available for the specified service.
///
/// ```c
/// HRESULT BluetoothGATTGetCharacteristics(
///   HANDLE                      hDevice,
///   PBTH_LE_GATT_SERVICE        Service,
///   USHORT                      CharacteristicsBufferCount,
///   PBTH_LE_GATT_CHARACTERISTIC CharacteristicsBuffer,
///   USHORT                      *CharacteristicsBufferActual,
///   ULONG                       Flags
/// );
/// ```
/// {@category bluetooth}
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
/// ```c
/// HRESULT BluetoothGATTGetCharacteristicValue(
///   HANDLE                            hDevice,
///   PBTH_LE_GATT_CHARACTERISTIC       Characteristic,
///   ULONG                             CharacteristicValueDataSize,
///   PBTH_LE_GATT_CHARACTERISTIC_VALUE CharacteristicValue,
///   USHORT                            *CharacteristicValueSizeRequired,
///   ULONG                             Flags
/// );
/// ```
/// {@category bluetooth}
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
/// ```c
/// HRESULT BluetoothGATTGetDescriptors(
///   HANDLE                      hDevice,
///   PBTH_LE_GATT_CHARACTERISTIC Characteristic,
///   USHORT                      DescriptorsBufferCount,
///   PBTH_LE_GATT_DESCRIPTOR     DescriptorsBuffer,
///   USHORT                      *DescriptorsBufferActual,
///   ULONG                       Flags
/// );
/// ```
/// {@category bluetooth}
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
/// ```c
/// HRESULT BluetoothGATTGetDescriptorValue(
///   HANDLE                        hDevice,
///   PBTH_LE_GATT_DESCRIPTOR       Descriptor,
///   ULONG                         DescriptorValueDataSize,
///   PBTH_LE_GATT_DESCRIPTOR_VALUE DescriptorValue,
///   USHORT                        *DescriptorValueSizeRequired,
///   ULONG                         Flags
/// );
/// ```
/// {@category bluetooth}
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
/// ```c
/// HRESULT BluetoothGATTGetIncludedServices(
///   HANDLE               hDevice,
///   PBTH_LE_GATT_SERVICE ParentService,
///   USHORT               IncludedServicesBufferCount,
///   PBTH_LE_GATT_SERVICE IncludedServicesBuffer,
///   USHORT               *IncludedServicesBufferActual,
///   ULONG                Flags
/// );
/// ```
/// {@category bluetooth}
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

/// The BluetoothGATTGetServices function gets all the primary services
/// available for a server.
///
/// ```c
/// HRESULT BluetoothGATTGetServices(
///   HANDLE               hDevice,
///   USHORT               ServicesBufferCount,
///   PBTH_LE_GATT_SERVICE ServicesBuffer,
///   USHORT               *ServicesBufferActual,
///   ULONG                Flags
/// );
/// ```
/// {@category bluetooth}
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
/// ```c
/// HRESULT BluetoothGATTRegisterEvent(
///   HANDLE                           hService,
///   BTH_LE_GATT_EVENT_TYPE           EventType,
///   PVOID                            EventParameterIn,
///   PFNBLUETOOTH_GATT_EVENT_CALLBACK Callback,
///   PVOID                            CallbackContext,
///   BLUETOOTH_GATT_EVENT_HANDLE      *pEventHandle,
///   ULONG                            Flags
/// );
/// ```
/// {@category bluetooth}
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
/// ```c
/// HRESULT BluetoothGATTSetCharacteristicValue(
///   HANDLE                             hDevice,
///   PBTH_LE_GATT_CHARACTERISTIC        Characteristic,
///   PBTH_LE_GATT_CHARACTERISTIC_VALUE  CharacteristicValue,
///   BTH_LE_GATT_RELIABLE_WRITE_CONTEXT ReliableWriteContext,
///   ULONG                              Flags
/// );
/// ```
/// {@category bluetooth}
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
/// ```c
/// HRESULT BluetoothGATTSetDescriptorValue(
///   HANDLE                        hDevice,
///   PBTH_LE_GATT_DESCRIPTOR       Descriptor,
///   PBTH_LE_GATT_DESCRIPTOR_VALUE DescriptorValue,
///   ULONG                         Flags
/// );
/// ```
/// {@category bluetooth}
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
/// ```c
/// HRESULT BluetoothGATTUnregisterEvent(
///   BLUETOOTH_GATT_EVENT_HANDLE EventHandle,
///   ULONG                       Flags
/// );
/// ```
/// {@category bluetooth}
int BluetoothGATTUnregisterEvent(int eventHandle, int flags) =>
    _BluetoothGATTUnregisterEvent(eventHandle, flags);

final _BluetoothGATTUnregisterEvent = _bluetoothapis.lookupFunction<
    HRESULT Function(IntPtr eventHandle, Uint32 flags),
    int Function(int eventHandle, int flags)>('BluetoothGATTUnregisterEvent');

/// TThe BluetoothGetDeviceInfo function retrieves information about a remote
/// Bluetooth device.
///
/// The Bluetooth device must have been previously identified through a
/// successful device inquiry function call.
///
/// ```c
/// DWORD BluetoothGetDeviceInfo(
///   HANDLE                hRadio,
///   BLUETOOTH_DEVICE_INFO *pbtdi
/// );
/// ```
/// {@category bluetooth}
int BluetoothGetDeviceInfo(int? hRadio, Pointer<BLUETOOTH_DEVICE_INFO> pbtdi) =>
    _BluetoothGetDeviceInfo(hRadio ?? 0, pbtdi);

final _BluetoothGetDeviceInfo = _bluetoothapis.lookupFunction<
    Uint32 Function(HANDLE hRadio, Pointer<BLUETOOTH_DEVICE_INFO> pbtdi),
    int Function(int hRadio,
        Pointer<BLUETOOTH_DEVICE_INFO> pbtdi)>('BluetoothGetDeviceInfo');

/// The BluetoothGetRadioInfo function obtains information about a Bluetooth
/// radio.
///
/// ```c
/// DWORD BluetoothGetRadioInfo(
///   HANDLE                hRadio,
///   PBLUETOOTH_RADIO_INFO pRadioInfo
/// );
/// ```
/// {@category bluetooth}
int BluetoothGetRadioInfo(
        int hRadio, Pointer<BLUETOOTH_RADIO_INFO> pRadioInfo) =>
    _BluetoothGetRadioInfo(hRadio, pRadioInfo);

final _BluetoothGetRadioInfo = _bluetoothapis.lookupFunction<
    Uint32 Function(HANDLE hRadio, Pointer<BLUETOOTH_RADIO_INFO> pRadioInfo),
    int Function(int hRadio,
        Pointer<BLUETOOTH_RADIO_INFO> pRadioInfo)>('BluetoothGetRadioInfo');

/// The BluetoothIsConnectable function determines whether a Bluetooth radio or
/// radios is connectable.
///
/// ```c
/// BOOL BluetoothIsConnectable(
///   HANDLE hRadio
/// );
/// ```
/// {@category bluetooth}
int BluetoothIsConnectable(int? hRadio) => _BluetoothIsConnectable(hRadio ?? 0);

final _BluetoothIsConnectable = _bluetoothapis.lookupFunction<
    BOOL Function(HANDLE hRadio),
    int Function(int hRadio)>('BluetoothIsConnectable');

/// The BluetoothIsDiscoverable function determines whether a Bluetooth radio or
/// radios is discoverable.
///
/// ```c
/// BOOL BluetoothIsDiscoverable(
///   HANDLE hRadio
/// );
/// ```
/// {@category bluetooth}
int BluetoothIsDiscoverable(int? hRadio) =>
    _BluetoothIsDiscoverable(hRadio ?? 0);

final _BluetoothIsDiscoverable = _bluetoothapis.lookupFunction<
    BOOL Function(HANDLE hRadio),
    int Function(int hRadio)>('BluetoothIsDiscoverable');

/// The BluetoothIsVersionAvailable function indicates if the installed
/// Bluetooth binary set supports the requested version.
///
/// ```c
/// BOOL BluetoothIsVersionAvailable(
///   UCHAR MajorVersion,
///   UCHAR MinorVersion
/// );
/// ```
/// {@category bluetooth}
int BluetoothIsVersionAvailable(int majorVersion, int minorVersion) =>
    _BluetoothIsVersionAvailable(majorVersion, minorVersion);

final _BluetoothIsVersionAvailable = _bluetoothapis.lookupFunction<
    BOOL Function(Uint8 majorVersion, Uint8 minorVersion),
    int Function(
        int majorVersion, int minorVersion)>('BluetoothIsVersionAvailable');

/// The BluetoothRegisterForAuthenticationEx function registers an application
/// for a pin request, numeric comparison and callback function.
///
/// ```c
/// DWORD BluetoothRegisterForAuthenticationEx(
///   const BLUETOOTH_DEVICE_INFO            *pbtdiIn,
///   HBLUETOOTH_AUTHENTICATION_REGISTRATION *phRegHandleOut,
///   PFN_AUTHENTICATION_CALLBACK_EX         pfnCallbackIn,
///   PVOID                                  pvParam
/// );
/// ```
/// {@category bluetooth}
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

/// The BluetoothRemoveDevice function removes authentication between a
/// Bluetooth device and the computer and clears cached service information for
/// the device.
///
/// ```c
/// DWORD BluetoothRemoveDevice(
///   const BLUETOOTH_ADDRESS *pAddress
/// );
/// ```
/// {@category bluetooth}
int BluetoothRemoveDevice(Pointer<BLUETOOTH_ADDRESS> pAddress) =>
    _BluetoothRemoveDevice(pAddress);

final _BluetoothRemoveDevice = _bluetoothapis.lookupFunction<
    Uint32 Function(Pointer<BLUETOOTH_ADDRESS> pAddress),
    int Function(Pointer<BLUETOOTH_ADDRESS> pAddress)>('BluetoothRemoveDevice');

/// The BluetoothSdpEnumAttributes function enumerates through the SDP record
/// stream, and calls the callback function for each attribute in the record.
///
/// ```c
/// BOOL BluetoothSdpEnumAttributes(
///   LPBYTE                                 pSDPStream,
///   ULONG                                  cbStreamSize,
///   PFN_BLUETOOTH_ENUM_ATTRIBUTES_CALLBACK pfnCallback,
///   LPVOID                                 pvParam
/// );
/// ```
/// {@category bluetooth}
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

/// The BluetoothSdpGetAttributeValue function retrieves the attribute value for
/// an attribute identifier.
///
/// ```c
/// DWORD BluetoothSdpGetAttributeValue(
///   [in]  LPBYTE            pRecordStream,
///   [in]  ULONG             cbRecordLength,
///   [in]  USHORT            usAttributeId,
///   [out] PSDP_ELEMENT_DATA pAttributeData
/// );
/// ```
/// {@category bluetooth}
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

/// The BluetoothSdpGetContainerElementData function iterates a container stream
/// and returns each element contained within the container element.
///
/// ```c
/// DWORD BluetoothSdpGetContainerElementData(
///   [in]      LPBYTE                       pContainerStream,
///   [in]      ULONG                        cbContainerLength,
///   [in, out] HBLUETOOTH_CONTAINER_ELEMENT *pElement,
///   [out]     PSDP_ELEMENT_DATA            pData
/// );
/// ```
/// {@category bluetooth}
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

/// The BluetoothSdpGetElementData function retrieves and parses a single
/// element from an SDP stream.
///
/// ```c
/// DWORD BluetoothSdpGetElementData(
///   [in]  LPBYTE            pSdpStream,
///   [in]  ULONG             cbSdpStreamLength,
///   [out] PSDP_ELEMENT_DATA pData
/// );
/// ```
/// {@category bluetooth}
int BluetoothSdpGetElementData(Pointer<Uint8> pSdpStream, int cbSdpStreamLength,
        Pointer<SDP_ELEMENT_DATA> pData) =>
    _BluetoothSdpGetElementData(pSdpStream, cbSdpStreamLength, pData);

final _BluetoothSdpGetElementData = _bluetoothapis.lookupFunction<
    Uint32 Function(Pointer<Uint8> pSdpStream, Uint32 cbSdpStreamLength,
        Pointer<SDP_ELEMENT_DATA> pData),
    int Function(Pointer<Uint8> pSdpStream, int cbSdpStreamLength,
        Pointer<SDP_ELEMENT_DATA> pData)>('BluetoothSdpGetElementData');

/// The BluetoothSdpGetString function converts a raw string embedded in the SDP
/// record into a Unicode string.
///
/// ```c
/// DWORD BluetoothSdpGetString(
///   [in]      LPBYTE                      pRecordStream,
///   [in]      ULONG                       cbRecordLength,
///   [in]      const PSDP_STRING_TYPE_DATA pStringData,
///   [in]      USHORT                      usStringOffset,
///   [out]     PWSTR                       pszString,
///   [in, out] PULONG                      pcchStringLength
/// );
/// ```
/// {@category bluetooth}
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

/// The BluetoothSendAuthenticationResponseEx function is called when an
/// authentication request to send the passkey or a Numeric Comparison response
/// is made.
///
/// ```c
/// DWORD BluetoothSendAuthenticationResponseEx(
///   [in, optional] HANDLE                           hRadioIn,
///   [in]           PBLUETOOTH_AUTHENTICATE_RESPONSE pauthResponse
/// );
/// ```
/// {@category bluetooth}
int BluetoothSendAuthenticationResponseEx(int? hRadioIn,
        Pointer<BLUETOOTH_AUTHENTICATE_RESPONSE> pauthResponse) =>
    _BluetoothSendAuthenticationResponseEx(hRadioIn ?? 0, pauthResponse);

final _BluetoothSendAuthenticationResponseEx = _bluetoothapis.lookupFunction<
        Uint32 Function(HANDLE hRadioIn,
            Pointer<BLUETOOTH_AUTHENTICATE_RESPONSE> pauthResponse),
        int Function(int hRadioIn,
            Pointer<BLUETOOTH_AUTHENTICATE_RESPONSE> pauthResponse)>(
    'BluetoothSendAuthenticationResponseEx');

/// The BluetoothSetServiceState function enables or disables services for a
/// Bluetooth device.
///
/// ```c
/// DWORD BluetoothSetServiceState(
///   HANDLE                      hRadio,
///   const BLUETOOTH_DEVICE_INFO *pbtdi,
///   const GUID                  *pGuidService,
///   DWORD                       dwServiceFlags
/// );
/// ```
/// {@category bluetooth}
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

/// The BluetoothUnregisterAuthentication function removes registration for a
/// callback routine that was previously registered with a call to the
/// BluetoothRegisterForAuthentication function.
///
/// ```c
/// BOOL BluetoothUnregisterAuthentication(
///   HBLUETOOTH_AUTHENTICATION_REGISTRATION hRegHandle
/// );
/// ```
/// {@category bluetooth}
int BluetoothUnregisterAuthentication(int hRegHandle) =>
    _BluetoothUnregisterAuthentication(hRegHandle);

final _BluetoothUnregisterAuthentication = _bluetoothapis.lookupFunction<
    BOOL Function(IntPtr hRegHandle),
    int Function(int hRegHandle)>('BluetoothUnregisterAuthentication');

/// The BluetoothUpdateDeviceRecord function updates the local computer cache
/// about a Bluetooth device.
///
/// ```c
/// DWORD BluetoothUpdateDeviceRecord(
///   const BLUETOOTH_DEVICE_INFO *pbtdi
/// );
/// ```
/// {@category bluetooth}
int BluetoothUpdateDeviceRecord(Pointer<BLUETOOTH_DEVICE_INFO> pbtdi) =>
    _BluetoothUpdateDeviceRecord(pbtdi);

final _BluetoothUpdateDeviceRecord = _bluetoothapis.lookupFunction<
    Uint32 Function(Pointer<BLUETOOTH_DEVICE_INFO> pbtdi),
    int Function(
        Pointer<BLUETOOTH_DEVICE_INFO> pbtdi)>('BluetoothUpdateDeviceRecord');
