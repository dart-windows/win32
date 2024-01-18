// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../extensions/iunknown.dart';
import '../propertykey.dart';
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

  int onDeviceStateChanged(Pointer<Utf16> pwstrDeviceId, int dwNewState) =>
      _vtable.OnDeviceStateChanged.asFunction<
          int Function(VTablePointer, Pointer<Utf16> pwstrDeviceId,
              int dwNewState)>()(ptr, pwstrDeviceId, dwNewState);

  int onDeviceAdded(Pointer<Utf16> pwstrDeviceId) =>
      _vtable.OnDeviceAdded.asFunction<
              int Function(VTablePointer, Pointer<Utf16> pwstrDeviceId)>()(
          ptr, pwstrDeviceId);

  int onDeviceRemoved(Pointer<Utf16> pwstrDeviceId) =>
      _vtable.OnDeviceRemoved.asFunction<
              int Function(VTablePointer, Pointer<Utf16> pwstrDeviceId)>()(
          ptr, pwstrDeviceId);

  int onDefaultDeviceChanged(
          int flow, int role, Pointer<Utf16> pwstrDefaultDeviceId) =>
      _vtable.OnDefaultDeviceChanged.asFunction<
              int Function(VTablePointer, int flow, int role,
                  Pointer<Utf16> pwstrDefaultDeviceId)>()(
          ptr, flow, role, pwstrDefaultDeviceId);

  int onPropertyValueChanged(Pointer<Utf16> pwstrDeviceId, PROPERTYKEY key) =>
      _vtable.OnPropertyValueChanged.asFunction<
          int Function(VTablePointer, Pointer<Utf16> pwstrDeviceId,
              PROPERTYKEY key)>()(ptr, pwstrDeviceId, key);
}

/// @nodoc
base class IMMNotificationClientVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<Utf16> pwstrDeviceId,
              Uint32 dwNewState)>> OnDeviceStateChanged;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Utf16> pwstrDeviceId)>>
      OnDeviceAdded;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Utf16> pwstrDeviceId)>>
      OnDeviceRemoved;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Int32 flow, Int32 role,
              Pointer<Utf16> pwstrDefaultDeviceId)>> OnDefaultDeviceChanged;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<Utf16> pwstrDeviceId,
              PROPERTYKEY key)>> OnPropertyValueChanged;
}
