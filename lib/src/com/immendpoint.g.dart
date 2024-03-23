// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../exceptions.dart';
import '../extensions/iunknown.dart';
import '../structs.g.dart';
import '../types.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IMMEndpoint = '{1be09788-6894-4089-8586-9a2a6c265ac5}';

/// Represents an audio endpoint device.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/mmdeviceapi/nn-mmdeviceapi-immendpoint>.
///
/// {@category com}
class IMMEndpoint extends IUnknown {
  IMMEndpoint(super.ptr) : _vtable = ptr.value.cast<IMMEndpointVtbl>().ref;

  final IMMEndpointVtbl _vtable;

  /// Creates a new instance of `IMMEndpoint` from an existing [interface].
  ///
  /// This constructor invokes the [queryInterface] method to obtain a reference
  /// to the `IMMEndpoint` interface with the provided interface.
  ///
  /// Throws a [WindowsException] if the `queryInterface` call fails.
  factory IMMEndpoint.from(IUnknown interface) =>
      IMMEndpoint(interface.toInterface(IID_IMMEndpoint));

  /// Indicates whether the audio endpoint device is a rendering device or a
  /// capture device.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/mmdeviceapi/nf-mmdeviceapi-immendpoint-getdataflow>.
  int getDataFlow(Pointer<Int32> pDataFlow) => _vtable.GetDataFlow.asFunction<
      int Function(
          VTablePointer lpVtbl, Pointer<Int32> pDataFlow)>()(ptr, pDataFlow);
}

/// @nodoc
base class IMMEndpointVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> pDataFlow)>>
      GetDataFlow;
}