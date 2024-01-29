// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../extensions/iunknown.dart';
import '../types.dart';
import 'idispatch.g.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_ISpeechVoiceStatus = '{8be47b07-57f6-11d2-9eee-00c04f797396}';

/// The ISpeechVoiceStatus automation interface defines the types of information
/// returned by the SpVoice.Status method.
///
/// {@category com}
class ISpeechVoiceStatus extends IDispatch {
  ISpeechVoiceStatus(super.ptr)
      : _vtable = ptr.value.cast<ISpeechVoiceStatusVtbl>().ref;

  final ISpeechVoiceStatusVtbl _vtable;

  factory ISpeechVoiceStatus.from(IUnknown interface) =>
      ISpeechVoiceStatus(interface.toInterface(IID_ISpeechVoiceStatus));

  int get_CurrentStreamNumber(Pointer<Int32> StreamNumber) =>
      _vtable.get_CurrentStreamNumber.asFunction<
          int Function(
              VTablePointer, Pointer<Int32> StreamNumber)>()(ptr, StreamNumber);

  int get_LastStreamNumberQueued(Pointer<Int32> StreamNumber) =>
      _vtable.get_LastStreamNumberQueued.asFunction<
          int Function(
              VTablePointer, Pointer<Int32> StreamNumber)>()(ptr, StreamNumber);

  int get_LastHResult(Pointer<Int32> HResult) => _vtable.get_LastHResult
          .asFunction<int Function(VTablePointer, Pointer<Int32> HResult)>()(
      ptr, HResult);

  int get_RunningState(Pointer<Int32> State) => _vtable.get_RunningState
          .asFunction<int Function(VTablePointer, Pointer<Int32> State)>()(
      ptr, State);

  int get_InputWordPosition(Pointer<Int32> Position) => _vtable
          .get_InputWordPosition
          .asFunction<int Function(VTablePointer, Pointer<Int32> Position)>()(
      ptr, Position);

  int get_InputWordLength(Pointer<Int32> Length) => _vtable.get_InputWordLength
          .asFunction<int Function(VTablePointer, Pointer<Int32> Length)>()(
      ptr, Length);

  int get_InputSentencePosition(Pointer<Int32> Position) => _vtable
          .get_InputSentencePosition
          .asFunction<int Function(VTablePointer, Pointer<Int32> Position)>()(
      ptr, Position);

  int get_InputSentenceLength(Pointer<Int32> Length) =>
      _vtable.get_InputSentenceLength
              .asFunction<int Function(VTablePointer, Pointer<Int32> Length)>()(
          ptr, Length);

  int get_LastBookmark(Pointer<Pointer<Utf16>> Bookmark) =>
      _vtable.get_LastBookmark.asFunction<
              int Function(VTablePointer, Pointer<Pointer<Utf16>> Bookmark)>()(
          ptr, Bookmark);

  int get_LastBookmarkId(Pointer<Int32> BookmarkId) => _vtable
          .get_LastBookmarkId
          .asFunction<int Function(VTablePointer, Pointer<Int32> BookmarkId)>()(
      ptr, BookmarkId);

  int get_PhonemeId(Pointer<Int16> PhoneId) => _vtable.get_PhonemeId
          .asFunction<int Function(VTablePointer, Pointer<Int16> PhoneId)>()(
      ptr, PhoneId);

  int get_VisemeId(Pointer<Int16> VisemeId) => _vtable.get_VisemeId
          .asFunction<int Function(VTablePointer, Pointer<Int16> VisemeId)>()(
      ptr, VisemeId);
}

/// @nodoc
base class ISpeechVoiceStatusVtbl extends Struct {
  external IDispatchVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Int32> StreamNumber)>>
      get_CurrentStreamNumber;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Int32> StreamNumber)>>
      get_LastStreamNumberQueued;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> HResult)>>
      get_LastHResult;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> State)>>
      get_RunningState;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Int32> Position)>>
      get_InputWordPosition;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> Length)>>
      get_InputWordLength;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Int32> Position)>>
      get_InputSentencePosition;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int32> Length)>>
      get_InputSentenceLength;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Pointer<Utf16>> Bookmark)>>
      get_LastBookmark;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Int32> BookmarkId)>>
      get_LastBookmarkId;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer<Int16> PhoneId)>>
      get_PhonemeId;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<Int16> VisemeId)>> get_VisemeId;
}
