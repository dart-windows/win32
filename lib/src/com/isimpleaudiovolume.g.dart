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
const IID_ISimpleAudioVolume = '{87ce5498-68d6-44e5-9215-6da47ef883d8}';

/// Enables a client to control the master volume level of an audio session.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/audioclient/nn-audioclient-isimpleaudiovolume>.
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

  int getMute(Pointer<BOOL> pbMute) => _vtable.GetMute.asFunction<
      int Function(VTablePointer lpVtbl, Pointer<BOOL> pbMute)>()(ptr, pbMute);
}

/// @nodoc
base class ISimpleAudioVolumeVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Float fLevel,
              Pointer<GUID> eventContext)>> SetMasterVolume;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Float> pfLevel)>>
      GetMasterVolume;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, BOOL bMute,
              Pointer<GUID> eventContext)>> SetMute;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<BOOL> pbMute)>>
      GetMute;
}
