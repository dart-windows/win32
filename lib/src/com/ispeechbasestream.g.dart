// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../exceptions.dart';
import '../extensions/iunknown.dart';
import '../macros.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import 'idispatch.g.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_ISpeechBaseStream = '{6450336f-7d49-4ced-8097-49d6dee37294}';

/// Defines properties and methods for manipulating data streams.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/previous-versions/windows/desktop/ms721006(v=vs.85)>.
///
/// {@category com}
class ISpeechBaseStream extends IDispatch {
  ISpeechBaseStream(super.ptr)
      : _vtable = ptr.value.cast<ISpeechBaseStreamVtbl>().ref;

  final ISpeechBaseStreamVtbl _vtable;

  factory ISpeechBaseStream.from(IUnknown interface) =>
      ISpeechBaseStream(interface.toInterface(IID_ISpeechBaseStream));

  VTablePointer get format {
    final audioFormat = calloc<VTablePointer>();
    try {
      final hr = _vtable.get_Format.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> audioFormat)>()(ptr, audioFormat);
      if (FAILED(hr)) throw WindowsException(hr);
      final retValue = audioFormat.value;
      return retValue;
    } finally {
      free(audioFormat);
    }
  }

  int putref_Format(VTablePointer? audioFormat) => _vtable.putref_Format
          .asFunction<
              int Function(VTablePointer lpVtbl, VTablePointer audioFormat)>()(
      ptr, audioFormat ?? nullptr);

  int read(Pointer<VARIANT> buffer, int numberOfBytes,
          Pointer<Int32> bytesRead) =>
      _vtable.Read.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<VARIANT> buffer,
                  int numberOfBytes, Pointer<Int32> bytesRead)>()(
          ptr, buffer, numberOfBytes, bytesRead);

  int write(VARIANT buffer, Pointer<Int32> bytesWritten) =>
      _vtable.Write.asFunction<
          int Function(VTablePointer lpVtbl, VARIANT buffer,
              Pointer<Int32> bytesWritten)>()(ptr, buffer, bytesWritten);

  int seek(VARIANT position, int origin, Pointer<VARIANT> newPosition) =>
      _vtable.Seek.asFunction<
              int Function(VTablePointer lpVtbl, VARIANT position, int origin,
                  Pointer<VARIANT> newPosition)>()(
          ptr, position, origin, newPosition);
}

/// @nodoc
base class ISpeechBaseStreamVtbl extends Struct {
  external IDispatchVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> audioFormat)>>
      get_Format;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, VTablePointer audioFormat)>> putref_Format;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<VARIANT> buffer,
              Int32 numberOfBytes, Pointer<Int32> bytesRead)>> Read;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VARIANT buffer,
              Pointer<Int32> bytesWritten)>> Write;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VARIANT position,
              Uint32 origin, Pointer<VARIANT> newPosition)>> Seek;
}
