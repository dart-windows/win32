// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../exceptions.dart';
import '../extensions/iunknown.dart';
import '../structs.g.dart';
import '../types.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IAudioRenderClient = '{f294acfc-3146-4483-a7bf-addca7c260e2}';

/// Enables a client to write output data to a rendering endpoint buffer.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/audioclient/nn-audioclient-iaudiorenderclient>.
///
/// {@category com}
class IAudioRenderClient extends IUnknown {
  IAudioRenderClient(super.ptr)
      : _vtable = ptr.value.cast<IAudioRenderClientVtbl>().ref;

  final IAudioRenderClientVtbl _vtable;

  /// Creates a new instance of `IAudioRenderClient` from an existing
  /// [interface].
  ///
  /// This constructor invokes the [queryInterface] method to obtain a reference
  /// to the `IAudioRenderClient` interface with the provided interface.
  ///
  /// Throws a [WindowsException] if the `queryInterface` call fails.
  factory IAudioRenderClient.from(IUnknown interface) =>
      IAudioRenderClient(interface.toInterface(IID_IAudioRenderClient));

  /// Retrieves a pointer to the next available space in the rendering endpoint
  /// buffer into which the caller can write a data packet.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/audioclient/nf-audioclient-iaudiorenderclient-getbuffer>.
  int getBuffer(int numFramesRequested, Pointer<Pointer<Uint8>> ppData) =>
      _vtable.GetBuffer.asFunction<
              int Function(VTablePointer lpVtbl, int numFramesRequested,
                  Pointer<Pointer<Uint8>> ppData)>()(
          ptr, numFramesRequested, ppData);

  /// Releases the buffer space acquired in the previous call to the
  /// `IAudioRenderClient.getBuffer` method.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/audioclient/nf-audioclient-iaudiorenderclient-releasebuffer>.
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
