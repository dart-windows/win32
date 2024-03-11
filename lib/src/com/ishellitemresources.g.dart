// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../exceptions.dart';
import '../extensions/iunknown.dart';
import '../guid.dart';
import '../structs.g.dart';
import '../types.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IShellItemResources = '{ff5693be-2ce0-4d48-b5c5-40817d1acdb9}';

/// Exposes methods to manipulate and query Shell item resources.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nn-shobjidl_core-ishellitemresources>.
///
/// {@category com}
class IShellItemResources extends IUnknown {
  IShellItemResources(super.ptr)
      : _vtable = ptr.value.cast<IShellItemResourcesVtbl>().ref;

  final IShellItemResourcesVtbl _vtable;

  /// Creates a new instance of `IShellItemResources` from an existing
  /// [interface].
  ///
  /// This constructor invokes the [queryInterface] method to obtain a reference
  /// to the `IShellItemResources` interface with the provided interface.
  ///
  /// Throws a [WindowsException] if the `queryInterface` call fails.
  factory IShellItemResources.from(IUnknown interface) =>
      IShellItemResources(interface.toInterface(IID_IShellItemResources));

  /// Gets resource attributes.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishellitemresources-getattributes>.
  int getAttributes(Pointer<Uint32> pdwAttributes) =>
      _vtable.GetAttributes.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Uint32> pdwAttributes)>()(ptr, pdwAttributes);

  /// Gets the source size.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishellitemresources-getsize>.
  int getSize(Pointer<Uint64> pullSize) => _vtable.GetSize.asFunction<
      int Function(
          VTablePointer lpVtbl, Pointer<Uint64> pullSize)>()(ptr, pullSize);

  /// Gets file times.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishellitemresources-gettimes>.
  int getTimes(Pointer<FILETIME> pftCreation, Pointer<FILETIME> pftWrite,
          Pointer<FILETIME> pftAccess) =>
      _vtable.GetTimes.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<FILETIME> pftCreation,
                  Pointer<FILETIME> pftWrite, Pointer<FILETIME> pftAccess)>()(
          ptr, pftCreation, pftWrite, pftAccess);

  /// Sets file times.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishellitemresources-settimes>.
  int setTimes(Pointer<FILETIME> pftCreation, Pointer<FILETIME> pftWrite,
          Pointer<FILETIME> pftAccess) =>
      _vtable.SetTimes.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<FILETIME> pftCreation,
                  Pointer<FILETIME> pftWrite, Pointer<FILETIME> pftAccess)>()(
          ptr, pftCreation, pftWrite, pftAccess);

  /// Gets a resource description.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishellitemresources-getresourcedescription>.
  int getResourceDescription(Pointer<SHELL_ITEM_RESOURCE> pcsir,
          Pointer<Pointer<Utf16>> ppszDescription) =>
      _vtable.GetResourceDescription.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  Pointer<SHELL_ITEM_RESOURCE> pcsir,
                  Pointer<Pointer<Utf16>> ppszDescription)>()(
          ptr, pcsir, ppszDescription);

  /// Gets a resource enumerator object.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishellitemresources-enumresources>.
  int enumResources(Pointer<VTablePointer> ppenumr) =>
      _vtable.EnumResources.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> ppenumr)>()(ptr, ppenumr);

  /// Retrieves whether an item supports a specified resource.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishellitemresources-supportsresource>.
  int supportsResource(Pointer<SHELL_ITEM_RESOURCE> pcsir) =>
      _vtable.SupportsResource.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<SHELL_ITEM_RESOURCE> pcsir)>()(ptr, pcsir);

  /// Opens a specified resource.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishellitemresources-openresource>.
  int openResource(Pointer<SHELL_ITEM_RESOURCE> pcsir, Pointer<GUID> riid,
          Pointer<Pointer> ppv) =>
      _vtable.OpenResource.asFunction<
          int Function(
              VTablePointer lpVtbl,
              Pointer<SHELL_ITEM_RESOURCE> pcsir,
              Pointer<GUID> riid,
              Pointer<Pointer> ppv)>()(ptr, pcsir, riid, ppv);

  /// Creates a specified resource.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishellitemresources-createresource>.
  int createResource(Pointer<SHELL_ITEM_RESOURCE> pcsir, Pointer<GUID> riid,
          Pointer<Pointer> ppv) =>
      _vtable.CreateResource.asFunction<
          int Function(
              VTablePointer lpVtbl,
              Pointer<SHELL_ITEM_RESOURCE> pcsir,
              Pointer<GUID> riid,
              Pointer<Pointer> ppv)>()(ptr, pcsir, riid, ppv);

  /// Marks for delete.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishellitemresources-markfordelete>.
  int markForDelete() =>
      _vtable.MarkForDelete.asFunction<int Function(VTablePointer lpVtbl)>()(
          ptr);
}

/// @nodoc
base class IShellItemResourcesVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<Uint32> pdwAttributes)>>
      GetAttributes;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint64> pullSize)>>
      GetSize;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Pointer<FILETIME> pftCreation,
              Pointer<FILETIME> pftWrite,
              Pointer<FILETIME> pftAccess)>> GetTimes;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Pointer<FILETIME> pftCreation,
              Pointer<FILETIME> pftWrite,
              Pointer<FILETIME> pftAccess)>> SetTimes;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Pointer<SHELL_ITEM_RESOURCE> pcsir,
              Pointer<Pointer<Utf16>> ppszDescription)>> GetResourceDescription;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> ppenumr)>>
      EnumResources;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<SHELL_ITEM_RESOURCE> pcsir)>>
      SupportsResource;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Pointer<SHELL_ITEM_RESOURCE> pcsir,
              Pointer<GUID> riid,
              Pointer<Pointer> ppv)>> OpenResource;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Pointer<SHELL_ITEM_RESOURCE> pcsir,
              Pointer<GUID> riid,
              Pointer<Pointer> ppv)>> CreateResource;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      MarkForDelete;
}
