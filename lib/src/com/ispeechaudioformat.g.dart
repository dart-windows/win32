// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../extensions/iunknown.dart';
import '../types.dart';
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

  int get_Type(Pointer<Int32> AudioFormat) => _vtable.get_Type.asFunction<
      int Function(
          VTablePointer, Pointer<Int32> AudioFormat)>()(ptr, AudioFormat);

  int put_Type(int AudioFormat) => _vtable.put_Type
          .asFunction<int Function(VTablePointer, int AudioFormat)>()(
      ptr, AudioFormat);

  int get_Guid(Pointer<Pointer<Utf16>> Guid) => _vtable.get_Guid.asFunction<
      int Function(VTablePointer, Pointer<Pointer<Utf16>> Guid)>()(ptr, Guid);

  int put_Guid(Pointer<Utf16> Guid) => _vtable.put_Guid
          .asFunction<int Function(VTablePointer, Pointer<Utf16> Guid)>()(
      ptr, Guid);

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
