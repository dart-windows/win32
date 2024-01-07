// ishelllinkdatalist.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../types.dart';
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
      : _vtable = ptr.value.value.cast<IShellLinkDataListVtbl>().ref;

  final IShellLinkDataListVtbl _vtable;

  factory IShellLinkDataList.from(IUnknown interface) =>
      IShellLinkDataList(interface.toInterface(IID_IShellLinkDataList));

  int addDataBlock(Pointer pDataBlock) => _vtable.AddDataBlock.asFunction<
      int Function(VTablePointer, Pointer pDataBlock)>()(ptr.value, pDataBlock);

  int copyDataBlock(int dwSig, Pointer<Pointer> ppDataBlock) =>
      _vtable.CopyDataBlock.asFunction<
          int Function(VTablePointer, int dwSig,
              Pointer<Pointer> ppDataBlock)>()(ptr.value, dwSig, ppDataBlock);

  int removeDataBlock(int dwSig) => _vtable.RemoveDataBlock.asFunction<
      int Function(VTablePointer, int dwSig)>()(ptr.value, dwSig);

  int getFlags(Pointer<Uint32> pdwFlags) => _vtable.GetFlags.asFunction<
      int Function(
          VTablePointer, Pointer<Uint32> pdwFlags)>()(ptr.value, pdwFlags);

  int setFlags(int dwFlags) =>
      _vtable.SetFlags.asFunction<int Function(VTablePointer, int dwFlags)>()(
          ptr.value, dwFlags);
}

/// @nodoc
base class IShellLinkDataListVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, Pointer pDataBlock)>>
      AddDataBlock;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Uint32 dwSig, Pointer<Pointer> ppDataBlock)>>
      CopyDataBlock;
  external Pointer<NativeFunction<Int32 Function(VTablePointer, Uint32 dwSig)>>
      RemoveDataBlock;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<Uint32> pdwFlags)>> GetFlags;
  external Pointer<
      NativeFunction<Int32 Function(VTablePointer, Uint32 dwFlags)>> SetFlags;
}
