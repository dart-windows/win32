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
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import 'idispatch.g.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_ISpeechVoice = '{269316d8-57bd-11d2-9eee-00c04f797396}';

/// {@category com}
class ISpeechVoice extends IDispatch {
  ISpeechVoice(super.ptr) : _vtable = ptr.value.cast<ISpeechVoiceVtbl>().ref;

  final ISpeechVoiceVtbl _vtable;

  factory ISpeechVoice.from(IUnknown interface) =>
      ISpeechVoice(interface.toInterface(IID_ISpeechVoice));

  VTablePointer get status {
    final status = calloc<VTablePointer>();
    try {
      final hr = _vtable.get_Status.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> status)>()(ptr, status);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = status.value;
      return retValue;
    } finally {
      free(status);
    }
  }

  VTablePointer get voice {
    final voice = calloc<VTablePointer>();
    try {
      final hr = _vtable.get_Voice.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> voice)>()(ptr, voice);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = voice.value;
      return retValue;
    } finally {
      free(voice);
    }
  }

  int putref_Voice(VTablePointer? voice) => _vtable.putref_Voice.asFunction<
      int Function(
          VTablePointer lpVtbl, VTablePointer voice)>()(ptr, voice ?? nullptr);

  VTablePointer get audioOutput {
    final audioOutput = calloc<VTablePointer>();
    try {
      final hr = _vtable.get_AudioOutput.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> audioOutput)>()(ptr, audioOutput);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = audioOutput.value;
      return retValue;
    } finally {
      free(audioOutput);
    }
  }

  int putref_AudioOutput(VTablePointer? audioOutput) =>
      _vtable.putref_AudioOutput.asFunction<
              int Function(VTablePointer lpVtbl, VTablePointer audioOutput)>()(
          ptr, audioOutput ?? nullptr);

  VTablePointer get audioOutputStream {
    final audioOutputStream = calloc<VTablePointer>();
    try {
      final hr = _vtable.get_AudioOutputStream.asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<VTablePointer> audioOutputStream)>()(
          ptr, audioOutputStream);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = audioOutputStream.value;
      return retValue;
    } finally {
      free(audioOutputStream);
    }
  }

  int putref_AudioOutputStream(VTablePointer? audioOutputStream) =>
      _vtable.putref_AudioOutputStream.asFunction<
              int Function(
                  VTablePointer lpVtbl, VTablePointer audioOutputStream)>()(
          ptr, audioOutputStream ?? nullptr);

  int get rate {
    final rate = calloc<Int32>();
    try {
      final hr = _vtable.get_Rate.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<Int32> rate)>()(ptr, rate);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = rate.value;
      return retValue;
    } finally {
      free(rate);
    }
  }

  set rate(int rate) {
    final hr = _vtable.put_Rate
        .asFunction<int Function(VTablePointer lpVtbl, int rate)>()(ptr, rate);
    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get volume {
    final volume = calloc<Int32>();
    try {
      final hr = _vtable.get_Volume.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> volume)>()(ptr, volume);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = volume.value;
      return retValue;
    } finally {
      free(volume);
    }
  }

  set volume(int volume) {
    final hr = _vtable.put_Volume
            .asFunction<int Function(VTablePointer lpVtbl, int volume)>()(
        ptr, volume);
    if (FAILED(hr)) throw WindowsException(hr);
  }

  set allowAudioOutputFormatChangesOnNextSet(int allow) {
    final hr = _vtable.put_AllowAudioOutputFormatChangesOnNextSet
            .asFunction<int Function(VTablePointer lpVtbl, int allow)>()(
        ptr, allow);
    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get allowAudioOutputFormatChangesOnNextSet {
    final allow = calloc<Int16>();
    try {
      final hr = _vtable.get_AllowAudioOutputFormatChangesOnNextSet.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int16> allow)>()(ptr, allow);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = allow.value;
      return retValue;
    } finally {
      free(allow);
    }
  }

  int get eventInterests {
    final eventInterestFlags = calloc<Int32>();
    try {
      final hr = _vtable.get_EventInterests.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Int32> eventInterestFlags)>()(ptr, eventInterestFlags);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = eventInterestFlags.value;
      return retValue;
    } finally {
      free(eventInterestFlags);
    }
  }

  set eventInterests(int eventInterestFlags) {
    final hr = _vtable.put_EventInterests.asFunction<
            int Function(VTablePointer lpVtbl, int eventInterestFlags)>()(
        ptr, eventInterestFlags);
    if (FAILED(hr)) throw WindowsException(hr);
  }

  set priority(int priority) {
    final hr = _vtable.put_Priority
            .asFunction<int Function(VTablePointer lpVtbl, int priority)>()(
        ptr, priority);
    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get priority {
    final priority = calloc<Int32>();
    try {
      final hr = _vtable.get_Priority.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> priority)>()(ptr, priority);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = priority.value;
      return retValue;
    } finally {
      free(priority);
    }
  }

  set alertBoundary(int boundary) {
    final hr = _vtable.put_AlertBoundary
            .asFunction<int Function(VTablePointer lpVtbl, int boundary)>()(
        ptr, boundary);
    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get alertBoundary {
    final boundary = calloc<Int32>();
    try {
      final hr = _vtable.get_AlertBoundary.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> boundary)>()(ptr, boundary);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = boundary.value;
      return retValue;
    } finally {
      free(boundary);
    }
  }

  set synchronousSpeakTimeout(int msTimeout) {
    final hr = _vtable.put_SynchronousSpeakTimeout
            .asFunction<int Function(VTablePointer lpVtbl, int msTimeout)>()(
        ptr, msTimeout);
    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get synchronousSpeakTimeout {
    final msTimeout = calloc<Int32>();
    try {
      final hr = _vtable.get_SynchronousSpeakTimeout.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<Int32> msTimeout)>()(
          ptr, msTimeout);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = msTimeout.value;
      return retValue;
    } finally {
      free(msTimeout);
    }
  }

  int speak(Pointer<Utf16> text, int flags, Pointer<Int32> streamNumber) =>
      _vtable.Speak.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<Utf16> text, int flags,
              Pointer<Int32> streamNumber)>()(ptr, text, flags, streamNumber);

  int speakStream(
          VTablePointer? stream, int flags, Pointer<Int32> streamNumber) =>
      _vtable.SpeakStream.asFunction<
              int Function(VTablePointer lpVtbl, VTablePointer stream,
                  int flags, Pointer<Int32> streamNumber)>()(
          ptr, stream ?? nullptr, flags, streamNumber);

  int pause() =>
      _vtable.Pause.asFunction<int Function(VTablePointer lpVtbl)>()(ptr);

  int resume() =>
      _vtable.Resume.asFunction<int Function(VTablePointer lpVtbl)>()(ptr);

  int skip(Pointer<Utf16> type, int numItems, Pointer<Int32> numSkipped) =>
      _vtable.Skip.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<Utf16> type, int numItems,
              Pointer<Int32> numSkipped)>()(ptr, type, numItems, numSkipped);

  int getVoices(
          Pointer<Utf16> requiredAttributes,
          Pointer<Utf16> optionalAttributes,
          Pointer<VTablePointer> objectTokens) =>
      _vtable.GetVoices.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  Pointer<Utf16> requiredAttributes,
                  Pointer<Utf16> optionalAttributes,
                  Pointer<VTablePointer> objectTokens)>()(
          ptr, requiredAttributes, optionalAttributes, objectTokens);

  int getAudioOutputs(
          Pointer<Utf16> requiredAttributes,
          Pointer<Utf16> optionalAttributes,
          Pointer<VTablePointer> objectTokens) =>
      _vtable.GetAudioOutputs.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  Pointer<Utf16> requiredAttributes,
                  Pointer<Utf16> optionalAttributes,
                  Pointer<VTablePointer> objectTokens)>()(
          ptr, requiredAttributes, optionalAttributes, objectTokens);

  int waitUntilDone(int msTimeout, Pointer<Int16> done) =>
      _vtable.WaitUntilDone.asFunction<
          int Function(VTablePointer lpVtbl, int msTimeout,
              Pointer<Int16> done)>()(ptr, msTimeout, done);

  int speakCompleteEvent(Pointer<Int32> handle) =>
      _vtable.SpeakCompleteEvent.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> handle)>()(ptr, handle);

  int isUISupported(Pointer<Utf16> typeOfUI, Pointer<VARIANT> extraData,
          Pointer<Int16> supported) =>
      _vtable.IsUISupported.asFunction<
          int Function(
              VTablePointer lpVtbl,
              Pointer<Utf16> typeOfUI,
              Pointer<VARIANT> extraData,
              Pointer<Int16> supported)>()(ptr, typeOfUI, extraData, supported);

  int displayUI(int hWndParent, Pointer<Utf16> title, Pointer<Utf16> typeOfUI,
          Pointer<VARIANT> extraData) =>
      _vtable.DisplayUI.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  int hWndParent,
                  Pointer<Utf16> title,
                  Pointer<Utf16> typeOfUI,
                  Pointer<VARIANT> extraData)>()(
          ptr, hWndParent, title, typeOfUI, extraData);
}

