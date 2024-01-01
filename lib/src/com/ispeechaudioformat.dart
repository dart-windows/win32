// ispeechaudioformat.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import '../exceptions.dart';
import '../macros.dart';
import '../utils.dart';
import 'idispatch.dart';
import 'iunknown.dart';

/// @nodoc
const IID_ISpeechAudioFormat = '{e6e9c590-3e18-40e3-8299-061f98bde7c7}';

/// {@category com}
class ISpeechAudioFormat extends IDispatch {
  // vtable begins at 7, is 6 entries long.
  ISpeechAudioFormat(super.ptr)
      : _vtable = ptr.ref.vtable.cast<ISpeechAudioFormatVtbl>().ref;

  final ISpeechAudioFormatVtbl _vtable;

  factory ISpeechAudioFormat.from(IUnknown interface) =>
      ISpeechAudioFormat(interface.toInterface(IID_ISpeechAudioFormat));

  int get type {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_Type
              .asFunction<int Function(Pointer, Pointer<Int32> AudioFormat)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set type(int value) {
    final hr =
        _vtable.put_Type.asFunction<int Function(Pointer, int AudioFormat)>()(
            ptr.ref.lpVtbl, value);
    if (FAILED(hr)) throw WindowsException(hr);
  }

  Pointer<Utf16> get guid {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = _vtable.get_Guid.asFunction<
              int Function(Pointer, Pointer<Pointer<Utf16>> Guid)>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set guid(Pointer<Utf16> value) {
    final hr = _vtable.put_Guid
            .asFunction<int Function(Pointer, Pointer<Utf16> Guid)>()(
        ptr.ref.lpVtbl, value);
    if (FAILED(hr)) throw WindowsException(hr);
  }

  int getWaveFormatEx(Pointer<Pointer<COMObject>> SpeechWaveFormatEx) =>
      _vtable.GetWaveFormatEx.asFunction<
              int Function(
                  Pointer, Pointer<Pointer<COMObject>> SpeechWaveFormatEx)>()(
          ptr.ref.lpVtbl, SpeechWaveFormatEx);

  int setWaveFormatEx(Pointer<COMObject> SpeechWaveFormatEx) =>
      _vtable.SetWaveFormatEx.asFunction<
              int Function(Pointer, Pointer<COMObject> SpeechWaveFormatEx)>()(
          ptr.ref.lpVtbl, SpeechWaveFormatEx);
}

/// @nodoc
base class ISpeechAudioFormatVtbl extends Struct {
  external IDispatchVtbl baseVtbl;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> AudioFormat)>>
      get_Type;
  external Pointer<NativeFunction<Int32 Function(Pointer, Int32 AudioFormat)>>
      put_Type;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Pointer<Utf16>> Guid)>>
      get_Guid;
  external Pointer<NativeFunction<Int32 Function(Pointer, Pointer<Utf16> Guid)>>
      put_Guid;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer, Pointer<Pointer<COMObject>> SpeechWaveFormatEx)>>
      GetWaveFormatEx;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<COMObject> SpeechWaveFormatEx)>>
      SetWaveFormatEx;
}
