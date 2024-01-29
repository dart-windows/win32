// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../extensions/iunknown.dart';
import '../types.dart';
import '../variant.dart';
import 'idispatch.g.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_ISpeechBaseStream = '{6450336f-7d49-4ced-8097-49d6dee37294}';

/// The ISpeechBaseStream automation interface defines properties and methods
/// for manipulating data streams.
///
/// {@category com}
class ISpeechBaseStream extends IDispatch {
  ISpeechBaseStream(super.ptr)
      : _vtable = ptr.value.cast<ISpeechBaseStreamVtbl>().ref;

  final ISpeechBaseStreamVtbl _vtable;

  factory ISpeechBaseStream.from(IUnknown interface) =>
      ISpeechBaseStream(interface.toInterface(IID_ISpeechBaseStream));

  int get_Format(Pointer<VTablePointer> audioFormat) =>
      _vtable.get_Format.asFunction<
          int Function(VTablePointer,
              Pointer<VTablePointer> audioFormat)>()(ptr, audioFormat);

  int putref_Format(VTablePointer? audioFormat) => _vtable.putref_Format
          .asFunction<int Function(VTablePointer, VTablePointer audioFormat)>()(
      ptr, audioFormat ?? nullptr);

  int read(Pointer<VARIANT> buffer, int numberOfBytes,
          Pointer<Int32> bytesRead) =>
      _vtable.Read.asFunction<
              int Function(VTablePointer, Pointer<VARIANT> buffer,
                  int numberOfBytes, Pointer<Int32> bytesRead)>()(
          ptr, buffer, numberOfBytes, bytesRead);

  int write(VARIANT buffer, Pointer<Int32> bytesWritten) =>
      _vtable.Write.asFunction<
          int Function(VTablePointer, VARIANT buffer,
              Pointer<Int32> bytesWritten)>()(ptr, buffer, bytesWritten);

  int seek(VARIANT position, int origin, Pointer<VARIANT> newPosition) =>
      _vtable.Seek.asFunction<
              int Function(VTablePointer, VARIANT position, int origin,
                  Pointer<VARIANT> newPosition)>()(
          ptr, position, origin, newPosition);
}

/// @nodoc
base class ISpeechBaseStreamVtbl extends Struct {
  external IDispatchVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer, Pointer<VTablePointer> audioFormat)>> get_Format;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, VTablePointer audioFormat)>>
      putref_Format;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<VARIANT> buffer,
              Int32 numberOfBytes, Pointer<Int32> bytesRead)>> Read;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, VARIANT buffer, Pointer<Int32> bytesWritten)>>
      Write;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, VARIANT position, Uint32 origin,
              Pointer<VARIANT> newPosition)>> Seek;
}
