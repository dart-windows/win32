// immdevicecollection.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../combase.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IMMDeviceCollection = '{0bd7a1be-7a1a-44db-8397-cc5392387b5e}';

/// The IMMDeviceCollection interface represents a collection of multimedia
/// device resources.
///
/// {@category com}
class IMMDeviceCollection extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IMMDeviceCollection(super.ptr)
      : _vtable = ptr.ref.vtable.cast<IMMDeviceCollectionVtbl>().ref;

  final IMMDeviceCollectionVtbl _vtable;

  factory IMMDeviceCollection.from(IUnknown interface) =>
      IMMDeviceCollection(interface.toInterface(IID_IMMDeviceCollection));

  int getCount(Pointer<Uint32> pcDevices) => _vtable.GetCount.asFunction<
      int Function(
          Pointer, Pointer<Uint32> pcDevices)>()(ptr.ref.lpVtbl, pcDevices);

  int item(int nDevice, Pointer<Pointer<COMObject>> ppDevice) =>
      _vtable.Item.asFunction<
              int Function(Pointer, int nDevice,
                  Pointer<Pointer<COMObject>> ppDevice)>()(
          ptr.ref.lpVtbl, nDevice, ppDevice);
}

/// @nodoc
base class IMMDeviceCollectionVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Uint32> pcDevices)>>
      GetCount;
  external Pointer<
      NativeFunction<
          Int32 Function(Pointer, Uint32 nDevice,
              Pointer<Pointer<COMObject>> ppDevice)>> Item;
}
