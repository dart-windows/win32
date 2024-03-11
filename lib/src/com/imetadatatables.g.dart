// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../exceptions.dart';
import '../extensions/iunknown.dart';
import '../guid.dart';
import '../structs.g.dart';
import '../types.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IMetaDataTables = '{d8f579ab-402d-4b8e-82d9-5d63b1065c68}';

/// Provides methods for the storage and retrieval of metadata information in
/// tables.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nn-rometadataapi-imetadatatables>.
///
/// {@category com}
class IMetaDataTables extends IUnknown {
  IMetaDataTables(super.ptr)
      : _vtable = ptr.value.cast<IMetaDataTablesVtbl>().ref;

  final IMetaDataTablesVtbl _vtable;

  /// Creates a new instance of `IMetaDataTables` from an existing [interface].
  ///
  /// This constructor invokes the [queryInterface] method to obtain a reference
  /// to the `IMetaDataTables` interface with the provided interface.
  ///
  /// Throws a [WindowsException] if the `queryInterface` call fails.
  factory IMetaDataTables.from(IUnknown interface) =>
      IMetaDataTables(interface.toInterface(IID_IMetaDataTables));

  /// Gets the size, in bytes, of the string heap.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadatatables-getstringheapsize>.
  int getStringHeapSize(Pointer<Uint32> pcbStrings) =>
      _vtable.GetStringHeapSize.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<Uint32> pcbStrings)>()(
          ptr, pcbStrings);

  /// A pointer to a pointer to the binary data retrieved.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadatatables-getblobheapsize>.
  int getBlobHeapSize(Pointer<Uint32> pcbBlobs) =>
      _vtable.GetBlobHeapSize.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint32> pcbBlobs)>()(ptr, pcbBlobs);

  /// Gets the size, in bytes, of the GUID heap.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadatatables-getguidheapsize>.
  int getGuidHeapSize(Pointer<Uint32> pcbGuids) =>
      _vtable.GetGuidHeapSize.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint32> pcbGuids)>()(ptr, pcbGuids);

  /// Gets the size, in bytes, of the user string heap.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadatatables-getuserstringheapsize>.
  int getUserStringHeapSize(Pointer<Uint32> pcbBlobs) =>
      _vtable.GetUserStringHeapSize.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint32> pcbBlobs)>()(ptr, pcbBlobs);

  /// Gets the number of tables in the scope of the current IMetaDataTables
  /// instance.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadatatables-getnumtables>.
  int getNumTables(Pointer<Uint32> pcTables) => _vtable.GetNumTables.asFunction<
      int Function(
          VTablePointer lpVtbl, Pointer<Uint32> pcTables)>()(ptr, pcTables);

  /// Gets the index for the table referenced by the specified token.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadatatables-gettableindex>.
  int getTableIndex(int token, Pointer<Uint32> pixTbl) =>
      _vtable.GetTableIndex.asFunction<
          int Function(VTablePointer lpVtbl, int token,
              Pointer<Uint32> pixTbl)>()(ptr, token, pixTbl);

  /// Gets the name, row size, number of rows, number of columns, and key column
  /// index of the specified table.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadatatables-gettableinfo>.
  int getTableInfo(
          int ixTbl,
          Pointer<Uint32> pcbRow,
          Pointer<Uint32> pcRows,
          Pointer<Uint32> pcCols,
          Pointer<Uint32> piKey,
          Pointer<Pointer<Int8>> ppName) =>
      _vtable.GetTableInfo.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  int ixTbl,
                  Pointer<Uint32> pcbRow,
                  Pointer<Uint32> pcRows,
                  Pointer<Uint32> pcCols,
                  Pointer<Uint32> piKey,
                  Pointer<Pointer<Int8>> ppName)>()(
          ptr, ixTbl, pcbRow, pcRows, pcCols, piKey, ppName);

  /// Gets data about the specified column in the specified table.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadatatables-getcolumninfo>.
  int getColumnInfo(
          int ixTbl,
          int ixCol,
          Pointer<Uint32> poCol,
          Pointer<Uint32> pcbCol,
          Pointer<Uint32> pType,
          Pointer<Pointer<Int8>> ppName) =>
      _vtable.GetColumnInfo.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  int ixTbl,
                  int ixCol,
                  Pointer<Uint32> poCol,
                  Pointer<Uint32> pcbCol,
                  Pointer<Uint32> pType,
                  Pointer<Pointer<Int8>> ppName)>()(
          ptr, ixTbl, ixCol, poCol, pcbCol, pType, ppName);

  /// Gets a pointer to an array of tokens associated with the specified row
  /// index.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadatatables-getcodedtokeninfo>.
  int getCodedTokenInfo(int ixCdTkn, Pointer<Uint32> pcTokens,
          Pointer<Pointer<Uint32>> ppTokens, Pointer<Pointer<Int8>> ppName) =>
      _vtable.GetCodedTokenInfo.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  int ixCdTkn,
                  Pointer<Uint32> pcTokens,
                  Pointer<Pointer<Uint32>> ppTokens,
                  Pointer<Pointer<Int8>> ppName)>()(
          ptr, ixCdTkn, pcTokens, ppTokens, ppName);

  /// Gets the row at the specified row index, in the table at the specified table
  /// index.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadatatables-getrow>.
  int getRow(int ixTbl, int rid, Pointer<Pointer> ppRow) =>
      _vtable.GetRow.asFunction<
          int Function(VTablePointer lpVtbl, int ixTbl, int rid,
              Pointer<Pointer> ppRow)>()(ptr, ixTbl, rid, ppRow);

  /// Gets a pointer to the value contained in the cell of the specified column
  /// and row in the given table.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadatatables-getcolumn>.
  int getColumn(int ixTbl, int ixCol, int rid, Pointer<Uint32> pVal) =>
      _vtable.GetColumn.asFunction<
          int Function(VTablePointer lpVtbl, int ixTbl, int ixCol, int rid,
              Pointer<Uint32> pVal)>()(ptr, ixTbl, ixCol, rid, pVal);

  /// Gets the string at the specified index from the table column in the current
  /// reference scope.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadatatables-getstring>.
  int getString(int ixString, Pointer<Pointer<Int8>> ppString) =>
      _vtable.GetString.asFunction<
          int Function(VTablePointer lpVtbl, int ixString,
              Pointer<Pointer<Int8>> ppString)>()(ptr, ixString, ppString);

  /// Gets a pointer to the binary large object (BLOB) at the specified column
  /// index.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadatatables-getblob>.
  int getBlob(int ixBlob, Pointer<Uint32> pcbData, Pointer<Pointer> ppData) =>
      _vtable.GetBlob.asFunction<
          int Function(
              VTablePointer lpVtbl,
              int ixBlob,
              Pointer<Uint32> pcbData,
              Pointer<Pointer> ppData)>()(ptr, ixBlob, pcbData, ppData);

  /// Gets a GUID from the row at the specified index.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadatatables-getguid>.
  int getGuid(int ixGuid, Pointer<Pointer<GUID>> ppGUID) =>
      _vtable.GetGuid.asFunction<
          int Function(VTablePointer lpVtbl, int ixGuid,
              Pointer<Pointer<GUID>> ppGUID)>()(ptr, ixGuid, ppGUID);

  /// Gets the hard-coded string at the specified index in the string column in
  /// the current scope.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadatatables-getuserstring>.
  int getUserString(
          int ixUserString, Pointer<Uint32> pcbData, Pointer<Pointer> ppData) =>
      _vtable.GetUserString.asFunction<
          int Function(
              VTablePointer lpVtbl,
              int ixUserString,
              Pointer<Uint32> pcbData,
              Pointer<Pointer> ppData)>()(ptr, ixUserString, pcbData, ppData);

  /// Gets the index of the next string in the current table column.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadatatables-getnextstring>.
  int getNextString(int ixString, Pointer<Uint32> pNext) =>
      _vtable.GetNextString.asFunction<
          int Function(VTablePointer lpVtbl, int ixString,
              Pointer<Uint32> pNext)>()(ptr, ixString, pNext);

  /// Gets the index of the next binary large object (BLOB) in the table.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadatatables-getnextblob>.
  int getNextBlob(int ixBlob, Pointer<Uint32> pNext) =>
      _vtable.GetNextBlob.asFunction<
          int Function(VTablePointer lpVtbl, int ixBlob,
              Pointer<Uint32> pNext)>()(ptr, ixBlob, pNext);

  /// Gets the index of the next GUID value in the current table column.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadatatables-getnextguid>.
  int getNextGuid(int ixGuid, Pointer<Uint32> pNext) =>
      _vtable.GetNextGuid.asFunction<
          int Function(VTablePointer lpVtbl, int ixGuid,
              Pointer<Uint32> pNext)>()(ptr, ixGuid, pNext);

  /// Gets the index of the row that contains the next hard-coded string in the
  /// current table column.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadatatables-getnextuserstring>.
  int getNextUserString(int ixUserString, Pointer<Uint32> pNext) =>
      _vtable.GetNextUserString.asFunction<
          int Function(VTablePointer lpVtbl, int ixUserString,
              Pointer<Uint32> pNext)>()(ptr, ixUserString, pNext);
}

