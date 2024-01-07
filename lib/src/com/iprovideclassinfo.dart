// iprovideclassinfo.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import '../types.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IProvideClassInfo = '{b196b283-bab4-101a-b69c-00aa00341d07}';

/// Provides access to the type information for an object's coclass entry in
/// its type library.
///
/// {@category com}
class IProvideClassInfo extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IProvideClassInfo(super.ptr)
      : _vtable = ptr.value.value.cast<IProvideClassInfoVtbl>().ref;

  final IProvideClassInfoVtbl _vtable;

  factory IProvideClassInfo.from(IUnknown interface) =>
      IProvideClassInfo(interface.toInterface(IID_IProvideClassInfo));

  int getClassInfo(Pointer<Pointer<VTablePointer>> ppTI) =>
      _vtable.GetClassInfo.asFunction<
          int Function(VTablePointer,
              Pointer<Pointer<VTablePointer>> ppTI)>()(ptr.value, ppTI);
}

/// @nodoc
base class IProvideClassInfoVtbl extends Struct {
  external IUnknownVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              Int32 Function(
                  VTablePointer, Pointer<Pointer<VTablePointer>> ppTI)>>
      GetClassInfo;
}
