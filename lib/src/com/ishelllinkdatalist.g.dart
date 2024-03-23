// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../exceptions.dart';
import '../extensions/iunknown.dart';
import '../structs.g.dart';
import '../types.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IShellLinkDataList = '{45e2b4ae-b1c3-11d0-b92f-00a0c90312e1}';

/// Exposes methods that allow an application to attach extra data blocks to a
/// Shell link.
///
/// These methods add, copy, or remove data blocks.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nn-shobjidl_core-ishelllinkdatalist>.
///
/// {@category com}
class IShellLinkDataList extends IUnknown {
  IShellLinkDataList(super.ptr)
      : _vtable = ptr.value.cast<IShellLinkDataListVtbl>().ref;

  final IShellLinkDataListVtbl _vtable;

  /// Creates a new instance of `IShellLinkDataList` from an existing
  /// [interface].
  ///
  /// This constructor invokes the [queryInterface] method to obtain a reference
  /// to the `IShellLinkDataList` interface with the provided interface.
  ///
  /// Throws a [WindowsException] if the `queryInterface` call fails.
  factory IShellLinkDataList.from(IUnknown interface) =>
      IShellLinkDataList(interface.toInterface(IID_IShellLinkDataList));

  /// Adds a data block to a link.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishelllinkdatalist-adddatablock>.
  int addDataBlock(Pointer pDataBlock) => _vtable.AddDataBlock.asFunction<
      int Function(
          VTablePointer lpVtbl, Pointer pDataBlock)>()(ptr, pDataBlock);

  /// Retrieves a copy of a link's data block.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishelllinkdatalist-copydatablock>.
  int copyDataBlock(int dwSig, Pointer<Pointer> ppDataBlock) =>
      _vtable.CopyDataBlock.asFunction<
          int Function(VTablePointer lpVtbl, int dwSig,
              Pointer<Pointer> ppDataBlock)>()(ptr, dwSig, ppDataBlock);

  /// Removes a data block from a link.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishelllinkdatalist-removedatablock>.
  int removeDataBlock(int dwSig) => _vtable.RemoveDataBlock.asFunction<
      int Function(VTablePointer lpVtbl, int dwSig)>()(ptr, dwSig);

  /// Gets the current option settings.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishelllinkdatalist-getflags>.
  int getFlags(Pointer<Uint32> pdwFlags) => _vtable.GetFlags.asFunction<
      int Function(
          VTablePointer lpVtbl, Pointer<Uint32> pdwFlags)>()(ptr, pdwFlags);

  /// Sets the current option settings.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishelllinkdatalist-setflags>.
  int setFlags(int dwFlags) => _vtable.SetFlags.asFunction<
      int Function(VTablePointer lpVtbl, int dwFlags)>()(ptr, dwFlags);
}

/// @nodoc
base class IShellLinkDataListVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer pDataBlock)>>
      AddDataBlock;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 dwSig,
              Pointer<Pointer> ppDataBlock)>> CopyDataBlock;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Uint32 dwSig)>>
      RemoveDataBlock;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> pdwFlags)>>
      GetFlags;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 dwFlags)>> SetFlags;
}