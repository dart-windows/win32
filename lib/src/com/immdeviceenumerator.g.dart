// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../extensions/iunknown.dart';
import '../structs.g.dart';
import '../types.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IMMDeviceEnumerator = '{a95664d2-9614-4f35-a746-de8db63617e6}';

/// Provides methods for enumerating multimedia device resources.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/mmdeviceapi/nn-mmdeviceapi-immdeviceenumerator>.
///
/// {@category com}
class IMMDeviceEnumerator extends IUnknown {
  IMMDeviceEnumerator(super.ptr)
      : _vtable = ptr.value.cast<IMMDeviceEnumeratorVtbl>().ref;

  final IMMDeviceEnumeratorVtbl _vtable;

  factory IMMDeviceEnumerator.from(IUnknown interface) =>
      IMMDeviceEnumerator(interface.toInterface(IID_IMMDeviceEnumerator));

  int enumAudioEndpoints(
          int dataFlow, int dwStateMask, Pointer<VTablePointer> ppDevices) =>
      _vtable.EnumAudioEndpoints.asFunction<
              int Function(VTablePointer lpVtbl, int dataFlow, int dwStateMask,
                  Pointer<VTablePointer> ppDevices)>()(
          ptr, dataFlow, dwStateMask, ppDevices);

  int getDefaultAudioEndpoint(
          int dataFlow, int role, Pointer<VTablePointer> ppEndpoint) =>
      _vtable.GetDefaultAudioEndpoint.asFunction<
              int Function(VTablePointer lpVtbl, int dataFlow, int role,
                  Pointer<VTablePointer> ppEndpoint)>()(
          ptr, dataFlow, role, ppEndpoint);

  int getDevice(Pointer<Utf16> pwstrId, Pointer<VTablePointer> ppDevice) =>
      _vtable.GetDevice.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<Utf16> pwstrId,
              Pointer<VTablePointer> ppDevice)>()(ptr, pwstrId, ppDevice);

  int registerEndpointNotificationCallback(VTablePointer pClient) =>
      _vtable.RegisterEndpointNotificationCallback.asFunction<
          int Function(
              VTablePointer lpVtbl, VTablePointer pClient)>()(ptr, pClient);

  int unregisterEndpointNotificationCallback(VTablePointer pClient) =>
      _vtable.UnregisterEndpointNotificationCallback.asFunction<
          int Function(
              VTablePointer lpVtbl, VTablePointer pClient)>()(ptr, pClient);
}

/// @nodoc
base class IMMDeviceEnumeratorVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Int32 dataFlow,
              Uint32 dwStateMask,
              Pointer<VTablePointer> ppDevices)>> EnumAudioEndpoints;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 dataFlow, Int32 role,
              Pointer<VTablePointer> ppEndpoint)>> GetDefaultAudioEndpoint;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<Utf16> pwstrId,
              Pointer<VTablePointer> ppDevice)>> GetDevice;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, VTablePointer pClient)>>
      RegisterEndpointNotificationCallback;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, VTablePointer pClient)>>
      UnregisterEndpointNotificationCallback;
}

/// @nodoc
const MMDeviceEnumerator = '{bcde0395-e52f-467c-8e3d-c4579291692e}';
