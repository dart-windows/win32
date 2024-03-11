// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../exceptions.dart';
import '../extensions/iunknown.dart';
import '../structs.g.dart';
import '../types.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IAudioClockAdjustment = '{f6e4c0a0-46d9-4fb8-be21-57a3ef2b626c}';

/// Used to adjust the sample rate of a stream.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/audioclient/nn-audioclient-iaudioclockadjustment>.
///
/// {@category com}
class IAudioClockAdjustment extends IUnknown {
  IAudioClockAdjustment(super.ptr)
      : _vtable = ptr.value.cast<IAudioClockAdjustmentVtbl>().ref;

  final IAudioClockAdjustmentVtbl _vtable;

  /// Creates a new instance of `IAudioClockAdjustment` from an existing
  /// [interface].
  ///
  /// This constructor invokes the [queryInterface] method to obtain a reference
  /// to the `IAudioClockAdjustment` interface with the provided interface.
  ///
  /// Throws a [WindowsException] if the `queryInterface` call fails.
  factory IAudioClockAdjustment.from(IUnknown interface) =>
      IAudioClockAdjustment(interface.toInterface(IID_IAudioClockAdjustment));

  /// Sets the sample rate of a stream.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/audioclient/nf-audioclient-iaudioclockadjustment-setsamplerate>.
  int setSampleRate(double flSampleRate) => _vtable.SetSampleRate.asFunction<
      int Function(
          VTablePointer lpVtbl, double flSampleRate)>()(ptr, flSampleRate);
}

/// @nodoc
base class IAudioClockAdjustmentVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Float flSampleRate)>>
      SetSampleRate;
}
