// ispeechbasestream.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import '../exceptions.dart';
import '../macros.dart';
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
      : _vtable = ptr.ref.vtable.cast<ISpeechBaseStreamVtbl>().ref;

  final ISpeechBaseStreamVtbl _vtable;

  factory ISpeechBaseStream.from(IUnknown interface) =>
      ISpeechBaseStream(interface.toInterface(IID_ISpeechBaseStream));

  Pointer<COMObject> get format {
    final retValuePtr = calloc<COMObject>();

    final hr = _vtable.get_Format.asFunction<
            int Function(Pointer, Pointer<COMObject> AudioFormat)>()(
        ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }

  int putref_Format(Pointer<COMObject> AudioFormat) => _vtable.putref_Format
          .asFunction<int Function(Pointer, Pointer<COMObject> AudioFormat)>()(
      ptr.ref.lpVtbl, AudioFormat);

  int read(Pointer<VARIANT> Buffer, int NumberOfBytes,
          Pointer<Int32> BytesRead) =>
      _vtable.Read.asFunction<
              int Function(Pointer, Pointer<VARIANT> Buffer, int NumberOfBytes,
                  Pointer<Int32> BytesRead)>()(
          ptr.ref.lpVtbl, Buffer, NumberOfBytes, BytesRead);

  int write(VARIANT Buffer, Pointer<Int32> BytesWritten) =>
      _vtable.Write.asFunction<
              int Function(
                  Pointer, VARIANT Buffer, Pointer<Int32> BytesWritten)>()(
          ptr.ref.lpVtbl, Buffer, BytesWritten);

  int seek(VARIANT Position, int Origin, Pointer<VARIANT> NewPosition) =>
      _vtable.Seek.asFunction<
              int Function(Pointer, VARIANT Position, int Origin,
                  Pointer<VARIANT> NewPosition)>()(
          ptr.ref.lpVtbl, Position, Origin, NewPosition);
}

/// @nodoc
base class ISpeechBaseStreamVtbl extends Struct {
  external IDispatchVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<COMObject> AudioFormat)>> get_Format;
  external Pointer<
          NativeFunction<
              Int32 Function(Pointer, Pointer<COMObject> AudioFormat)>>
      putref_Format;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<VARIANT> Buffer, Int32 NumberOfBytes,
              Pointer<Int32> BytesRead)>> Read;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer, VARIANT Buffer, Pointer<Int32> BytesWritten)>> Write;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, VARIANT Position, Uint32 Origin,
              Pointer<VARIANT> NewPosition)>> Seek;
}
