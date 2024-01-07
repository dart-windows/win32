// imetadatatables2.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../types.dart';
import 'imetadatatables.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IMetaDataTables2 = '{badb5f70-58da-43a9-a1c6-d74819f19b15}';

/// Extends IMetaDataTables to include methods for working with metadata
/// streams.
///
/// {@category com}
class IMetaDataTables2 extends IMetaDataTables {
  // vtable begins at 22, is 2 entries long.
  IMetaDataTables2(super.ptr)
      : _vtable = ptr.value.value.cast<IMetaDataTables2Vtbl>().ref;

  final IMetaDataTables2Vtbl _vtable;

  factory IMetaDataTables2.from(IUnknown interface) =>
      IMetaDataTables2(interface.toInterface(IID_IMetaDataTables2));

  int getMetaDataStorage(Pointer<Pointer> ppvMd, Pointer<Uint32> pcbMd) =>
      _vtable.GetMetaDataStorage.asFunction<
          int Function(VTablePointer, Pointer<Pointer> ppvMd,
              Pointer<Uint32> pcbMd)>()(ptr.value, ppvMd, pcbMd);

  int getMetaDataStreamInfo(int ix, Pointer<Pointer<Int8>> ppchName,
          Pointer<Pointer> ppv, Pointer<Uint32> pcb) =>
      _vtable.GetMetaDataStreamInfo.asFunction<
          int Function(
              VTablePointer,
              int ix,
              Pointer<Pointer<Int8>> ppchName,
              Pointer<Pointer> ppv,
              Pointer<Uint32> pcb)>()(ptr.value, ix, ppchName, ppv, pcb);
}

/// @nodoc
base class IMetaDataTables2Vtbl extends Struct {
  external IMetaDataTablesVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<Pointer> ppvMd,
              Pointer<Uint32> pcbMd)>> GetMetaDataStorage;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Uint32 ix,
              Pointer<Pointer<Int8>> ppchName,
              Pointer<Pointer> ppv,
              Pointer<Uint32> pcb)>> GetMetaDataStreamInfo;
}
