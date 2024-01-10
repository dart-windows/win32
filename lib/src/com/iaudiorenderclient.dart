// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../extensions/iunknown.dart';
import '../types.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IAudioRenderClient = '{f294acfc-3146-4483-a7bf-addca7c260e2}';

/// The IAudioRenderClient interface enables a client to write output data to a
/// rendering endpoint buffer. The client obtains a reference to the
/// `IAudioRenderClient` interface of a stream object by calling the
/// `IAudioClient::GetService` method with parameter `riid` set to REFIID
/// [IID_IAudioRenderClient].
///
/// {@category com}
class IAudioRenderClient extends IUnknown {
  IAudioRenderClient(super.ptr)
      : _vtable = ptr.value.cast<IAudioRenderClientVtbl>().ref;

  final IAudioRenderClientVtbl _vtable;

  factory IAudioRenderClient.from(IUnknown interface) =>
      IAudioRenderClient(interface.toInterface(IID_IAudioRenderClient));

  int getBuffer(int NumFramesRequested, Pointer<Pointer<Uint8>> ppData) =>
      _vtable.GetBuffer.asFunction<
              int Function(VTablePointer, int NumFramesRequested,
                  Pointer<Pointer<Uint8>> ppData)>()(
          ptr, NumFramesRequested, ppData);

  int releaseBuffer(int NumFramesWritten, int dwFlags) =>
      _vtable.ReleaseBuffer.asFunction<
              int Function(VTablePointer, int NumFramesWritten, int dwFlags)>()(
          ptr, NumFramesWritten, dwFlags);
}

/// @nodoc
base class IAudioRenderClientVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Uint32 NumFramesRequested,
              Pointer<Pointer<Uint8>> ppData)>> GetBuffer;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Uint32 NumFramesWritten, Uint32 dwFlags)>>
      ReleaseBuffer;
}
