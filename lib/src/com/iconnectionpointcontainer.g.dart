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
const IID_IConnectionPointContainer = '{b196b284-bab4-101a-b69c-00aa00341d07}';

/// Supports connection points for connectable objects.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/ocidl/nn-ocidl-iconnectionpointcontainer>.
///
/// {@category com}
class IConnectionPointContainer extends IUnknown {
  IConnectionPointContainer(super.ptr)
      : _vtable = ptr.value.cast<IConnectionPointContainerVtbl>().ref;

  final IConnectionPointContainerVtbl _vtable;

  /// Creates a new instance of `IConnectionPointContainer` from an existing
  /// [interface].
  ///
  /// This constructor invokes the [queryInterface] method to obtain a reference
  /// to the `IConnectionPointContainer` interface with the provided interface.
  ///
  /// Throws a [WindowsException] if the `queryInterface` call fails.
  factory IConnectionPointContainer.from(IUnknown interface) =>
      IConnectionPointContainer(
          interface.toInterface(IID_IConnectionPointContainer));

  /// Creates an enumerator object to iterate through all the connection points
  /// supported in the connectable object, one connection point per outgoing IID.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/ocidl/nf-ocidl-iconnectionpointcontainer-enumconnectionpoints>.
  int enumConnectionPoints(Pointer<VTablePointer> ppEnum) =>
      _vtable.EnumConnectionPoints.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<VTablePointer> ppEnum)>()(ptr, ppEnum);

  /// Returns a pointer to the IConnectionPoint interface of a connection point
  /// for a specified IID, if that IID describes a supported outgoing interface.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/ocidl/nf-ocidl-iconnectionpointcontainer-findconnectionpoint>.
  int findConnectionPoint(Pointer<GUID> riid, Pointer<VTablePointer> ppCP) =>
      _vtable.FindConnectionPoint.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<GUID> riid,
              Pointer<VTablePointer> ppCP)>()(ptr, riid, ppCP);
}

/// @nodoc
base class IConnectionPointContainerVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<VTablePointer> ppEnum)>>
      EnumConnectionPoints;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<GUID> riid,
              Pointer<VTablePointer> ppCP)>> FindConnectionPoint;
}
