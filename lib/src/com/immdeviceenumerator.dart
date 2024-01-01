// immdeviceenumerator.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
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
      : _vtable = ptr.ref.vtable.cast<IMMDeviceEnumeratorVtbl>().ref;

  final IMMDeviceEnumeratorVtbl _vtable;

  factory IMMDeviceEnumerator.from(IUnknown interface) =>
      IMMDeviceEnumerator(interface.toInterface(IID_IMMDeviceEnumerator));

  int enumAudioEndpoints(int dataFlow, int dwStateMask,
          Pointer<Pointer<COMObject>> ppDevices) =>
      _vtable.EnumAudioEndpoints.asFunction<
              int Function(Pointer, int dataFlow, int dwStateMask,
                  Pointer<Pointer<COMObject>> ppDevices)>()(
          ptr.ref.lpVtbl, dataFlow, dwStateMask, ppDevices);

  int getDefaultAudioEndpoint(
          int dataFlow, int role, Pointer<Pointer<COMObject>> ppEndpoint) =>
      _vtable.GetDefaultAudioEndpoint.asFunction<
              int Function(Pointer, int dataFlow, int role,
                  Pointer<Pointer<COMObject>> ppEndpoint)>()(
          ptr.ref.lpVtbl, dataFlow, role, ppEndpoint);

  int getDevice(Pointer<Utf16> pwstrId, Pointer<Pointer<COMObject>> ppDevice) =>
      _vtable.GetDevice.asFunction<
              int Function(Pointer, Pointer<Utf16> pwstrId,
                  Pointer<Pointer<COMObject>> ppDevice)>()(
          ptr.ref.lpVtbl, pwstrId, ppDevice);

  int registerEndpointNotificationCallback(Pointer<COMObject> pClient) =>
      _vtable.RegisterEndpointNotificationCallback.asFunction<
          int Function(
              Pointer, Pointer<COMObject> pClient)>()(ptr.ref.lpVtbl, pClient);

  int unregisterEndpointNotificationCallback(Pointer<COMObject> pClient) =>
      _vtable.UnregisterEndpointNotificationCallback.asFunction<
          int Function(
              Pointer, Pointer<COMObject> pClient)>()(ptr.ref.lpVtbl, pClient);
}

/// @nodoc
base class IMMDeviceEnumeratorVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Int32 dataFlow, Uint32 dwStateMask,
              Pointer<Pointer<COMObject>> ppDevices)>> EnumAudioEndpoints;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Int32 dataFlow, Int32 role,
              Pointer<Pointer<COMObject>> ppEndpoint)>> GetDefaultAudioEndpoint;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<Utf16> pwstrId,
              Pointer<Pointer<COMObject>> ppDevice)>> GetDevice;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<COMObject> pClient)>>
      RegisterEndpointNotificationCallback;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<COMObject> pClient)>>
      UnregisterEndpointNotificationCallback;
}

/// @nodoc
const CLSID_MMDeviceEnumerator = '{bcde0395-e52f-467c-8e3d-c4579291692e}';

/// {@category com}
class MMDeviceEnumerator extends IMMDeviceEnumerator {
  MMDeviceEnumerator(super.ptr);

  factory MMDeviceEnumerator.createInstance() =>
      MMDeviceEnumerator(COMObject.createFromID(
          CLSID_MMDeviceEnumerator, IID_IMMDeviceEnumerator));
}
