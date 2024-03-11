// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../exceptions.dart';
import '../extensions/iunknown.dart';
import '../macros.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import 'idispatch.g.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_ISpeechWaveFormatEx = '{7a1ef0d5-1581-4741-88e4-209a49f11a10}';

/// {@category com}
class ISpeechWaveFormatEx extends IDispatch {
  ISpeechWaveFormatEx(super.ptr)
      : _vtable = ptr.value.cast<ISpeechWaveFormatExVtbl>().ref;

  final ISpeechWaveFormatExVtbl _vtable;

  /// Creates a new instance of `ISpeechWaveFormatEx` from an existing
  /// [interface].
  ///
  /// This constructor invokes the [queryInterface] method to obtain a reference
  /// to the `ISpeechWaveFormatEx` interface with the provided interface.
  ///
  /// Throws a [WindowsException] if the `queryInterface` call fails.
  factory ISpeechWaveFormatEx.from(IUnknown interface) =>
      ISpeechWaveFormatEx(interface.toInterface(IID_ISpeechWaveFormatEx));

  int get formatTag {
    final formatTag = calloc<Int16>();
    try {
      final hr = _vtable.get_FormatTag.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<Int16> formatTag)>()(
          ptr, formatTag);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = formatTag.value;
      return retValue;
    } finally {
      free(formatTag);
    }
  }

  set formatTag(int formatTag) {
    final hr = _vtable.put_FormatTag
            .asFunction<int Function(VTablePointer lpVtbl, int formatTag)>()(
        ptr, formatTag);
    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get channels {
    final channels = calloc<Int16>();
    try {
      final hr = _vtable.get_Channels.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int16> channels)>()(ptr, channels);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = channels.value;
      return retValue;
    } finally {
      free(channels);
    }
  }

  set channels(int channels) {
    final hr = _vtable.put_Channels
            .asFunction<int Function(VTablePointer lpVtbl, int channels)>()(
        ptr, channels);
    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get samplesPerSec {
    final samplesPerSec = calloc<Int32>();
    try {
      final hr = _vtable.get_SamplesPerSec.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Int32> samplesPerSec)>()(ptr, samplesPerSec);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = samplesPerSec.value;
      return retValue;
    } finally {
      free(samplesPerSec);
    }
  }

  set samplesPerSec(int samplesPerSec) {
    final hr = _vtable.put_SamplesPerSec.asFunction<
        int Function(
            VTablePointer lpVtbl, int samplesPerSec)>()(ptr, samplesPerSec);
    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get avgBytesPerSec {
    final avgBytesPerSec = calloc<Int32>();
    try {
      final hr = _vtable.get_AvgBytesPerSec.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Int32> avgBytesPerSec)>()(ptr, avgBytesPerSec);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = avgBytesPerSec.value;
      return retValue;
    } finally {
      free(avgBytesPerSec);
    }
  }

  set avgBytesPerSec(int avgBytesPerSec) {
    final hr = _vtable.put_AvgBytesPerSec.asFunction<
        int Function(
            VTablePointer lpVtbl, int avgBytesPerSec)>()(ptr, avgBytesPerSec);
    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get blockAlign {
    final blockAlign = calloc<Int16>();
    try {
      final hr = _vtable.get_BlockAlign.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<Int16> blockAlign)>()(
          ptr, blockAlign);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = blockAlign.value;
      return retValue;
    } finally {
      free(blockAlign);
    }
  }

  set blockAlign(int blockAlign) {
    final hr = _vtable.put_BlockAlign
            .asFunction<int Function(VTablePointer lpVtbl, int blockAlign)>()(
        ptr, blockAlign);
    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get bitsPerSample {
    final bitsPerSample = calloc<Int16>();
    try {
      final hr = _vtable.get_BitsPerSample.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Int16> bitsPerSample)>()(ptr, bitsPerSample);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = bitsPerSample.value;
      return retValue;
    } finally {
      free(bitsPerSample);
    }
  }

  set bitsPerSample(int bitsPerSample) {
    final hr = _vtable.put_BitsPerSample.asFunction<
        int Function(
            VTablePointer lpVtbl, int bitsPerSample)>()(ptr, bitsPerSample);
    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get_ExtraData(Pointer<VARIANT> extraData) => _vtable.get_ExtraData
          .asFunction<
              int Function(VTablePointer lpVtbl, Pointer<VARIANT> extraData)>()(
      ptr, extraData);

  int put_ExtraData(VARIANT extraData) => _vtable.put_ExtraData
          .asFunction<int Function(VTablePointer lpVtbl, VARIANT extraData)>()(
      ptr, extraData);
}

/// @nodoc
base class ISpeechWaveFormatExVtbl extends Struct {
  external IDispatchVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int16> formatTag)>>
      get_FormatTag;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Int16 formatTag)>>
      put_FormatTag;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int16> channels)>>
      get_Channels;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int16 channels)>> put_Channels;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Int32> samplesPerSec)>>
      get_SamplesPerSec;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Int32 samplesPerSec)>>
      put_SamplesPerSec;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Int32> avgBytesPerSec)>>
      get_AvgBytesPerSec;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Int32 avgBytesPerSec)>>
      put_AvgBytesPerSec;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Int16> blockAlign)>> get_BlockAlign;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Int16 blockAlign)>>
      put_BlockAlign;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Int16> bitsPerSample)>>
      get_BitsPerSample;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Int16 bitsPerSample)>>
      put_BitsPerSample;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<VARIANT> extraData)>> get_ExtraData;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, VARIANT extraData)>>
      put_ExtraData;
}
