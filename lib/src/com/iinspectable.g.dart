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
const IID_IInspectable = '{af86e2e0-b12d-4c6a-9c5a-d7aa65101e90}';

/// Provides functionality required for all Windows Runtime classes.
///
/// To learn more about this interface, see
/// <https://learn.microsoft.com/windows/win32/api/inspectable/nn-inspectable-iinspectable>.
///
/// {@category com}
class IInspectable extends IUnknown {
  IInspectable(super.ptr) : _vtable = ptr.value.cast<IInspectableVtbl>().ref;

  final IInspectableVtbl _vtable;

  /// Creates a new instance of `IInspectable` from an existing [interface].
  ///
  /// This constructor invokes the [queryInterface] method to obtain a reference
  /// to the `IInspectable` interface with the provided interface.
  ///
  /// Throws a [WindowsException] if the `queryInterface` call fails.
  factory IInspectable.from(IUnknown interface) =>
      IInspectable(interface.toInterface(IID_IInspectable));

  /// Gets the interfaces that are implemented by the current Windows Runtime
  /// class.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/inspectable/nf-inspectable-iinspectable-getiids>.
  int getIids(Pointer<Uint32> iidCount, Pointer<Pointer<GUID>> iids) =>
      _vtable.GetIids.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<Uint32> iidCount,
              Pointer<Pointer<GUID>> iids)>()(ptr, iidCount, iids);

  /// Gets the fully qualified name of the current Windows Runtime object.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/inspectable/nf-inspectable-iinspectable-getruntimeclassname>.
  int getRuntimeClassName(Pointer<HSTRING> className) =>
      _vtable.GetRuntimeClassName.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<HSTRING> className)>()(
          ptr, className);

  /// Gets the trust level of the current Windows Runtime object.
  ///
  /// To learn more about this method, see
  /// <https://learn.microsoft.com/windows/win32/api/inspectable/nf-inspectable-iinspectable-gettrustlevel>.
  int getTrustLevel(Pointer<Int32> trustLevel) =>
      _vtable.GetTrustLevel.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<Int32> trustLevel)>()(
          ptr, trustLevel);
}

/// @nodoc
base class IInspectableVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> iidCount,
              Pointer<Pointer<GUID>> iids)>> GetIids;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<HSTRING> className)>>
      GetRuntimeClassName;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Int32> trustLevel)>> GetTrustLevel;
}