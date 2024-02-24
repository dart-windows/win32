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

final _bthprops = DynamicLibrary.open('bthprops.cpl');

/// The BluetoothAuthenticateDeviceEx function sends an authentication request
/// to a remote Bluetooth device. Additionally, this function allows for
/// out-of-band data to be passed into the function call for the device being
/// authenticated.
///
/// ```c
/// DWORD BluetoothAuthenticateDeviceEx(
///   HWND                        hwndParentIn,
///   HANDLE                      hRadioIn,
///   BLUETOOTH_DEVICE_INFO       *pbtdiInout,
///   PBLUETOOTH_OOB_DATA_INFO    pbtOobData,
///   AUTHENTICATION_REQUIREMENTS authenticationRequirement
/// );
/// ```
/// {@category bthprops}
int BluetoothAuthenticateDeviceEx(
        int? hwndParentIn,
        int? hRadioIn,
        Pointer<BLUETOOTH_DEVICE_INFO> pbtdiInout,
        Pointer<BLUETOOTH_OOB_DATA_INFO>? pbtOobData,
        int authenticationRequirement) =>
    _BluetoothAuthenticateDeviceEx(hwndParentIn ?? 0, hRadioIn ?? 0, pbtdiInout,
        pbtOobData ?? nullptr, authenticationRequirement);

final _BluetoothAuthenticateDeviceEx = _bthprops.lookupFunction<
    Uint32 Function(
        HWND hwndParentIn,
        HANDLE hRadioIn,
        Pointer<BLUETOOTH_DEVICE_INFO> pbtdiInout,
        Pointer<BLUETOOTH_OOB_DATA_INFO> pbtOobData,
        Int32 authenticationRequirement),
    int Function(
        int hwndParentIn,
        int hRadioIn,
        Pointer<BLUETOOTH_DEVICE_INFO> pbtdiInout,
        Pointer<BLUETOOTH_OOB_DATA_INFO> pbtOobData,
        int authenticationRequirement)>('BluetoothAuthenticateDeviceEx');

/// The BluetoothDisplayDeviceProperties function opens the Control Panel device
/// information property sheet.
///
/// ```c
/// BOOL BluetoothDisplayDeviceProperties(
///   HWND                  hwndParent,
///   BLUETOOTH_DEVICE_INFO *pbtdi
/// );
/// ```
/// {@category bluetooth}
int BluetoothDisplayDeviceProperties(
        int? hwndParent, Pointer<BLUETOOTH_DEVICE_INFO> pbtdi) =>
    _BluetoothDisplayDeviceProperties(hwndParent ?? 0, pbtdi);

final _BluetoothDisplayDeviceProperties = _bthprops.lookupFunction<
        BOOL Function(HWND hwndParent, Pointer<BLUETOOTH_DEVICE_INFO> pbtdi),
        int Function(int hwndParent, Pointer<BLUETOOTH_DEVICE_INFO> pbtdi)>(
    'BluetoothDisplayDeviceProperties');

/// The BluetoothSelectDevices function enables Bluetooth device selection.
///
/// ```c
/// BOOL BluetoothSelectDevices(
///   BLUETOOTH_SELECT_DEVICE_PARAMS *pbtsdp
/// );
/// ```
/// {@category bluetooth}
int BluetoothSelectDevices(Pointer<BLUETOOTH_SELECT_DEVICE_PARAMS> pbtsdp) =>
    _BluetoothSelectDevices(pbtsdp);

final _BluetoothSelectDevices = _bthprops.lookupFunction<
        BOOL Function(Pointer<BLUETOOTH_SELECT_DEVICE_PARAMS> pbtsdp),
        int Function(Pointer<BLUETOOTH_SELECT_DEVICE_PARAMS> pbtsdp)>(
    'BluetoothSelectDevices');

/// The BluetoothSelectDevicesFree function frees resources associated with a
/// previous call to BluetoothSelectDevices.
///
/// ```c
/// BOOL BluetoothSelectDevicesFree(
///   BLUETOOTH_SELECT_DEVICE_PARAMS *pbtsdp
/// );
/// ```
/// {@category bluetooth}
int BluetoothSelectDevicesFree(
        Pointer<BLUETOOTH_SELECT_DEVICE_PARAMS> pbtsdp) =>
    _BluetoothSelectDevicesFree(pbtsdp);

final _BluetoothSelectDevicesFree = _bthprops.lookupFunction<
        BOOL Function(Pointer<BLUETOOTH_SELECT_DEVICE_PARAMS> pbtsdp),
        int Function(Pointer<BLUETOOTH_SELECT_DEVICE_PARAMS> pbtsdp)>(
    'BluetoothSelectDevicesFree');
