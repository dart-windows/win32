// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../extensions/iunknown.dart';
import '../guid.dart';
import '../structs.g.dart';
import '../types.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IChannelAudioVolume = '{1c158861-b533-4b30-b1cf-e853e51c59b8}';

/// Enables a client to control and monitor the volume levels for all of the
/// channels in the audio session that the stream belongs to.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/audioclient/nn-audioclient-ichannelaudiovolume>.
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
              VTablePointer lpVtbl, Pointer<Uint32> pdwCount)>()(ptr, pdwCount);

  int setChannelVolume(
          int dwIndex, double fLevel, Pointer<GUID> eventContext) =>
      _vtable.SetChannelVolume.asFunction<
              int Function(VTablePointer lpVtbl, int dwIndex, double fLevel,
                  Pointer<GUID> eventContext)>()(
          ptr, dwIndex, fLevel, eventContext);

  int getChannelVolume(int dwIndex, Pointer<Float> pfLevel) =>
      _vtable.GetChannelVolume.asFunction<
          int Function(VTablePointer lpVtbl, int dwIndex,
              Pointer<Float> pfLevel)>()(ptr, dwIndex, pfLevel);

  int setAllVolumes(
          int dwCount, Pointer<Float> pfVolumes, Pointer<GUID> eventContext) =>
      _vtable.SetAllVolumes.asFunction<
              int Function(VTablePointer lpVtbl, int dwCount,
                  Pointer<Float> pfVolumes, Pointer<GUID> eventContext)>()(
          ptr, dwCount, pfVolumes, eventContext);

  int getAllVolumes(int dwCount, Pointer<Float> pfVolumes) =>
      _vtable.GetAllVolumes.asFunction<
          int Function(VTablePointer lpVtbl, int dwCount,
              Pointer<Float> pfVolumes)>()(ptr, dwCount, pfVolumes);
}

/// @nodoc
base class IChannelAudioVolumeVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> pdwCount)>>
      GetChannelCount;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 dwIndex, Float fLevel,
              Pointer<GUID> eventContext)>> SetChannelVolume;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 dwIndex,
              Pointer<Float> pfLevel)>> GetChannelVolume;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 dwCount,
              Pointer<Float> pfVolumes,
              Pointer<GUID> eventContext)>> SetAllVolumes;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 dwCount,
              Pointer<Float> pfVolumes)>> GetAllVolumes;
}
