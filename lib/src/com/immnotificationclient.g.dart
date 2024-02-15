// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../extensions/iunknown.dart';
import '../structs.g.dart';
import '../types.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IMMNotificationClient = '{7991eec9-7e89-4d85-8390-6c703cec60c0}';

/// The IMMNotificationClient interface provides notifications when an audio
/// endpoint device is added or removed, when the state or properties of an
/// endpoint device change, or when there is a change in the default role
/// assigned to an endpoint device.
///
/// {@category com}
class IMMNotificationClient extends IUnknown {
  IMMNotificationClient(super.ptr)
      : _vtable = ptr.value.cast<IMMNotificationClientVtbl>().ref;

  final IMMNotificationClientVtbl _vtable;

  factory IMMNotificationClient.from(IUnknown interface) =>
      IMMNotificationClient(interface.toInterface(IID_IMMNotificationClient));

  int onDeviceStateChanged(PWSTR pwstrDeviceId, int dwNewState) =>
      _vtable.OnDeviceStateChanged.asFunction<
          int Function(VTablePointer lpVtbl, PWSTR pwstrDeviceId,
              int dwNewState)>()(ptr, pwstrDeviceId, dwNewState);

  int onDeviceAdded(PWSTR pwstrDeviceId) => _vtable.OnDeviceAdded.asFunction<
      int Function(
          VTablePointer lpVtbl, PWSTR pwstrDeviceId)>()(ptr, pwstrDeviceId);

  int onDeviceRemoved(PWSTR pwstrDeviceId) =>
      _vtable.OnDeviceRemoved.asFunction<
          int Function(
              VTablePointer lpVtbl, PWSTR pwstrDeviceId)>()(ptr, pwstrDeviceId);

  int onDefaultDeviceChanged(int flow, int role, PWSTR? pwstrDefaultDeviceId) =>
      _vtable.OnDefaultDeviceChanged.asFunction<
              int Function(VTablePointer lpVtbl, int flow, int role,
                  PWSTR pwstrDefaultDeviceId)>()(
          ptr, flow, role, pwstrDefaultDeviceId ?? nullptr);

  int onPropertyValueChanged(PWSTR pwstrDeviceId, PROPERTYKEY key) =>
      _vtable.OnPropertyValueChanged.asFunction<
          int Function(VTablePointer lpVtbl, PWSTR pwstrDeviceId,
              PROPERTYKEY key)>()(ptr, pwstrDeviceId, key);
}

/// @nodoc
base class IMMNotificationClientVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, PWSTR pwstrDeviceId,
              Uint32 dwNewState)>> OnDeviceStateChanged;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, PWSTR pwstrDeviceId)>>
      OnDeviceAdded;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, PWSTR pwstrDeviceId)>>
      OnDeviceRemoved;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 flow, Int32 role,
              PWSTR pwstrDefaultDeviceId)>> OnDefaultDeviceChanged;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, PWSTR pwstrDeviceId, PROPERTYKEY key)>>
      OnPropertyValueChanged;
}
