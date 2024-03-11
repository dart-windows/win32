// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../exceptions.dart';
import '../extensions/iunknown.dart';
import '../guid.dart';
import '../structs.g.dart';
import '../types.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IAudioSessionControl = '{f4b1a599-7266-4319-a8ca-e70acb11e8cd}';

/// Enables a client to configure the control parameters for an audio session
/// and to monitor events in the session.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/audiopolicy/nn-audiopolicy-iaudiosessioncontrol>.
///
/// {@category com}
class IAudioSessionControl extends IUnknown {
  IAudioSessionControl(super.ptr)
      : _vtable = ptr.value.cast<IAudioSessionControlVtbl>().ref;

  final IAudioSessionControlVtbl _vtable;

  /// Creates a new instance of `IAudioSessionControl` from an existing
  /// [interface].
  ///
  /// This constructor invokes the [queryInterface] method to obtain a reference
  /// to the `IAudioSessionControl` interface with the provided interface.
  ///
  /// Throws a [WindowsException] if the `queryInterface` call fails.
  factory IAudioSessionControl.from(IUnknown interface) =>
      IAudioSessionControl(interface.toInterface(IID_IAudioSessionControl));

  /// Retrieves the current state of the audio session.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/audiopolicy/nf-audiopolicy-iaudiosessioncontrol-getstate>.
  int getState(Pointer<Int32> pRetVal) => _vtable.GetState.asFunction<
      int Function(
          VTablePointer lpVtbl, Pointer<Int32> pRetVal)>()(ptr, pRetVal);

  /// Retrieves the display name for the audio session.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/audiopolicy/nf-audiopolicy-iaudiosessioncontrol-getdisplayname>.
  int getDisplayName(Pointer<Pointer<Utf16>> pRetVal) =>
      _vtable.GetDisplayName.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<Utf16>> pRetVal)>()(ptr, pRetVal);

  /// Assigns a display name to the current session.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/audiopolicy/nf-audiopolicy-iaudiosessioncontrol-setdisplayname>.
  int setDisplayName(Pointer<Utf16> value, Pointer<GUID> eventContext) =>
      _vtable.SetDisplayName.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<Utf16> value,
              Pointer<GUID> eventContext)>()(ptr, value, eventContext);

  /// Retrieves the path for the display icon for the audio session.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/audiopolicy/nf-audiopolicy-iaudiosessioncontrol-geticonpath>.
  int getIconPath(Pointer<Pointer<Utf16>> pRetVal) =>
      _vtable.GetIconPath.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<Utf16>> pRetVal)>()(ptr, pRetVal);

  /// Assigns a display icon to the current session.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/audiopolicy/nf-audiopolicy-iaudiosessioncontrol-seticonpath>.
  int setIconPath(Pointer<Utf16> value, Pointer<GUID> eventContext) =>
      _vtable.SetIconPath.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<Utf16> value,
              Pointer<GUID> eventContext)>()(ptr, value, eventContext);

  /// Retrieves the grouping parameter of the audio session.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/audiopolicy/nf-audiopolicy-iaudiosessioncontrol-getgroupingparam>.
  int getGroupingParam(Pointer<GUID> pRetVal) =>
      _vtable.GetGroupingParam.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<GUID> pRetVal)>()(ptr, pRetVal);

  /// Assigns a session to a grouping of sessions.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/audiopolicy/nf-audiopolicy-iaudiosessioncontrol-setgroupingparam>.
  int setGroupingParam(Pointer<GUID> override, Pointer<GUID> eventContext) =>
      _vtable.SetGroupingParam.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<GUID> override,
              Pointer<GUID> eventContext)>()(ptr, override, eventContext);

  /// Registers the client to receive notifications of session events, including
  /// changes in the stream state.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/audiopolicy/nf-audiopolicy-iaudiosessioncontrol-registeraudiosessionnotification>.
  int registerAudioSessionNotification(VTablePointer newNotifications) =>
      _vtable.RegisterAudioSessionNotification.asFunction<
          int Function(VTablePointer lpVtbl,
              VTablePointer newNotifications)>()(ptr, newNotifications);

  /// Deletes a previous registration by the client to receive notifications.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/audiopolicy/nf-audiopolicy-iaudiosessioncontrol-unregisteraudiosessionnotification>.
  int unregisterAudioSessionNotification(VTablePointer newNotifications) =>
      _vtable.UnregisterAudioSessionNotification.asFunction<
          int Function(VTablePointer lpVtbl,
              VTablePointer newNotifications)>()(ptr, newNotifications);
}

/// @nodoc
base class IAudioSessionControlVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> pRetVal)>>
      GetState;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Pointer<Utf16>> pRetVal)>>
      GetDisplayName;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<Utf16> value,
              Pointer<GUID> eventContext)>> SetDisplayName;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Pointer<Utf16>> pRetVal)>>
      GetIconPath;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<Utf16> value,
              Pointer<GUID> eventContext)>> SetIconPath;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<GUID> pRetVal)>>
      GetGroupingParam;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<GUID> override,
              Pointer<GUID> eventContext)>> SetGroupingParam;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, VTablePointer newNotifications)>>
      RegisterAudioSessionNotification;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, VTablePointer newNotifications)>>
      UnregisterAudioSessionNotification;
}
