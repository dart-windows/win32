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
const IID_IAudioStreamVolume = '{93014887-242d-4068-8a15-cf5e93b90fe3}';

/// Enables a client to control and monitor the volume levels for all of the
/// channels in an audio stream.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/audioclient/nn-audioclient-iaudiostreamvolume>.
///
/// {@category com}
class IAudioStreamVolume extends IUnknown {
  IAudioStreamVolume(super.ptr)
      : _vtable = ptr.value.cast<IAudioStreamVolumeVtbl>().ref;

  final IAudioStreamVolumeVtbl _vtable;

  factory IAudioStreamVolume.from(IUnknown interface) =>
      IAudioStreamVolume(interface.toInterface(IID_IAudioStreamVolume));

  /// Retrieves the number of channels in the audio stream.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/audioclient/nf-audioclient-iaudiostreamvolume-getchannelcount>.
  int getChannelCount(Pointer<Uint32> pdwCount) =>
      _vtable.GetChannelCount.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint32> pdwCount)>()(ptr, pdwCount);

  /// Sets the volume level for the specified channel in the audio stream.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/audioclient/nf-audioclient-iaudiostreamvolume-setchannelvolume>.
  int setChannelVolume(int dwIndex, double fLevel) =>
      _vtable.SetChannelVolume.asFunction<
              int Function(VTablePointer lpVtbl, int dwIndex, double fLevel)>()(
          ptr, dwIndex, fLevel);

  /// Retrieves the volume level for the specified channel in the audio stream.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/audioclient/nf-audioclient-iaudiostreamvolume-getchannelvolume>.
  int getChannelVolume(int dwIndex, Pointer<Float> pfLevel) =>
      _vtable.GetChannelVolume.asFunction<
          int Function(VTablePointer lpVtbl, int dwIndex,
              Pointer<Float> pfLevel)>()(ptr, dwIndex, pfLevel);

  /// Sets the individual volume levels for all the channels in the audio stream.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/audioclient/nf-audioclient-iaudiostreamvolume-setallvolumes>.
  int setAllVolumes(int dwCount, Pointer<Float> pfVolumes) =>
      _vtable.SetAllVolumes.asFunction<
          int Function(VTablePointer lpVtbl, int dwCount,
              Pointer<Float> pfVolumes)>()(ptr, dwCount, pfVolumes);

  /// Retrieves the volume levels for all the channels in the audio stream.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/audioclient/nf-audioclient-iaudiostreamvolume-getallvolumes>.
  int getAllVolumes(int dwCount, Pointer<Float> pfVolumes) =>
      _vtable.GetAllVolumes.asFunction<
          int Function(VTablePointer lpVtbl, int dwCount,
              Pointer<Float> pfVolumes)>()(ptr, dwCount, pfVolumes);
}

/// @nodoc
base class IAudioStreamVolumeVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> pdwCount)>>
      GetChannelCount;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Uint32 dwIndex, Float fLevel)>>
      SetChannelVolume;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 dwIndex,
              Pointer<Float> pfLevel)>> GetChannelVolume;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 dwCount,
              Pointer<Float> pfVolumes)>> SetAllVolumes;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 dwCount,
              Pointer<Float> pfVolumes)>> GetAllVolumes;
}
