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
const IID_IMMDevice = '{d666063f-1587-4e43-81f1-b948e807363f}';

/// The IMMDevice interface encapsulates the generic features of a multimedia
/// device resource.
///
/// {@category com}
class IMMDevice extends IUnknown {
  IMMDevice(super.ptr) : _vtable = ptr.value.cast<IMMDeviceVtbl>().ref;

  final IMMDeviceVtbl _vtable;

  factory IMMDevice.from(IUnknown interface) =>
      IMMDevice(interface.toInterface(IID_IMMDevice));

  int activate(
          Pointer<GUID> iid,
          int dwClsCtx,
          Pointer<PROPVARIANT>? pActivationParams,
          Pointer<Pointer> ppInterface) =>
      _vtable.Activate.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  Pointer<GUID> iid,
                  int dwClsCtx,
                  Pointer<PROPVARIANT> pActivationParams,
                  Pointer<Pointer> ppInterface)>()(
          ptr, iid, dwClsCtx, pActivationParams ?? nullptr, ppInterface);

  int openPropertyStore(int stgmAccess, Pointer<VTablePointer> ppProperties) =>
      _vtable.OpenPropertyStore.asFunction<
              int Function(VTablePointer lpVtbl, int stgmAccess,
                  Pointer<VTablePointer> ppProperties)>()(
          ptr, stgmAccess, ppProperties);

  int getId(Pointer<Pointer<Utf16>> ppstrId) => _vtable.GetId.asFunction<
      int Function(VTablePointer lpVtbl,
          Pointer<Pointer<Utf16>> ppstrId)>()(ptr, ppstrId);

  int getState(Pointer<Uint32> pdwState) => _vtable.GetState.asFunction<
      int Function(
          VTablePointer lpVtbl, Pointer<Uint32> pdwState)>()(ptr, pdwState);
}

/// @nodoc
base class IMMDeviceVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Pointer<GUID> iid,
              Uint32 dwClsCtx,
              Pointer<PROPVARIANT> pActivationParams,
              Pointer<Pointer> ppInterface)>> Activate;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 stgmAccess,
              Pointer<VTablePointer> ppProperties)>> OpenPropertyStore;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Pointer<Utf16>> ppstrId)>> GetId;
  external Pointer<
          NativeFunction<
              Uint32 Function(VTablePointer lpVtbl, Pointer<Uint32> pdwState)>>
      GetState;
}
