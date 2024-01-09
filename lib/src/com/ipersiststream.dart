// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../extensions/iunknown.dart';
import '../types.dart';
import 'ipersist.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IPersistStream = '{00000109-0000-0000-c000-000000000046}';

/// Enables the saving and loading of objects that use a simple serial
/// stream for their storage needs.
///
/// {@category com}
class IPersistStream extends IPersist {
  IPersistStream(super.ptr)
      : _vtable = ptr.value.cast<IPersistStreamVtbl>().ref;

  final IPersistStreamVtbl _vtable;

  factory IPersistStream.from(IUnknown interface) =>
      IPersistStream(interface.toInterface(IID_IPersistStream));

  int isDirty() =>
      _vtable.IsDirty.asFunction<int Function(VTablePointer)>()(ptr);

  int load(VTablePointer pStm) => _vtable.Load.asFunction<
      int Function(VTablePointer, VTablePointer pStm)>()(ptr, pStm);

  int save(VTablePointer pStm, int fClearDirty) => _vtable.Save.asFunction<
          int Function(VTablePointer, VTablePointer pStm, int fClearDirty)>()(
      ptr, pStm, fClearDirty);

  int getSizeMax(Pointer<Uint64> pcbSize) => _vtable.GetSizeMax.asFunction<
      int Function(VTablePointer, Pointer<Uint64> pcbSize)>()(ptr, pcbSize);
}

/// @nodoc
base class IPersistStreamVtbl extends Struct {
  external IPersistVtbl baseVtbl;
  external Pointer<NativeFunction<Int32 Function(VTablePointer)>> IsDirty;
  external Pointer<
      NativeFunction<Int32 Function(VTablePointer, VTablePointer pStm)>> Load;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer, VTablePointer pStm, Int32 fClearDirty)>> Save;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<Uint64> pcbSize)>> GetSizeMax;
}
