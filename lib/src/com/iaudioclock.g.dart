// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../extensions/iunknown.dart';
import '../structs.g.dart';
import '../types.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IAudioClock = '{cd63314f-3fba-4a1b-812c-ef96358728e7}';

/// Enables a client to monitor a stream's data rate and the current position in
/// the stream.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/audioclient/nn-audioclient-iaudioclock>.
///
/// {@category com}
class IAudioClock extends IUnknown {
  IAudioClock(super.ptr) : _vtable = ptr.value.cast<IAudioClockVtbl>().ref;

  final IAudioClockVtbl _vtable;

  factory IAudioClock.from(IUnknown interface) =>
      IAudioClock(interface.toInterface(IID_IAudioClock));

  /// Gets the device frequency.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/audioclient/nf-audioclient-iaudioclock-getfrequency>.
  int getFrequency(Pointer<Uint64> pu64Frequency) =>
      _vtable.GetFrequency.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Uint64> pu64Frequency)>()(ptr, pu64Frequency);

  /// Gets the current device position.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/audioclient/nf-audioclient-iaudioclock-getposition>.
  int getPosition(
          Pointer<Uint64> pu64Position, Pointer<Uint64>? pu64QPCPosition) =>
      _vtable.GetPosition.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<Uint64> pu64Position,
                  Pointer<Uint64> pu64QPCPosition)>()(
          ptr, pu64Position, pu64QPCPosition ?? nullptr);

  /// Reserved for future use.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/audioclient/nf-audioclient-iaudioclock-getcharacteristics>.
  int getCharacteristics(Pointer<Uint32> pdwCharacteristics) =>
      _vtable.GetCharacteristics.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Uint32> pdwCharacteristics)>()(ptr, pdwCharacteristics);
}

/// @nodoc
base class IAudioClockVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Uint64> pu64Frequency)>>
      GetFrequency;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<Uint64> pu64Position,
              Pointer<Uint64> pu64QPCPosition)>> GetPosition;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Uint32> pdwCharacteristics)>>
      GetCharacteristics;
}
