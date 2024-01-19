// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../extensions/iunknown.dart';
import '../types.dart';
import 'iunknown.g.dart';

/// @nodoc
const IID_IShellService = '{5836fb00-8187-11cf-a12b-00aa004ae837}';

/// IShellService Exposes one method that declares ownership when a service
/// component implementing a certain interface is shared among multiple clients,
/// such as Windows Internet Explorer and Windows Explorer.
///
/// {@category com}
class IShellService extends IUnknown {
  IShellService(super.ptr) : _vtable = ptr.value.cast<IShellServiceVtbl>().ref;

  final IShellServiceVtbl _vtable;

  factory IShellService.from(IUnknown interface) =>
      IShellService(interface.toInterface(IID_IShellService));

  int setOwner(VTablePointer? punkOwner) => _vtable.SetOwner.asFunction<
      int Function(
          VTablePointer, VTablePointer punkOwner)>()(ptr, punkOwner ?? nullptr);
}

/// @nodoc
base class IShellServiceVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, VTablePointer punkOwner)>> SetOwner;
}