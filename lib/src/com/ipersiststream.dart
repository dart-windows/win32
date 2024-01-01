// ipersiststream.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../combase.dart';
import 'ipersist.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IPersistStream = '{00000109-0000-0000-c000-000000000046}';

/// Enables the saving and loading of objects that use a simple serial
/// stream for their storage needs.
///
/// {@category com}
class IPersistStream extends IPersist {
  // vtable begins at 4, is 4 entries long.
  IPersistStream(super.ptr)
      : _vtable = ptr.ref.vtable.cast<IPersistStreamVtbl>().ref;

  final IPersistStreamVtbl _vtable;

  factory IPersistStream.from(IUnknown interface) =>
      IPersistStream(interface.toInterface(IID_IPersistStream));

  int isDirty() =>
      _vtable.IsDirty.asFunction<int Function(Pointer)>()(ptr.ref.lpVtbl);

  int load(Pointer<COMObject> pStm) =>
      _vtable.Load.asFunction<int Function(Pointer, Pointer<COMObject> pStm)>()(
          ptr.ref.lpVtbl, pStm);

  int save(Pointer<COMObject> pStm, int fClearDirty) => _vtable.Save.asFunction<
          int Function(Pointer, Pointer<COMObject> pStm, int fClearDirty)>()(
      ptr.ref.lpVtbl, pStm, fClearDirty);

  int getSizeMax(Pointer<Uint64> pcbSize) => _vtable.GetSizeMax.asFunction<
      int Function(
          Pointer, Pointer<Uint64> pcbSize)>()(ptr.ref.lpVtbl, pcbSize);
}

/// @nodoc
base class IPersistStreamVtbl extends Struct {
  external IPersistVtbl baseVtbl;
  external Pointer<NativeFunction<Int32 Function(Pointer)>> IsDirty;
  external Pointer<
      NativeFunction<Int32 Function(Pointer, Pointer<COMObject> pStm)>> Load;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer, Pointer<COMObject> pStm, Int32 fClearDirty)>> Save;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Uint64> pcbSize)>>
      GetSizeMax;
}
