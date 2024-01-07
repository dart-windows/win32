// ichannelaudiovolume.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../extensions/iunknown.dart';
import '../guid.dart';
import '../types.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IChannelAudioVolume = '{1c158861-b533-4b30-b1cf-e853e51c59b8}';

/// The IChannelAudioVolume interface enables a client to control and
/// monitor the volume levels for all of the channels in the audio session
/// that the stream belongs to. This is the session that the client assigned
/// the stream to during the call to the `IAudioClient::Initialize` method.
/// The client obtains a reference to the [IChannelAudioVolume] interface on
/// a stream object by calling the `IAudioClient::GetService` method with
/// parameter `riid` set to REFIID [IID_IChannelAudioVolume].
///
/// {@category com}
class IChannelAudioVolume extends IUnknown {
  IChannelAudioVolume(super.ptr)
      : _vtable = ptr.value.cast<IChannelAudioVolumeVtbl>().ref;

  final IChannelAudioVolumeVtbl _vtable;

  factory IChannelAudioVolume.from(IUnknown interface) =>
      IChannelAudioVolume(interface.toInterface(IID_IChannelAudioVolume));

  int getChannelCount(Pointer<Uint32> pdwCount) =>
      _vtable.GetChannelCount.asFunction<
          int Function(
              VTablePointer, Pointer<Uint32> pdwCount)>()(ptr, pdwCount);

  int setChannelVolume(
          int dwIndex, double fLevel, Pointer<GUID> EventContext) =>
      _vtable.SetChannelVolume.asFunction<
              int Function(VTablePointer, int dwIndex, double fLevel,
                  Pointer<GUID> EventContext)>()(
          ptr, dwIndex, fLevel, EventContext);

  int getChannelVolume(int dwIndex, Pointer<Float> pfLevel) =>
      _vtable.GetChannelVolume.asFunction<
          int Function(VTablePointer, int dwIndex,
              Pointer<Float> pfLevel)>()(ptr, dwIndex, pfLevel);

  int setAllVolumes(
          int dwCount, Pointer<Float> pfVolumes, Pointer<GUID> EventContext) =>
      _vtable.SetAllVolumes.asFunction<
              int Function(VTablePointer, int dwCount, Pointer<Float> pfVolumes,
                  Pointer<GUID> EventContext)>()(
          ptr, dwCount, pfVolumes, EventContext);

  int getAllVolumes(int dwCount, Pointer<Float> pfVolumes) =>
      _vtable.GetAllVolumes.asFunction<
          int Function(VTablePointer, int dwCount,
              Pointer<Float> pfVolumes)>()(ptr, dwCount, pfVolumes);
}

/// @nodoc
base class IChannelAudioVolumeVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Uint32> pdwCount)>>
      GetChannelCount;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Uint32 dwIndex, Float fLevel,
              Pointer<GUID> EventContext)>> SetChannelVolume;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Uint32 dwIndex, Pointer<Float> pfLevel)>>
      GetChannelVolume;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Uint32 dwCount,
              Pointer<Float> pfVolumes,
              Pointer<GUID> EventContext)>> SetAllVolumes;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Uint32 dwCount, Pointer<Float> pfVolumes)>>
      GetAllVolumes;
}
