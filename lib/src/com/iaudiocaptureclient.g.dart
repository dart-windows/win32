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
const IID_IAudioCaptureClient = '{c8adbd64-e71e-48a0-a4de-185c395cd317}';

/// Enables a client to read input data from a capture endpoint buffer.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/audioclient/nn-audioclient-iaudiocaptureclient>.
///
/// {@category com}
class IAudioCaptureClient extends IUnknown {
  IAudioCaptureClient(super.ptr)
      : _vtable = ptr.value.cast<IAudioCaptureClientVtbl>().ref;

  final IAudioCaptureClientVtbl _vtable;

  /// Creates a new instance of `IAudioCaptureClient` from an existing
  /// [interface].
  ///
  /// This constructor invokes the [queryInterface] method to obtain a reference
  /// to the `IAudioCaptureClient` interface with the provided interface.
  ///
  /// Throws a [WindowsException] if the `queryInterface` call fails.
  factory IAudioCaptureClient.from(IUnknown interface) =>
      IAudioCaptureClient(interface.toInterface(IID_IAudioCaptureClient));

  /// Retrieves a pointer to the next available packet of data in the capture
  /// endpoint buffer.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/audioclient/nf-audioclient-iaudiocaptureclient-getbuffer>.
  int getBuffer(
          Pointer<Pointer<Uint8>> ppData,
          Pointer<Uint32> pNumFramesToRead,
          Pointer<Uint32> pdwFlags,
          Pointer<Uint64>? pu64DevicePosition,
          Pointer<Uint64>? pu64QPCPosition) =>
      _vtable.GetBuffer.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  Pointer<Pointer<Uint8>> ppData,
                  Pointer<Uint32> pNumFramesToRead,
                  Pointer<Uint32> pdwFlags,
                  Pointer<Uint64> pu64DevicePosition,
                  Pointer<Uint64> pu64QPCPosition)>()(
          ptr,
          ppData,
          pNumFramesToRead,
          pdwFlags,
          pu64DevicePosition ?? nullptr,
          pu64QPCPosition ?? nullptr);

  /// Releases the buffer.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/audioclient/nf-audioclient-iaudiocaptureclient-releasebuffer>.
  int releaseBuffer(int numFramesRead) => _vtable.ReleaseBuffer.asFunction<
      int Function(
          VTablePointer lpVtbl, int numFramesRead)>()(ptr, numFramesRead);

  /// Retrieves the number of frames in the next data packet in the capture
  /// endpoint buffer.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/audioclient/nf-audioclient-iaudiocaptureclient-getnextpacketsize>.
  int getNextPacketSize(Pointer<Uint32> pNumFramesInNextPacket) =>
      _vtable.GetNextPacketSize.asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<Uint32> pNumFramesInNextPacket)>()(
          ptr, pNumFramesInNextPacket);
}

/// @nodoc
base class IAudioCaptureClientVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Pointer<Pointer<Uint8>> ppData,
              Pointer<Uint32> pNumFramesToRead,
              Pointer<Uint32> pdwFlags,
              Pointer<Uint64> pu64DevicePosition,
              Pointer<Uint64> pu64QPCPosition)>> GetBuffer;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Uint32 numFramesRead)>>
      ReleaseBuffer;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl,
              Pointer<Uint32> pNumFramesInNextPacket)>> GetNextPacketSize;
}
