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
const IID_IMetaDataDispenser = '{809c652e-7396-11d2-9771-00a0c9b4d50c}';

/// Provides methods to create a new metadata scope, or open an existing one.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nn-rometadataapi-imetadatadispenser>.
///
/// {@category com}
class IMetaDataDispenser extends IUnknown {
  IMetaDataDispenser(super.ptr)
      : _vtable = ptr.value.cast<IMetaDataDispenserVtbl>().ref;

  final IMetaDataDispenserVtbl _vtable;

  factory IMetaDataDispenser.from(IUnknown interface) =>
      IMetaDataDispenser(interface.toInterface(IID_IMetaDataDispenser));

  /// Creates a new area in memory in which you can create new metadata.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadatadispenser-definescope>.
  int defineScope(Pointer<GUID> rclsid, int dwCreateFlags, Pointer<GUID> riid,
          Pointer<VTablePointer> ppIUnk) =>
      _vtable.DefineScope.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  Pointer<GUID> rclsid,
                  int dwCreateFlags,
                  Pointer<GUID> riid,
                  Pointer<VTablePointer> ppIUnk)>()(
          ptr, rclsid, dwCreateFlags, riid, ppIUnk);

  /// Opens an existing file from disk, and maps its metadata into memory for
  /// reading.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadatadispenser-openscope>.
  int openScope(Pointer<Utf16> szScope, int dwOpenFlags, Pointer<GUID> riid,
          Pointer<VTablePointer> ppIUnk) =>
      _vtable.OpenScope.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  Pointer<Utf16> szScope,
                  int dwOpenFlags,
                  Pointer<GUID> riid,
                  Pointer<VTablePointer> ppIUnk)>()(
          ptr, szScope, dwOpenFlags, riid, ppIUnk);

  /// Opens an area of memory that contains existing metadata.
  ///
  /// That is, this method opens a specified area of memory in which the existing
  /// data is treated as metadata.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadatadispenser-openscopeonmemory>.
  int openScopeOnMemory(Pointer pData, int cbData, int dwOpenFlags,
          Pointer<GUID> riid, Pointer<VTablePointer> ppIUnk) =>
      _vtable.OpenScopeOnMemory.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  Pointer pData,
                  int cbData,
                  int dwOpenFlags,
                  Pointer<GUID> riid,
                  Pointer<VTablePointer> ppIUnk)>()(
          ptr, pData, cbData, dwOpenFlags, riid, ppIUnk);
}

/// @nodoc
base class IMetaDataDispenserVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Pointer<GUID> rclsid,
              Uint32 dwCreateFlags,
              Pointer<GUID> riid,
              Pointer<VTablePointer> ppIUnk)>> DefineScope;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Pointer<Utf16> szScope,
              Uint32 dwOpenFlags,
              Pointer<GUID> riid,
              Pointer<VTablePointer> ppIUnk)>> OpenScope;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Pointer pData,
              Uint32 cbData,
              Uint32 dwOpenFlags,
              Pointer<GUID> riid,
              Pointer<VTablePointer> ppIUnk)>> OpenScopeOnMemory;
}
