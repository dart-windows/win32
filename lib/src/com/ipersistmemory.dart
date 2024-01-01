// ipersistmemory.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'ipersist.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IPersistMemory = '{bd1ae5e0-a6ae-11ce-bd37-504200c10000}';

/// Saves and loads objects from a stream.
///
/// {@category com}
class IPersistMemory extends IPersist {
  // vtable begins at 4, is 5 entries long.
  IPersistMemory(super.ptr)
      : _vtable = ptr.ref.vtable.cast<IPersistMemoryVtbl>().ref;

  final IPersistMemoryVtbl _vtable;

  factory IPersistMemory.from(IUnknown interface) =>
      IPersistMemory(interface.toInterface(IID_IPersistMemory));

  int isDirty() =>
      _vtable.IsDirty.asFunction<int Function(Pointer)>()(ptr.ref.lpVtbl);

  int load(Pointer pMem, int cbSize) => _vtable.Load.asFunction<
      int Function(
          Pointer, Pointer pMem, int cbSize)>()(ptr.ref.lpVtbl, pMem, cbSize);

  int save(Pointer pMem, int fClearDirty, int cbSize) =>
      _vtable.Save.asFunction<
          int Function(Pointer, Pointer pMem, int fClearDirty,
              int cbSize)>()(ptr.ref.lpVtbl, pMem, fClearDirty, cbSize);

  int getSizeMax(Pointer<Uint32> pCbSize) => _vtable.GetSizeMax.asFunction<
      int Function(
          Pointer, Pointer<Uint32> pCbSize)>()(ptr.ref.lpVtbl, pCbSize);

  int initNew() =>
      _vtable.InitNew.asFunction<int Function(Pointer)>()(ptr.ref.lpVtbl);
}

/// @nodoc
base class IPersistMemoryVtbl extends Struct {
  external IPersistVtbl baseVtbl;
  external Pointer<NativeFunction<Int32 Function(Pointer)>> IsDirty;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer pMem, Uint32 cbSize)>>
      Load;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer, Pointer pMem, Int32 fClearDirty, Uint32 cbSize)>> Save;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Uint32> pCbSize)>>
      GetSizeMax;
  external Pointer<NativeFunction<Int32 Function(Pointer)>> InitNew;
}
