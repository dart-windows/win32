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
const IID_IShellLinkDataList = '{45e2b4ae-b1c3-11d0-b92f-00a0c90312e1}';

/// Exposes methods that allow an application to attach extra data blocks to a
/// Shell link. These methods add, copy, or remove data blocks.
///
/// {@category com}
class IShellLinkDataList extends IUnknown {
  IShellLinkDataList(super.ptr)
      : _vtable = ptr.value.cast<IShellLinkDataListVtbl>().ref;

  final IShellLinkDataListVtbl _vtable;

  factory IShellLinkDataList.from(IUnknown interface) =>
      IShellLinkDataList(interface.toInterface(IID_IShellLinkDataList));

  int addDataBlock(Pointer pDataBlock) => _vtable.AddDataBlock.asFunction<
      int Function(
          VTablePointer lpVtbl, Pointer pDataBlock)>()(ptr, pDataBlock);

  int copyDataBlock(int dwSig, Pointer<Pointer> ppDataBlock) =>
      _vtable.CopyDataBlock.asFunction<
          int Function(VTablePointer lpVtbl, int dwSig,
              Pointer<Pointer> ppDataBlock)>()(ptr, dwSig, ppDataBlock);

  int removeDataBlock(int dwSig) => _vtable.RemoveDataBlock.asFunction<
      int Function(VTablePointer lpVtbl, int dwSig)>()(ptr, dwSig);

  int getFlags(Pointer<Uint32> pdwFlags) => _vtable.GetFlags.asFunction<
      int Function(
          VTablePointer lpVtbl, Pointer<Uint32> pdwFlags)>()(ptr, pdwFlags);

  int setFlags(int dwFlags) => _vtable.SetFlags.asFunction<
      int Function(VTablePointer lpVtbl, int dwFlags)>()(ptr, dwFlags);
}

/// @nodoc
base class IShellLinkDataListVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer pDataBlock)>>
      AddDataBlock;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 dwSig,
              Pointer<Pointer> ppDataBlock)>> CopyDataBlock;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Uint32 dwSig)>>
      RemoveDataBlock;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> pdwFlags)>>
      GetFlags;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 dwFlags)>> SetFlags;
}
