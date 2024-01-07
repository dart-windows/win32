// iaudiosessionmanager.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../guid.dart';
import '../types.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IAudioSessionManager = '{bfa971f1-4d5e-40bb-935e-967039bfbee4}';

/// The IAudioSessionManager interface enables a client to access the
/// session controls and volume controls for both cross-process and
/// process-specific audio sessions. The client obtains a reference to an
/// [IAudioSessionManager] interface by calling the `IMMDevice::Activate`
/// method with parameter `iid` set to REFIID [IID_IAudioSessionManager].
///
/// {@category com}
class IAudioSessionManager extends IUnknown {
  IAudioSessionManager(super.ptr)
      : _vtable = ptr.value.value.cast<IAudioSessionManagerVtbl>().ref;

  final IAudioSessionManagerVtbl _vtable;

  factory IAudioSessionManager.from(IUnknown interface) =>
      IAudioSessionManager(interface.toInterface(IID_IAudioSessionManager));

  int getAudioSessionControl(Pointer<GUID> AudioSessionGuid, int StreamFlags,
          Pointer<Pointer<VTablePointer>> SessionControl) =>
      _vtable.GetAudioSessionControl.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<GUID> AudioSessionGuid,
                  int StreamFlags,
                  Pointer<Pointer<VTablePointer>> SessionControl)>()(
          ptr.value, AudioSessionGuid, StreamFlags, SessionControl);

  int getSimpleAudioVolume(Pointer<GUID> AudioSessionGuid, int StreamFlags,
          Pointer<Pointer<VTablePointer>> AudioVolume) =>
      _vtable.GetSimpleAudioVolume.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<GUID> AudioSessionGuid,
                  int StreamFlags,
                  Pointer<Pointer<VTablePointer>> AudioVolume)>()(
          ptr.value, AudioSessionGuid, StreamFlags, AudioVolume);
}

/// @nodoc
base class IAudioSessionManagerVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer,
                  Pointer<GUID> AudioSessionGuid,
                  Uint32 StreamFlags,
                  Pointer<Pointer<VTablePointer>> SessionControl)>>
      GetAudioSessionControl;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer,
                  Pointer<GUID> AudioSessionGuid,
                  Uint32 StreamFlags,
                  Pointer<Pointer<VTablePointer>> AudioVolume)>>
      GetSimpleAudioVolume;
}
