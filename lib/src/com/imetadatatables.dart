// imetadatatables.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../guid.dart';
import '../types.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IMetaDataTables = '{d8f579ab-402d-4b8e-82d9-5d63b1065c68}';

/// Provides methods for the storage and retrieval of metadata information
/// in tables.
///
/// {@category com}
class IMetaDataTables extends IUnknown {
  IMetaDataTables(super.ptr)
      : _vtable = ptr.value.cast<IMetaDataTablesVtbl>().ref;

  final IMetaDataTablesVtbl _vtable;

  factory IMetaDataTables.from(IUnknown interface) =>
      IMetaDataTables(interface.toInterface(IID_IMetaDataTables));

  int getStringHeapSize(Pointer<Uint32> pcbStrings) =>
      _vtable.GetStringHeapSize.asFunction<
          int Function(
              VTablePointer, Pointer<Uint32> pcbStrings)>()(ptr, pcbStrings);

  int getBlobHeapSize(Pointer<Uint32> pcbBlobs) =>
      _vtable.GetBlobHeapSize.asFunction<
          int Function(
              VTablePointer, Pointer<Uint32> pcbBlobs)>()(ptr, pcbBlobs);

  int getGuidHeapSize(Pointer<Uint32> pcbGuids) =>
      _vtable.GetGuidHeapSize.asFunction<
          int Function(
              VTablePointer, Pointer<Uint32> pcbGuids)>()(ptr, pcbGuids);

  int getUserStringHeapSize(Pointer<Uint32> pcbBlobs) =>
      _vtable.GetUserStringHeapSize.asFunction<
          int Function(
              VTablePointer, Pointer<Uint32> pcbBlobs)>()(ptr, pcbBlobs);

  int getNumTables(Pointer<Uint32> pcTables) => _vtable.GetNumTables.asFunction<
      int Function(VTablePointer, Pointer<Uint32> pcTables)>()(ptr, pcTables);

  int getTableIndex(int token, Pointer<Uint32> pixTbl) =>
      _vtable.GetTableIndex.asFunction<
              int Function(VTablePointer, int token, Pointer<Uint32> pixTbl)>()(
          ptr, token, pixTbl);

  int getTableInfo(
          int ixTbl,
          Pointer<Uint32> pcbRow,
          Pointer<Uint32> pcRows,
          Pointer<Uint32> pcCols,
          Pointer<Uint32> piKey,
          Pointer<Pointer<Int8>> ppName) =>
      _vtable.GetTableInfo.asFunction<
              int Function(
                  VTablePointer,
                  int ixTbl,
                  Pointer<Uint32> pcbRow,
                  Pointer<Uint32> pcRows,
                  Pointer<Uint32> pcCols,
                  Pointer<Uint32> piKey,
                  Pointer<Pointer<Int8>> ppName)>()(
          ptr, ixTbl, pcbRow, pcRows, pcCols, piKey, ppName);

  int getColumnInfo(
          int ixTbl,
          int ixCol,
          Pointer<Uint32> poCol,
          Pointer<Uint32> pcbCol,
          Pointer<Uint32> pType,
          Pointer<Pointer<Int8>> ppName) =>
      _vtable.GetColumnInfo.asFunction<
              int Function(
                  VTablePointer,
                  int ixTbl,
                  int ixCol,
                  Pointer<Uint32> poCol,
                  Pointer<Uint32> pcbCol,
                  Pointer<Uint32> pType,
                  Pointer<Pointer<Int8>> ppName)>()(
          ptr, ixTbl, ixCol, poCol, pcbCol, pType, ppName);

  int getCodedTokenInfo(int ixCdTkn, Pointer<Uint32> pcTokens,
          Pointer<Pointer<Uint32>> ppTokens, Pointer<Pointer<Int8>> ppName) =>
      _vtable.GetCodedTokenInfo.asFunction<
              int Function(
                  VTablePointer,
                  int ixCdTkn,
                  Pointer<Uint32> pcTokens,
                  Pointer<Pointer<Uint32>> ppTokens,
                  Pointer<Pointer<Int8>> ppName)>()(
          ptr, ixCdTkn, pcTokens, ppTokens, ppName);

  int getRow(int ixTbl, int rid, Pointer<Pointer> ppRow) =>
      _vtable.GetRow.asFunction<
          int Function(VTablePointer, int ixTbl, int rid,
              Pointer<Pointer> ppRow)>()(ptr, ixTbl, rid, ppRow);

  int getColumn(int ixTbl, int ixCol, int rid, Pointer<Uint32> pVal) =>
      _vtable.GetColumn.asFunction<
          int Function(VTablePointer, int ixTbl, int ixCol, int rid,
              Pointer<Uint32> pVal)>()(ptr, ixTbl, ixCol, rid, pVal);

