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
const IID_IShellItemImageFactory = '{bcc18b79-ba16-442f-80c4-8a59c30c463b}';

/// Exposes a method to return either icons or thumbnails for Shell items. If no
/// thumbnail or icon is available for the requested item, a per-class icon may
/// be provided from the Shell.
///
/// {@category com}
class IShellItemImageFactory extends IUnknown {
  IShellItemImageFactory(super.ptr)
      : _vtable = ptr.value.cast<IShellItemImageFactoryVtbl>().ref;

  final IShellItemImageFactoryVtbl _vtable;

  factory IShellItemImageFactory.from(IUnknown interface) =>
      IShellItemImageFactory(interface.toInterface(IID_IShellItemImageFactory));

  int getImage(SIZE size, int flags, Pointer<IntPtr> phbm) =>
      _vtable.GetImage.asFunction<
          int Function(VTablePointer, SIZE size, int flags,
              Pointer<IntPtr> phbm)>()(ptr, size, flags, phbm);
}

/// @nodoc
base class IShellItemImageFactoryVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, SIZE size, Int32 flags, Pointer<IntPtr> phbm)>>
      GetImage;
}