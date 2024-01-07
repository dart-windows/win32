// isimpleaudiovolume.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../guid.dart';
import '../types.dart';
import 'iunknown.dart';

/// @nodoc
const IID_ISimpleAudioVolume = '{87ce5498-68d6-44e5-9215-6da47ef883d8}';

/// The ISimpleAudioVolume interface enables a client to control the master
/// volume level of an audio session. The `IAudioClient::Initialize` method
/// initializes a stream object and assigns the stream to an audio session.
/// The client obtains a reference to the [ISimpleAudioVolume] interface on
/// a stream object by calling the `IAudioClient::GetService` method with
/// parameter `riid` set to REFIID [IID_ISimpleAudioVolume].
///
/// {@category com}
class ISimpleAudioVolume extends IUnknown {
  ISimpleAudioVolume(super.ptr)
      : _vtable = ptr.value.cast<ISimpleAudioVolumeVtbl>().ref;

  final ISimpleAudioVolumeVtbl _vtable;

  factory ISimpleAudioVolume.from(IUnknown interface) =>
      ISimpleAudioVolume(interface.toInterface(IID_ISimpleAudioVolume));

  int setMasterVolume(double fLevel, Pointer<GUID> EventContext) =>
      _vtable.SetMasterVolume.asFunction<
          int Function(VTablePointer, double fLevel,
              Pointer<GUID> EventContext)>()(ptr, fLevel, EventContext);

  int getMasterVolume(Pointer<Float> pfLevel) =>
      _vtable.GetMasterVolume.asFunction<
          int Function(VTablePointer, Pointer<Float> pfLevel)>()(ptr, pfLevel);

  int setMute(int bMute, Pointer<GUID> EventContext) =>
      _vtable.SetMute.asFunction<
          int Function(VTablePointer, int bMute,
              Pointer<GUID> EventContext)>()(ptr, bMute, EventContext);

  int getMute(Pointer<Int32> pbMute) => _vtable.GetMute.asFunction<
      int Function(VTablePointer, Pointer<Int32> pbMute)>()(ptr, pbMute);
}

/// @nodoc
base class ISimpleAudioVolumeVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Float fLevel, Pointer<GUID> EventContext)>>
      SetMasterVolume;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Float> pfLevel)>>
      GetMasterVolume;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer, Int32 bMute, Pointer<GUID> EventContext)>> SetMute;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> pbMute)>>
      GetMute;
}
