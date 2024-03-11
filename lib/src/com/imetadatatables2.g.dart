// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../exceptions.dart';
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

  /// Creates a new instance of `IMetaDataTables2` from an existing [interface].
  ///
  /// This constructor invokes the [queryInterface] method to obtain a reference
  /// to the `IMetaDataTables2` interface with the provided interface.
  ///
  /// Throws a [WindowsException] if the `queryInterface` call fails.
  factory IMetaDataTables2.from(IUnknown interface) =>
      IMetaDataTables2(interface.toInterface(IID_IMetaDataTables2));

  /// Gets the size and contents of the metadata stored in the specified section.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadatatables2-getmetadatastorage>.
  int getMetaDataStorage(Pointer<Pointer> ppvMd, Pointer<Uint32> pcbMd) =>
      _vtable.GetMetaDataStorage.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<Pointer> ppvMd,
              Pointer<Uint32> pcbMd)>()(ptr, ppvMd, pcbMd);

  /// Gets the name, size, and contents of the metadata stream at the specified
  /// index.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadatatables2-getmetadatastreaminfo>.
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