/// @nodoc
base class ISpeechVoiceVtbl extends Struct {
  external IDispatchVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer lpVtbl, Pointer<VTablePointer> status)>> get_Status;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer lpVtbl, Pointer<VTablePointer> voice)>> get_Voice;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer lpVtbl, VTablePointer voice)>>
      putref_Voice;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> audioOutput)>>
      get_AudioOutput;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer lpVtbl, VTablePointer audioOutput)>>
      putref_AudioOutput;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> audioOutputStream)>> get_AudioOutputStream;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer lpVtbl, VTablePointer audioOutputStream)>>
      putref_AudioOutputStream;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer lpVtbl, Pointer<Int32> rate)>> get_Rate;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer lpVtbl, Int32 rate)>>
      put_Rate;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer lpVtbl, Pointer<Int32> volume)>>
      get_Volume;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer lpVtbl, Int32 volume)>>
      put_Volume;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer lpVtbl, Int16 allow)>>
      put_AllowAudioOutputFormatChangesOnNextSet;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer lpVtbl, Pointer<Int16> allow)>>
      get_AllowAudioOutputFormatChangesOnNextSet;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer lpVtbl, Pointer<Int32> eventInterestFlags)>>
      get_EventInterests;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer lpVtbl, Int32 eventInterestFlags)>>
      put_EventInterests;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer lpVtbl, Int32 priority)>>
      put_Priority;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer lpVtbl, Pointer<Int32> priority)>>
      get_Priority;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer lpVtbl, Int32 boundary)>>
      put_AlertBoundary;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer lpVtbl, Pointer<Int32> boundary)>>
      get_AlertBoundary;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer lpVtbl, Int32 msTimeout)>>
      put_SynchronousSpeakTimeout;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer lpVtbl, Pointer<Int32> msTimeout)>>
      get_SynchronousSpeakTimeout;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer lpVtbl, Pointer<Utf16> text, Int32 flags,
              Pointer<Int32> streamNumber)>> Speak;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer lpVtbl, VTablePointer stream,
              Int32 flags, Pointer<Int32> streamNumber)>> SpeakStream;
  external Pointer<NativeFunction<Int32 Function(VTablePointer lpVtbl)>> Pause;
  external Pointer<NativeFunction<Int32 Function(VTablePointer lpVtbl)>> Resume;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer lpVtbl, Pointer<Utf16> type,
              Int32 numItems, Pointer<Int32> numSkipped)>> Skip;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer lpVtbl,
              Pointer<Utf16> requiredAttributes,
              Pointer<Utf16> optionalAttributes,
              Pointer<VTablePointer> objectTokens)>> GetVoices;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer lpVtbl,
              Pointer<Utf16> requiredAttributes,
              Pointer<Utf16> optionalAttributes,
              Pointer<VTablePointer> objectTokens)>> GetAudioOutputs;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer lpVtbl, Int32 msTimeout, Pointer<Int16> done)>>
      WaitUntilDone;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer lpVtbl, Pointer<Int32> handle)>>
      SpeakCompleteEvent;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer lpVtbl,
              Pointer<Utf16> typeOfUI,
              Pointer<VARIANT> extraData,
              Pointer<Int16> supported)>> IsUISupported;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer lpVtbl,
              Int32 hWndParent,
              Pointer<Utf16> title,
              Pointer<Utf16> typeOfUI,
              Pointer<VARIANT> extraData)>> DisplayUI;
}
