// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../exceptions.dart';
import '../extensions/iunknown.dart';
import '../macros.dart';
import '../types.dart';
import '../utils.dart';
import '../variant.dart';
import 'idispatch.dart';
import 'iunknown.dart';

/// @nodoc
const IID_ISpeechVoice = '{269316d8-57bd-11d2-9eee-00c04f797396}';

/// {@category com}
class ISpeechVoice extends IDispatch {
  ISpeechVoice(super.ptr) : _vtable = ptr.value.cast<ISpeechVoiceVtbl>().ref;

  final ISpeechVoiceVtbl _vtable;

  factory ISpeechVoice.from(IUnknown interface) =>
      ISpeechVoice(interface.toInterface(IID_ISpeechVoice));

  VTablePointer get status {
    final retValuePtr = calloc<VTablePointer>();

    try {
      final hr = _vtable.get_Status.asFunction<
              int Function(VTablePointer, Pointer<VTablePointer> Status)>()(
          ptr, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  VTablePointer get voice {
    final retValuePtr = calloc<VTablePointer>();

    try {
      final hr = _vtable.get_Voice.asFunction<
          int Function(
              VTablePointer, Pointer<VTablePointer> Voice)>()(ptr, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int putref_Voice(VTablePointer Voice) => _vtable.putref_Voice
          .asFunction<int Function(VTablePointer, VTablePointer Voice)>()(
      ptr, Voice);

  VTablePointer get audioOutput {
    final retValuePtr = calloc<VTablePointer>();

    try {
      final hr = _vtable.get_AudioOutput.asFunction<
          int Function(VTablePointer,
              Pointer<VTablePointer> AudioOutput)>()(ptr, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int putref_AudioOutput(VTablePointer AudioOutput) => _vtable
          .putref_AudioOutput
          .asFunction<int Function(VTablePointer, VTablePointer AudioOutput)>()(
      ptr, AudioOutput);

  VTablePointer get audioOutputStream {
    final retValuePtr = calloc<VTablePointer>();

    try {
      final hr = _vtable.get_AudioOutputStream.asFunction<
          int Function(VTablePointer,
              Pointer<VTablePointer> AudioOutputStream)>()(ptr, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int putref_AudioOutputStream(VTablePointer AudioOutputStream) =>
      _vtable.putref_AudioOutputStream.asFunction<
              int Function(VTablePointer, VTablePointer AudioOutputStream)>()(
          ptr, AudioOutputStream);

  int get rate {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_Rate
              .asFunction<int Function(VTablePointer, Pointer<Int32> Rate)>()(
          ptr, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set rate(int value) {
    final hr = _vtable.put_Rate
        .asFunction<int Function(VTablePointer, int Rate)>()(ptr, value);
    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get volume {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_Volume
              .asFunction<int Function(VTablePointer, Pointer<Int32> Volume)>()(
          ptr, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set volume(int value) {
    final hr = _vtable.put_Volume
        .asFunction<int Function(VTablePointer, int Volume)>()(ptr, value);
    if (FAILED(hr)) throw WindowsException(hr);
  }

  set allowAudioOutputFormatChangesOnNextSet(int value) {
    final hr = _vtable.put_AllowAudioOutputFormatChangesOnNextSet
        .asFunction<int Function(VTablePointer, int Allow)>()(ptr, value);
    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get allowAudioOutputFormatChangesOnNextSet {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = _vtable.get_AllowAudioOutputFormatChangesOnNextSet
              .asFunction<int Function(VTablePointer, Pointer<Int16> Allow)>()(
          ptr, retValuePtr);
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
              int Function(VTablePointer, Pointer<Int32> EventInterestFlags)>()(
          ptr, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set eventInterests(int value) {
    final hr = _vtable.put_EventInterests
            .asFunction<int Function(VTablePointer, int EventInterestFlags)>()(
        ptr, value);
    if (FAILED(hr)) throw WindowsException(hr);
  }

  set priority(int value) {
    final hr = _vtable.put_Priority
        .asFunction<int Function(VTablePointer, int Priority)>()(ptr, value);
    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get priority {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_Priority.asFunction<
          int Function(
              VTablePointer, Pointer<Int32> Priority)>()(ptr, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set alertBoundary(int value) {
    final hr = _vtable.put_AlertBoundary
        .asFunction<int Function(VTablePointer, int Boundary)>()(ptr, value);
    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get alertBoundary {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_AlertBoundary.asFunction<
          int Function(
              VTablePointer, Pointer<Int32> Boundary)>()(ptr, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set synchronousSpeakTimeout(int value) {
    final hr = _vtable.put_SynchronousSpeakTimeout
        .asFunction<int Function(VTablePointer, int msTimeout)>()(ptr, value);
    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get synchronousSpeakTimeout {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_SynchronousSpeakTimeout.asFunction<
          int Function(
              VTablePointer, Pointer<Int32> msTimeout)>()(ptr, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int speak(Pointer<Utf16> Text, int Flags, Pointer<Int32> StreamNumber) =>
      _vtable.Speak.asFunction<
          int Function(VTablePointer, Pointer<Utf16> Text, int Flags,
              Pointer<Int32> StreamNumber)>()(ptr, Text, Flags, StreamNumber);

  int speakStream(
          VTablePointer Stream, int Flags, Pointer<Int32> StreamNumber) =>
      _vtable.SpeakStream.asFunction<
          int Function(VTablePointer, VTablePointer Stream, int Flags,
              Pointer<Int32> StreamNumber)>()(ptr, Stream, Flags, StreamNumber);

  int pause() => _vtable.Pause.asFunction<int Function(VTablePointer)>()(ptr);

  int resume() => _vtable.Resume.asFunction<int Function(VTablePointer)>()(ptr);

  int skip(Pointer<Utf16> Type, int NumItems, Pointer<Int32> NumSkipped) =>
      _vtable.Skip.asFunction<
          int Function(VTablePointer, Pointer<Utf16> Type, int NumItems,
              Pointer<Int32> NumSkipped)>()(ptr, Type, NumItems, NumSkipped);

  int getVoices(
          Pointer<Utf16> RequiredAttributes,
          Pointer<Utf16> OptionalAttributes,
          Pointer<VTablePointer> ObjectTokens) =>
      _vtable.GetVoices.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<Utf16> RequiredAttributes,
                  Pointer<Utf16> OptionalAttributes,
                  Pointer<VTablePointer> ObjectTokens)>()(
          ptr, RequiredAttributes, OptionalAttributes, ObjectTokens);

  int getAudioOutputs(
          Pointer<Utf16> RequiredAttributes,
          Pointer<Utf16> OptionalAttributes,
          Pointer<VTablePointer> ObjectTokens) =>
      _vtable.GetAudioOutputs.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<Utf16> RequiredAttributes,
                  Pointer<Utf16> OptionalAttributes,
                  Pointer<VTablePointer> ObjectTokens)>()(
          ptr, RequiredAttributes, OptionalAttributes, ObjectTokens);

  int waitUntilDone(int msTimeout, Pointer<Int16> Done) =>
      _vtable.WaitUntilDone.asFunction<
          int Function(VTablePointer, int msTimeout,
              Pointer<Int16> Done)>()(ptr, msTimeout, Done);

  int speakCompleteEvent(Pointer<Int32> Handle) =>
      _vtable.SpeakCompleteEvent.asFunction<
          int Function(VTablePointer, Pointer<Int32> Handle)>()(ptr, Handle);

  int isUISupported(Pointer<Utf16> TypeOfUI, Pointer<VARIANT> ExtraData,
          Pointer<Int16> Supported) =>
      _vtable.IsUISupported.asFunction<
          int Function(
              VTablePointer,
              Pointer<Utf16> TypeOfUI,
              Pointer<VARIANT> ExtraData,
              Pointer<Int16> Supported)>()(ptr, TypeOfUI, ExtraData, Supported);

  int displayUI(int hWndParent, Pointer<Utf16> Title, Pointer<Utf16> TypeOfUI,
          Pointer<VARIANT> ExtraData) =>
      _vtable.DisplayUI.asFunction<
              int Function(VTablePointer, int hWndParent, Pointer<Utf16> Title,
                  Pointer<Utf16> TypeOfUI, Pointer<VARIANT> ExtraData)>()(
          ptr, hWndParent, Title, TypeOfUI, ExtraData);
}

/// @nodoc
base class ISpeechVoiceVtbl extends Struct {
  external IDispatchVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> Status)>>
      get_Status;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> Voice)>>
      get_Voice;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, VTablePointer Voice)>>
      putref_Voice;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<VTablePointer> AudioOutput)>>
      get_AudioOutput;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, VTablePointer AudioOutput)>>
      putref_AudioOutput;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<VTablePointer> AudioOutputStream)>>
      get_AudioOutputStream;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, VTablePointer AudioOutputStream)>>
      putref_AudioOutputStream;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> Rate)>>
      get_Rate;
  external Pointer<NativeFunction<Int32 Function(VTablePointer, Int32 Rate)>>
      put_Rate;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> Volume)>>
      get_Volume;
  external Pointer<NativeFunction<Int32 Function(VTablePointer, Int32 Volume)>>
      put_Volume;
  external Pointer<NativeFunction<Int32 Function(VTablePointer, Int16 Allow)>>
      put_AllowAudioOutputFormatChangesOnNextSet;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int16> Allow)>>
      get_AllowAudioOutputFormatChangesOnNextSet;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Int32> EventInterestFlags)>>
      get_EventInterests;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Int32 EventInterestFlags)>>
      put_EventInterests;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Int32 Priority)>>
      put_Priority;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<Int32> Priority)>> get_Priority;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Int32 Boundary)>>
      put_AlertBoundary;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Int32> Boundary)>>
      get_AlertBoundary;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Int32 msTimeout)>>
      put_SynchronousSpeakTimeout;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Int32> msTimeout)>>
      get_SynchronousSpeakTimeout;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<Utf16> Text, Int32 Flags,
              Pointer<Int32> StreamNumber)>> Speak;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, VTablePointer Stream, Int32 Flags,
              Pointer<Int32> StreamNumber)>> SpeakStream;
  external Pointer<NativeFunction<Int32 Function(VTablePointer)>> Pause;
  external Pointer<NativeFunction<Int32 Function(VTablePointer)>> Resume;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<Utf16> Type, Int32 NumItems,
              Pointer<Int32> NumSkipped)>> Skip;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<Utf16> RequiredAttributes,
              Pointer<Utf16> OptionalAttributes,
              Pointer<VTablePointer> ObjectTokens)>> GetVoices;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<Utf16> RequiredAttributes,
              Pointer<Utf16> OptionalAttributes,
              Pointer<VTablePointer> ObjectTokens)>> GetAudioOutputs;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Int32 msTimeout, Pointer<Int16> Done)>>
      WaitUntilDone;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> Handle)>>
      SpeakCompleteEvent;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<Utf16> TypeOfUI,
              Pointer<VARIANT> ExtraData,
              Pointer<Int16> Supported)>> IsUISupported;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Int32 hWndParent, Pointer<Utf16> Title,
              Pointer<Utf16> TypeOfUI, Pointer<VARIANT> ExtraData)>> DisplayUI;
}
