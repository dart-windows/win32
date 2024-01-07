// iaudiocaptureclient.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../extensions/iunknown.dart';
import '../types.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IAudioCaptureClient = '{c8adbd64-e71e-48a0-a4de-185c395cd317}';

/// The IAudioCaptureClient interface enables a client to read input data
/// from a capture endpoint buffer. The client obtains a reference to the
/// `IAudioCaptureClient` interface on a stream object by calling the
/// `IAudioClient::GetService` method with parameter `riid` set to REFIID
/// [IID_IAudioCaptureClient].
///
/// {@category com}
class IAudioCaptureClient extends IUnknown {
  IAudioCaptureClient(super.ptr)
      : _vtable = ptr.value.cast<IAudioCaptureClientVtbl>().ref;

  final IAudioCaptureClientVtbl _vtable;

  factory IAudioCaptureClient.from(IUnknown interface) =>
      IAudioCaptureClient(interface.toInterface(IID_IAudioCaptureClient));

  int getBuffer(
          Pointer<Pointer<Uint8>> ppData,
          Pointer<Uint32> pNumFramesToRead,
          Pointer<Uint32> pdwFlags,
          Pointer<Uint64> pu64DevicePosition,
          Pointer<Uint64> pu64QPCPosition) =>
      _vtable.GetBuffer.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<Pointer<Uint8>> ppData,
                  Pointer<Uint32> pNumFramesToRead,
                  Pointer<Uint32> pdwFlags,
                  Pointer<Uint64> pu64DevicePosition,
                  Pointer<Uint64> pu64QPCPosition)>()(ptr, ppData,
          pNumFramesToRead, pdwFlags, pu64DevicePosition, pu64QPCPosition);

  int releaseBuffer(int NumFramesRead) => _vtable.ReleaseBuffer.asFunction<
      int Function(VTablePointer, int NumFramesRead)>()(ptr, NumFramesRead);

  int getNextPacketSize(Pointer<Uint32> pNumFramesInNextPacket) =>
      _vtable.GetNextPacketSize.asFunction<
              int Function(
                  VTablePointer, Pointer<Uint32> pNumFramesInNextPacket)>()(
          ptr, pNumFramesInNextPacket);
}

/// @nodoc
base class IAudioCaptureClientVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<Pointer<Uint8>> ppData,
              Pointer<Uint32> pNumFramesToRead,
              Pointer<Uint32> pdwFlags,
              Pointer<Uint64> pu64DevicePosition,
              Pointer<Uint64> pu64QPCPosition)>> GetBuffer;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Uint32 NumFramesRead)>>
      ReleaseBuffer;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Uint32> pNumFramesInNextPacket)>>
      GetNextPacketSize;
}
