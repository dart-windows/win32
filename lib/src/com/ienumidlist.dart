// ienumidlist.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../combase.dart';
import '../structs.g.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IEnumIDList = '{000214f2-0000-0000-c000-000000000046}';

/// Exposes a standard set of methods used to enumerate the pointers to item
/// identifier lists (PIDLs) of the items in a Shell folder. When a folder's
/// `IShellFolder::EnumObjects` method is called, it creates an enumeration
/// object and passes a pointer to the object's [IEnumIDList] interface back
/// to the calling application.
///
/// {@category com}
class IEnumIDList extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IEnumIDList(super.ptr) : _vtable = ptr.ref.vtable.cast<IEnumIDListVtbl>().ref;

  final IEnumIDListVtbl _vtable;

  factory IEnumIDList.from(IUnknown interface) =>
      IEnumIDList(interface.toInterface(IID_IEnumIDList));

  int next(int celt, Pointer<Pointer<ITEMIDLIST>> rgelt,
          Pointer<Uint32> pceltFetched) =>
      _vtable.Next.asFunction<
              int Function(
                  Pointer,
                  int celt,
                  Pointer<Pointer<ITEMIDLIST>> rgelt,
                  Pointer<Uint32> pceltFetched)>()(
          ptr.ref.lpVtbl, celt, rgelt, pceltFetched);

  int skip(int celt) =>
      _vtable.Skip.asFunction<int Function(Pointer, int celt)>()(
          ptr.ref.lpVtbl, celt);

  int reset() =>
      _vtable.Reset.asFunction<int Function(Pointer)>()(ptr.ref.lpVtbl);

  int clone(Pointer<Pointer<COMObject>> ppenum) => _vtable.Clone.asFunction<
          int Function(Pointer, Pointer<Pointer<COMObject>> ppenum)>()(
      ptr.ref.lpVtbl, ppenum);
}

/// @nodoc
base class IEnumIDListVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              Uint32 celt,
              Pointer<Pointer<ITEMIDLIST>> rgelt,
              Pointer<Uint32> pceltFetched)>> Next;
  external Pointer<NativeFunction<Int32 Function(Pointer, Uint32 celt)>> Skip;
  external Pointer<NativeFunction<Int32 Function(Pointer)>> Reset;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<Pointer<COMObject>> ppenum)>> Clone;
}
