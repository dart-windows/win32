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
    final retValuePtr = calloc<VTablePointer>();

    try {
      final hr = _vtable.get_Status.asFunction<
              int Function(VTablePointer, Pointer<VTablePointer> status)>()(
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
              VTablePointer, Pointer<VTablePointer> voice)>()(ptr, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int putref_Voice(VTablePointer? voice) => _vtable.putref_Voice
          .asFunction<int Function(VTablePointer, VTablePointer voice)>()(
      ptr, voice ?? nullptr);

  VTablePointer get audioOutput {
    final retValuePtr = calloc<VTablePointer>();

    try {
      final hr = _vtable.get_AudioOutput.asFunction<
          int Function(VTablePointer,
              Pointer<VTablePointer> audioOutput)>()(ptr, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int putref_AudioOutput(VTablePointer? audioOutput) => _vtable
          .putref_AudioOutput
          .asFunction<int Function(VTablePointer, VTablePointer audioOutput)>()(
      ptr, audioOutput ?? nullptr);

  VTablePointer get audioOutputStream {
    final retValuePtr = calloc<VTablePointer>();

    try {
      final hr = _vtable.get_AudioOutputStream.asFunction<
          int Function(VTablePointer,
              Pointer<VTablePointer> audioOutputStream)>()(ptr, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int putref_AudioOutputStream(VTablePointer? audioOutputStream) =>
      _vtable.putref_AudioOutputStream.asFunction<
              int Function(VTablePointer, VTablePointer audioOutputStream)>()(
          ptr, audioOutputStream ?? nullptr);

  int get rate {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_Rate
              .asFunction<int Function(VTablePointer, Pointer<Int32> rate)>()(
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
        .asFunction<int Function(VTablePointer, int rate)>()(ptr, value);
    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get volume {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_Volume
              .asFunction<int Function(VTablePointer, Pointer<Int32> volume)>()(
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
        .asFunction<int Function(VTablePointer, int volume)>()(ptr, value);
    if (FAILED(hr)) throw WindowsException(hr);
  }

  set allowAudioOutputFormatChangesOnNextSet(int value) {
    final hr = _vtable.put_AllowAudioOutputFormatChangesOnNextSet
        .asFunction<int Function(VTablePointer, int allow)>()(ptr, value);
    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get allowAudioOutputFormatChangesOnNextSet {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = _vtable.get_AllowAudioOutputFormatChangesOnNextSet
              .asFunction<int Function(VTablePointer, Pointer<Int16> allow)>()(
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
              int Function(VTablePointer, Pointer<Int32> eventInterestFlags)>()(
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
            .asFunction<int Function(VTablePointer, int eventInterestFlags)>()(
        ptr, value);
    if (FAILED(hr)) throw WindowsException(hr);
  }

  set priority(int value) {
    final hr = _vtable.put_Priority
        .asFunction<int Function(VTablePointer, int priority)>()(ptr, value);
    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get priority {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_Priority.asFunction<
          int Function(
              VTablePointer, Pointer<Int32> priority)>()(ptr, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set alertBoundary(int value) {
    final hr = _vtable.put_AlertBoundary
        .asFunction<int Function(VTablePointer, int boundary)>()(ptr, value);
    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get alertBoundary {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_AlertBoundary.asFunction<
          int Function(
              VTablePointer, Pointer<Int32> boundary)>()(ptr, retValuePtr);
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

  int speak(Pointer<Utf16> text, int flags, Pointer<Int32> streamNumber) =>
      _vtable.Speak.asFunction<
          int Function(VTablePointer, Pointer<Utf16> text, int flags,
              Pointer<Int32> streamNumber)>()(ptr, text, flags, streamNumber);

  int speakStream(
          VTablePointer? stream, int flags, Pointer<Int32> streamNumber) =>
      _vtable.SpeakStream.asFunction<
              int Function(VTablePointer, VTablePointer stream, int flags,
                  Pointer<Int32> streamNumber)>()(
          ptr, stream ?? nullptr, flags, streamNumber);

  int pause() => _vtable.Pause.asFunction<int Function(VTablePointer)>()(ptr);

  int resume() => _vtable.Resume.asFunction<int Function(VTablePointer)>()(ptr);

  int skip(Pointer<Utf16> type, int numItems, Pointer<Int32> numSkipped) =>
      _vtable.Skip.asFunction<
          int Function(VTablePointer, Pointer<Utf16> type, int numItems,
              Pointer<Int32> numSkipped)>()(ptr, type, numItems, numSkipped);

  int getVoices(
          Pointer<Utf16> requiredAttributes,
          Pointer<Utf16> optionalAttributes,
          Pointer<VTablePointer> objectTokens) =>
      _vtable.GetVoices.asFunction<
              int Function(
                  VTablePointer,
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
                  VTablePointer,
                  Pointer<Utf16> requiredAttributes,
                  Pointer<Utf16> optionalAttributes,
                  Pointer<VTablePointer> objectTokens)>()(
          ptr, requiredAttributes, optionalAttributes, objectTokens);

  int waitUntilDone(int msTimeout, Pointer<Int16> done) =>
      _vtable.WaitUntilDone.asFunction<
          int Function(VTablePointer, int msTimeout,
              Pointer<Int16> done)>()(ptr, msTimeout, done);

  int speakCompleteEvent(Pointer<Int32> handle) =>
      _vtable.SpeakCompleteEvent.asFunction<
          int Function(VTablePointer, Pointer<Int32> handle)>()(ptr, handle);

  int isUISupported(Pointer<Utf16> typeOfUI, Pointer<VARIANT> extraData,
          Pointer<Int16> supported) =>
      _vtable.IsUISupported.asFunction<
          int Function(
              VTablePointer,
              Pointer<Utf16> typeOfUI,
              Pointer<VARIANT> extraData,
              Pointer<Int16> supported)>()(ptr, typeOfUI, extraData, supported);

  int displayUI(int hWndParent, Pointer<Utf16> title, Pointer<Utf16> typeOfUI,
          Pointer<VARIANT> extraData) =>
      _vtable.DisplayUI.asFunction<
              int Function(VTablePointer, int hWndParent, Pointer<Utf16> title,
                  Pointer<Utf16> typeOfUI, Pointer<VARIANT> extraData)>()(
          ptr, hWndParent, title, typeOfUI, extraData);
}

/// @nodoc
base class ISpeechVoiceVtbl extends Struct {
  external IDispatchVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> status)>>
      get_Status;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> voice)>>
      get_Voice;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, VTablePointer voice)>>
      putref_Voice;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<VTablePointer> audioOutput)>>
      get_AudioOutput;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, VTablePointer audioOutput)>>
      putref_AudioOutput;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<VTablePointer> audioOutputStream)>>
      get_AudioOutputStream;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, VTablePointer audioOutputStream)>>
      putref_AudioOutputStream;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> rate)>>
      get_Rate;
  external Pointer<NativeFunction<Int32 Function(VTablePointer, Int32 rate)>>
      put_Rate;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> volume)>>
      get_Volume;
  external Pointer<NativeFunction<Int32 Function(VTablePointer, Int32 volume)>>
      put_Volume;
  external Pointer<NativeFunction<Int32 Function(VTablePointer, Int16 allow)>>
      put_AllowAudioOutputFormatChangesOnNextSet;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int16> allow)>>
      get_AllowAudioOutputFormatChangesOnNextSet;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Int32> eventInterestFlags)>>
      get_EventInterests;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Int32 eventInterestFlags)>>
      put_EventInterests;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Int32 priority)>>
      put_Priority;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<Int32> priority)>> get_Priority;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Int32 boundary)>>
      put_AlertBoundary;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Int32> boundary)>>
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
          Int32 Function(VTablePointer, Pointer<Utf16> text, Int32 flags,
              Pointer<Int32> streamNumber)>> Speak;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, VTablePointer stream, Int32 flags,
              Pointer<Int32> streamNumber)>> SpeakStream;
  external Pointer<NativeFunction<Int32 Function(VTablePointer)>> Pause;
  external Pointer<NativeFunction<Int32 Function(VTablePointer)>> Resume;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<Utf16> type, Int32 numItems,
              Pointer<Int32> numSkipped)>> Skip;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<Utf16> requiredAttributes,
              Pointer<Utf16> optionalAttributes,
              Pointer<VTablePointer> objectTokens)>> GetVoices;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<Utf16> requiredAttributes,
              Pointer<Utf16> optionalAttributes,
              Pointer<VTablePointer> objectTokens)>> GetAudioOutputs;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Int32 msTimeout, Pointer<Int16> done)>>
      WaitUntilDone;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> handle)>>
      SpeakCompleteEvent;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<Utf16> typeOfUI,
              Pointer<VARIANT> extraData,
              Pointer<Int16> supported)>> IsUISupported;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Int32 hWndParent, Pointer<Utf16> title,
              Pointer<Utf16> typeOfUI, Pointer<VARIANT> extraData)>> DisplayUI;
}
