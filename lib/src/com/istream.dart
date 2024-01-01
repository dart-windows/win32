// istream.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../combase.dart';
import '../structs.g.dart';
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
  // vtable begins at 5, is 9 entries long.
  IStream(super.ptr) : _vtable = ptr.ref.vtable.cast<IStreamVtbl>().ref;

  final IStreamVtbl _vtable;

  factory IStream.from(IUnknown interface) =>
      IStream(interface.toInterface(IID_IStream));

  int seek(int dlibMove, int dwOrigin, Pointer<Uint64> plibNewPosition) =>
      _vtable.Seek.asFunction<
              int Function(Pointer, int dlibMove, int dwOrigin,
                  Pointer<Uint64> plibNewPosition)>()(
          ptr.ref.lpVtbl, dlibMove, dwOrigin, plibNewPosition);

  int setSize(int libNewSize) =>
      _vtable.SetSize.asFunction<int Function(Pointer, int libNewSize)>()(
          ptr.ref.lpVtbl, libNewSize);

  int copyTo(Pointer<COMObject> pstm, int cb, Pointer<Uint64> pcbRead,
          Pointer<Uint64> pcbWritten) =>
      _vtable.CopyTo.asFunction<
              int Function(Pointer, Pointer<COMObject> pstm, int cb,
                  Pointer<Uint64> pcbRead, Pointer<Uint64> pcbWritten)>()(
          ptr.ref.lpVtbl, pstm, cb, pcbRead, pcbWritten);

  int commit(int grfCommitFlags) =>
      _vtable.Commit.asFunction<int Function(Pointer, int grfCommitFlags)>()(
          ptr.ref.lpVtbl, grfCommitFlags);

  int revert() =>
      _vtable.Revert.asFunction<int Function(Pointer)>()(ptr.ref.lpVtbl);

  int lockRegion(int libOffset, int cb, int dwLockType) =>
      _vtable.LockRegion.asFunction<
              int Function(Pointer, int libOffset, int cb, int dwLockType)>()(
          ptr.ref.lpVtbl, libOffset, cb, dwLockType);

  int unlockRegion(int libOffset, int cb, int dwLockType) =>
      _vtable.UnlockRegion.asFunction<
              int Function(Pointer, int libOffset, int cb, int dwLockType)>()(
          ptr.ref.lpVtbl, libOffset, cb, dwLockType);

  int stat(Pointer<STATSTG> pstatstg, int grfStatFlag) =>
      _vtable.Stat.asFunction<
          int Function(Pointer, Pointer<STATSTG> pstatstg,
              int grfStatFlag)>()(ptr.ref.lpVtbl, pstatstg, grfStatFlag);

  int clone(Pointer<Pointer<COMObject>> ppstm) => _vtable.Clone.asFunction<
      int Function(
          Pointer, Pointer<Pointer<COMObject>> ppstm)>()(ptr.ref.lpVtbl, ppstm);
}

/// @nodoc
base class IStreamVtbl extends Struct {
  external ISequentialStreamVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Int64 dlibMove, Uint32 dwOrigin,
              Pointer<Uint64> plibNewPosition)>> Seek;
  external Pointer<NativeFunction<Int32 Function(Pointer, Uint64 libNewSize)>>
      SetSize;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<COMObject> pstm, Uint64 cb,
              Pointer<Uint64> pcbRead, Pointer<Uint64> pcbWritten)>> CopyTo;
  external Pointer<
      NativeFunction<Int32 Function(Pointer, Int32 grfCommitFlags)>> Commit;
  external Pointer<NativeFunction<Int32 Function(Pointer)>> Revert;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer, Uint64 libOffset, Uint64 cb, Int32 dwLockType)>>
      LockRegion;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer, Uint64 libOffset, Uint64 cb, Uint32 dwLockType)>>
      UnlockRegion;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer, Pointer<STATSTG> pstatstg, Int32 grfStatFlag)>> Stat;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<Pointer<COMObject>> ppstm)>> Clone;
}
