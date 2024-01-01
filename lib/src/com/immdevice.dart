// immdevice.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import '../guid.dart';
import '../variant.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IMMDevice = '{d666063f-1587-4e43-81f1-b948e807363f}';

/// The IMMDevice interface encapsulates the generic features of a
/// multimedia device resource.
///
/// {@category com}
class IMMDevice extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IMMDevice(super.ptr) : _vtable = ptr.ref.vtable.cast<IMMDeviceVtbl>().ref;

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
                  Pointer,
                  Pointer<GUID> iid,
                  int dwClsCtx,
                  Pointer<PROPVARIANT> pActivationParams,
                  Pointer<Pointer> ppInterface)>()(
          ptr.ref.lpVtbl, iid, dwClsCtx, pActivationParams, ppInterface);

  int openPropertyStore(
          int stgmAccess, Pointer<Pointer<COMObject>> ppProperties) =>
      _vtable.OpenPropertyStore.asFunction<
              int Function(Pointer, int stgmAccess,
                  Pointer<Pointer<COMObject>> ppProperties)>()(
          ptr.ref.lpVtbl, stgmAccess, ppProperties);

  int getId(Pointer<Pointer<Utf16>> ppstrId) => _vtable.GetId.asFunction<
      int Function(
          Pointer, Pointer<Pointer<Utf16>> ppstrId)>()(ptr.ref.lpVtbl, ppstrId);

  int getState(Pointer<Uint32> pdwState) => _vtable.GetState.asFunction<
      int Function(
          Pointer, Pointer<Uint32> pdwState)>()(ptr.ref.lpVtbl, pdwState);
}

/// @nodoc
base class IMMDeviceVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(
              Pointer,
              Pointer<GUID> iid,
              Uint32 dwClsCtx,
              Pointer<PROPVARIANT> pActivationParams,
              Pointer<Pointer> ppInterface)>> Activate;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Uint32 stgmAccess,
              Pointer<Pointer<COMObject>> ppProperties)>> OpenPropertyStore;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Pointer<Pointer<Utf16>> ppstrId)>> GetId;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Uint32> pdwState)>>
      GetState;
}
