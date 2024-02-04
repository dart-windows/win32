// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../extensions/iunknown.dart';
import '../types.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IAudioClock2 = '{6f49ff73-6727-49ac-a008-d98cf5e70048}';

/// The IAudioClock2 interface is used to get the current device position. The
/// client obtains a reference to the `IAudioClock` interface of a stream object
/// by calling the `IAudioClient::GetService` method with parameter `riid` set
/// to REFIID `IID_IAudioClock`.
///
/// {@category com}
class IAudioClock2 extends IUnknown {
  IAudioClock2(super.ptr) : _vtable = ptr.value.cast<IAudioClock2Vtbl>().ref;

  final IAudioClock2Vtbl _vtable;

  factory IAudioClock2.from(IUnknown interface) =>
      IAudioClock2(interface.toInterface(IID_IAudioClock2));

  int getDevicePosition(
          Pointer<Uint64> devicePosition, Pointer<Uint64>? qPCPosition) =>
      _vtable.GetDevicePosition.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<Uint64> devicePosition,
                  Pointer<Uint64> qPCPosition)>()(
          ptr, devicePosition, qPCPosition ?? nullptr);
}

/// @nodoc
base class IAudioClock2Vtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer lpVtbl, Pointer<Uint64> devicePosition,
              Pointer<Uint64> qPCPosition)>> GetDevicePosition;
}
