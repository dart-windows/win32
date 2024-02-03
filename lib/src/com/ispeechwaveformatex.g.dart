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

  factory ISpeechWaveFormatEx.from(IUnknown interface) =>
      ISpeechWaveFormatEx(interface.toInterface(IID_ISpeechWaveFormatEx));

  int get formatTag {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = _vtable.get_FormatTag.asFunction<
          int Function(
              VTablePointer, Pointer<Int16> formatTag)>()(ptr, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set formatTag(int value) {
    final hr = _vtable.put_FormatTag
        .asFunction<int Function(VTablePointer, int formatTag)>()(ptr, value);
    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get channels {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = _vtable.get_Channels.asFunction<
          int Function(
              VTablePointer, Pointer<Int16> channels)>()(ptr, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set channels(int value) {
    final hr = _vtable.put_Channels
        .asFunction<int Function(VTablePointer, int channels)>()(ptr, value);
    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get samplesPerSec {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_SamplesPerSec.asFunction<
          int Function(
              VTablePointer, Pointer<Int32> samplesPerSec)>()(ptr, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set samplesPerSec(int value) {
    final hr = _vtable.put_SamplesPerSec
            .asFunction<int Function(VTablePointer, int samplesPerSec)>()(
        ptr, value);
    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get avgBytesPerSec {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_AvgBytesPerSec.asFunction<
              int Function(VTablePointer, Pointer<Int32> avgBytesPerSec)>()(
          ptr, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set avgBytesPerSec(int value) {
    final hr = _vtable.put_AvgBytesPerSec
            .asFunction<int Function(VTablePointer, int avgBytesPerSec)>()(
        ptr, value);
    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get blockAlign {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = _vtable.get_BlockAlign.asFunction<
          int Function(
              VTablePointer, Pointer<Int16> blockAlign)>()(ptr, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set blockAlign(int value) {
    final hr = _vtable.put_BlockAlign
        .asFunction<int Function(VTablePointer, int blockAlign)>()(ptr, value);
    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get bitsPerSample {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = _vtable.get_BitsPerSample.asFunction<
          int Function(
              VTablePointer, Pointer<Int16> bitsPerSample)>()(ptr, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set bitsPerSample(int value) {
    final hr = _vtable.put_BitsPerSample
            .asFunction<int Function(VTablePointer, int bitsPerSample)>()(
        ptr, value);
    if (FAILED(hr)) throw WindowsException(hr);
  }

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
