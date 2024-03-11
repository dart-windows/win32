// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../extensions/iunknown.dart';
import '../structs.g.dart';
import '../types.dart';
import 'iaudioclient.g.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IAudioClient2 = '{726778cd-f60a-4eda-82de-e47610cd78aa}';

/// Derived from the IAudioClient interface, with a set of additional methods
/// that enable a Windows Audio Session API (WASAPI) audio client to do the
/// following: opt in for offloading, query stream properties, and get
/// information from the hardware that handles offloading.
///
/// The audio client can be successful in creating an offloaded stream if the
/// underlying endpoint supports the hardware audio engine, the endpoint has
/// been enumerated and discovered by the audio system, and there are still
/// offload pin instances available on the endpoint.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/audioclient/nn-audioclient-iaudioclient2>.
///
/// {@category com}
class IAudioClient2 extends IAudioClient {
  IAudioClient2(super.ptr) : _vtable = ptr.value.cast<IAudioClient2Vtbl>().ref;

  final IAudioClient2Vtbl _vtable;

  factory IAudioClient2.from(IUnknown interface) =>
      IAudioClient2(interface.toInterface(IID_IAudioClient2));

  /// Retrieves information about whether or not the endpoint on which a stream is
  /// created is capable of supporting an offloaded audio stream.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/audioclient/nf-audioclient-iaudioclient2-isoffloadcapable>.
  int isOffloadCapable(int category, Pointer<BOOL> pbOffloadCapable) =>
      _vtable.IsOffloadCapable.asFunction<
              int Function(VTablePointer lpVtbl, int category,
                  Pointer<BOOL> pbOffloadCapable)>()(
          ptr, category, pbOffloadCapable);

  /// Sets the properties of the audio stream by populating an
  /// AudioClientProperties structure.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/audioclient/nf-audioclient-iaudioclient2-setclientproperties>.
  int setClientProperties(Pointer<AudioClientProperties> pProperties) =>
      _vtable.SetClientProperties.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<AudioClientProperties> pProperties)>()(ptr, pProperties);

  /// Returns the buffer size limits of the hardware audio engine in
  /// 100-nanosecond units.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/audioclient/nf-audioclient-iaudioclient2-getbuffersizelimits>.
  int getBufferSizeLimits(
          Pointer<WAVEFORMATEX> pFormat,
          int bEventDriven,
          Pointer<Int64> phnsMinBufferDuration,
          Pointer<Int64> phnsMaxBufferDuration) =>
      _vtable.GetBufferSizeLimits.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  Pointer<WAVEFORMATEX> pFormat,
                  int bEventDriven,
                  Pointer<Int64> phnsMinBufferDuration,
                  Pointer<Int64> phnsMaxBufferDuration)>()(ptr, pFormat,
          bEventDriven, phnsMinBufferDuration, phnsMaxBufferDuration);
}

/// @nodoc
base class IAudioClient2Vtbl extends Struct {
  external IAudioClientVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 category,
              Pointer<BOOL> pbOffloadCapable)>> IsOffloadCapable;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl,
              Pointer<AudioClientProperties> pProperties)>> SetClientProperties;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Pointer<WAVEFORMATEX> pFormat,
              BOOL bEventDriven,
              Pointer<Int64> phnsMinBufferDuration,
              Pointer<Int64> phnsMaxBufferDuration)>> GetBufferSizeLimits;
}