  int getString(int ixString, Pointer<Pointer<Int8>> ppString) =>
      _vtable.GetString.asFunction<
          int Function(VTablePointer, int ixString,
              Pointer<Pointer<Int8>> ppString)>()(ptr, ixString, ppString);

  int getBlob(int ixBlob, Pointer<Uint32> pcbData, Pointer<Pointer> ppData) =>
      _vtable.GetBlob.asFunction<
          int Function(VTablePointer, int ixBlob, Pointer<Uint32> pcbData,
              Pointer<Pointer> ppData)>()(ptr, ixBlob, pcbData, ppData);

  int getGuid(int ixGuid, Pointer<Pointer<GUID>> ppGUID) =>
      _vtable.GetGuid.asFunction<
          int Function(VTablePointer, int ixGuid,
              Pointer<Pointer<GUID>> ppGUID)>()(ptr, ixGuid, ppGUID);

  int getUserString(
          int ixUserString, Pointer<Uint32> pcbData, Pointer<Pointer> ppData) =>
      _vtable.GetUserString.asFunction<
          int Function(VTablePointer, int ixUserString, Pointer<Uint32> pcbData,
              Pointer<Pointer> ppData)>()(ptr, ixUserString, pcbData, ppData);

  int getNextString(int ixString, Pointer<Uint32> pNext) =>
      _vtable.GetNextString.asFunction<
          int Function(VTablePointer, int ixString,
              Pointer<Uint32> pNext)>()(ptr, ixString, pNext);

  int getNextBlob(int ixBlob, Pointer<Uint32> pNext) =>
      _vtable.GetNextBlob.asFunction<
              int Function(VTablePointer, int ixBlob, Pointer<Uint32> pNext)>()(
          ptr, ixBlob, pNext);

  int getNextGuid(int ixGuid, Pointer<Uint32> pNext) =>
      _vtable.GetNextGuid.asFunction<
              int Function(VTablePointer, int ixGuid, Pointer<Uint32> pNext)>()(
          ptr, ixGuid, pNext);

  int getNextUserString(int ixUserString, Pointer<Uint32> pNext) =>
      _vtable.GetNextUserString.asFunction<
          int Function(VTablePointer, int ixUserString,
              Pointer<Uint32> pNext)>()(ptr, ixUserString, pNext);
}

/// @nodoc
base class IMetaDataTablesVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Uint32> pcbStrings)>>
      GetStringHeapSize;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Uint32> pcbBlobs)>>
      GetBlobHeapSize;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Uint32> pcbGuids)>>
      GetGuidHeapSize;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Uint32> pcbBlobs)>>
      GetUserStringHeapSize;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Uint32> pcTables)>>
      GetNumTables;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Uint32 token, Pointer<Uint32> pixTbl)>>
      GetTableIndex;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Uint32 ixTbl,
              Pointer<Uint32> pcbRow,
              Pointer<Uint32> pcRows,
              Pointer<Uint32> pcCols,
              Pointer<Uint32> piKey,
              Pointer<Pointer<Int8>> ppName)>> GetTableInfo;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Uint32 ixTbl,
              Uint32 ixCol,
              Pointer<Uint32> poCol,
              Pointer<Uint32> pcbCol,
              Pointer<Uint32> pType,
              Pointer<Pointer<Int8>> ppName)>> GetColumnInfo;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Uint32 ixCdTkn,
              Pointer<Uint32> pcTokens,
              Pointer<Pointer<Uint32>> ppTokens,
              Pointer<Pointer<Int8>> ppName)>> GetCodedTokenInfo;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Uint32 ixTbl, Uint32 rid,
              Pointer<Pointer> ppRow)>> GetRow;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Uint32 ixTbl, Uint32 ixCol, Uint32 rid,
              Pointer<Uint32> pVal)>> GetColumn;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Uint32 ixString,
              Pointer<Pointer<Int8>> ppString)>> GetString;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Uint32 ixBlob, Pointer<Uint32> pcbData,
              Pointer<Pointer> ppData)>> GetBlob;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Uint32 ixGuid, Pointer<Pointer<GUID>> ppGUID)>>
      GetGuid;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Uint32 ixUserString,
              Pointer<Uint32> pcbData, Pointer<Pointer> ppData)>> GetUserString;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Uint32 ixString, Pointer<Uint32> pNext)>>
      GetNextString;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Uint32 ixBlob, Pointer<Uint32> pNext)>>
      GetNextBlob;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Uint32 ixGuid, Pointer<Uint32> pNext)>>
      GetNextGuid;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Uint32 ixUserString, Pointer<Uint32> pNext)>>
      GetNextUserString;
}
