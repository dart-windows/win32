// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../extensions/iunknown.dart';
import '../structs.g.dart';
import '../types.dart';
import 'ipersist.g.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IPersistStream = '{00000109-0000-0000-c000-000000000046}';

/// Enables the saving and loading of objects that use a simple serial stream
/// for their storage needs.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/objidl/nn-objidl-ipersiststream>.
///
/// {@category com}
class IPersistStream extends IPersist {
  IPersistStream(super.ptr)
      : _vtable = ptr.value.cast<IPersistStreamVtbl>().ref;

  final IPersistStreamVtbl _vtable;

  factory IPersistStream.from(IUnknown interface) =>
      IPersistStream(interface.toInterface(IID_IPersistStream));

  int isDirty() =>
      _vtable.IsDirty.asFunction<int Function(VTablePointer lpVtbl)>()(ptr);

  int load(VTablePointer pStm) => _vtable.Load.asFunction<
      int Function(VTablePointer lpVtbl, VTablePointer pStm)>()(ptr, pStm);

  int save(VTablePointer pStm, int fClearDirty) => _vtable.Save.asFunction<
      int Function(VTablePointer lpVtbl, VTablePointer pStm,
          int fClearDirty)>()(ptr, pStm, fClearDirty);

  int getSizeMax(Pointer<Uint64> pcbSize) => _vtable.GetSizeMax.asFunction<
      int Function(
          VTablePointer lpVtbl, Pointer<Uint64> pcbSize)>()(ptr, pcbSize);
}

/// @nodoc
base class IPersistStreamVtbl extends Struct {
  external IPersistVtbl baseVtbl;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      IsDirty;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer pStm)>> Load;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, VTablePointer pStm, BOOL fClearDirty)>>
      Save;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint64> pcbSize)>>
      GetSizeMax;
}