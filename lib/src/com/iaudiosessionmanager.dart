// iaudiosessionmanager.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../combase.dart';
import '../guid.dart';
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
  // vtable begins at 3, is 2 entries long.
  IAudioSessionManager(super.ptr)
      : _vtable = ptr.ref.vtable.cast<IAudioSessionManagerVtbl>().ref;

  final IAudioSessionManagerVtbl _vtable;

  factory IAudioSessionManager.from(IUnknown interface) =>
      IAudioSessionManager(interface.toInterface(IID_IAudioSessionManager));

  int getAudioSessionControl(Pointer<GUID> AudioSessionGuid, int StreamFlags,
          Pointer<Pointer<COMObject>> SessionControl) =>
      _vtable.GetAudioSessionControl.asFunction<
              int Function(
                  Pointer,
                  Pointer<GUID> AudioSessionGuid,
                  int StreamFlags,
                  Pointer<Pointer<COMObject>> SessionControl)>()(
          ptr.ref.lpVtbl, AudioSessionGuid, StreamFlags, SessionControl);

  int getSimpleAudioVolume(Pointer<GUID> AudioSessionGuid, int StreamFlags,
          Pointer<Pointer<COMObject>> AudioVolume) =>
      _vtable.GetSimpleAudioVolume.asFunction<
              int Function(Pointer, Pointer<GUID> AudioSessionGuid,
                  int StreamFlags, Pointer<Pointer<COMObject>> AudioVolume)>()(
          ptr.ref.lpVtbl, AudioSessionGuid, StreamFlags, AudioVolume);
}

/// @nodoc
base class IAudioSessionManagerVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer,
                  Pointer<GUID> AudioSessionGuid,
                  Uint32 StreamFlags,
                  Pointer<Pointer<COMObject>> SessionControl)>>
      GetAudioSessionControl;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              Pointer<GUID> AudioSessionGuid,
              Uint32 StreamFlags,
              Pointer<Pointer<COMObject>> AudioVolume)>> GetSimpleAudioVolume;
}
