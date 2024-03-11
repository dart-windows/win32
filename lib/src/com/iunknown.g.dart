// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../extensions/iunknown.dart';
import '../guid.dart';
import '../structs.g.dart';
import '../types.dart';

/// @nodoc
const IID_IUnknown = '{00000000-0000-0000-c000-000000000046}';

/// Enables clients to get pointers to other interfaces on a given object
/// through the QueryInterface method, and manage the existence of the object
/// through the AddRef and Release methods.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/unknwn/nn-unknwn-iunknown>.
///
/// {@category com}
class IUnknown {
  IUnknown(this.ptr)
      : assert(ptr != nullptr, 'Pointer must not be nullptr.'),
        _vtable = ptr.value.cast<IUnknownVtbl>().ref;

  final VTablePointer ptr;

  final IUnknownVtbl _vtable;

  factory IUnknown.from(IUnknown interface) =>
      IUnknown(interface.toInterface(IID_IUnknown));

  /// Retrieves pointers to the supported interfaces on an object.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/unknwn/nf-unknwn-iunknown-queryinterface(refiid_void)>.
  int queryInterface(Pointer<GUID> riid, Pointer<Pointer> ppvObject) =>
      _vtable.QueryInterface.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<GUID> riid,
              Pointer<Pointer> ppvObject)>()(ptr, riid, ppvObject);

  /// Increments the reference count for an interface pointer to a COM object.
  ///
  /// You should call this method whenever you make a copy of an interface
  /// pointer.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/unknwn/nf-unknwn-iunknown-addref>.
  int addRef() =>
      _vtable.AddRef.asFunction<int Function(VTablePointer lpVtbl)>()(ptr);

  /// Decrements the reference count for an interface on a COM object.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/unknwn/nf-unknwn-iunknown-release>.
  int release() =>
      _vtable.Release.asFunction<int Function(VTablePointer lpVtbl)>()(ptr);
}

/// @nodoc
base class IUnknownVtbl extends Struct {
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<GUID> riid,
              Pointer<Pointer> ppvObject)>> QueryInterface;
  external Pointer<NativeFunction<Uint32 Function(VTablePointer lpVtbl)>>
      AddRef;
  external Pointer<NativeFunction<Uint32 Function(VTablePointer lpVtbl)>>
      Release;
}
