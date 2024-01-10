// Copyright (c) 2024, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../extensions/iunknown.dart';
import '../types.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IShellItemFilter = '{2659b475-eeb8-48b7-8f07-b378810f48cf}';

/// Exposed by a client to specify how to filter the enumeration of a Shell item
/// by a server application.
///
/// {@category com}
class IShellItemFilter extends IUnknown {
  IShellItemFilter(super.ptr)
      : _vtable = ptr.value.cast<IShellItemFilterVtbl>().ref;

  final IShellItemFilterVtbl _vtable;

  factory IShellItemFilter.from(IUnknown interface) =>
      IShellItemFilter(interface.toInterface(IID_IShellItemFilter));

  int includeItem(VTablePointer psi) => _vtable.IncludeItem.asFunction<
      int Function(VTablePointer, VTablePointer psi)>()(ptr, psi);

  int getEnumFlagsForItem(VTablePointer psi, Pointer<Uint32> pgrfFlags) =>
      _vtable.GetEnumFlagsForItem.asFunction<
          int Function(VTablePointer, VTablePointer psi,
              Pointer<Uint32> pgrfFlags)>()(ptr, psi, pgrfFlags);
}

/// @nodoc
base class IShellItemFilterVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<Int32 Function(VTablePointer, VTablePointer psi)>>
      IncludeItem;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, VTablePointer psi, Pointer<Uint32> pgrfFlags)>>
      GetEnumFlagsForItem;
}
