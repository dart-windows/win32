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
const IID_IAudioClientDuckingControl = '{c789d381-a28c-4168-b28f-d3a837924dc3}';

/// Provides a method, SetDuckingOptionsForCurrentStream, that allows an app to
/// specify that the system shouldn't duck the audio of other streams when the
/// app's audio render stream is active.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/audioclient/nn-audioclient-iaudioclientduckingcontrol>.
///
/// {@category com}
class IAudioClientDuckingControl extends IUnknown {
  IAudioClientDuckingControl(super.ptr)
      : _vtable = ptr.value.cast<IAudioClientDuckingControlVtbl>().ref;

  final IAudioClientDuckingControlVtbl _vtable;

  factory IAudioClientDuckingControl.from(IUnknown interface) =>
      IAudioClientDuckingControl(
          interface.toInterface(IID_IAudioClientDuckingControl));

  /// Sets the audio ducking options for an audio render stream.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/audioclient/nf-audioclient-iaudioclientduckingcontrol-setduckingoptionsforcurrentstream>.
  int setDuckingOptionsForCurrentStream(int options) =>
      _vtable.SetDuckingOptionsForCurrentStream.asFunction<
          int Function(VTablePointer lpVtbl, int options)>()(ptr, options);
}

/// @nodoc
base class IAudioClientDuckingControlVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Int32 options)>>
      SetDuckingOptionsForCurrentStream;
}
