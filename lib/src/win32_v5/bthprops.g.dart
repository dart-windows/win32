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

/// Sends an authentication request to a remote Bluetooth device.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/nf-bluetoothapis-bluetoothauthenticatedeviceex>.
///
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

/// Starts Control Panel device information property sheet.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/nf-bluetoothapis-bluetoothdisplaydeviceproperties>.
///
/// {@category bthprops}
int BluetoothDisplayDeviceProperties(
        int? hwndParent, Pointer<BLUETOOTH_DEVICE_INFO> pbtdi) =>
    _BluetoothDisplayDeviceProperties(hwndParent ?? 0, pbtdi);

final _BluetoothDisplayDeviceProperties = _bthprops.lookupFunction<
        BOOL Function(HWND hwndParent, Pointer<BLUETOOTH_DEVICE_INFO> pbtdi),
        int Function(int hwndParent, Pointer<BLUETOOTH_DEVICE_INFO> pbtdi)>(
    'BluetoothDisplayDeviceProperties');

/// Enables Bluetooth device selection.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/nf-bluetoothapis-bluetoothselectdevices>.
///
/// {@category bthprops}
int BluetoothSelectDevices(Pointer<BLUETOOTH_SELECT_DEVICE_PARAMS> pbtsdp) =>
    _BluetoothSelectDevices(pbtsdp);

final _BluetoothSelectDevices = _bthprops.lookupFunction<
        BOOL Function(Pointer<BLUETOOTH_SELECT_DEVICE_PARAMS> pbtsdp),
        int Function(Pointer<BLUETOOTH_SELECT_DEVICE_PARAMS> pbtsdp)>(
    'BluetoothSelectDevices');

/// Frees resources associated with a previous call to BluetoothSelectDevices.
///
/// To learn more about this function, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/nf-bluetoothapis-bluetoothselectdevicesfree>.
///
/// {@category bthprops}
int BluetoothSelectDevicesFree(
        Pointer<BLUETOOTH_SELECT_DEVICE_PARAMS> pbtsdp) =>
    _BluetoothSelectDevicesFree(pbtsdp);

final _BluetoothSelectDevicesFree = _bthprops.lookupFunction<
        BOOL Function(Pointer<BLUETOOTH_SELECT_DEVICE_PARAMS> pbtsdp),
        int Function(Pointer<BLUETOOTH_SELECT_DEVICE_PARAMS> pbtsdp)>(
    'BluetoothSelectDevicesFree');
