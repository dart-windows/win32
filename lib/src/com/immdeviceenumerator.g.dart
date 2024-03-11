// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../exceptions.dart';
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

  /// Creates a new instance of `IMMDeviceEnumerator` from an existing
  /// [interface].
  ///
  /// This constructor invokes the [queryInterface] method to obtain a reference
  /// to the `IMMDeviceEnumerator` interface with the provided interface.
  ///
  /// Throws a [WindowsException] if the `queryInterface` call fails.
  factory IMMDeviceEnumerator.from(IUnknown interface) =>
      IMMDeviceEnumerator(interface.toInterface(IID_IMMDeviceEnumerator));

  /// Generates a collection of audio endpoint devices that meet the specified
  /// criteria.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/mmdeviceapi/nf-mmdeviceapi-immdeviceenumerator-enumaudioendpoints>.
  int enumAudioEndpoints(
          int dataFlow, int dwStateMask, Pointer<VTablePointer> ppDevices) =>
      _vtable.EnumAudioEndpoints.asFunction<
              int Function(VTablePointer lpVtbl, int dataFlow, int dwStateMask,
                  Pointer<VTablePointer> ppDevices)>()(
          ptr, dataFlow, dwStateMask, ppDevices);

  /// Retrieves the default audio endpoint for the specified data-flow direction
  /// and role.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/mmdeviceapi/nf-mmdeviceapi-immdeviceenumerator-getdefaultaudioendpoint>.
  int getDefaultAudioEndpoint(
          int dataFlow, int role, Pointer<VTablePointer> ppEndpoint) =>
      _vtable.GetDefaultAudioEndpoint.asFunction<
              int Function(VTablePointer lpVtbl, int dataFlow, int role,
                  Pointer<VTablePointer> ppEndpoint)>()(
          ptr, dataFlow, role, ppEndpoint);

  /// Retrieves an audio endpoint device that is identified by an endpoint ID
  /// string.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/mmdeviceapi/nf-mmdeviceapi-immdeviceenumerator-getdevice>.
  int getDevice(Pointer<Utf16> pwstrId, Pointer<VTablePointer> ppDevice) =>
      _vtable.GetDevice.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<Utf16> pwstrId,
              Pointer<VTablePointer> ppDevice)>()(ptr, pwstrId, ppDevice);

  /// Registers a client's notification callback interface.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/mmdeviceapi/nf-mmdeviceapi-immdeviceenumerator-registerendpointnotificationcallback>.
  int registerEndpointNotificationCallback(VTablePointer pClient) =>
      _vtable.RegisterEndpointNotificationCallback.asFunction<
          int Function(
              VTablePointer lpVtbl, VTablePointer pClient)>()(ptr, pClient);

  /// Deletes the registration of a notification interface that the client
  /// registered in a previous call to the
  /// `IMMDeviceEnumerator.registerEndpointNotificationCallback` method.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/mmdeviceapi/nf-mmdeviceapi-immdeviceenumerator-unregisterendpointnotificationcallback>.
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
