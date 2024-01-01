// ispeechvoice.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import '../exceptions.dart';
import '../macros.dart';
import '../utils.dart';
import '../variant.dart';
import 'idispatch.dart';
import 'iunknown.dart';

/// @nodoc
const IID_ISpeechVoice = '{269316d8-57bd-11d2-9eee-00c04f797396}';

/// {@category com}
class ISpeechVoice extends IDispatch {
  // vtable begins at 7, is 32 entries long.
  ISpeechVoice(super.ptr)
      : _vtable = ptr.ref.vtable.cast<ISpeechVoiceVtbl>().ref;

  final ISpeechVoiceVtbl _vtable;

  factory ISpeechVoice.from(IUnknown interface) =>
      ISpeechVoice(interface.toInterface(IID_ISpeechVoice));

  Pointer<COMObject> get status {
    final retValuePtr = calloc<COMObject>();

    final hr = _vtable.get_Status
            .asFunction<int Function(Pointer, Pointer<COMObject> Status)>()(
        ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }

  Pointer<COMObject> get voice {
    final retValuePtr = calloc<COMObject>();

    final hr = _vtable.get_Voice
            .asFunction<int Function(Pointer, Pointer<COMObject> Voice)>()(
        ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }

  int putref_Voice(Pointer<COMObject> Voice) => _vtable.putref_Voice
          .asFunction<int Function(Pointer, Pointer<COMObject> Voice)>()(
      ptr.ref.lpVtbl, Voice);

  Pointer<COMObject> get audioOutput {
    final retValuePtr = calloc<COMObject>();

    final hr = _vtable.get_AudioOutput.asFunction<
            int Function(Pointer, Pointer<COMObject> AudioOutput)>()(
        ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }

  int putref_AudioOutput(Pointer<COMObject> AudioOutput) => _vtable
          .putref_AudioOutput
          .asFunction<int Function(Pointer, Pointer<COMObject> AudioOutput)>()(
      ptr.ref.lpVtbl, AudioOutput);

  Pointer<COMObject> get audioOutputStream {
    final retValuePtr = calloc<COMObject>();

    final hr = _vtable.get_AudioOutputStream.asFunction<
            int Function(Pointer, Pointer<COMObject> AudioOutputStream)>()(
        ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }

  int putref_AudioOutputStream(Pointer<COMObject> AudioOutputStream) =>
      _vtable.putref_AudioOutputStream.asFunction<
              int Function(Pointer, Pointer<COMObject> AudioOutputStream)>()(
          ptr.ref.lpVtbl, AudioOutputStream);

  int get rate {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_Rate
              .asFunction<int Function(Pointer, Pointer<Int32> Rate)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set rate(int value) {
    final hr = _vtable.put_Rate.asFunction<int Function(Pointer, int Rate)>()(
        ptr.ref.lpVtbl, value);
    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get volume {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_Volume
              .asFunction<int Function(Pointer, Pointer<Int32> Volume)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set volume(int value) {
    final hr = _vtable.put_Volume
        .asFunction<int Function(Pointer, int Volume)>()(ptr.ref.lpVtbl, value);
    if (FAILED(hr)) throw WindowsException(hr);
  }

  set allowAudioOutputFormatChangesOnNextSet(int value) {
    final hr = _vtable.put_AllowAudioOutputFormatChangesOnNextSet
        .asFunction<int Function(Pointer, int Allow)>()(ptr.ref.lpVtbl, value);
    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get allowAudioOutputFormatChangesOnNextSet {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = _vtable.get_AllowAudioOutputFormatChangesOnNextSet
              .asFunction<int Function(Pointer, Pointer<Int16> Allow)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get eventInterests {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_EventInterests.asFunction<
              int Function(Pointer, Pointer<Int32> EventInterestFlags)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set eventInterests(int value) {
    final hr = _vtable.put_EventInterests
            .asFunction<int Function(Pointer, int EventInterestFlags)>()(
        ptr.ref.lpVtbl, value);
    if (FAILED(hr)) throw WindowsException(hr);
  }

  set priority(int value) {
    final hr =
        _vtable.put_Priority.asFunction<int Function(Pointer, int Priority)>()(
            ptr.ref.lpVtbl, value);
    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get priority {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_Priority
              .asFunction<int Function(Pointer, Pointer<Int32> Priority)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set alertBoundary(int value) {
    final hr = _vtable.put_AlertBoundary
            .asFunction<int Function(Pointer, int Boundary)>()(
        ptr.ref.lpVtbl, value);
    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get alertBoundary {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_AlertBoundary
              .asFunction<int Function(Pointer, Pointer<Int32> Boundary)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set synchronousSpeakTimeout(int value) {
    final hr = _vtable.put_SynchronousSpeakTimeout
            .asFunction<int Function(Pointer, int msTimeout)>()(
        ptr.ref.lpVtbl, value);
    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get synchronousSpeakTimeout {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_SynchronousSpeakTimeout
              .asFunction<int Function(Pointer, Pointer<Int32> msTimeout)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int speak(Pointer<Utf16> Text, int Flags, Pointer<Int32> StreamNumber) =>
      _vtable.Speak.asFunction<
              int Function(Pointer, Pointer<Utf16> Text, int Flags,
                  Pointer<Int32> StreamNumber)>()(
          ptr.ref.lpVtbl, Text, Flags, StreamNumber);

  int speakStream(
          Pointer<COMObject> Stream, int Flags, Pointer<Int32> StreamNumber) =>
      _vtable.SpeakStream.asFunction<
              int Function(Pointer, Pointer<COMObject> Stream, int Flags,
                  Pointer<Int32> StreamNumber)>()(
          ptr.ref.lpVtbl, Stream, Flags, StreamNumber);

  int pause() =>
      _vtable.Pause.asFunction<int Function(Pointer)>()(ptr.ref.lpVtbl);

  int resume() =>
      _vtable.Resume.asFunction<int Function(Pointer)>()(ptr.ref.lpVtbl);

  int skip(Pointer<Utf16> Type, int NumItems, Pointer<Int32> NumSkipped) =>
      _vtable.Skip.asFunction<
              int Function(Pointer, Pointer<Utf16> Type, int NumItems,
                  Pointer<Int32> NumSkipped)>()(
          ptr.ref.lpVtbl, Type, NumItems, NumSkipped);

  int getVoices(
          Pointer<Utf16> RequiredAttributes,
          Pointer<Utf16> OptionalAttributes,
          Pointer<Pointer<COMObject>> ObjectTokens) =>
      _vtable.GetVoices.asFunction<
              int Function(
                  Pointer,
                  Pointer<Utf16> RequiredAttributes,
                  Pointer<Utf16> OptionalAttributes,
                  Pointer<Pointer<COMObject>> ObjectTokens)>()(
          ptr.ref.lpVtbl, RequiredAttributes, OptionalAttributes, ObjectTokens);

  int getAudioOutputs(
          Pointer<Utf16> RequiredAttributes,
          Pointer<Utf16> OptionalAttributes,
          Pointer<Pointer<COMObject>> ObjectTokens) =>
      _vtable.GetAudioOutputs.asFunction<
              int Function(
                  Pointer,
                  Pointer<Utf16> RequiredAttributes,
                  Pointer<Utf16> OptionalAttributes,
                  Pointer<Pointer<COMObject>> ObjectTokens)>()(
          ptr.ref.lpVtbl, RequiredAttributes, OptionalAttributes, ObjectTokens);

  int waitUntilDone(int msTimeout, Pointer<Int16> Done) =>
      _vtable.WaitUntilDone.asFunction<
              int Function(Pointer, int msTimeout, Pointer<Int16> Done)>()(
          ptr.ref.lpVtbl, msTimeout, Done);

  int speakCompleteEvent(Pointer<Int32> Handle) =>
      _vtable.SpeakCompleteEvent.asFunction<
          int Function(
              Pointer, Pointer<Int32> Handle)>()(ptr.ref.lpVtbl, Handle);

  int isUISupported(Pointer<Utf16> TypeOfUI, Pointer<VARIANT> ExtraData,
          Pointer<Int16> Supported) =>
      _vtable.IsUISupported.asFunction<
              int Function(Pointer, Pointer<Utf16> TypeOfUI,
                  Pointer<VARIANT> ExtraData, Pointer<Int16> Supported)>()(
          ptr.ref.lpVtbl, TypeOfUI, ExtraData, Supported);

  int displayUI(int hWndParent, Pointer<Utf16> Title, Pointer<Utf16> TypeOfUI,
          Pointer<VARIANT> ExtraData) =>
      _vtable.DisplayUI.asFunction<
              int Function(Pointer, int hWndParent, Pointer<Utf16> Title,
                  Pointer<Utf16> TypeOfUI, Pointer<VARIANT> ExtraData)>()(
          ptr.ref.lpVtbl, hWndParent, Title, TypeOfUI, ExtraData);
}

/// @nodoc
base class ISpeechVoiceVtbl extends Struct {
  external IDispatchVtbl baseVtbl;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<COMObject> Status)>>
      get_Status;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<COMObject> Voice)>>
      get_Voice;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<COMObject> Voice)>>
      putref_Voice;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<COMObject> AudioOutput)>>
      get_AudioOutput;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<COMObject> AudioOutput)>>
      putref_AudioOutput;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<COMObject> AudioOutputStream)>>
      get_AudioOutputStream;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<COMObject> AudioOutputStream)>>
      putref_AudioOutputStream;
  external Pointer<NativeFunction<Int32 Function(Pointer, Pointer<Int32> Rate)>>
      get_Rate;
  external Pointer<NativeFunction<Int32 Function(Pointer, Int32 Rate)>>
      put_Rate;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> Volume)>>
      get_Volume;
  external Pointer<NativeFunction<Int32 Function(Pointer, Int32 Volume)>>
      put_Volume;
  external Pointer<NativeFunction<Int32 Function(Pointer, Int16 Allow)>>
      put_AllowAudioOutputFormatChangesOnNextSet;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int16> Allow)>>
      get_AllowAudioOutputFormatChangesOnNextSet;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Int32> EventInterestFlags)>>
      get_EventInterests;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Int32 EventInterestFlags)>>
      put_EventInterests;
  external Pointer<NativeFunction<Int32 Function(Pointer, Int32 Priority)>>
      put_Priority;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> Priority)>>
      get_Priority;
  external Pointer<NativeFunction<Int32 Function(Pointer, Int32 Boundary)>>
      put_AlertBoundary;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> Boundary)>>
      get_AlertBoundary;
  external Pointer<NativeFunction<Int32 Function(Pointer, Int32 msTimeout)>>
      put_SynchronousSpeakTimeout;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> msTimeout)>>
      get_SynchronousSpeakTimeout;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<Utf16> Text, Int32 Flags,
              Pointer<Int32> StreamNumber)>> Speak;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<COMObject> Stream, Int32 Flags,
              Pointer<Int32> StreamNumber)>> SpeakStream;
  external Pointer<NativeFunction<Int32 Function(Pointer)>> Pause;
  external Pointer<NativeFunction<Int32 Function(Pointer)>> Resume;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<Utf16> Type, Int32 NumItems,
              Pointer<Int32> NumSkipped)>> Skip;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              Pointer<Utf16> RequiredAttributes,
              Pointer<Utf16> OptionalAttributes,
              Pointer<Pointer<COMObject>> ObjectTokens)>> GetVoices;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              Pointer<Utf16> RequiredAttributes,
              Pointer<Utf16> OptionalAttributes,
              Pointer<Pointer<COMObject>> ObjectTokens)>> GetAudioOutputs;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Int32 msTimeout, Pointer<Int16> Done)>>
      WaitUntilDone;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> Handle)>>
      SpeakCompleteEvent;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              Pointer<Utf16> TypeOfUI,
              Pointer<VARIANT> ExtraData,
              Pointer<Int16> Supported)>> IsUISupported;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Int32 hWndParent, Pointer<Utf16> Title,
              Pointer<Utf16> TypeOfUI, Pointer<VARIANT> ExtraData)>> DisplayUI;
}
