// istream.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../structs.g.dart';
import '../types.dart';
import 'isequentialstream.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IStream = '{0000000c-0000-0000-c000-000000000046}';

/// The IStream interface lets you read and write data to stream objects.
/// Stream objects contain the data in a structured storage object, where
/// storages provide the structure. Simple data can be written directly to a
/// stream but, most frequently, streams are elements nested within a
/// storage object. They are similar to standard files.
///
/// {@category com}
class IStream extends ISequentialStream {
  IStream(super.ptr) : _vtable = ptr.value.value.cast<IStreamVtbl>().ref;

  final IStreamVtbl _vtable;

  factory IStream.from(IUnknown interface) =>
      IStream(interface.toInterface(IID_IStream));

  int seek(int dlibMove, int dwOrigin, Pointer<Uint64> plibNewPosition) =>
      _vtable.Seek.asFunction<
              int Function(VTablePointer, int dlibMove, int dwOrigin,
                  Pointer<Uint64> plibNewPosition)>()(
          ptr.value, dlibMove, dwOrigin, plibNewPosition);

  int setSize(int libNewSize) =>
      _vtable.SetSize.asFunction<int Function(VTablePointer, int libNewSize)>()(
          ptr.value, libNewSize);

  int copyTo(Pointer<VTablePointer> pstm, int cb, Pointer<Uint64> pcbRead,
          Pointer<Uint64> pcbWritten) =>
      _vtable.CopyTo.asFunction<
              int Function(VTablePointer, Pointer<VTablePointer> pstm, int cb,
                  Pointer<Uint64> pcbRead, Pointer<Uint64> pcbWritten)>()(
          ptr.value, pstm, cb, pcbRead, pcbWritten);

  int commit(int grfCommitFlags) => _vtable.Commit.asFunction<
      int Function(
          VTablePointer, int grfCommitFlags)>()(ptr.value, grfCommitFlags);

  int revert() =>
      _vtable.Revert.asFunction<int Function(VTablePointer)>()(ptr.value);

  int lockRegion(int libOffset, int cb, int dwLockType) =>
      _vtable.LockRegion.asFunction<
          int Function(VTablePointer, int libOffset, int cb,
              int dwLockType)>()(ptr.value, libOffset, cb, dwLockType);

  int unlockRegion(int libOffset, int cb, int dwLockType) =>
      _vtable.UnlockRegion.asFunction<
          int Function(VTablePointer, int libOffset, int cb,
              int dwLockType)>()(ptr.value, libOffset, cb, dwLockType);

  int stat(Pointer<STATSTG> pstatstg, int grfStatFlag) =>
      _vtable.Stat.asFunction<
          int Function(VTablePointer, Pointer<STATSTG> pstatstg,
              int grfStatFlag)>()(ptr.value, pstatstg, grfStatFlag);

  int clone(Pointer<Pointer<VTablePointer>> ppstm) => _vtable.Clone.asFunction<
          int Function(VTablePointer, Pointer<Pointer<VTablePointer>> ppstm)>()(
      ptr.value, ppstm);
}

/// @nodoc
base class IStreamVtbl extends Struct {
  external ISequentialStreamVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Int64 dlibMove, Uint32 dwOrigin,
              Pointer<Uint64> plibNewPosition)>> Seek;
  external Pointer<
      NativeFunction<Int32 Function(VTablePointer, Uint64 libNewSize)>> SetSize;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<VTablePointer> pstm, Uint64 cb,
              Pointer<Uint64> pcbRead, Pointer<Uint64> pcbWritten)>> CopyTo;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Int32 grfCommitFlags)>>
      Commit;
  external Pointer<NativeFunction<Int32 Function(VTablePointer)>> Revert;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Uint64 libOffset, Uint64 cb,
              Int32 dwLockType)>> LockRegion;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Uint64 libOffset, Uint64 cb,
              Uint32 dwLockType)>> UnlockRegion;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<STATSTG> pstatstg, Int32 grfStatFlag)>>
      Stat;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer, Pointer<Pointer<VTablePointer>> ppstm)>> Clone;
}
