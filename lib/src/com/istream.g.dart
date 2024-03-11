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

/// Lets you read and write data to stream objects.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/objidl/nn-objidl-istream>.
///
/// {@category com}
class IStream extends ISequentialStream {
  IStream(super.ptr) : _vtable = ptr.value.cast<IStreamVtbl>().ref;

  final IStreamVtbl _vtable;

  factory IStream.from(IUnknown interface) =>
      IStream(interface.toInterface(IID_IStream));

  /// Changes the seek pointer to a new location.
  ///
  /// The new location is relative to either the beginning of the stream, the end
  /// of the stream, or the current seek pointer.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-istream-seek>.
  int seek(int dlibMove, int dwOrigin, Pointer<Uint64>? plibNewPosition) =>
      _vtable.Seek.asFunction<
              int Function(VTablePointer lpVtbl, int dlibMove, int dwOrigin,
                  Pointer<Uint64> plibNewPosition)>()(
          ptr, dlibMove, dwOrigin, plibNewPosition ?? nullptr);

  /// Changes the size of the stream object.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-istream-setsize>.
  int setSize(int libNewSize) => _vtable.SetSize.asFunction<
      int Function(VTablePointer lpVtbl, int libNewSize)>()(ptr, libNewSize);

  /// Copies a specified number of bytes from the current seek pointer in the
  /// stream to the current seek pointer in another stream.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-istream-copyto>.
  int copyTo(VTablePointer pstm, int cb, Pointer<Uint64>? pcbRead,
          Pointer<Uint64>? pcbWritten) =>
      _vtable.CopyTo.asFunction<
              int Function(VTablePointer lpVtbl, VTablePointer pstm, int cb,
                  Pointer<Uint64> pcbRead, Pointer<Uint64> pcbWritten)>()(
          ptr, pstm, cb, pcbRead ?? nullptr, pcbWritten ?? nullptr);

  /// Ensures that any changes made to a stream object open in transacted mode are
  /// reflected in the parent storage.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-istream-commit>.
  int commit(int grfCommitFlags) => _vtable.Commit.asFunction<
      int Function(
          VTablePointer lpVtbl, int grfCommitFlags)>()(ptr, grfCommitFlags);

  /// Discards all changes that have been made to a transacted stream since the
  /// last `IStream.commit` call.
  ///
  /// On streams open in direct mode and streams using the COM compound file
  /// implementation of `IStream.revert`, this method has no effect.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-istream-revert>.
  int revert() =>
      _vtable.Revert.asFunction<int Function(VTablePointer lpVtbl)>()(ptr);

  /// Restricts access to a specified range of bytes in the stream.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-istream-lockregion>.
  int lockRegion(int libOffset, int cb, int dwLockType) =>
      _vtable.LockRegion.asFunction<
          int Function(VTablePointer lpVtbl, int libOffset, int cb,
              int dwLockType)>()(ptr, libOffset, cb, dwLockType);

  /// Removes the access restriction on a range of bytes previously restricted
  /// with `IStream.lockRegion`.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-istream-unlockregion>.
  int unlockRegion(int libOffset, int cb, int dwLockType) =>
      _vtable.UnlockRegion.asFunction<
          int Function(VTablePointer lpVtbl, int libOffset, int cb,
              int dwLockType)>()(ptr, libOffset, cb, dwLockType);

  /// Retrieves the STATSTG structure for this stream.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-istream-stat>.
  int stat(Pointer<STATSTG> pstatstg, int grfStatFlag) =>
      _vtable.Stat.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<STATSTG> pstatstg,
              int grfStatFlag)>()(ptr, pstatstg, grfStatFlag);

  /// Creates a new stream object with its own seek pointer that references the
  /// same bytes as the original stream.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-istream-clone>.
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