/// @nodoc
base class IMetaDataTablesVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Uint32> pcbStrings)>>
      GetStringHeapSize;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> pcbBlobs)>>
      GetBlobHeapSize;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> pcbGuids)>>
      GetGuidHeapSize;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> pcbBlobs)>>
      GetUserStringHeapSize;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> pcTables)>>
      GetNumTables;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Uint32 token, Pointer<Uint32> pixTbl)>>
      GetTableIndex;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 ixTbl,
              Pointer<Uint32> pcbRow,
              Pointer<Uint32> pcRows,
              Pointer<Uint32> pcCols,
              Pointer<Uint32> piKey,
              Pointer<Pointer<Int8>> ppName)>> GetTableInfo;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 ixTbl,
              Uint32 ixCol,
              Pointer<Uint32> poCol,
              Pointer<Uint32> pcbCol,
              Pointer<Uint32> pType,
              Pointer<Pointer<Int8>> ppName)>> GetColumnInfo;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 ixCdTkn,
              Pointer<Uint32> pcTokens,
              Pointer<Pointer<Uint32>> ppTokens,
              Pointer<Pointer<Int8>> ppName)>> GetCodedTokenInfo;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 ixTbl, Uint32 rid,
              Pointer<Pointer> ppRow)>> GetRow;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 ixTbl, Uint32 ixCol,
              Uint32 rid, Pointer<Uint32> pVal)>> GetColumn;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 ixString,
              Pointer<Pointer<Int8>> ppString)>> GetString;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 ixBlob,
              Pointer<Uint32> pcbData, Pointer<Pointer> ppData)>> GetBlob;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 ixGuid,
              Pointer<Pointer<GUID>> ppGUID)>> GetGuid;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 ixUserString,
              Pointer<Uint32> pcbData, Pointer<Pointer> ppData)>> GetUserString;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 ixString,
              Pointer<Uint32> pNext)>> GetNextString;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Uint32 ixBlob, Pointer<Uint32> pNext)>>
      GetNextBlob;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Uint32 ixGuid, Pointer<Uint32> pNext)>>
      GetNextGuid;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 ixUserString,
              Pointer<Uint32> pNext)>> GetNextUserString;
}
