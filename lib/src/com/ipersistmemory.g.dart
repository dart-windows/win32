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
const IID_IPersistMemory = '{bd1ae5e0-a6ae-11ce-bd37-504200c10000}';

/// Saves and loads objects from a stream.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/previous-versions/windows/internet-explorer/ie-developer/platform-apis/aa768210(v=vs.85)>.
///
/// {@category com}
class IPersistMemory extends IPersist {
  IPersistMemory(super.ptr)
      : _vtable = ptr.value.cast<IPersistMemoryVtbl>().ref;

  final IPersistMemoryVtbl _vtable;

  factory IPersistMemory.from(IUnknown interface) =>
      IPersistMemory(interface.toInterface(IID_IPersistMemory));

  int isDirty() =>
      _vtable.IsDirty.asFunction<int Function(VTablePointer lpVtbl)>()(ptr);

  int load(Pointer pMem, int cbSize) => _vtable.Load.asFunction<
      int Function(
          VTablePointer lpVtbl, Pointer pMem, int cbSize)>()(ptr, pMem, cbSize);

  int save(Pointer pMem, int fClearDirty, int cbSize) =>
      _vtable.Save.asFunction<
          int Function(VTablePointer lpVtbl, Pointer pMem, int fClearDirty,
              int cbSize)>()(ptr, pMem, fClearDirty, cbSize);

  int getSizeMax(Pointer<Uint32> pCbSize) => _vtable.GetSizeMax.asFunction<
      int Function(
          VTablePointer lpVtbl, Pointer<Uint32> pCbSize)>()(ptr, pCbSize);

  int initNew() =>
      _vtable.InitNew.asFunction<int Function(VTablePointer lpVtbl)>()(ptr);
}

/// @nodoc
base class IPersistMemoryVtbl extends Struct {
  external IPersistVtbl baseVtbl;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      IsDirty;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer pMem, Uint32 cbSize)>> Load;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer pMem, BOOL fClearDirty,
              Uint32 cbSize)>> Save;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> pCbSize)>>
      GetSizeMax;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      InitNew;
}
