// iaudioclockadjustment.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'iunknown.dart';

/// @nodoc
const IID_IAudioClockAdjustment = '{f6e4c0a0-46d9-4fb8-be21-57a3ef2b626c}';

/// The IAudioClockAdjustment interface is used to adjust the sample rate of
/// a stream. The client obtains a reference to the `IAudioClockAdjustment`
/// interface of a stream object by calling the `IAudioClient::GetService`
/// method with parameter `riid` set to REFIID [IID_IAudioClockAdjustment].
/// Adjusting the sample rate is not supported for exclusive mode streams.
///
/// {@category com}
class IAudioClockAdjustment extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IAudioClockAdjustment(super.ptr)
      : _vtable = ptr.ref.vtable.cast<IAudioClockAdjustmentVtbl>().ref;

  final IAudioClockAdjustmentVtbl _vtable;

  factory IAudioClockAdjustment.from(IUnknown interface) =>
      IAudioClockAdjustment(interface.toInterface(IID_IAudioClockAdjustment));

  int setSampleRate(double flSampleRate) => _vtable.SetSampleRate.asFunction<
      int Function(
          Pointer, double flSampleRate)>()(ptr.ref.lpVtbl, flSampleRate);
}

/// @nodoc
base class IAudioClockAdjustmentVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<NativeFunction<Int32 Function(Pointer, Float flSampleRate)>>
      SetSampleRate;
}
