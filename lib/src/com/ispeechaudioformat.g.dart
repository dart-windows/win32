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
const IID_ISpeechAudioFormat = '{e6e9c590-3e18-40e3-8299-061f98bde7c7}';

/// {@category com}
class ISpeechAudioFormat extends IDispatch {
  ISpeechAudioFormat(super.ptr)
      : _vtable = ptr.value.cast<ISpeechAudioFormatVtbl>().ref;

  final ISpeechAudioFormatVtbl _vtable;

  factory ISpeechAudioFormat.from(IUnknown interface) =>
      ISpeechAudioFormat(interface.toInterface(IID_ISpeechAudioFormat));

  int get type {
    final audioFormat = calloc<Int32>();
    try {
      final hr = _vtable.get_Type.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<Int32> audioFormat)>()(
          ptr, audioFormat);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = audioFormat.value;
      return retValue;
    } finally {
      free(audioFormat);
    }
  }

  set type(int audioFormat) {
    final hr = _vtable.put_Type
            .asFunction<int Function(VTablePointer lpVtbl, int audioFormat)>()(
        ptr, audioFormat);
    if (FAILED(hr)) throw WindowsException(hr);
  }

  Pointer<Utf16> get guid {
    final guid = calloc<Pointer<Utf16>>();
    try {
      final hr = _vtable.get_Guid.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Pointer<Utf16>> guid)>()(ptr, guid);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = guid.value;
      return retValue;
    } finally {
      free(guid);
    }
  }

  set guid(Pointer<Utf16> guid) {
    final hr = _vtable.put_Guid.asFunction<
        int Function(VTablePointer lpVtbl, Pointer<Utf16> guid)>()(ptr, guid);
    if (FAILED(hr)) throw WindowsException(hr);
  }

  int getWaveFormatEx(Pointer<VTablePointer> speechWaveFormatEx) =>
      _vtable.GetWaveFormatEx.asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<VTablePointer> speechWaveFormatEx)>()(
          ptr, speechWaveFormatEx);

  int setWaveFormatEx(VTablePointer? speechWaveFormatEx) =>
      _vtable.SetWaveFormatEx.asFunction<
              int Function(
                  VTablePointer lpVtbl, VTablePointer speechWaveFormatEx)>()(
          ptr, speechWaveFormatEx ?? nullptr);
}

/// @nodoc
base class ISpeechAudioFormatVtbl extends Struct {
  external IDispatchVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Int32> audioFormat)>> get_Type;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 audioFormat)>> put_Type;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Pointer<Utf16>> guid)>> get_Guid;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Utf16> guid)>>
      put_Guid;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> speechWaveFormatEx)>> GetWaveFormatEx;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, VTablePointer speechWaveFormatEx)>>
      SetWaveFormatEx;
}
