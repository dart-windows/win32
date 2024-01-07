// iinspectable.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../extensions/iunknown.dart';
import '../guid.dart';
import '../types.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IInspectable = '{af86e2e0-b12d-4c6a-9c5a-d7aa65101e90}';

/// Provides functionality required for all Windows Runtime classes.
///
/// {@category com}
class IInspectable extends IUnknown {
  IInspectable(super.ptr) : _vtable = ptr.value.cast<IInspectableVtbl>().ref;

  final IInspectableVtbl _vtable;

  factory IInspectable.from(IUnknown interface) =>
      IInspectable(interface.toInterface(IID_IInspectable));

  int getIids(Pointer<Uint32> iidCount, Pointer<Pointer<GUID>> iids) =>
      _vtable.GetIids.asFunction<
          int Function(VTablePointer, Pointer<Uint32> iidCount,
              Pointer<Pointer<GUID>> iids)>()(ptr, iidCount, iids);

  int getRuntimeClassName(Pointer<IntPtr> className) =>
      _vtable.GetRuntimeClassName.asFunction<
          int Function(
              VTablePointer, Pointer<IntPtr> className)>()(ptr, className);

  int getTrustLevel(Pointer<Int32> trustLevel) =>
      _vtable.GetTrustLevel.asFunction<
          int Function(
              VTablePointer, Pointer<Int32> trustLevel)>()(ptr, trustLevel);
}

/// @nodoc
base class IInspectableVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          Int32 Function(VTablePointer, Pointer<Uint32> iidCount,
              Pointer<Pointer<GUID>> iids)>> GetIids;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<IntPtr> className)>>
      GetRuntimeClassName;
  external Pointer<
          NativeFunction<
              Int32 Function(VTablePointer, Pointer<Int32> trustLevel)>>
      GetTrustLevel;
}
