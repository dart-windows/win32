// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../exceptions.dart';
import '../extensions/iunknown.dart';
import '../guid.dart';
import '../structs.g.dart';
import '../types.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IAudioSessionManager = '{bfa971f1-4d5e-40bb-935e-967039bfbee4}';

/// Enables a client to access the session controls and volume controls for both
/// cross-process and process-specific audio sessions.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/audiopolicy/nn-audiopolicy-iaudiosessionmanager>.
///
/// {@category com}
class IAudioSessionManager extends IUnknown {
  IAudioSessionManager(super.ptr)
      : _vtable = ptr.value.cast<IAudioSessionManagerVtbl>().ref;

  final IAudioSessionManagerVtbl _vtable;

  /// Creates a new instance of `IAudioSessionManager` from an existing
  /// [interface].
  ///
  /// This constructor invokes the [queryInterface] method to obtain a reference
  /// to the `IAudioSessionManager` interface with the provided interface.
  ///
  /// Throws a [WindowsException] if the `queryInterface` call fails.
  factory IAudioSessionManager.from(IUnknown interface) =>
      IAudioSessionManager(interface.toInterface(IID_IAudioSessionManager));

  /// Retrieves an audio session control.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/audiopolicy/nf-audiopolicy-iaudiosessionmanager-getaudiosessioncontrol>.
  int getAudioSessionControl(Pointer<GUID>? audioSessionGuid, int streamFlags,
          Pointer<VTablePointer> sessionControl) =>
      _vtable.GetAudioSessionControl.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<GUID> audioSessionGuid,
                  int streamFlags, Pointer<VTablePointer> sessionControl)>()(
          ptr, audioSessionGuid ?? nullptr, streamFlags, sessionControl);

  /// Retrieves a simple audio volume control.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/audiopolicy/nf-audiopolicy-iaudiosessionmanager-getsimpleaudiovolume>.
  int getSimpleAudioVolume(Pointer<GUID>? audioSessionGuid, int streamFlags,
          Pointer<VTablePointer> audioVolume) =>
      _vtable.GetSimpleAudioVolume.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<GUID> audioSessionGuid,
                  int streamFlags, Pointer<VTablePointer> audioVolume)>()(
          ptr, audioSessionGuid ?? nullptr, streamFlags, audioVolume);
}

/// @nodoc
base class IAudioSessionManagerVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Pointer<GUID> audioSessionGuid,
              Uint32 streamFlags,
              Pointer<VTablePointer> sessionControl)>> GetAudioSessionControl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Pointer<GUID> audioSessionGuid,
              Uint32 streamFlags,
              Pointer<VTablePointer> audioVolume)>> GetSimpleAudioVolume;
}
