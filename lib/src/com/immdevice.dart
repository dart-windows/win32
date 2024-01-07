// immdevice.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../guid.dart';
import '../types.dart';
import '../variant.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IMMDevice = '{d666063f-1587-4e43-81f1-b948e807363f}';

/// The IMMDevice interface encapsulates the generic features of a
/// multimedia device resource.
///
/// {@category com}
class IMMDevice extends IUnknown {
  IMMDevice(super.ptr) : _vtable = ptr.value.value.cast<IMMDeviceVtbl>().ref;

  final IMMDeviceVtbl _vtable;

  factory IMMDevice.from(IUnknown interface) =>
      IMMDevice(interface.toInterface(IID_IMMDevice));

  int activate(
          Pointer<GUID> iid,
          int dwClsCtx,
          Pointer<PROPVARIANT> pActivationParams,
          Pointer<Pointer> ppInterface) =>
      _vtable.Activate.asFunction<
              int Function(
                  VTablePointer,
                  Pointer<GUID> iid,
                  int dwClsCtx,
                  Pointer<PROPVARIANT> pActivationParams,
                  Pointer<Pointer> ppInterface)>()(
          ptr.value, iid, dwClsCtx, pActivationParams, ppInterface);

  int openPropertyStore(
          int stgmAccess, Pointer<Pointer<VTablePointer>> ppProperties) =>
      _vtable.OpenPropertyStore.asFunction<
              int Function(VTablePointer, int stgmAccess,
                  Pointer<Pointer<VTablePointer>> ppProperties)>()(
          ptr.value, stgmAccess, ppProperties);

  int getId(Pointer<Pointer<Utf16>> ppstrId) => _vtable.GetId.asFunction<
          int Function(VTablePointer, Pointer<Pointer<Utf16>> ppstrId)>()(
      ptr.value, ppstrId);

  int getState(Pointer<Uint32> pdwState) => _vtable.GetState.asFunction<
      int Function(
          VTablePointer, Pointer<Uint32> pdwState)>()(ptr.value, pdwState);
}

/// @nodoc
base class IMMDeviceVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(
              VTablePointer,
              Pointer<GUID> iid,
              Uint32 dwClsCtx,
              Pointer<PROPVARIANT> pActivationParams,
              Pointer<Pointer> ppInterface)>> Activate;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Uint32 stgmAccess,
              Pointer<Pointer<VTablePointer>> ppProperties)>> OpenPropertyStore;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Pointer<Utf16>> ppstrId)>>
      GetId;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<Uint32> pdwState)>> GetState;
}
