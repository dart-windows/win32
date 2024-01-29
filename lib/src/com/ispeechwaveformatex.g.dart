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

  int get_FormatTag(Pointer<Int16> FormatTag) => _vtable.get_FormatTag
          .asFunction<int Function(VTablePointer, Pointer<Int16> FormatTag)>()(
      ptr, FormatTag);

  int put_FormatTag(int FormatTag) => _vtable.put_FormatTag
      .asFunction<int Function(VTablePointer, int FormatTag)>()(ptr, FormatTag);

  int get_Channels(Pointer<Int16> Channels) => _vtable.get_Channels
          .asFunction<int Function(VTablePointer, Pointer<Int16> Channels)>()(
      ptr, Channels);

  int put_Channels(int Channels) => _vtable.put_Channels
      .asFunction<int Function(VTablePointer, int Channels)>()(ptr, Channels);

  int get_SamplesPerSec(Pointer<Int32> SamplesPerSec) =>
      _vtable.get_SamplesPerSec.asFunction<
              int Function(VTablePointer, Pointer<Int32> SamplesPerSec)>()(
          ptr, SamplesPerSec);

  int put_SamplesPerSec(int SamplesPerSec) => _vtable.put_SamplesPerSec
          .asFunction<int Function(VTablePointer, int SamplesPerSec)>()(
      ptr, SamplesPerSec);

  int get_AvgBytesPerSec(Pointer<Int32> AvgBytesPerSec) =>
      _vtable.get_AvgBytesPerSec.asFunction<
              int Function(VTablePointer, Pointer<Int32> AvgBytesPerSec)>()(
          ptr, AvgBytesPerSec);

  int put_AvgBytesPerSec(int AvgBytesPerSec) => _vtable.put_AvgBytesPerSec
          .asFunction<int Function(VTablePointer, int AvgBytesPerSec)>()(
      ptr, AvgBytesPerSec);

  int get_BlockAlign(Pointer<Int16> BlockAlign) => _vtable.get_BlockAlign
          .asFunction<int Function(VTablePointer, Pointer<Int16> BlockAlign)>()(
      ptr, BlockAlign);

  int put_BlockAlign(int BlockAlign) => _vtable.put_BlockAlign
          .asFunction<int Function(VTablePointer, int BlockAlign)>()(
      ptr, BlockAlign);

  int get_BitsPerSample(Pointer<Int16> BitsPerSample) =>
      _vtable.get_BitsPerSample.asFunction<
              int Function(VTablePointer, Pointer<Int16> BitsPerSample)>()(
          ptr, BitsPerSample);

  int put_BitsPerSample(int BitsPerSample) => _vtable.put_BitsPerSample
          .asFunction<int Function(VTablePointer, int BitsPerSample)>()(
      ptr, BitsPerSample);

  int get_ExtraData(Pointer<VARIANT> ExtraData) => _vtable.get_ExtraData
      .asFunction<
          int Function(
              VTablePointer, Pointer<VARIANT> ExtraData)>()(ptr, ExtraData);

  int put_ExtraData(VARIANT ExtraData) => _vtable.put_ExtraData
          .asFunction<int Function(VTablePointer, VARIANT ExtraData)>()(
      ptr, ExtraData);
}

/// @nodoc
base class ISpeechWaveFormatExVtbl extends Struct {
  external IDispatchVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Int16> FormatTag)>>
      get_FormatTag;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Int16 FormatTag)>>
      put_FormatTag;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<Int16> Channels)>> get_Channels;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Int16 Channels)>>
      put_Channels;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Int32> SamplesPerSec)>>
      get_SamplesPerSec;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Int32 SamplesPerSec)>>
      put_SamplesPerSec;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Int32> AvgBytesPerSec)>>
      get_AvgBytesPerSec;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Int32 AvgBytesPerSec)>>
      put_AvgBytesPerSec;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Int16> BlockAlign)>>
      get_BlockAlign;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Int16 BlockAlign)>>
      put_BlockAlign;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Int16> BitsPerSample)>>
      get_BitsPerSample;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Int16 BitsPerSample)>>
      put_BitsPerSample;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VARIANT> ExtraData)>>
      get_ExtraData;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, VARIANT ExtraData)>>
      put_ExtraData;
}
