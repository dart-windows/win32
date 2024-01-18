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
const IID_IAudioClient = '{1cb9ad4c-dbfa-4c32-b178-c2f568a703b2}';

/// The IAudioClient interface enables a client to create and initialize an
/// audio stream between an audio application and the audio engine (for a
/// shared-mode stream) or the hardware buffer of an audio endpoint device (for
/// an exclusive-mode stream).
///
/// {@category com}
class IAudioClient extends IUnknown {
  IAudioClient(super.ptr) : _vtable = ptr.value.cast<IAudioClientVtbl>().ref;

  final IAudioClientVtbl _vtable;

  factory IAudioClient.from(IUnknown interface) =>
      IAudioClient(interface.toInterface(IID_IAudioClient));

  int initialize(
          int ShareMode,
          int StreamFlags,
          int hnsBufferDuration,
          int hnsPeriodicity,
          Pointer<WAVEFORMATEX> pFormat,
          Pointer<GUID> AudioSessionGuid) =>
      _vtable.Initialize.asFunction<
              int Function(
                  VTablePointer,
                  int ShareMode,
                  int StreamFlags,
                  int hnsBufferDuration,
                  int hnsPeriodicity,
                  Pointer<WAVEFORMATEX> pFormat,
                  Pointer<GUID> AudioSessionGuid)>()(
          ptr,
          ShareMode,
          StreamFlags,
          hnsBufferDuration,
          hnsPeriodicity,
          pFormat,
          AudioSessionGuid);

  int getBufferSize(Pointer<Uint32> pNumBufferFrames) =>
      _vtable.GetBufferSize.asFunction<
              int Function(VTablePointer, Pointer<Uint32> pNumBufferFrames)>()(
          ptr, pNumBufferFrames);

  int getStreamLatency(Pointer<Int64> phnsLatency) =>
      _vtable.GetStreamLatency.asFunction<
          int Function(
              VTablePointer, Pointer<Int64> phnsLatency)>()(ptr, phnsLatency);

  int getCurrentPadding(Pointer<Uint32> pNumPaddingFrames) =>
      _vtable.GetCurrentPadding.asFunction<
              int Function(VTablePointer, Pointer<Uint32> pNumPaddingFrames)>()(
          ptr, pNumPaddingFrames);

  int isFormatSupported(int ShareMode, Pointer<WAVEFORMATEX> pFormat,
          Pointer<Pointer<WAVEFORMATEX>> ppClosestMatch) =>
      _vtable.IsFormatSupported.asFunction<
              int Function(
                  VTablePointer,
                  int ShareMode,
                  Pointer<WAVEFORMATEX> pFormat,
                  Pointer<Pointer<WAVEFORMATEX>> ppClosestMatch)>()(
          ptr, ShareMode, pFormat, ppClosestMatch);

  int getMixFormat(Pointer<Pointer<WAVEFORMATEX>> ppDeviceFormat) =>
      _vtable.GetMixFormat.asFunction<
              int Function(VTablePointer,
                  Pointer<Pointer<WAVEFORMATEX>> ppDeviceFormat)>()(
          ptr, ppDeviceFormat);

  int getDevicePeriod(Pointer<Int64> phnsDefaultDevicePeriod,
          Pointer<Int64> phnsMinimumDevicePeriod) =>
      _vtable.GetDevicePeriod.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<Int64> phnsDefaultDevicePeriod,
                  Pointer<Int64> phnsMinimumDevicePeriod)>()(
          ptr, phnsDefaultDevicePeriod, phnsMinimumDevicePeriod);

  int start() => _vtable.Start.asFunction<int Function(VTablePointer)>()(ptr);

  int stop() => _vtable.Stop.asFunction<int Function(VTablePointer)>()(ptr);

  int reset() => _vtable.Reset.asFunction<int Function(VTablePointer)>()(ptr);

  int setEventHandle(int eventHandle) => _vtable.SetEventHandle.asFunction<
      int Function(VTablePointer, int eventHandle)>()(ptr, eventHandle);

  int getService(Pointer<GUID> riid, Pointer<Pointer> ppv) =>
      _vtable.GetService.asFunction<
          int Function(VTablePointer, Pointer<GUID> riid,
              Pointer<Pointer> ppv)>()(ptr, riid, ppv);
}

/// @nodoc
base class IAudioClientVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Int32 ShareMode,
              Uint32 StreamFlags,
              Int64 hnsBufferDuration,
              Int64 hnsPeriodicity,
              Pointer<WAVEFORMATEX> pFormat,
              Pointer<GUID> AudioSessionGuid)>> Initialize;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Uint32> pNumBufferFrames)>>
      GetBufferSize;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Int64> phnsLatency)>>
      GetStreamLatency;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Uint32> pNumPaddingFrames)>>
      GetCurrentPadding;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer,
                  Int32 ShareMode,
                  Pointer<WAVEFORMATEX> pFormat,
                  Pointer<Pointer<WAVEFORMATEX>> ppClosestMatch)>>
      IsFormatSupported;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer,
              Pointer<Pointer<WAVEFORMATEX>> ppDeviceFormat)>> GetMixFormat;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<Int64> phnsDefaultDevicePeriod,
              Pointer<Int64> phnsMinimumDevicePeriod)>> GetDevicePeriod;
  external Pointer<NativeFunction<Int32 Function(VTablePointer)>> Start;
  external Pointer<NativeFunction<Int32 Function(VTablePointer)>> Stop;
  external Pointer<NativeFunction<Int32 Function(VTablePointer)>> Reset;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, IntPtr eventHandle)>>
      SetEventHandle;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<GUID> riid, Pointer<Pointer> ppv)>>
      GetService;
}
