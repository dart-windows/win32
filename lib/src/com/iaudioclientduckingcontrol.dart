// iaudioclientduckingcontrol.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../types.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IAudioClientDuckingControl = '{c789d381-a28c-4168-b28f-d3a837924dc3}';

/// Provides a method, `SetDuckingOptionsForCurrentStream`, that allows an
/// app to specify that the system shouldn't duck the audio of other streams
/// when the app's audio render stream is active.
///
/// {@category com}
class IAudioClientDuckingControl extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IAudioClientDuckingControl(super.ptr)
      : _vtable = ptr.value.value.cast<IAudioClientDuckingControlVtbl>().ref;

  final IAudioClientDuckingControlVtbl _vtable;

  factory IAudioClientDuckingControl.from(IUnknown interface) =>
      IAudioClientDuckingControl(
          interface.toInterface(IID_IAudioClientDuckingControl));

  int setDuckingOptionsForCurrentStream(int options) =>
      _vtable.SetDuckingOptionsForCurrentStream.asFunction<
          int Function(VTablePointer, int options)>()(ptr.value, options);
}

/// @nodoc
base class IAudioClientDuckingControlVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<NativeFunction<Int32 Function(VTablePointer, Int32 options)>>
      SetDuckingOptionsForCurrentStream;
}
