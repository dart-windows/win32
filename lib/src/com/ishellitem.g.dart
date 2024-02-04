// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../extensions/iunknown.dart';
import '../guid.dart';
import '../types.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IShellItem = '{43826d1e-e718-42ee-bc55-a1e261c37bfe}';

/// Exposes methods that retrieve information about a Shell item. [IShellItem]
/// and `IShellItem2` are the preferred representations of items in any new
/// code.
///
/// {@category com}
class IShellItem extends IUnknown {
  IShellItem(super.ptr) : _vtable = ptr.value.cast<IShellItemVtbl>().ref;

  final IShellItemVtbl _vtable;

  factory IShellItem.from(IUnknown interface) =>
      IShellItem(interface.toInterface(IID_IShellItem));

  int bindToHandler(VTablePointer pbc, Pointer<GUID> bhid, Pointer<GUID> riid,
          Pointer<Pointer> ppv) =>
      _vtable.BindToHandler.asFunction<
          int Function(
              VTablePointer,
              VTablePointer pbc,
              Pointer<GUID> bhid,
              Pointer<GUID> riid,
              Pointer<Pointer> ppv)>()(ptr, pbc, bhid, riid, ppv);

  int getParent(Pointer<VTablePointer> ppsi) => _vtable.GetParent.asFunction<
      int Function(VTablePointer, Pointer<VTablePointer> ppsi)>()(ptr, ppsi);

  int getDisplayName(int sigdnName, Pointer<Pointer<Utf16>> ppszName) =>
      _vtable.GetDisplayName.asFunction<
          int Function(VTablePointer, int sigdnName,
              Pointer<Pointer<Utf16>> ppszName)>()(ptr, sigdnName, ppszName);

  int getAttributes(int sfgaoMask, Pointer<Uint32> psfgaoAttribs) =>
      _vtable.GetAttributes.asFunction<
          int Function(VTablePointer, int sfgaoMask,
              Pointer<Uint32> psfgaoAttribs)>()(ptr, sfgaoMask, psfgaoAttribs);

  int compare(VTablePointer psi, int hint, Pointer<Int32> piOrder) =>
      _vtable.Compare.asFunction<
          int Function(VTablePointer, VTablePointer psi, int hint,
              Pointer<Int32> piOrder)>()(ptr, psi, hint, piOrder);
}

/// @nodoc
base class IShellItemVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, VTablePointer pbc, Pointer<GUID> bhid,
              Pointer<GUID> riid, Pointer<Pointer> ppv)>> BindToHandler;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> ppsi)>>
      GetParent;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Int32 sigdnName,
              Pointer<Pointer<Utf16>> ppszName)>> GetDisplayName;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Uint32 sfgaoMask,
              Pointer<Uint32> psfgaoAttribs)>> GetAttributes;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, VTablePointer psi, Uint32 hint,
              Pointer<Int32> piOrder)>> Compare;
}

/// @nodoc
const ShellItem = '{9ac9fbe1-e0a2-4ad6-b4ee-e212013ea917}';
