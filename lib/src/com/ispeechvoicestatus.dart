// ispeechvoicestatus.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../exceptions.dart';
import '../macros.dart';
import '../utils.dart';
import 'idispatch.dart';
import 'iunknown.dart';

/// @nodoc
const IID_ISpeechVoiceStatus = '{8be47b07-57f6-11d2-9eee-00c04f797396}';

/// The ISpeechVoiceStatus automation interface defines the types of
/// information returned by the SpVoice.Status method.
///
/// {@category com}
class ISpeechVoiceStatus extends IDispatch {
  // vtable begins at 7, is 12 entries long.
  ISpeechVoiceStatus(super.ptr)
      : _vtable = ptr.ref.vtable.cast<ISpeechVoiceStatusVtbl>().ref;

  final ISpeechVoiceStatusVtbl _vtable;

  factory ISpeechVoiceStatus.from(IUnknown interface) =>
      ISpeechVoiceStatus(interface.toInterface(IID_ISpeechVoiceStatus));

  int get currentStreamNumber {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_CurrentStreamNumber
              .asFunction<int Function(Pointer, Pointer<Int32> StreamNumber)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get lastStreamNumberQueued {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_LastStreamNumberQueued
              .asFunction<int Function(Pointer, Pointer<Int32> StreamNumber)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get lastHResult {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_LastHResult
              .asFunction<int Function(Pointer, Pointer<Int32> HResult)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get runningState {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_RunningState
              .asFunction<int Function(Pointer, Pointer<Int32> State)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get inputWordPosition {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_InputWordPosition
              .asFunction<int Function(Pointer, Pointer<Int32> Position)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get inputWordLength {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_InputWordLength
              .asFunction<int Function(Pointer, Pointer<Int32> Length)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get inputSentencePosition {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_InputSentencePosition
              .asFunction<int Function(Pointer, Pointer<Int32> Position)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get inputSentenceLength {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_InputSentenceLength
              .asFunction<int Function(Pointer, Pointer<Int32> Length)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get lastBookmark {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = _vtable.get_LastBookmark.asFunction<
              int Function(Pointer, Pointer<Pointer<Utf16>> Bookmark)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get lastBookmarkId {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_LastBookmarkId
              .asFunction<int Function(Pointer, Pointer<Int32> BookmarkId)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get phonemeId {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = _vtable.get_PhonemeId
              .asFunction<int Function(Pointer, Pointer<Int16> PhoneId)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get visemeId {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = _vtable.get_VisemeId
              .asFunction<int Function(Pointer, Pointer<Int16> VisemeId)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}

/// @nodoc
base class ISpeechVoiceStatusVtbl extends Struct {
  external IDispatchVtbl baseVtbl;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> StreamNumber)>>
      get_CurrentStreamNumber;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> StreamNumber)>>
      get_LastStreamNumberQueued;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> HResult)>>
      get_LastHResult;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> State)>>
      get_RunningState;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> Position)>>
      get_InputWordPosition;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> Length)>>
      get_InputWordLength;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> Position)>>
      get_InputSentencePosition;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> Length)>>
      get_InputSentenceLength;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<Pointer<Utf16>> Bookmark)>>
      get_LastBookmark;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> BookmarkId)>>
      get_LastBookmarkId;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int16> PhoneId)>>
      get_PhonemeId;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int16> VisemeId)>>
      get_VisemeId;
}
