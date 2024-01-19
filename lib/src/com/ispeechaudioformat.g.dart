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
import '../types.dart';
import '../utils.dart';
import 'idispatch.g.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_ISpeechAudioFormat = '{e6e9c590-3e18-40e3-8299-061f98bde7c7}';

/// {@category com}
class ISpeechAudioFormat extends IDispatch {
  ISpeechAudioFormat(super.ptr)
      : _vtable = ptr.value.cast<ISpeechAudioFormatVtbl>().ref;

  final ISpeechAudioFormatVtbl _vtable;

  factory ISpeechAudioFormat.from(IUnknown interface) =>
      ISpeechAudioFormat(interface.toInterface(IID_ISpeechAudioFormat));

  int get type {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_Type.asFunction<
          int Function(
              VTablePointer, Pointer<Int32> AudioFormat)>()(ptr, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set type(int value) {
    final hr = _vtable.put_Type
        .asFunction<int Function(VTablePointer, int AudioFormat)>()(ptr, value);
    if (FAILED(hr)) throw WindowsException(hr);
  }

  Pointer<Utf16> get guid {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = _vtable.get_Guid.asFunction<
          int Function(
              VTablePointer, Pointer<Pointer<Utf16>> Guid)>()(ptr, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set guid(Pointer<Utf16> value) {
    final hr = _vtable.put_Guid
            .asFunction<int Function(VTablePointer, Pointer<Utf16> Guid)>()(
        ptr, value);
    if (FAILED(hr)) throw WindowsException(hr);
  }

  int getWaveFormatEx(Pointer<VTablePointer> SpeechWaveFormatEx) =>
      _vtable.GetWaveFormatEx.asFunction<
              int Function(
                  VTablePointer, Pointer<VTablePointer> SpeechWaveFormatEx)>()(
          ptr, SpeechWaveFormatEx);

  int setWaveFormatEx(VTablePointer? SpeechWaveFormatEx) =>
      _vtable.SetWaveFormatEx.asFunction<
              int Function(VTablePointer, VTablePointer SpeechWaveFormatEx)>()(
          ptr, SpeechWaveFormatEx ?? nullptr);
}

/// @nodoc
base class ISpeechAudioFormatVtbl extends Struct {
  external IDispatchVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<Int32> AudioFormat)>> get_Type;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Int32 AudioFormat)>>
      put_Type;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Pointer<Utf16>> Guid)>>
      get_Guid;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Utf16> Guid)>>
      put_Guid;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<VTablePointer> SpeechWaveFormatEx)>>
      GetWaveFormatEx;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, VTablePointer SpeechWaveFormatEx)>>
      SetWaveFormatEx;
}