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
const IID_ISpeechVoiceStatus = '{8be47b07-57f6-11d2-9eee-00c04f797396}';

/// Defines the types of information returned by the SpVoice.Status method.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/previous-versions/windows/desktop/ms722539(v=vs.85)>.
///
/// {@category com}
class ISpeechVoiceStatus extends IDispatch {
  ISpeechVoiceStatus(super.ptr)
      : _vtable = ptr.value.cast<ISpeechVoiceStatusVtbl>().ref;

  final ISpeechVoiceStatusVtbl _vtable;

  factory ISpeechVoiceStatus.from(IUnknown interface) =>
      ISpeechVoiceStatus(interface.toInterface(IID_ISpeechVoiceStatus));

  int get currentStreamNumber {
    final streamNumber = calloc<Int32>();
    try {
      final hr = _vtable.get_CurrentStreamNumber.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Int32> streamNumber)>()(ptr, streamNumber);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = streamNumber.value;
      return retValue;
    } finally {
      free(streamNumber);
    }
  }

  int get lastStreamNumberQueued {
    final streamNumber = calloc<Int32>();
    try {
      final hr = _vtable.get_LastStreamNumberQueued.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Int32> streamNumber)>()(ptr, streamNumber);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = streamNumber.value;
      return retValue;
    } finally {
      free(streamNumber);
    }
  }

  int get lastHResult {
    final hResult = calloc<Int32>();
    try {
      final hr = _vtable.get_LastHResult.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> hResult)>()(ptr, hResult);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = hResult.value;
      return retValue;
    } finally {
      free(hResult);
    }
  }

  int get runningState {
    final state = calloc<Int32>();
    try {
      final hr = _vtable.get_RunningState.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> state)>()(ptr, state);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = state.value;
      return retValue;
    } finally {
      free(state);
    }
  }

  int get inputWordPosition {
    final position = calloc<Int32>();
    try {
      final hr = _vtable.get_InputWordPosition.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> position)>()(ptr, position);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = position.value;
      return retValue;
    } finally {
      free(position);
    }
  }

  int get inputWordLength {
    final length = calloc<Int32>();
    try {
      final hr = _vtable.get_InputWordLength.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> length)>()(ptr, length);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = length.value;
      return retValue;
    } finally {
      free(length);
    }
  }

  int get inputSentencePosition {
    final position = calloc<Int32>();
    try {
      final hr = _vtable.get_InputSentencePosition.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> position)>()(ptr, position);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = position.value;
      return retValue;
    } finally {
      free(position);
    }
  }

  int get inputSentenceLength {
    final length = calloc<Int32>();
    try {
      final hr = _vtable.get_InputSentenceLength.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> length)>()(ptr, length);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = length.value;
      return retValue;
    } finally {
      free(length);
    }
  }

  Pointer<Utf16> get lastBookmark {
    final bookmark = calloc<Pointer<Utf16>>();
    try {
      final hr = _vtable.get_LastBookmark.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Pointer<Utf16>> bookmark)>()(ptr, bookmark);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = bookmark.value;
      return retValue;
    } finally {
      free(bookmark);
    }
  }

  int get lastBookmarkId {
    final bookmarkId = calloc<Int32>();
    try {
      final hr = _vtable.get_LastBookmarkId.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<Int32> bookmarkId)>()(
          ptr, bookmarkId);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = bookmarkId.value;
      return retValue;
    } finally {
      free(bookmarkId);
    }
  }

  int get phonemeId {
    final phoneId = calloc<Int16>();
    try {
      final hr = _vtable.get_PhonemeId.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int16> phoneId)>()(ptr, phoneId);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = phoneId.value;
      return retValue;
    } finally {
      free(phoneId);
    }
  }

  int get visemeId {
    final visemeId = calloc<Int16>();
    try {
      final hr = _vtable.get_VisemeId.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int16> visemeId)>()(ptr, visemeId);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = visemeId.value;
      return retValue;
    } finally {
      free(visemeId);
    }
  }
}

/// @nodoc
base class ISpeechVoiceStatusVtbl extends Struct {
  external IDispatchVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Int32> streamNumber)>>
      get_CurrentStreamNumber;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Int32> streamNumber)>>
      get_LastStreamNumberQueued;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> hResult)>>
      get_LastHResult;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> state)>>
      get_RunningState;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> position)>>
      get_InputWordPosition;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> length)>>
      get_InputWordLength;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> position)>>
      get_InputSentencePosition;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> length)>>
      get_InputSentenceLength;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Pointer<Utf16>> bookmark)>>
      get_LastBookmark;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Int32> bookmarkId)>>
      get_LastBookmarkId;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int16> phoneId)>>
      get_PhonemeId;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int16> visemeId)>>
      get_VisemeId;
}
