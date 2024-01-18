// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../extensions/iunknown.dart';
import '../guid.dart';
import '../structs.g.dart';
import '../types.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IShellItemResources = '{ff5693be-2ce0-4d48-b5c5-40817d1acdb9}';

/// Exposes methods to manipulate and query Shell item resources.
///
/// {@category com}
class IShellItemResources extends IUnknown {
  IShellItemResources(super.ptr)
      : _vtable = ptr.value.cast<IShellItemResourcesVtbl>().ref;

  final IShellItemResourcesVtbl _vtable;

  factory IShellItemResources.from(IUnknown interface) =>
      IShellItemResources(interface.toInterface(IID_IShellItemResources));

  int getAttributes(Pointer<Uint32> pdwAttributes) =>
      _vtable.GetAttributes.asFunction<
              int Function(VTablePointer, Pointer<Uint32> pdwAttributes)>()(
          ptr, pdwAttributes);

  int getSize(Pointer<Uint64> pullSize) => _vtable.GetSize.asFunction<
      int Function(VTablePointer, Pointer<Uint64> pullSize)>()(ptr, pullSize);

  int getTimes(Pointer<FILETIME> pftCreation, Pointer<FILETIME> pftWrite,
          Pointer<FILETIME> pftAccess) =>
      _vtable.GetTimes.asFunction<
              int Function(VTablePointer, Pointer<FILETIME> pftCreation,
                  Pointer<FILETIME> pftWrite, Pointer<FILETIME> pftAccess)>()(
          ptr, pftCreation, pftWrite, pftAccess);

  int setTimes(Pointer<FILETIME> pftCreation, Pointer<FILETIME> pftWrite,
          Pointer<FILETIME> pftAccess) =>
      _vtable.SetTimes.asFunction<
              int Function(VTablePointer, Pointer<FILETIME> pftCreation,
                  Pointer<FILETIME> pftWrite, Pointer<FILETIME> pftAccess)>()(
          ptr, pftCreation, pftWrite, pftAccess);

  int getResourceDescription(Pointer<SHELL_ITEM_RESOURCE> pcsir,
          Pointer<Pointer<Utf16>> ppszDescription) =>
      _vtable.GetResourceDescription.asFunction<
              int Function(VTablePointer, Pointer<SHELL_ITEM_RESOURCE> pcsir,
                  Pointer<Pointer<Utf16>> ppszDescription)>()(
          ptr, pcsir, ppszDescription);

  int enumResources(Pointer<VTablePointer> ppenumr) =>
      _vtable.EnumResources.asFunction<
          int Function(
              VTablePointer, Pointer<VTablePointer> ppenumr)>()(ptr, ppenumr);

  int supportsResource(Pointer<SHELL_ITEM_RESOURCE> pcsir) =>
      _vtable.SupportsResource.asFunction<
          int Function(
              VTablePointer, Pointer<SHELL_ITEM_RESOURCE> pcsir)>()(ptr, pcsir);

  int openResource(Pointer<SHELL_ITEM_RESOURCE> pcsir, Pointer<GUID> riid,
          Pointer<Pointer> ppv) =>
      _vtable.OpenResource.asFunction<
          int Function(
              VTablePointer,
              Pointer<SHELL_ITEM_RESOURCE> pcsir,
              Pointer<GUID> riid,
              Pointer<Pointer> ppv)>()(ptr, pcsir, riid, ppv);

  int createResource(Pointer<SHELL_ITEM_RESOURCE> pcsir, Pointer<GUID> riid,
          Pointer<Pointer> ppv) =>
      _vtable.CreateResource.asFunction<
          int Function(
              VTablePointer,
              Pointer<SHELL_ITEM_RESOURCE> pcsir,
              Pointer<GUID> riid,
              Pointer<Pointer> ppv)>()(ptr, pcsir, riid, ppv);

  int markForDelete() =>
      _vtable.MarkForDelete.asFunction<int Function(VTablePointer)>()(ptr);
}

/// @nodoc
base class IShellItemResourcesVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Uint32> pdwAttributes)>>
      GetAttributes;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<Uint64> pullSize)>> GetSize;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<FILETIME> pftCreation,
              Pointer<FILETIME> pftWrite,
              Pointer<FILETIME> pftAccess)>> GetTimes;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<FILETIME> pftCreation,
              Pointer<FILETIME> pftWrite,
              Pointer<FILETIME> pftAccess)>> SetTimes;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<SHELL_ITEM_RESOURCE> pcsir,
              Pointer<Pointer<Utf16>> ppszDescription)>> GetResourceDescription;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<VTablePointer> ppenumr)>>
      EnumResources;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<SHELL_ITEM_RESOURCE> pcsir)>>
      SupportsResource;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<SHELL_ITEM_RESOURCE> pcsir,
              Pointer<GUID> riid, Pointer<Pointer> ppv)>> OpenResource;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<SHELL_ITEM_RESOURCE> pcsir,
              Pointer<GUID> riid, Pointer<Pointer> ppv)>> CreateResource;
  external Pointer<NativeFunction<Int32 Function(VTablePointer)>> MarkForDelete;
}
