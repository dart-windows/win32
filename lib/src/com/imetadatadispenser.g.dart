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
const IID_IMetaDataDispenser = '{809c652e-7396-11d2-9771-00a0c9b4d50c}';

/// Provides methods to create a new metadata scope, or open an existing one.
///
/// {@category com}
class IMetaDataDispenser extends IUnknown {
  IMetaDataDispenser(super.ptr)
      : _vtable = ptr.value.cast<IMetaDataDispenserVtbl>().ref;

  final IMetaDataDispenserVtbl _vtable;

  factory IMetaDataDispenser.from(IUnknown interface) =>
      IMetaDataDispenser(interface.toInterface(IID_IMetaDataDispenser));

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
          Int32 Function(
              VTablePointer lpVtbl,
              Pointer<GUID> rclsid,
              Uint32 dwCreateFlags,
              Pointer<GUID> riid,
              Pointer<VTablePointer> ppIUnk)>> DefineScope;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer lpVtbl,
              Pointer<Utf16> szScope,
              Uint32 dwOpenFlags,
              Pointer<GUID> riid,
              Pointer<VTablePointer> ppIUnk)>> OpenScope;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer lpVtbl,
              Pointer pData,
              Uint32 cbData,
              Uint32 dwOpenFlags,
              Pointer<GUID> riid,
              Pointer<VTablePointer> ppIUnk)>> OpenScopeOnMemory;
}
