// ispeechwaveformatex.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../exceptions.dart';
import '../macros.dart';
import '../utils.dart';
import '../variant.dart';
import 'idispatch.dart';
import 'iunknown.dart';

/// @nodoc
const IID_ISpeechWaveFormatEx = '{7a1ef0d5-1581-4741-88e4-209a49f11a10}';

/// {@category com}
class ISpeechWaveFormatEx extends IDispatch {
  // vtable begins at 7, is 14 entries long.
  ISpeechWaveFormatEx(super.ptr)
      : _vtable = ptr.ref.vtable.cast<ISpeechWaveFormatExVtbl>().ref;

  final ISpeechWaveFormatExVtbl _vtable;

  factory ISpeechWaveFormatEx.from(IUnknown interface) =>
      ISpeechWaveFormatEx(interface.toInterface(IID_ISpeechWaveFormatEx));

  int get formatTag {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = _vtable.get_FormatTag
              .asFunction<int Function(Pointer, Pointer<Int16> FormatTag)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set formatTag(int value) {
    final hr = _vtable.put_FormatTag
            .asFunction<int Function(Pointer, int FormatTag)>()(
        ptr.ref.lpVtbl, value);
    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get channels {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = _vtable.get_Channels
              .asFunction<int Function(Pointer, Pointer<Int16> Channels)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set channels(int value) {
    final hr =
        _vtable.put_Channels.asFunction<int Function(Pointer, int Channels)>()(
            ptr.ref.lpVtbl, value);
    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get samplesPerSec {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_SamplesPerSec.asFunction<
              int Function(Pointer, Pointer<Int32> SamplesPerSec)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set samplesPerSec(int value) {
    final hr = _vtable.put_SamplesPerSec
            .asFunction<int Function(Pointer, int SamplesPerSec)>()(
        ptr.ref.lpVtbl, value);
    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get avgBytesPerSec {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_AvgBytesPerSec.asFunction<
              int Function(Pointer, Pointer<Int32> AvgBytesPerSec)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set avgBytesPerSec(int value) {
    final hr = _vtable.put_AvgBytesPerSec
            .asFunction<int Function(Pointer, int AvgBytesPerSec)>()(
        ptr.ref.lpVtbl, value);
    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get blockAlign {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = _vtable.get_BlockAlign
              .asFunction<int Function(Pointer, Pointer<Int16> BlockAlign)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set blockAlign(int value) {
    final hr = _vtable.put_BlockAlign
            .asFunction<int Function(Pointer, int BlockAlign)>()(
        ptr.ref.lpVtbl, value);
    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get bitsPerSample {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = _vtable.get_BitsPerSample.asFunction<
              int Function(Pointer, Pointer<Int16> BitsPerSample)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set bitsPerSample(int value) {
    final hr = _vtable.put_BitsPerSample
            .asFunction<int Function(Pointer, int BitsPerSample)>()(
        ptr.ref.lpVtbl, value);
    if (FAILED(hr)) throw WindowsException(hr);
  }

  VARIANT get extraData {
    final retValuePtr = calloc<VARIANT>();

    try {
      final hr = _vtable.get_ExtraData
              .asFunction<int Function(Pointer, Pointer<VARIANT> ExtraData)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.ref;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set extraData(VARIANT value) {
    final hr = _vtable.put_ExtraData
            .asFunction<int Function(Pointer, VARIANT ExtraData)>()(
        ptr.ref.lpVtbl, value);
    if (FAILED(hr)) throw WindowsException(hr);
  }
}

/// @nodoc
base class ISpeechWaveFormatExVtbl extends Struct {
  external IDispatchVtbl baseVtbl;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int16> FormatTag)>>
      get_FormatTag;
  external Pointer<NativeFunction<Int32 Function(Pointer, Int16 FormatTag)>>
      put_FormatTag;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int16> Channels)>>
      get_Channels;
  external Pointer<NativeFunction<Int32 Function(Pointer, Int16 Channels)>>
      put_Channels;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> SamplesPerSec)>>
      get_SamplesPerSec;
  external Pointer<NativeFunction<Int32 Function(Pointer, Int32 SamplesPerSec)>>
      put_SamplesPerSec;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Int32> AvgBytesPerSec)>>
      get_AvgBytesPerSec;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Int32 AvgBytesPerSec)>>
      put_AvgBytesPerSec;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int16> BlockAlign)>>
      get_BlockAlign;
  external Pointer<NativeFunction<Int32 Function(Pointer, Int16 BlockAlign)>>
      put_BlockAlign;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int16> BitsPerSample)>>
      get_BitsPerSample;
  external Pointer<NativeFunction<Int32 Function(Pointer, Int16 BitsPerSample)>>
      put_BitsPerSample;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<VARIANT> ExtraData)>>
      get_ExtraData;
  external Pointer<NativeFunction<Int32 Function(Pointer, VARIANT ExtraData)>>
      put_ExtraData;
}
