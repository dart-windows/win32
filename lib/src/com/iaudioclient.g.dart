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

/// Enables a client to create and initialize an audio stream between an audio
/// application and the audio engine (for a shared-mode stream) or the hardware
/// buffer of an audio endpoint device (for an exclusive-mode stream).
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/audioclient/nn-audioclient-iaudioclient>.
///
/// {@category com}
class IAudioClient extends IUnknown {
  IAudioClient(super.ptr) : _vtable = ptr.value.cast<IAudioClientVtbl>().ref;

  final IAudioClientVtbl _vtable;

  factory IAudioClient.from(IUnknown interface) =>
      IAudioClient(interface.toInterface(IID_IAudioClient));

  int initialize(
          int shareMode,
          int streamFlags,
          int hnsBufferDuration,
          int hnsPeriodicity,
          Pointer<WAVEFORMATEX> pFormat,
          Pointer<GUID>? audioSessionGuid) =>
      _vtable.Initialize.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  int shareMode,
                  int streamFlags,
                  int hnsBufferDuration,
                  int hnsPeriodicity,
                  Pointer<WAVEFORMATEX> pFormat,
                  Pointer<GUID> audioSessionGuid)>()(
          ptr,
          shareMode,
          streamFlags,
          hnsBufferDuration,
          hnsPeriodicity,
          pFormat,
          audioSessionGuid ?? nullptr);

  int getBufferSize(Pointer<Uint32> pNumBufferFrames) =>
      _vtable.GetBufferSize.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Uint32> pNumBufferFrames)>()(ptr, pNumBufferFrames);

  int getStreamLatency(Pointer<Int64> phnsLatency) =>
      _vtable.GetStreamLatency.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<Int64> phnsLatency)>()(
          ptr, phnsLatency);

  int getCurrentPadding(Pointer<Uint32> pNumPaddingFrames) =>
      _vtable.GetCurrentPadding.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Uint32> pNumPaddingFrames)>()(ptr, pNumPaddingFrames);

  int isFormatSupported(int shareMode, Pointer<WAVEFORMATEX> pFormat,
          Pointer<Pointer<WAVEFORMATEX>>? ppClosestMatch) =>
      _vtable.IsFormatSupported.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  int shareMode,
                  Pointer<WAVEFORMATEX> pFormat,
                  Pointer<Pointer<WAVEFORMATEX>> ppClosestMatch)>()(
          ptr, shareMode, pFormat, ppClosestMatch ?? nullptr);

  int getMixFormat(Pointer<Pointer<WAVEFORMATEX>> ppDeviceFormat) =>
      _vtable.GetMixFormat.asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<Pointer<WAVEFORMATEX>> ppDeviceFormat)>()(
          ptr, ppDeviceFormat);

  int getDevicePeriod(Pointer<Int64>? phnsDefaultDevicePeriod,
          Pointer<Int64>? phnsMinimumDevicePeriod) =>
      _vtable.GetDevicePeriod.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  Pointer<Int64> phnsDefaultDevicePeriod,
                  Pointer<Int64> phnsMinimumDevicePeriod)>()(
          ptr,
          phnsDefaultDevicePeriod ?? nullptr,
          phnsMinimumDevicePeriod ?? nullptr);

  int start() =>
      _vtable.Start.asFunction<int Function(VTablePointer lpVtbl)>()(ptr);

  int stop() =>
      _vtable.Stop.asFunction<int Function(VTablePointer lpVtbl)>()(ptr);

  int reset() =>
      _vtable.Reset.asFunction<int Function(VTablePointer lpVtbl)>()(ptr);

  int setEventHandle(int eventHandle) => _vtable.SetEventHandle.asFunction<
      int Function(VTablePointer lpVtbl, int eventHandle)>()(ptr, eventHandle);

  int getService(Pointer<GUID> riid, Pointer<Pointer> ppv) =>
      _vtable.GetService.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<GUID> riid,
              Pointer<Pointer> ppv)>()(ptr, riid, ppv);
}

/// @nodoc
base class IAudioClientVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Int32 shareMode,
              Uint32 streamFlags,
              Int64 hnsBufferDuration,
              Int64 hnsPeriodicity,
              Pointer<WAVEFORMATEX> pFormat,
              Pointer<GUID> audioSessionGuid)>> Initialize;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Uint32> pNumBufferFrames)>>
      GetBufferSize;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Int64> phnsLatency)>>
      GetStreamLatency;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Uint32> pNumPaddingFrames)>>
      GetCurrentPadding;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl,
                  Int32 shareMode,
                  Pointer<WAVEFORMATEX> pFormat,
                  Pointer<Pointer<WAVEFORMATEX>> ppClosestMatch)>>
      IsFormatSupported;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl,
              Pointer<Pointer<WAVEFORMATEX>> ppDeviceFormat)>> GetMixFormat;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Pointer<Int64> phnsDefaultDevicePeriod,
              Pointer<Int64> phnsMinimumDevicePeriod)>> GetDevicePeriod;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      Start;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>> Stop;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      Reset;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, HANDLE eventHandle)>>
      SetEventHandle;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<GUID> riid,
              Pointer<Pointer> ppv)>> GetService;
}
