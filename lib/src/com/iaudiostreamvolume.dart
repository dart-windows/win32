// iaudiostreamvolume.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'iunknown.dart';

/// @nodoc
const IID_IAudioStreamVolume = '{93014887-242d-4068-8a15-cf5e93b90fe3}';

/// The IAudioStreamVolume interface enables a client to control and monitor
/// the volume levels for all of the channels in an audio stream. The client
/// obtains a reference to the [IAudioStreamVolume] interface on a stream
/// object by calling the `IAudioClient::GetService` method with parameter
/// riid set to REFIID [IID_IAudioStreamVolume].
///
/// {@category com}
class IAudioStreamVolume extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IAudioStreamVolume(super.ptr)
      : _vtable = ptr.ref.vtable.cast<IAudioStreamVolumeVtbl>().ref;

  final IAudioStreamVolumeVtbl _vtable;

  factory IAudioStreamVolume.from(IUnknown interface) =>
      IAudioStreamVolume(interface.toInterface(IID_IAudioStreamVolume));

  int getChannelCount(Pointer<Uint32> pdwCount) =>
      _vtable.GetChannelCount.asFunction<
          int Function(
              Pointer, Pointer<Uint32> pdwCount)>()(ptr.ref.lpVtbl, pdwCount);

  int setChannelVolume(int dwIndex, double fLevel) => _vtable.SetChannelVolume
          .asFunction<int Function(Pointer, int dwIndex, double fLevel)>()(
      ptr.ref.lpVtbl, dwIndex, fLevel);

  int getChannelVolume(int dwIndex, Pointer<Float> pfLevel) =>
      _vtable.GetChannelVolume.asFunction<
              int Function(Pointer, int dwIndex, Pointer<Float> pfLevel)>()(
          ptr.ref.lpVtbl, dwIndex, pfLevel);

  int setAllVolumes(int dwCount, Pointer<Float> pfVolumes) =>
      _vtable.SetAllVolumes.asFunction<
              int Function(Pointer, int dwCount, Pointer<Float> pfVolumes)>()(
          ptr.ref.lpVtbl, dwCount, pfVolumes);

  int getAllVolumes(int dwCount, Pointer<Float> pfVolumes) =>
      _vtable.GetAllVolumes.asFunction<
              int Function(Pointer, int dwCount, Pointer<Float> pfVolumes)>()(
          ptr.ref.lpVtbl, dwCount, pfVolumes);
}

/// @nodoc
base class IAudioStreamVolumeVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Uint32> pdwCount)>>
      GetChannelCount;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Uint32 dwIndex, Float fLevel)>>
      SetChannelVolume;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Uint32 dwIndex, Pointer<Float> pfLevel)>>
      GetChannelVolume;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer, Uint32 dwCount, Pointer<Float> pfVolumes)>>
      SetAllVolumes;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer, Uint32 dwCount, Pointer<Float> pfVolumes)>>
      GetAllVolumes;
}
