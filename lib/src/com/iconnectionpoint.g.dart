// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../exceptions.dart';
import '../extensions/iunknown.dart';
import '../guid.dart';
import '../structs.g.dart';
import '../types.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IConnectionPoint = '{b196b286-bab4-101a-b69c-00aa00341d07}';

/// Supports connection points for connectable objects.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/ocidl/nn-ocidl-iconnectionpoint>.
///
/// {@category com}
class IConnectionPoint extends IUnknown {
  IConnectionPoint(super.ptr)
      : _vtable = ptr.value.cast<IConnectionPointVtbl>().ref;

  final IConnectionPointVtbl _vtable;

  /// Creates a new instance of `IConnectionPoint` from an existing [interface].
  ///
  /// This constructor invokes the [queryInterface] method to obtain a reference
  /// to the `IConnectionPoint` interface with the provided interface.
  ///
  /// Throws a [WindowsException] if the `queryInterface` call fails.
  factory IConnectionPoint.from(IUnknown interface) =>
      IConnectionPoint(interface.toInterface(IID_IConnectionPoint));

  /// Retrieves the IID of the outgoing interface managed by this connection
  /// point.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/ocidl/nf-ocidl-iconnectionpoint-getconnectioninterface>.
  int getConnectionInterface(Pointer<GUID> pIID) =>
      _vtable.GetConnectionInterface.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<GUID> pIID)>()(ptr, pIID);

  /// Retrieves the IConnectionPointContainer interface pointer for the parent
  /// connectable object.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/ocidl/nf-ocidl-iconnectionpoint-getconnectionpointcontainer>.
  int getConnectionPointContainer(Pointer<VTablePointer> ppCPC) =>
      _vtable.GetConnectionPointContainer.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> ppCPC)>()(ptr, ppCPC);

  /// Establishes a connection between a connection point object and the client's
  /// sink.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/ocidl/nf-ocidl-iconnectionpoint-advise>.
  int advise(VTablePointer pUnkSink, Pointer<Uint32> pdwCookie) =>
      _vtable.Advise.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer pUnkSink,
              Pointer<Uint32> pdwCookie)>()(ptr, pUnkSink, pdwCookie);

  /// Terminates an advisory connection previously established between a
  /// connection point object and a client's sink.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/ocidl/nf-ocidl-iconnectionpoint-unadvise>.
  int unadvise(int dwCookie) => _vtable.Unadvise.asFunction<
      int Function(VTablePointer lpVtbl, int dwCookie)>()(ptr, dwCookie);

  /// Creates an enumerator object to iterate through the current connections for
  /// this connection point.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/ocidl/nf-ocidl-iconnectionpoint-enumconnections>.
  int enumConnections(Pointer<VTablePointer> ppEnum) =>
      _vtable.EnumConnections.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> ppEnum)>()(ptr, ppEnum);
}

/// @nodoc
base class IConnectionPointVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<GUID> pIID)>>
      GetConnectionInterface;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> ppCPC)>>
      GetConnectionPointContainer;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer pUnkSink,
              Pointer<Uint32> pdwCookie)>> Advise;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 dwCookie)>> Unadvise;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> ppEnum)>>
      EnumConnections;
}
