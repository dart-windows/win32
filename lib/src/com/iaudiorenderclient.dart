// iaudiorenderclient.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'iunknown.dart';

/// @nodoc
const IID_IAudioRenderClient = '{f294acfc-3146-4483-a7bf-addca7c260e2}';

/// The IAudioRenderClient interface enables a client to write output data
/// to a rendering endpoint buffer. The client obtains a reference to the
/// `IAudioRenderClient` interface of a stream object by calling the
/// `IAudioClient::GetService` method with parameter `riid` set to REFIID
/// [IID_IAudioRenderClient].
///
/// {@category com}
class IAudioRenderClient extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IAudioRenderClient(super.ptr)
      : _vtable = ptr.ref.vtable.cast<IAudioRenderClientVtbl>().ref;

  final IAudioRenderClientVtbl _vtable;

  factory IAudioRenderClient.from(IUnknown interface) =>
      IAudioRenderClient(interface.toInterface(IID_IAudioRenderClient));

  int getBuffer(int NumFramesRequested, Pointer<Pointer<Uint8>> ppData) =>
      _vtable.GetBuffer.asFunction<
              int Function(Pointer, int NumFramesRequested,
                  Pointer<Pointer<Uint8>> ppData)>()(
          ptr.ref.lpVtbl, NumFramesRequested, ppData);

  int releaseBuffer(int NumFramesWritten, int dwFlags) =>
      _vtable.ReleaseBuffer.asFunction<
              int Function(Pointer, int NumFramesWritten, int dwFlags)>()(
          ptr.ref.lpVtbl, NumFramesWritten, dwFlags);
}

/// @nodoc
base class IAudioRenderClientVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Uint32 NumFramesRequested,
              Pointer<Pointer<Uint8>> ppData)>> GetBuffer;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Uint32 NumFramesWritten, Uint32 dwFlags)>>
      ReleaseBuffer;
}
