// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../extensions/iunknown.dart';
import '../types.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IAudioClock = '{cd63314f-3fba-4a1b-812c-ef96358728e7}';

/// The IAudioClock interface enables a client to monitor a stream's data
/// rate and the current position in the stream. The client obtains a
/// reference to the `IAudioClock` interface of a stream object by calling
/// the `IAudioClient::GetService` method with parameter `riid` set to
/// REFIID [IID_IAudioClock].
///
/// {@category com}
class IAudioClock extends IUnknown {
  IAudioClock(super.ptr) : _vtable = ptr.value.cast<IAudioClockVtbl>().ref;

  final IAudioClockVtbl _vtable;

  factory IAudioClock.from(IUnknown interface) =>
      IAudioClock(interface.toInterface(IID_IAudioClock));

  int getFrequency(Pointer<Uint64> pu64Frequency) =>
      _vtable.GetFrequency.asFunction<
              int Function(VTablePointer, Pointer<Uint64> pu64Frequency)>()(
          ptr, pu64Frequency);

  int getPosition(
          Pointer<Uint64> pu64Position, Pointer<Uint64> pu64QPCPosition) =>
      _vtable.GetPosition.asFunction<
              int Function(VTablePointer, Pointer<Uint64> pu64Position,
                  Pointer<Uint64> pu64QPCPosition)>()(
          ptr, pu64Position, pu64QPCPosition);

  int getCharacteristics(Pointer<Uint32> pdwCharacteristics) =>
      _vtable.GetCharacteristics.asFunction<
          int Function(VTablePointer,
              Pointer<Uint32> pdwCharacteristics)>()(ptr, pdwCharacteristics);
}

/// @nodoc
base class IAudioClockVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Uint64> pu64Frequency)>>
      GetFrequency;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<Uint64> pu64Position,
              Pointer<Uint64> pu64QPCPosition)>> GetPosition;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Uint32> pdwCharacteristics)>>
      GetCharacteristics;
}
