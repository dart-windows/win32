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
const IID_ISequentialStream = '{0c733a30-2a1c-11ce-ade5-00aa0044773d}';

/// Supports simplified sequential access to stream objects.
///
/// The IStream interface inherits its Read and Write methods from
/// ISequentialStream.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/objidl/nn-objidl-isequentialstream>.
///
/// {@category com}
class ISequentialStream extends IUnknown {
  ISequentialStream(super.ptr)
      : _vtable = ptr.value.cast<ISequentialStreamVtbl>().ref;

  final ISequentialStreamVtbl _vtable;

  factory ISequentialStream.from(IUnknown interface) =>
      ISequentialStream(interface.toInterface(IID_ISequentialStream));

  int read(
          Pointer pv, int cb, Pointer<Uint32>? pcbRead) =>
      _vtable.Read.asFunction<
          int Function(VTablePointer lpVtbl, Pointer pv, int cb,
              Pointer<Uint32> pcbRead)>()(ptr, pv, cb, pcbRead ?? nullptr);

  int write(Pointer pv, int cb, Pointer<Uint32>? pcbWritten) =>
      _vtable.Write.asFunction<
              int Function(VTablePointer lpVtbl, Pointer pv, int cb,
                  Pointer<Uint32> pcbWritten)>()(
          ptr, pv, cb, pcbWritten ?? nullptr);
}

/// @nodoc
base class ISequentialStreamVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer pv, Uint32 cb,
              Pointer<Uint32> pcbRead)>> Read;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer pv, Uint32 cb,
              Pointer<Uint32> pcbWritten)>> Write;
}