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
const IID_IProvideClassInfo = '{b196b283-bab4-101a-b69c-00aa00341d07}';

/// Provides access to the type information for an object's coclass entry in its
/// type library.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/ocidl/nn-ocidl-iprovideclassinfo>.
///
/// {@category com}
class IProvideClassInfo extends IUnknown {
  IProvideClassInfo(super.ptr)
      : _vtable = ptr.value.cast<IProvideClassInfoVtbl>().ref;

  final IProvideClassInfoVtbl _vtable;

  /// Creates a new instance of `IProvideClassInfo` from an existing
  /// [interface].
  ///
  /// This constructor invokes the [queryInterface] method to obtain a reference
  /// to the `IProvideClassInfo` interface with the provided interface.
  ///
  /// Throws a [WindowsException] if the `queryInterface` call fails.
  factory IProvideClassInfo.from(IUnknown interface) =>
      IProvideClassInfo(interface.toInterface(IID_IProvideClassInfo));

  /// Retrieves a pointer to the ITypeInfo interface for the object's type
  /// information.
  ///
  /// The type information for an object corresponds to the object's coclass entry
  /// in a type library.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/ocidl/nf-ocidl-iprovideclassinfo-getclassinfo>.
  int getClassInfo(Pointer<VTablePointer> ppTI) =>
      _vtable.GetClassInfo.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<VTablePointer> ppTI)>()(ptr, ppTI);
}

/// @nodoc
base class IProvideClassInfoVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<VTablePointer> ppTI)>> GetClassInfo;
}
