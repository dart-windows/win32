// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../extensions/iunknown.dart';
import '../structs.g.dart';
import '../types.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IMMDeviceCollection = '{0bd7a1be-7a1a-44db-8397-cc5392387b5e}';

/// Represents a collection of multimedia device resources.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/mmdeviceapi/nn-mmdeviceapi-immdevicecollection>.
///
/// {@category com}
class IMMDeviceCollection extends IUnknown {
  IMMDeviceCollection(super.ptr)
      : _vtable = ptr.value.cast<IMMDeviceCollectionVtbl>().ref;

  final IMMDeviceCollectionVtbl _vtable;

  factory IMMDeviceCollection.from(IUnknown interface) =>
      IMMDeviceCollection(interface.toInterface(IID_IMMDeviceCollection));

  /// Retrieves a count of the devices in the device collection.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/mmdeviceapi/nf-mmdeviceapi-immdevicecollection-getcount>.
  int getCount(Pointer<Uint32> pcDevices) => _vtable.GetCount.asFunction<
      int Function(
          VTablePointer lpVtbl, Pointer<Uint32> pcDevices)>()(ptr, pcDevices);

  /// Retrieves a pointer to the specified item in the device collection.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/mmdeviceapi/nf-mmdeviceapi-immdevicecollection-item>.
  int item(
          int nDevice, Pointer<VTablePointer> ppDevice) =>
      _vtable.Item.asFunction<
          int Function(VTablePointer lpVtbl, int nDevice,
              Pointer<VTablePointer> ppDevice)>()(ptr, nDevice, ppDevice);
}

/// @nodoc
base class IMMDeviceCollectionVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Uint32> pcDevices)>> GetCount;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 nDevice,
              Pointer<VTablePointer> ppDevice)>> Item;
}
