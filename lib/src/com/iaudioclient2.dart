// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../extensions/iunknown.dart';
import '../structs.g.dart';
import '../types.dart';
import 'iaudioclient.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IAudioClient2 = '{726778cd-f60a-4eda-82de-e47610cd78aa}';

/// The IAudioClient2 interface is derived from the IAudioClient interface,
/// with a set of additional methods that enable a Windows Audio Session API
/// (WASAPI) audio client to do the following: opt in for offloading, query
/// stream properties, and get information from the hardware that handles
/// offloading.
///
/// {@category com}
class IAudioClient2 extends IAudioClient {
  IAudioClient2(super.ptr) : _vtable = ptr.value.cast<IAudioClient2Vtbl>().ref;

  final IAudioClient2Vtbl _vtable;

  factory IAudioClient2.from(IUnknown interface) =>
      IAudioClient2(interface.toInterface(IID_IAudioClient2));

  int isOffloadCapable(int Category, Pointer<Int32> pbOffloadCapable) =>
      _vtable.IsOffloadCapable.asFunction<
              int Function(VTablePointer, int Category,
                  Pointer<Int32> pbOffloadCapable)>()(
          ptr, Category, pbOffloadCapable);

  int setClientProperties(Pointer<AudioClientProperties> pProperties) =>
      _vtable.SetClientProperties.asFunction<
          int Function(VTablePointer,
              Pointer<AudioClientProperties> pProperties)>()(ptr, pProperties);

  int getBufferSizeLimits(
          Pointer<WAVEFORMATEX> pFormat,
          int bEventDriven,
          Pointer<Int64> phnsMinBufferDuration,
          Pointer<Int64> phnsMaxBufferDuration) =>
      _vtable.GetBufferSizeLimits.asFunction<
              int Function(
                  VTablePointer,
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
          Int32 Function(VTablePointer, Int32 Category,
              Pointer<Int32> pbOffloadCapable)>> IsOffloadCapable;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<AudioClientProperties> pProperties)>>
      SetClientProperties;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<WAVEFORMATEX> pFormat,
              Int32 bEventDriven,
              Pointer<Int64> phnsMinBufferDuration,
              Pointer<Int64> phnsMaxBufferDuration)>> GetBufferSizeLimits;
}
