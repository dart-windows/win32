// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../extensions/iunknown.dart';
import '../types.dart';
import '../variant.dart';
import 'idispatch.g.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_ISpeechWaveFormatEx = '{7a1ef0d5-1581-4741-88e4-209a49f11a10}';

/// {@category com}
class ISpeechWaveFormatEx extends IDispatch {
  ISpeechWaveFormatEx(super.ptr)
      : _vtable = ptr.value.cast<ISpeechWaveFormatExVtbl>().ref;

  final ISpeechWaveFormatExVtbl _vtable;

  factory ISpeechWaveFormatEx.from(IUnknown interface) =>
      ISpeechWaveFormatEx(interface.toInterface(IID_ISpeechWaveFormatEx));

  int get_FormatTag(Pointer<Int16> formatTag) => _vtable.get_FormatTag
          .asFunction<int Function(VTablePointer, Pointer<Int16> formatTag)>()(
      ptr, formatTag);

  int put_FormatTag(int formatTag) => _vtable.put_FormatTag
      .asFunction<int Function(VTablePointer, int formatTag)>()(ptr, formatTag);

  int get_Channels(Pointer<Int16> channels) => _vtable.get_Channels
          .asFunction<int Function(VTablePointer, Pointer<Int16> channels)>()(
      ptr, channels);

  int put_Channels(int channels) => _vtable.put_Channels
      .asFunction<int Function(VTablePointer, int channels)>()(ptr, channels);

  int get_SamplesPerSec(Pointer<Int32> samplesPerSec) =>
      _vtable.get_SamplesPerSec.asFunction<
              int Function(VTablePointer, Pointer<Int32> samplesPerSec)>()(
          ptr, samplesPerSec);

  int put_SamplesPerSec(int samplesPerSec) => _vtable.put_SamplesPerSec
          .asFunction<int Function(VTablePointer, int samplesPerSec)>()(
      ptr, samplesPerSec);

  int get_AvgBytesPerSec(Pointer<Int32> avgBytesPerSec) =>
      _vtable.get_AvgBytesPerSec.asFunction<
              int Function(VTablePointer, Pointer<Int32> avgBytesPerSec)>()(
          ptr, avgBytesPerSec);

  int put_AvgBytesPerSec(int avgBytesPerSec) => _vtable.put_AvgBytesPerSec
          .asFunction<int Function(VTablePointer, int avgBytesPerSec)>()(
      ptr, avgBytesPerSec);

  int get_BlockAlign(Pointer<Int16> blockAlign) => _vtable.get_BlockAlign
          .asFunction<int Function(VTablePointer, Pointer<Int16> blockAlign)>()(
      ptr, blockAlign);

  int put_BlockAlign(int blockAlign) => _vtable.put_BlockAlign
          .asFunction<int Function(VTablePointer, int blockAlign)>()(
      ptr, blockAlign);

  int get_BitsPerSample(Pointer<Int16> bitsPerSample) =>
      _vtable.get_BitsPerSample.asFunction<
              int Function(VTablePointer, Pointer<Int16> bitsPerSample)>()(
          ptr, bitsPerSample);

  int put_BitsPerSample(int bitsPerSample) => _vtable.put_BitsPerSample
          .asFunction<int Function(VTablePointer, int bitsPerSample)>()(
      ptr, bitsPerSample);

  int get_ExtraData(Pointer<VARIANT> extraData) => _vtable.get_ExtraData
      .asFunction<
          int Function(
              VTablePointer, Pointer<VARIANT> extraData)>()(ptr, extraData);

  int put_ExtraData(VARIANT extraData) => _vtable.put_ExtraData
          .asFunction<int Function(VTablePointer, VARIANT extraData)>()(
      ptr, extraData);
}

/// @nodoc
base class ISpeechWaveFormatExVtbl extends Struct {
  external IDispatchVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Int16> formatTag)>>
      get_FormatTag;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Int16 formatTag)>>
      put_FormatTag;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<Int16> channels)>> get_Channels;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Int16 channels)>>
      put_Channels;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Int32> samplesPerSec)>>
      get_SamplesPerSec;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Int32 samplesPerSec)>>
      put_SamplesPerSec;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Int32> avgBytesPerSec)>>
      get_AvgBytesPerSec;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Int32 avgBytesPerSec)>>
      put_AvgBytesPerSec;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Int16> blockAlign)>>
      get_BlockAlign;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Int16 blockAlign)>>
      put_BlockAlign;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Int16> bitsPerSample)>>
      get_BitsPerSample;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Int16 bitsPerSample)>>
      put_BitsPerSample;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VARIANT> extraData)>>
      get_ExtraData;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, VARIANT extraData)>>
      put_ExtraData;
}
