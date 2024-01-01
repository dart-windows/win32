// iaudioclient.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../guid.dart';
import '../structs.g.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IAudioClient = '{1cb9ad4c-dbfa-4c32-b178-c2f568a703b2}';

/// The IAudioClient interface enables a client to create and initialize an
/// audio stream between an audio application and the audio engine (for a
/// shared-mode stream) or the hardware buffer of an audio endpoint device
/// (for an exclusive-mode stream).
///
/// {@category com}
class IAudioClient extends IUnknown {
  // vtable begins at 3, is 12 entries long.
  IAudioClient(super.ptr)
      : _vtable = ptr.ref.vtable.cast<IAudioClientVtbl>().ref;

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
                  Pointer,
                  int ShareMode,
                  int StreamFlags,
                  int hnsBufferDuration,
                  int hnsPeriodicity,
                  Pointer<WAVEFORMATEX> pFormat,
                  Pointer<GUID> AudioSessionGuid)>()(
          ptr.ref.lpVtbl,
          ShareMode,
          StreamFlags,
          hnsBufferDuration,
          hnsPeriodicity,
          pFormat,
          AudioSessionGuid);

  int getBufferSize(Pointer<Uint32> pNumBufferFrames) =>
      _vtable.GetBufferSize.asFunction<
              int Function(Pointer, Pointer<Uint32> pNumBufferFrames)>()(
          ptr.ref.lpVtbl, pNumBufferFrames);

  int getStreamLatency(Pointer<Int64> phnsLatency) => _vtable.GetStreamLatency
          .asFunction<int Function(Pointer, Pointer<Int64> phnsLatency)>()(
      ptr.ref.lpVtbl, phnsLatency);

  int getCurrentPadding(Pointer<Uint32> pNumPaddingFrames) =>
      _vtable.GetCurrentPadding.asFunction<
              int Function(Pointer, Pointer<Uint32> pNumPaddingFrames)>()(
          ptr.ref.lpVtbl, pNumPaddingFrames);

  int isFormatSupported(int ShareMode, Pointer<WAVEFORMATEX> pFormat,
          Pointer<Pointer<WAVEFORMATEX>> ppClosestMatch) =>
      _vtable.IsFormatSupported.asFunction<
              int Function(
                  Pointer,
                  int ShareMode,
                  Pointer<WAVEFORMATEX> pFormat,
                  Pointer<Pointer<WAVEFORMATEX>> ppClosestMatch)>()(
          ptr.ref.lpVtbl, ShareMode, pFormat, ppClosestMatch);

  int getMixFormat(Pointer<Pointer<WAVEFORMATEX>> ppDeviceFormat) =>
      _vtable.GetMixFormat.asFunction<
              int Function(
                  Pointer, Pointer<Pointer<WAVEFORMATEX>> ppDeviceFormat)>()(
          ptr.ref.lpVtbl, ppDeviceFormat);

  int getDevicePeriod(Pointer<Int64> phnsDefaultDevicePeriod,
          Pointer<Int64> phnsMinimumDevicePeriod) =>
      _vtable.GetDevicePeriod.asFunction<
              int Function(Pointer, Pointer<Int64> phnsDefaultDevicePeriod,
                  Pointer<Int64> phnsMinimumDevicePeriod)>()(
          ptr.ref.lpVtbl, phnsDefaultDevicePeriod, phnsMinimumDevicePeriod);

  int start() =>
      _vtable.Start.asFunction<int Function(Pointer)>()(ptr.ref.lpVtbl);

  int stop() =>
      _vtable.Stop.asFunction<int Function(Pointer)>()(ptr.ref.lpVtbl);

  int reset() =>
      _vtable.Reset.asFunction<int Function(Pointer)>()(ptr.ref.lpVtbl);

  int setEventHandle(int eventHandle) => _vtable.SetEventHandle.asFunction<
      int Function(Pointer, int eventHandle)>()(ptr.ref.lpVtbl, eventHandle);

  int getService(Pointer<GUID> riid, Pointer<Pointer> ppv) =>
      _vtable.GetService.asFunction<
          int Function(Pointer, Pointer<GUID> riid,
              Pointer<Pointer> ppv)>()(ptr.ref.lpVtbl, riid, ppv);
}

/// @nodoc
base class IAudioClientVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              Int32 ShareMode,
              Uint32 StreamFlags,
              Int64 hnsBufferDuration,
              Int64 hnsPeriodicity,
              Pointer<WAVEFORMATEX> pFormat,
              Pointer<GUID> AudioSessionGuid)>> Initialize;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Uint32> pNumBufferFrames)>>
      GetBufferSize;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int64> phnsLatency)>>
      GetStreamLatency;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Uint32> pNumPaddingFrames)>>
      GetCurrentPadding;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer,
                  Int32 ShareMode,
                  Pointer<WAVEFORMATEX> pFormat,
                  Pointer<Pointer<WAVEFORMATEX>> ppClosestMatch)>>
      IsFormatSupported;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer, Pointer<Pointer<WAVEFORMATEX>> ppDeviceFormat)>>
      GetMixFormat;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<Int64> phnsDefaultDevicePeriod,
              Pointer<Int64> phnsMinimumDevicePeriod)>> GetDevicePeriod;
  external Pointer<NativeFunction<Int32 Function(Pointer)>> Start;
  external Pointer<NativeFunction<Int32 Function(Pointer)>> Stop;
  external Pointer<NativeFunction<Int32 Function(Pointer)>> Reset;
  external Pointer<NativeFunction<Int32 Function(Pointer, IntPtr eventHandle)>>
      SetEventHandle;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer, Pointer<GUID> riid, Pointer<Pointer> ppv)>> GetService;
}
