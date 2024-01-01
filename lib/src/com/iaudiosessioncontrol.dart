// iaudiosessioncontrol.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import '../guid.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IAudioSessionControl = '{f4b1a599-7266-4319-a8ca-e70acb11e8cd}';

/// The IAudioSessionControl interface enables a client to configure the
/// control parameters for an audio session and to monitor events in the
/// session. The `IAudioClient::Initialize` method initializes a stream
/// object and assigns the stream to an audio session. The client obtains a
/// reference to the IAudioSessionControl interface on a stream object by
/// calling the `IAudioClient::GetService` method with parameter riid set to
/// REFIID [IID_IAudioSessionControl].
///
/// {@category com}
class IAudioSessionControl extends IUnknown {
  // vtable begins at 3, is 9 entries long.
  IAudioSessionControl(super.ptr)
      : _vtable = ptr.ref.vtable.cast<IAudioSessionControlVtbl>().ref;

  final IAudioSessionControlVtbl _vtable;

  factory IAudioSessionControl.from(IUnknown interface) =>
      IAudioSessionControl(interface.toInterface(IID_IAudioSessionControl));

  int getState(Pointer<Int32> pRetVal) => _vtable.GetState.asFunction<
      int Function(Pointer, Pointer<Int32> pRetVal)>()(ptr.ref.lpVtbl, pRetVal);

  int getDisplayName(Pointer<Pointer<Utf16>> pRetVal) => _vtable.GetDisplayName
          .asFunction<int Function(Pointer, Pointer<Pointer<Utf16>> pRetVal)>()(
      ptr.ref.lpVtbl, pRetVal);

  int setDisplayName(Pointer<Utf16> Value, Pointer<GUID> EventContext) =>
      _vtable.SetDisplayName.asFunction<
              int Function(
                  Pointer, Pointer<Utf16> Value, Pointer<GUID> EventContext)>()(
          ptr.ref.lpVtbl, Value, EventContext);

  int getIconPath(Pointer<Pointer<Utf16>> pRetVal) => _vtable.GetIconPath
          .asFunction<int Function(Pointer, Pointer<Pointer<Utf16>> pRetVal)>()(
      ptr.ref.lpVtbl, pRetVal);

  int setIconPath(Pointer<Utf16> Value, Pointer<GUID> EventContext) =>
      _vtable.SetIconPath.asFunction<
              int Function(
                  Pointer, Pointer<Utf16> Value, Pointer<GUID> EventContext)>()(
          ptr.ref.lpVtbl, Value, EventContext);

  int getGroupingParam(Pointer<GUID> pRetVal) =>
      _vtable.GetGroupingParam.asFunction<
          int Function(
              Pointer, Pointer<GUID> pRetVal)>()(ptr.ref.lpVtbl, pRetVal);

  int setGroupingParam(Pointer<GUID> Override, Pointer<GUID> EventContext) =>
      _vtable.SetGroupingParam.asFunction<
              int Function(Pointer, Pointer<GUID> Override,
                  Pointer<GUID> EventContext)>()(
          ptr.ref.lpVtbl, Override, EventContext);

  int registerAudioSessionNotification(Pointer<COMObject> NewNotifications) =>
      _vtable.RegisterAudioSessionNotification.asFunction<
              int Function(Pointer, Pointer<COMObject> NewNotifications)>()(
          ptr.ref.lpVtbl, NewNotifications);

  int unregisterAudioSessionNotification(Pointer<COMObject> NewNotifications) =>
      _vtable.UnregisterAudioSessionNotification.asFunction<
              int Function(Pointer, Pointer<COMObject> NewNotifications)>()(
          ptr.ref.lpVtbl, NewNotifications);
}

/// @nodoc
base class IAudioSessionControlVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<Int32 Function(Pointer, Pointer<Int32> pRetVal)>> GetState;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Pointer<Utf16>> pRetVal)>>
      GetDisplayName;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer, Pointer<Utf16> Value, Pointer<GUID> EventContext)>>
      SetDisplayName;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Pointer<Utf16>> pRetVal)>>
      GetIconPath;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer, Pointer<Utf16> Value, Pointer<GUID> EventContext)>>
      SetIconPath;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<GUID> pRetVal)>>
      GetGroupingParam;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer, Pointer<GUID> Override, Pointer<GUID> EventContext)>>
      SetGroupingParam;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<COMObject> NewNotifications)>>
      RegisterAudioSessionNotification;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<COMObject> NewNotifications)>>
      UnregisterAudioSessionNotification;
}
