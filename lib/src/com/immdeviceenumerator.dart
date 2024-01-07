// immdeviceenumerator.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../types.dart';
import '../utils.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IMMDeviceEnumerator = '{a95664d2-9614-4f35-a746-de8db63617e6}';

/// The IMMDeviceEnumerator interface provides methods for enumerating
/// multimedia device resources.
///
/// {@category com}
class IMMDeviceEnumerator extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IMMDeviceEnumerator(super.ptr)
      : _vtable = ptr.value.value.cast<IMMDeviceEnumeratorVtbl>().ref;

  final IMMDeviceEnumeratorVtbl _vtable;

  factory IMMDeviceEnumerator.from(IUnknown interface) =>
      IMMDeviceEnumerator(interface.toInterface(IID_IMMDeviceEnumerator));

  int enumAudioEndpoints(int dataFlow, int dwStateMask,
          Pointer<Pointer<VTablePointer>> ppDevices) =>
      _vtable.EnumAudioEndpoints.asFunction<
              int Function(VTablePointer, int dataFlow, int dwStateMask,
                  Pointer<Pointer<VTablePointer>> ppDevices)>()(
          ptr.value, dataFlow, dwStateMask, ppDevices);

  int getDefaultAudioEndpoint(
          int dataFlow, int role, Pointer<Pointer<VTablePointer>> ppEndpoint) =>
      _vtable.GetDefaultAudioEndpoint.asFunction<
              int Function(VTablePointer, int dataFlow, int role,
                  Pointer<Pointer<VTablePointer>> ppEndpoint)>()(
          ptr.value, dataFlow, role, ppEndpoint);

  int getDevice(
          Pointer<Utf16> pwstrId, Pointer<Pointer<VTablePointer>> ppDevice) =>
      _vtable.GetDevice.asFunction<
              int Function(VTablePointer, Pointer<Utf16> pwstrId,
                  Pointer<Pointer<VTablePointer>> ppDevice)>()(
          ptr.value, pwstrId, ppDevice);

  int registerEndpointNotificationCallback(Pointer<VTablePointer> pClient) =>
      _vtable.RegisterEndpointNotificationCallback.asFunction<
              int Function(VTablePointer, Pointer<VTablePointer> pClient)>()(
          ptr.value, pClient);

  int unregisterEndpointNotificationCallback(Pointer<VTablePointer> pClient) =>
      _vtable.UnregisterEndpointNotificationCallback.asFunction<
              int Function(VTablePointer, Pointer<VTablePointer> pClient)>()(
          ptr.value, pClient);
}

/// @nodoc
base class IMMDeviceEnumeratorVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Int32 dataFlow, Uint32 dwStateMask,
              Pointer<Pointer<VTablePointer>> ppDevices)>> EnumAudioEndpoints;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Int32 dataFlow, Int32 role,
                  Pointer<Pointer<VTablePointer>> ppEndpoint)>>
      GetDefaultAudioEndpoint;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<Utf16> pwstrId,
              Pointer<Pointer<VTablePointer>> ppDevice)>> GetDevice;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> pClient)>>
      RegisterEndpointNotificationCallback;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> pClient)>>
      UnregisterEndpointNotificationCallback;
}

/// @nodoc
const CLSID_MMDeviceEnumerator = '{bcde0395-e52f-467c-8e3d-c4579291692e}';

/// {@category com}
class MMDeviceEnumerator extends IMMDeviceEnumerator {
  MMDeviceEnumerator(super.ptr);

  factory MMDeviceEnumerator.createInstance() => MMDeviceEnumerator(
      createCOMObject(CLSID_MMDeviceEnumerator, IID_IMMDeviceEnumerator));
}
