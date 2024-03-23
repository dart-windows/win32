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
const IID_IShellItemImageFactory = '{bcc18b79-ba16-442f-80c4-8a59c30c463b}';

/// Exposes a method to return either icons or thumbnails for Shell items.
///
/// If no thumbnail or icon is available for the requested item, a per-class
/// icon may be provided from the Shell.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nn-shobjidl_core-ishellitemimagefactory>.
///
/// {@category com}
class IShellItemImageFactory extends IUnknown {
  IShellItemImageFactory(super.ptr)
      : _vtable = ptr.value.cast<IShellItemImageFactoryVtbl>().ref;

  final IShellItemImageFactoryVtbl _vtable;

  /// Creates a new instance of `IShellItemImageFactory` from an existing
  /// [interface].
  ///
  /// This constructor invokes the [queryInterface] method to obtain a reference
  /// to the `IShellItemImageFactory` interface with the provided interface.
  ///
  /// Throws a [WindowsException] if the `queryInterface` call fails.
  factory IShellItemImageFactory.from(IUnknown interface) =>
      IShellItemImageFactory(interface.toInterface(IID_IShellItemImageFactory));

  /// Gets an HBITMAP that represents an IShellItem.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishellitemimagefactory-getimage>.
  int getImage(SIZE size, int flags, Pointer<HBITMAP> phbm) =>
      _vtable.GetImage.asFunction<
          int Function(VTablePointer lpVtbl, SIZE size, int flags,
              Pointer<HBITMAP> phbm)>()(ptr, size, flags, phbm);
}

/// @nodoc
base class IShellItemImageFactoryVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, SIZE size, Int32 flags,
              Pointer<HBITMAP> phbm)>> GetImage;
}