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
import 'iaudioclient2.g.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IAudioClient3 = '{7ed4ee07-8e67-4cd4-8c1a-2b7a5987ad42}';

/// Derived from the IAudioClient2 interface, with a set of additional methods
/// that enable a Windows Audio Session API (WASAPI) audio client to query for
/// the audio engine's supported periodicities and current periodicity as well
/// as request initialization of a shared audio stream with a specified
/// periodicity.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/audioclient/nn-audioclient-iaudioclient3>.
///
/// {@category com}
class IAudioClient3 extends IAudioClient2 {
  IAudioClient3(super.ptr) : _vtable = ptr.value.cast<IAudioClient3Vtbl>().ref;

  final IAudioClient3Vtbl _vtable;

  factory IAudioClient3.from(IUnknown interface) =>
      IAudioClient3(interface.toInterface(IID_IAudioClient3));

  /// Returns the range of periodicities supported by the engine for the specified
  /// stream format.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/audioclient/nf-audioclient-iaudioclient3-getsharedmodeengineperiod>.
  int getSharedModeEnginePeriod(
          Pointer<WAVEFORMATEX> pFormat,
          Pointer<Uint32> pDefaultPeriodInFrames,
          Pointer<Uint32> pFundamentalPeriodInFrames,
          Pointer<Uint32> pMinPeriodInFrames,
          Pointer<Uint32> pMaxPeriodInFrames) =>
      _vtable.GetSharedModeEnginePeriod.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  Pointer<WAVEFORMATEX> pFormat,
                  Pointer<Uint32> pDefaultPeriodInFrames,
                  Pointer<Uint32> pFundamentalPeriodInFrames,
                  Pointer<Uint32> pMinPeriodInFrames,
                  Pointer<Uint32> pMaxPeriodInFrames)>()(
          ptr,
          pFormat,
          pDefaultPeriodInFrames,
          pFundamentalPeriodInFrames,
          pMinPeriodInFrames,
          pMaxPeriodInFrames);

  /// Returns the current format and periodicity of the audio engine.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/audioclient/nf-audioclient-iaudioclient3-getcurrentsharedmodeengineperiod>.
  int getCurrentSharedModeEnginePeriod(Pointer<Pointer<WAVEFORMATEX>> ppFormat,
          Pointer<Uint32> pCurrentPeriodInFrames) =>
      _vtable.GetCurrentSharedModeEnginePeriod.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  Pointer<Pointer<WAVEFORMATEX>> ppFormat,
                  Pointer<Uint32> pCurrentPeriodInFrames)>()(
          ptr, ppFormat, pCurrentPeriodInFrames);

  /// Initializes a shared stream with the specified periodicity.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/audioclient/nf-audioclient-iaudioclient3-initializesharedaudiostream>.
  int initializeSharedAudioStream(int streamFlags, int periodInFrames,
          Pointer<WAVEFORMATEX> pFormat, Pointer<GUID>? audioSessionGuid) =>
      _vtable.InitializeSharedAudioStream.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  int streamFlags,
                  int periodInFrames,
                  Pointer<WAVEFORMATEX> pFormat,
                  Pointer<GUID> audioSessionGuid)>()(ptr, streamFlags,
          periodInFrames, pFormat, audioSessionGuid ?? nullptr);
}

/// @nodoc
base class IAudioClient3Vtbl extends Struct {
  external IAudioClient2Vtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Pointer<WAVEFORMATEX> pFormat,
              Pointer<Uint32> pDefaultPeriodInFrames,
              Pointer<Uint32> pFundamentalPeriodInFrames,
              Pointer<Uint32> pMinPeriodInFrames,
              Pointer<Uint32> pMaxPeriodInFrames)>> GetSharedModeEnginePeriod;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl,
                  Pointer<Pointer<WAVEFORMATEX>> ppFormat,
                  Pointer<Uint32> pCurrentPeriodInFrames)>>
      GetCurrentSharedModeEnginePeriod;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 streamFlags,
              Uint32 periodInFrames,
              Pointer<WAVEFORMATEX> pFormat,
              Pointer<GUID> audioSessionGuid)>> InitializeSharedAudioStream;
}
