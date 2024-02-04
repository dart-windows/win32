// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../extensions/iunknown.dart';
import '../guid.dart';
import '../types.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_ISimpleAudioVolume = '{87ce5498-68d6-44e5-9215-6da47ef883d8}';

/// The ISimpleAudioVolume interface enables a client to control the master
/// volume level of an audio session. The `IAudioClient::Initialize` method
/// initializes a stream object and assigns the stream to an audio session. The
/// client obtains a reference to the [ISimpleAudioVolume] interface on a stream
/// object by calling the `IAudioClient::GetService` method with parameter
/// `riid` set to REFIID [IID_ISimpleAudioVolume].
///
/// {@category com}
class ISimpleAudioVolume extends IUnknown {
  ISimpleAudioVolume(super.ptr)
      : _vtable = ptr.value.cast<ISimpleAudioVolumeVtbl>().ref;

  final ISimpleAudioVolumeVtbl _vtable;

  factory ISimpleAudioVolume.from(IUnknown interface) =>
      ISimpleAudioVolume(interface.toInterface(IID_ISimpleAudioVolume));

  int setMasterVolume(double fLevel, Pointer<GUID> eventContext) =>
      _vtable.SetMasterVolume.asFunction<
          int Function(VTablePointer lpVtbl, double fLevel,
              Pointer<GUID> eventContext)>()(ptr, fLevel, eventContext);

  int getMasterVolume(
          Pointer<Float> pfLevel) =>
      _vtable.GetMasterVolume.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Float> pfLevel)>()(ptr, pfLevel);

  int setMute(int bMute, Pointer<GUID> eventContext) =>
      _vtable.SetMute.asFunction<
          int Function(VTablePointer lpVtbl, int bMute,
              Pointer<GUID> eventContext)>()(ptr, bMute, eventContext);

  int getMute(Pointer<Int32> pbMute) => _vtable.GetMute.asFunction<
      int Function(VTablePointer lpVtbl, Pointer<Int32> pbMute)>()(ptr, pbMute);
}

/// @nodoc
base class ISimpleAudioVolumeVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer lpVtbl, Float fLevel,
              Pointer<GUID> eventContext)>> SetMasterVolume;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer lpVtbl, Pointer<Float> pfLevel)>>
      GetMasterVolume;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer lpVtbl, Int32 bMute,
              Pointer<GUID> eventContext)>> SetMute;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer lpVtbl, Pointer<Int32> pbMute)>> GetMute;
}
