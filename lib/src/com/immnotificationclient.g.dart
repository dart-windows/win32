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
const IID_IMMNotificationClient = '{7991eec9-7e89-4d85-8390-6c703cec60c0}';

/// Provides notifications when an audio endpoint device is added or removed,
/// when the state or properties of an endpoint device change, or when there is
/// a change in the default role assigned to an endpoint device.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/mmdeviceapi/nn-mmdeviceapi-immnotificationclient>.
///
/// {@category com}
class IMMNotificationClient extends IUnknown {
  IMMNotificationClient(super.ptr)
      : _vtable = ptr.value.cast<IMMNotificationClientVtbl>().ref;

  final IMMNotificationClientVtbl _vtable;

  /// Creates a new instance of `IMMNotificationClient` from an existing
  /// [interface].
  ///
  /// This constructor invokes the [queryInterface] method to obtain a reference
  /// to the `IMMNotificationClient` interface with the provided interface.
  ///
  /// Throws a [WindowsException] if the `queryInterface` call fails.
  factory IMMNotificationClient.from(IUnknown interface) =>
      IMMNotificationClient(interface.toInterface(IID_IMMNotificationClient));

  /// Indicates that the state of an audio endpoint device has changed.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/mmdeviceapi/nf-mmdeviceapi-immnotificationclient-ondevicestatechanged>.
  int onDeviceStateChanged(Pointer<Utf16> pwstrDeviceId, int dwNewState) =>
      _vtable.OnDeviceStateChanged.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<Utf16> pwstrDeviceId,
              int dwNewState)>()(ptr, pwstrDeviceId, dwNewState);

  /// Indicates that a new audio endpoint device has been added.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/mmdeviceapi/nf-mmdeviceapi-immnotificationclient-ondeviceadded>.
  int onDeviceAdded(Pointer<Utf16> pwstrDeviceId) =>
      _vtable.OnDeviceAdded.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Utf16> pwstrDeviceId)>()(ptr, pwstrDeviceId);

  /// Indicates that an audio endpoint device has been removed.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/mmdeviceapi/nf-mmdeviceapi-immnotificationclient-ondeviceremoved>.
  int onDeviceRemoved(Pointer<Utf16> pwstrDeviceId) =>
      _vtable.OnDeviceRemoved.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Utf16> pwstrDeviceId)>()(ptr, pwstrDeviceId);

  /// Notifies the client that the default audio endpoint device for a particular
  /// device role has changed.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/mmdeviceapi/nf-mmdeviceapi-immnotificationclient-ondefaultdevicechanged>.
  int onDefaultDeviceChanged(
          int flow, int role, Pointer<Utf16>? pwstrDefaultDeviceId) =>
      _vtable.OnDefaultDeviceChanged.asFunction<
              int Function(VTablePointer lpVtbl, int flow, int role,
                  Pointer<Utf16> pwstrDefaultDeviceId)>()(
          ptr, flow, role, pwstrDefaultDeviceId ?? nullptr);

  /// Indicates that the value of a property belonging to an audio endpoint device
  /// has changed.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/mmdeviceapi/nf-mmdeviceapi-immnotificationclient-onpropertyvaluechanged>.
  int onPropertyValueChanged(Pointer<Utf16> pwstrDeviceId, PROPERTYKEY key) =>
      _vtable.OnPropertyValueChanged.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<Utf16> pwstrDeviceId,
              PROPERTYKEY key)>()(ptr, pwstrDeviceId, key);
}

/// @nodoc
base class IMMNotificationClientVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<Utf16> pwstrDeviceId,
              Uint32 dwNewState)>> OnDeviceStateChanged;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Utf16> pwstrDeviceId)>>
      OnDeviceAdded;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Utf16> pwstrDeviceId)>>
      OnDeviceRemoved;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 flow, Int32 role,
              Pointer<Utf16> pwstrDefaultDeviceId)>> OnDefaultDeviceChanged;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<Utf16> pwstrDeviceId,
              PROPERTYKEY key)>> OnPropertyValueChanged;
}
