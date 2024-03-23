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
const IID_IClassFactory = '{00000001-0000-0000-c000-000000000046}';

/// Enables a class of objects to be created.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/unknwn/nn-unknwn-iclassfactory>.
///
/// {@category com}
class IClassFactory extends IUnknown {
  IClassFactory(super.ptr) : _vtable = ptr.value.cast<IClassFactoryVtbl>().ref;

  final IClassFactoryVtbl _vtable;

  /// Creates a new instance of `IClassFactory` from an existing [interface].
  ///
  /// This constructor invokes the [queryInterface] method to obtain a reference
  /// to the `IClassFactory` interface with the provided interface.
  ///
  /// Throws a [WindowsException] if the `queryInterface` call fails.
  factory IClassFactory.from(IUnknown interface) =>
      IClassFactory(interface.toInterface(IID_IClassFactory));

  /// Creates an uninitialized object.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/unknwn/nf-unknwn-iclassfactory-createinstance>.
  int createInstance(VTablePointer? pUnkOuter, Pointer<GUID> riid,
          Pointer<Pointer> ppvObject) =>
      _vtable.CreateInstance.asFunction<
              int Function(VTablePointer lpVtbl, VTablePointer pUnkOuter,
                  Pointer<GUID> riid, Pointer<Pointer> ppvObject)>()(
          ptr, pUnkOuter ?? nullptr, riid, ppvObject);

  /// Locks an object application open in memory.
  ///
  /// This enables instances to be created more quickly.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/unknwn/nf-unknwn-iclassfactory-lockserver>.
  int lockServer(int fLock) => _vtable.LockServer.asFunction<
      int Function(VTablePointer lpVtbl, int fLock)>()(ptr, fLock);
}

/// @nodoc
base class IClassFactoryVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer pUnkOuter,
              Pointer<GUID> riid, Pointer<Pointer> ppvObject)>> CreateInstance;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, BOOL fLock)>>
      LockServer;
}