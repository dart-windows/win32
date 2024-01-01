// ishelllinkdatalist.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'iunknown.dart';

/// @nodoc
const IID_IShellLinkDataList = '{45e2b4ae-b1c3-11d0-b92f-00a0c90312e1}';

/// Exposes methods that allow an application to attach extra data blocks to
/// a Shell link. These methods add, copy, or remove data blocks.
///
/// {@category com}
class IShellLinkDataList extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IShellLinkDataList(super.ptr)
      : _vtable = ptr.ref.vtable.cast<IShellLinkDataListVtbl>().ref;

  final IShellLinkDataListVtbl _vtable;

  factory IShellLinkDataList.from(IUnknown interface) =>
      IShellLinkDataList(interface.toInterface(IID_IShellLinkDataList));

  int addDataBlock(Pointer pDataBlock) => _vtable.AddDataBlock.asFunction<
      int Function(Pointer, Pointer pDataBlock)>()(ptr.ref.lpVtbl, pDataBlock);

  int copyDataBlock(int dwSig, Pointer<Pointer> ppDataBlock) =>
      _vtable.CopyDataBlock.asFunction<
              int Function(Pointer, int dwSig, Pointer<Pointer> ppDataBlock)>()(
          ptr.ref.lpVtbl, dwSig, ppDataBlock);

  int removeDataBlock(int dwSig) =>
      _vtable.RemoveDataBlock.asFunction<int Function(Pointer, int dwSig)>()(
          ptr.ref.lpVtbl, dwSig);

  int getFlags(Pointer<Uint32> pdwFlags) => _vtable.GetFlags.asFunction<
      int Function(
          Pointer, Pointer<Uint32> pdwFlags)>()(ptr.ref.lpVtbl, pdwFlags);

  int setFlags(int dwFlags) =>
      _vtable.SetFlags.asFunction<int Function(Pointer, int dwFlags)>()(
          ptr.ref.lpVtbl, dwFlags);
}

/// @nodoc
base class IShellLinkDataListVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<NativeFunction<Int32 Function(Pointer, Pointer pDataBlock)>>
      AddDataBlock;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  Pointer, Uint32 dwSig, Pointer<Pointer> ppDataBlock)>>
      CopyDataBlock;
  external Pointer<NativeFunction<Int32 Function(Pointer, Uint32 dwSig)>>
      RemoveDataBlock;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Uint32> pdwFlags)>>
      GetFlags;
  external Pointer<NativeFunction<Int32 Function(Pointer, Uint32 dwFlags)>>
      SetFlags;
}
