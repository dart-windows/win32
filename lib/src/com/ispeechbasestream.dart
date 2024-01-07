// ispeechbasestream.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../exceptions.dart';
import '../macros.dart';
import '../types.dart';
import '../utils.dart';
import '../variant.dart';
import 'idispatch.dart';
import 'iunknown.dart';

/// @nodoc
const IID_ISpeechBaseStream = '{6450336f-7d49-4ced-8097-49d6dee37294}';

/// The ISpeechBaseStream automation interface defines properties and
/// methods for manipulating data streams.
///
/// {@category com}
class ISpeechBaseStream extends IDispatch {
  // vtable begins at 7, is 5 entries long.
  ISpeechBaseStream(super.ptr)
      : _vtable = ptr.value.value.cast<ISpeechBaseStreamVtbl>().ref;

  final ISpeechBaseStreamVtbl _vtable;

  factory ISpeechBaseStream.from(IUnknown interface) =>
      ISpeechBaseStream(interface.toInterface(IID_ISpeechBaseStream));

  Pointer<VTablePointer> get format {
    final retValuePtr = calloc<VTablePointer>();

    final hr = _vtable.get_Format.asFunction<
            int Function(VTablePointer, Pointer<VTablePointer> AudioFormat)>()(
        ptr.value, retValuePtr);
    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }

  int putref_Format(Pointer<VTablePointer> AudioFormat) =>
      _vtable.putref_Format.asFunction<
          int Function(VTablePointer,
              Pointer<VTablePointer> AudioFormat)>()(ptr.value, AudioFormat);

  int read(Pointer<VARIANT> Buffer, int NumberOfBytes,
          Pointer<Int32> BytesRead) =>
      _vtable.Read.asFunction<
              int Function(VTablePointer, Pointer<VARIANT> Buffer,
                  int NumberOfBytes, Pointer<Int32> BytesRead)>()(
          ptr.value, Buffer, NumberOfBytes, BytesRead);

  int write(VARIANT Buffer, Pointer<Int32> BytesWritten) =>
      _vtable.Write.asFunction<
          int Function(VTablePointer, VARIANT Buffer,
              Pointer<Int32> BytesWritten)>()(ptr.value, Buffer, BytesWritten);

  int seek(VARIANT Position, int Origin, Pointer<VARIANT> NewPosition) =>
      _vtable.Seek.asFunction<
              int Function(VTablePointer, VARIANT Position, int Origin,
                  Pointer<VARIANT> NewPosition)>()(
          ptr.value, Position, Origin, NewPosition);
}

/// @nodoc
base class ISpeechBaseStreamVtbl extends Struct {
  external IDispatchVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer, Pointer<VTablePointer> AudioFormat)>> get_Format;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<VTablePointer> AudioFormat)>>
      putref_Format;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<VARIANT> Buffer,
              Int32 NumberOfBytes, Pointer<Int32> BytesRead)>> Read;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, VARIANT Buffer, Pointer<Int32> BytesWritten)>>
      Write;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, VARIANT Position, Uint32 Origin,
              Pointer<VARIANT> NewPosition)>> Seek;
}
