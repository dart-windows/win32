// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../extensions/iunknown.dart';
import '../guid.dart';
import '../structs.g.dart';
import '../types.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IAudioSessionControl = '{f4b1a599-7266-4319-a8ca-e70acb11e8cd}';

/// The IAudioSessionControl interface enables a client to configure the control
/// parameters for an audio session and to monitor events in the session. The
/// `IAudioClient::Initialize` method initializes a stream object and assigns
/// the stream to an audio session. The client obtains a reference to the
/// IAudioSessionControl interface on a stream object by calling the
/// `IAudioClient::GetService` method with parameter riid set to REFIID
/// [IID_IAudioSessionControl].
///
/// {@category com}
class IAudioSessionControl extends IUnknown {
  IAudioSessionControl(super.ptr)
      : _vtable = ptr.value.cast<IAudioSessionControlVtbl>().ref;

  final IAudioSessionControlVtbl _vtable;

  factory IAudioSessionControl.from(IUnknown interface) =>
      IAudioSessionControl(interface.toInterface(IID_IAudioSessionControl));

  int getState(Pointer<Int32> pRetVal) => _vtable.GetState.asFunction<
      int Function(
          VTablePointer lpVtbl, Pointer<Int32> pRetVal)>()(ptr, pRetVal);

  int getDisplayName(Pointer<Pointer<Utf16>> pRetVal) =>
      _vtable.GetDisplayName.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<Utf16>> pRetVal)>()(ptr, pRetVal);

  int setDisplayName(Pointer<Utf16> value, Pointer<GUID> eventContext) =>
      _vtable.SetDisplayName.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<Utf16> value,
              Pointer<GUID> eventContext)>()(ptr, value, eventContext);

  int getIconPath(Pointer<Pointer<Utf16>> pRetVal) =>
      _vtable.GetIconPath.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<Utf16>> pRetVal)>()(ptr, pRetVal);

  int setIconPath(Pointer<Utf16> value, Pointer<GUID> eventContext) =>
      _vtable.SetIconPath.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<Utf16> value,
              Pointer<GUID> eventContext)>()(ptr, value, eventContext);

  int getGroupingParam(Pointer<GUID> pRetVal) =>
      _vtable.GetGroupingParam.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<GUID> pRetVal)>()(ptr, pRetVal);

  int setGroupingParam(Pointer<GUID> override, Pointer<GUID> eventContext) =>
      _vtable.SetGroupingParam.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<GUID> override,
              Pointer<GUID> eventContext)>()(ptr, override, eventContext);

  int registerAudioSessionNotification(VTablePointer newNotifications) =>
      _vtable.RegisterAudioSessionNotification.asFunction<
          int Function(VTablePointer lpVtbl,
              VTablePointer newNotifications)>()(ptr, newNotifications);

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
