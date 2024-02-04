// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../extensions/iunknown.dart';
import '../guid.dart';
import '../types.dart';

/// @nodoc
const IID_IUnknown = '{00000000-0000-0000-c000-000000000046}';

/// Enables clients to get pointers to other interfaces on a given object
/// through the QueryInterface method, and manage the existence of the object
/// through the AddRef and Release methods. All other COM interfaces are
/// inherited, directly or indirectly, from IUnknown. Therefore, the three
/// methods in IUnknown are the first entries in the vtable for every interface.
///
/// {@category com}
class IUnknown {
  IUnknown(this.ptr) : _vtable = ptr.value.cast<IUnknownVtbl>().ref;

  final VTablePointer ptr;

  final IUnknownVtbl _vtable;

  factory IUnknown.from(IUnknown interface) =>
      IUnknown(interface.toInterface(IID_IUnknown));

  int queryInterface(Pointer<GUID> riid, Pointer<Pointer> ppvObject) =>
      _vtable.QueryInterface.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<GUID> riid,
              Pointer<Pointer> ppvObject)>()(ptr, riid, ppvObject);

  int addRef() =>
      _vtable.AddRef.asFunction<int Function(VTablePointer lpVtbl)>()(ptr);

  int release() =>
      _vtable.Release.asFunction<int Function(VTablePointer lpVtbl)>()(ptr);
}

/// @nodoc
base class IUnknownVtbl extends Struct {
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer lpVtbl, Pointer<GUID> riid,
              Pointer<Pointer> ppvObject)>> QueryInterface;
  external Pointer<NativeFunction<Uint32 Function(VTablePointer lpVtbl)>>
      AddRef;
  external Pointer<NativeFunction<Uint32 Function(VTablePointer lpVtbl)>>
      Release;
}
