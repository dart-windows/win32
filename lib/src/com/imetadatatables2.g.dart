// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../extensions/iunknown.dart';
import '../structs.g.dart';
import '../types.dart';
import 'imetadatatables.g.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IMetaDataTables2 = '{badb5f70-58da-43a9-a1c6-d74819f19b15}';

/// Extends IMetaDataTables to include methods for working with metadata
/// streams.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nn-rometadataapi-imetadatatables2>.
///
/// {@category com}
class IMetaDataTables2 extends IMetaDataTables {
  IMetaDataTables2(super.ptr)
      : _vtable = ptr.value.cast<IMetaDataTables2Vtbl>().ref;

  final IMetaDataTables2Vtbl _vtable;

  factory IMetaDataTables2.from(IUnknown interface) =>
      IMetaDataTables2(interface.toInterface(IID_IMetaDataTables2));

  int getMetaDataStorage(Pointer<Pointer> ppvMd, Pointer<Uint32> pcbMd) =>
      _vtable.GetMetaDataStorage.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<Pointer> ppvMd,
              Pointer<Uint32> pcbMd)>()(ptr, ppvMd, pcbMd);

  int getMetaDataStreamInfo(int ix, Pointer<Pointer<Int8>> ppchName,
          Pointer<Pointer> ppv, Pointer<Uint32> pcb) =>
      _vtable.GetMetaDataStreamInfo.asFunction<
          int Function(
              VTablePointer lpVtbl,
              int ix,
              Pointer<Pointer<Int8>> ppchName,
              Pointer<Pointer> ppv,
              Pointer<Uint32> pcb)>()(ptr, ix, ppchName, ppv, pcb);
}

/// @nodoc
base class IMetaDataTables2Vtbl extends Struct {
  external IMetaDataTablesVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<Pointer> ppvMd,
              Pointer<Uint32> pcbMd)>> GetMetaDataStorage;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 ix,
              Pointer<Pointer<Int8>> ppchName,
              Pointer<Pointer> ppv,
              Pointer<Uint32> pcb)>> GetMetaDataStreamInfo;
}