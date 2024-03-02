// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../extensions/iunknown.dart';
import '../structs.g.dart';
import '../types.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IAudioRenderClient = '{f294acfc-3146-4483-a7bf-addca7c260e2}';

/// The IAudioRenderClient interface enables a client to write output data to a
/// rendering endpoint buffer.
///
/// The client obtains a reference to the `IAudioRenderClient` interface of a
/// stream object by calling the `IAudioClient::GetService` method with
/// parameter `riid` set to REFIID [IID_IAudioRenderClient].
///
/// {@category com}
class IAudioRenderClient extends IUnknown {
  IAudioRenderClient(super.ptr)
      : _vtable = ptr.value.cast<IAudioRenderClientVtbl>().ref;

  final IAudioRenderClientVtbl _vtable;

  factory IAudioRenderClient.from(IUnknown interface) =>
      IAudioRenderClient(interface.toInterface(IID_IAudioRenderClient));

  int getBuffer(int numFramesRequested, Pointer<Pointer<Uint8>> ppData) =>
      _vtable.GetBuffer.asFunction<
              int Function(VTablePointer lpVtbl, int numFramesRequested,
                  Pointer<Pointer<Uint8>> ppData)>()(
          ptr, numFramesRequested, ppData);

  int releaseBuffer(int numFramesWritten, int dwFlags) =>
      _vtable.ReleaseBuffer.asFunction<
          int Function(VTablePointer lpVtbl, int numFramesWritten,
              int dwFlags)>()(ptr, numFramesWritten, dwFlags);
}

/// @nodoc
base class IAudioRenderClientVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 numFramesRequested,
              Pointer<Pointer<Uint8>> ppData)>> GetBuffer;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 numFramesWritten,
              Uint32 dwFlags)>> ReleaseBuffer;
}
