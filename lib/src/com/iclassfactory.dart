// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../extensions/iunknown.dart';
import '../guid.dart';
import '../types.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IClassFactory = '{00000001-0000-0000-c000-000000000046}';

/// Creates a call object for processing calls to the methods of an
/// asynchronous interface.
///
/// {@category com}
class IClassFactory extends IUnknown {
  IClassFactory(super.ptr) : _vtable = ptr.value.cast<IClassFactoryVtbl>().ref;

  final IClassFactoryVtbl _vtable;

  factory IClassFactory.from(IUnknown interface) =>
      IClassFactory(interface.toInterface(IID_IClassFactory));

  int createInstance(VTablePointer pUnkOuter, Pointer<GUID> riid,
          Pointer<Pointer> ppvObject) =>
      _vtable.CreateInstance.asFunction<
          int Function(
              VTablePointer,
              VTablePointer pUnkOuter,
              Pointer<GUID> riid,
              Pointer<Pointer> ppvObject)>()(ptr, pUnkOuter, riid, ppvObject);

  int lockServer(int fLock) =>
      _vtable.LockServer.asFunction<int Function(VTablePointer, int fLock)>()(
          ptr, fLock);
}

/// @nodoc
base class IClassFactoryVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, VTablePointer pUnkOuter,
              Pointer<GUID> riid, Pointer<Pointer> ppvObject)>> CreateInstance;
  external Pointer<NativeFunction<Int32 Function(VTablePointer, Int32 fLock)>>
      LockServer;
}
