// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../extensions/iunknown.dart';
import '../structs.g.dart';
import '../types.dart';
import 'isequentialstream.g.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IStream = '{0000000c-0000-0000-c000-000000000046}';

/// The IStream interface lets you read and write data to stream objects.
///
/// Stream objects contain the data in a structured storage object, where
/// storages provide the structure. Simple data can be written directly to a
/// stream but, most frequently, streams are elements nested within a storage
/// object. They are similar to standard files.
///
/// {@category com}
class IStream extends ISequentialStream {
  IStream(super.ptr) : _vtable = ptr.value.cast<IStreamVtbl>().ref;

  final IStreamVtbl _vtable;

  factory IStream.from(IUnknown interface) =>
      IStream(interface.toInterface(IID_IStream));

  int seek(int dlibMove, int dwOrigin, Pointer<Uint64>? plibNewPosition) =>
      _vtable.Seek.asFunction<
              int Function(VTablePointer lpVtbl, int dlibMove, int dwOrigin,
                  Pointer<Uint64> plibNewPosition)>()(
          ptr, dlibMove, dwOrigin, plibNewPosition ?? nullptr);

  int setSize(int libNewSize) => _vtable.SetSize.asFunction<
      int Function(VTablePointer lpVtbl, int libNewSize)>()(ptr, libNewSize);

  int copyTo(VTablePointer pstm, int cb, Pointer<Uint64>? pcbRead,
          Pointer<Uint64>? pcbWritten) =>
      _vtable.CopyTo.asFunction<
              int Function(VTablePointer lpVtbl, VTablePointer pstm, int cb,
                  Pointer<Uint64> pcbRead, Pointer<Uint64> pcbWritten)>()(
          ptr, pstm, cb, pcbRead ?? nullptr, pcbWritten ?? nullptr);

  int commit(int grfCommitFlags) => _vtable.Commit.asFunction<
      int Function(
          VTablePointer lpVtbl, int grfCommitFlags)>()(ptr, grfCommitFlags);

  int revert() =>
      _vtable.Revert.asFunction<int Function(VTablePointer lpVtbl)>()(ptr);

  int lockRegion(int libOffset, int cb, int dwLockType) =>
      _vtable.LockRegion.asFunction<
          int Function(VTablePointer lpVtbl, int libOffset, int cb,
              int dwLockType)>()(ptr, libOffset, cb, dwLockType);

  int unlockRegion(int libOffset, int cb, int dwLockType) =>
      _vtable.UnlockRegion.asFunction<
          int Function(VTablePointer lpVtbl, int libOffset, int cb,
              int dwLockType)>()(ptr, libOffset, cb, dwLockType);

  int stat(Pointer<STATSTG> pstatstg, int grfStatFlag) =>
      _vtable.Stat.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<STATSTG> pstatstg,
              int grfStatFlag)>()(ptr, pstatstg, grfStatFlag);

  int clone(Pointer<VTablePointer> ppstm) => _vtable.Clone.asFunction<
      int Function(
          VTablePointer lpVtbl, Pointer<VTablePointer> ppstm)>()(ptr, ppstm);
}

/// @nodoc
base class IStreamVtbl extends Struct {
  external ISequentialStreamVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int64 dlibMove,
              Uint32 dwOrigin, Pointer<Uint64> plibNewPosition)>> Seek;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint64 libNewSize)>> SetSize;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer pstm, Uint64 cb,
              Pointer<Uint64> pcbRead, Pointer<Uint64> pcbWritten)>> CopyTo;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Uint32 grfCommitFlags)>>
      Commit;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      Revert;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint64 libOffset, Uint64 cb,
              Uint32 dwLockType)>> LockRegion;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint64 libOffset, Uint64 cb,
              Uint32 dwLockType)>> UnlockRegion;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<STATSTG> pstatstg,
              Uint32 grfStatFlag)>> Stat;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<VTablePointer> ppstm)>> Clone;
}
